// Copyright (c) 2022, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:googleapis/slides/v1.dart' hide List;
import 'package:http/http.dart';
import 'package:path/path.dart' as p;
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
    (client) async {
      final api = SlidesApi(client).presentations;

      if (renderHtml != null) {
        await _doHtml(
          outputDirectory: renderHtml,
          presentationId: presentationId,
          resource: api,
          httpClient: client,
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
  required String outputDirectory,
  required String presentationId,
  required PresentationsResource resource,
  required int? lastSlide,
  required Client httpClient,
}) async {
  final result = await resource.get(presentationId);

  final directory = Directory(outputDirectory);
  if (directory.existsSync()) {
    print('Please delete $directory first!');
    exitCode = 1;
    return;
  }

  directory.createSync(recursive: true);

  final htmlOutput = File(p.join(directory.path, 'index.html'));

  final writer = await htmlOutput.open(mode: FileMode.writeOnlyAppend);

  try {
    await for (var line in _yieldSlideHtml(
      result.slides!,
      api: resource,
      presentationId: presentationId,
      lastSlide: lastSlide,
      outputDirectory: directory,
      httpClient: httpClient,
    )) {
      writer.writeStringSync('$line\n');
    }
  } finally {
    writer.closeSync();
  }
}

Stream<String> _yieldSlideHtml(
  List<Page> pages, {
  required PresentationsResource api,
  required String presentationId,
  required int? lastSlide,
  required Directory outputDirectory,
  required Client httpClient,
}) async* {
  var count = 0;

  yield '''
<html lang="">
<head>
  <title>TODO</title>
  <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
td, th {
  padding: 1ex;
  vertical-align: top;
}
td.notes {
  max-width: 400px;
}
td.slide-number {
  text-align: center;
}
img {
  border: 2px lightgray solid;
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
    yield '<tr>';
    // number
    yield '<td class="slide-number">${++count}</td>';
    stderr.writeln('Slide #$count');

    // notes
    yield '<td class="notes">';
    for (var entry in slide.allNotes) {
      yield '<p>${_htmlEscape.convert(entry)}</p>';
    }
    yield '</td>';

    final thumb = await api.pages.getThumbnail(
      presentationId,
      slide.objectId!,
      thumbnailProperties_thumbnailSize: 'MEDIUM',
    );

    final response = await httpClient.get(Uri.parse(thumb.contentUrl!));
    assert(response.headers['content-type'] == 'image/png');
    assert(response.statusCode == 200);

    final imageName = 'slide_${count.toString().padLeft(3, '0')}.png';

    final imagePath = p.join(outputDirectory.path, imageName);

    File(imagePath).writeAsBytesSync(
      response.bodyBytes,
      mode: FileMode.writeOnly,
      flush: true,
    );

    // image
    yield '<td><img src="$imageName" width="${thumb.width}" height="${thumb.height}"></td>';

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

    for (var entry in slide.allNotes) {
      yield entry;
    }

    yield '';
    if (lastSlide != null && count >= lastSlide) {
      break;
    }
  }
}

extension on Page {
  Iterable<String> get allNotes sync* {
    final elements = slideProperties?.notesPage?.pageElements;
    if (elements != null) {
      for (var element in elements) {
        final text = element.shape?.text;
        if (text != null) {
          final value = text.textElements!
              .map((e) => e.textRun?.content)
              .whereType<String>()
              .join()
              .trim();

          if (value.isNotEmpty) {
            yield value;
          }
        }
      }
    }
  }
}

final _parser = ArgParser()
  ..addOption('last-slide')
  ..addOption('html', help: 'Directory to put the html and image output.');
