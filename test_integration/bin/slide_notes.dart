// Copyright (c) 2022, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:googleapis/slides/v1.dart' hide List;
import 'package:test_integration/test_integration.dart';

Future<void> main(List<String> args) async {
  final result = _parser.parse(args);

  final presentationId = result.rest.single;

  int? lastSlide;
  if (result.wasParsed('last-slide')) {
    lastSlide = int.tryParse(result['last-slide'] as String);
  }

  final renderHtml = result['html'] as bool;

  await withClientFromUserCredentials(
    [SlidesApi.presentationsReadonlyScope],
    (client) async {
      final api = SlidesApi(client).presentations;

      final result = await api.get(presentationId);

      if (renderHtml) {
        await _printHtml(
          result.slides!,
          api: api,
          presentationId: presentationId,
          lastSlide: lastSlide,
        );
      } else {
        _printSlides(result.slides!, lastSlide: lastSlide);
      }
    },
  );
}

Future<void> _printHtml(
  List<Page> pages, {
  required PresentationsResource api,
  required String presentationId,
  int? lastSlide,
}) async {
  var count = 0;

  print('''
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
  border: 5px black solid;
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
''');

  for (var slide in pages) {
    print('<tr>');
    // number
    print('<td class="slide-number">${++count}</td>');
    stderr.writeln('Slide #$count');

    // notes
    print('<td class="notes">');
    for (var entry in slide.allNotes) {
      print('<p>${_htmlEscape.convert(entry)}</p>');
    }
    print('</td>');

    final thumb = await api.pages.getThumbnail(
      presentationId,
      slide.objectId!,
      thumbnailProperties_thumbnailSize: 'MEDIUM',
    );

    // image
    print(
      '<td><img src="${thumb.contentUrl}" width="${thumb.width}" height="${thumb.height}"></td>',
    );

    print('</tr>');
    if (lastSlide != null && count >= lastSlide) {
      break;
    }
  }

  print('''
</table>
</body>
</html>
''');
}

const _htmlEscape = HtmlEscape(HtmlEscapeMode.element);

void _printSlides(List<Page> pages, {int? lastSlide}) {
  var count = 0;
  for (var slide in pages) {
    print('*** SLIDE ${++count} ***\n');

    for (var entry in slide.allNotes) {
      print(entry);
    }

    print('');
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
  ..addFlag('html');
