// Copyright (c) 2022, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:googleapis/slides/v1.dart' hide List;
import 'package:http/http.dart' show Client, get;
import 'package:http/retry.dart';
import 'package:test_integration/test_integration.dart';

Future<void> main(List<String> args) async {
  final result = _parser.parse(args);

  final presentationId = result.rest.single;

  int? lastSlide;
  if (result.wasParsed('last-slide')) {
    lastSlide = int.tryParse(result['last-slide'] as String);
  }

  final renderHtml = result['html'] as String?;

  await withClientFromUserCredentials(
    [SlidesApi.presentationsReadonlyScope],
    customClient: RetryClient(
      Client(),
      delay: (count) {
        const duration = Duration(seconds: 60);
        print('*** Retry #$count - waiting $duration');
        return duration;
      },
      when: (response) =>
          response.statusCode == 503 || response.statusCode == 429,
    ),
    (client) async {
      final api = SlidesApi(client).presentations;

      if (renderHtml != null) {
        await _doHtml(
          outputFilePath: renderHtml,
          presentationId: presentationId,
          resource: api,
          lastSlide: lastSlide,
        );
      } else {
        final result = await api.get(presentationId);

        print(_printSlides(result.slides!, lastSlide: lastSlide).join('\n'));
      }
    },
  );
}

Future<void> _doHtml({
  required String outputFilePath,
  required String presentationId,
  required PresentationsResource resource,
  required int? lastSlide,
}) async {
  final result = await resource.get(presentationId);

  final htmlOutput = File(outputFilePath);
  if (htmlOutput.existsSync()) {
    print('Please delete $htmlOutput first!');
    exitCode = 1;
    return;
  }

  final writer = await htmlOutput.open(mode: FileMode.writeOnlyAppend);

  try {
    await for (var line in _yieldSlideHtml(
      result.slides!,
      title: result.title,
      api: resource,
      presentationId: presentationId,
      lastSlide: lastSlide,
    )) {
      writer.writeStringSync('$line\n');
    }
  } finally {
    writer.closeSync();
  }
}

Stream<String> _yieldSlideHtml(
  List<Page> pages, {
  String? title,
  required PresentationsResource api,
  required String presentationId,
  required int? lastSlide,
}) async* {
  var count = 0;

  final titleElement = title == null
      ? ''
      : '''
<title>${const HtmlEscape(HtmlEscapeMode.element).convert(title)}</title>
  ''';

  yield '''
<html lang="">
<head>
  $titleElement
  <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
td, th {
  padding: 1ex;
  vertical-align: top;
}
td.slide-number {
  text-align: center;
}
img {
  border: 2px lightgray solid;
  object-fit: contain;
  max-width: 600px;
  max-height: 350px;
}
th {
  background: lightgray;
}
  </style>
</head>
<body>
<table>
<tr>
<th>#</th>
<th>Script</th>
<th>Slide</th>
</tr>
''';

  for (var slide in pages) {
    if (slide.slideProperties?.isSkipped == true) {
      // TODO: give an option to include skipped?
      continue;
    }

    yield '<tr>';
    // number
    yield '<td class="slide-number">${++count}</td>';
    stderr.writeln('Slide #$count');

    // notes
    yield '<td class="notes">';
    for (var entry in slide.noteLines) {
      yield '<p>${_htmlEscape.convert(entry)}</p>';
    }
    yield '</td>';

    final thumb = await api.pages.getThumbnail(
      presentationId,
      slide.objectId!,
      thumbnailProperties_thumbnailSize: 'MEDIUM',
    );

    final response = await get(Uri.parse(thumb.contentUrl!));
    assert(response.headers['content-type'] == 'image/png');
    assert(response.statusCode == 200);

    final dataUri = Uri.dataFromBytes(
      response.bodyBytes,
      mimeType: response.headers['content-type']!,
    );

    // image
    yield '<td><img src="$dataUri"></td>';

    yield '</tr>';
    if (lastSlide != null && count >= lastSlide) {
      break;
    }
  }

  yield '''
</table>
</body>
</html>
''';
}

const _htmlEscape = HtmlEscape(HtmlEscapeMode.element);

Iterable<String> _printSlides(List<Page> pages, {int? lastSlide}) sync* {
  var count = 0;
  for (var slide in pages) {
    yield '*** SLIDE ${++count} ***\n';

    for (var entry in slide.noteLines) {
      yield entry;
    }

    yield '';
    if (lastSlide != null && count >= lastSlide) {
      break;
    }
  }
}

extension on Page {
  Iterable<String> get noteLines sync* {
    final elements = slideProperties?.notesPage?.pageElements;

    if (elements == null) {
      return;
    }

    for (var element in elements) {
      final text = element.shape?.text;
      if (text == null) {
        continue;
      }

      yield* text.lines;
    }
  }
}

extension on TextContent {
  Iterable<String> get lines sync* {
    final value = textElements!
        .map((e) => e.textRun?.content)
        .whereType<String>()
        .where((element) => element.isNotEmpty)
        .join()
        .trim();

    if (value.isEmpty) {
      return;
    }

    // `value` may contain sections split by new-lines. Turn these into
    // individual returned "lines" removing extra whitespace and
    // blank lines
    yield* LineSplitter.split(value)
        .map((line) => line.trim())
        .where((line) => line.isNotEmpty);
  }
}

final _parser = ArgParser()
  ..addOption('last-slide')
  ..addOption('html', help: 'HTML file to write content.');
