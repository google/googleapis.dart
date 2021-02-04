// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discoveryapis_generator.dart_comments;

import 'utils.dart';

final _markdownToEscape =
    {'[', ']', '`'}.map((e) => RegExp('([\\\\]*)(\\$e)')).toSet();

String markdownEscape(String input) {
  for (var pattern in _markdownToEscape) {
    input = input.replaceAllMapped(
      pattern,
      (match) {
        final slashes = match[1];
        final char = match[2];

        return '$slashes${slashes.length.isEven ? '\\' : ''}$char';
      },
    );
  }
  return input;
}

const _docPrefixes = {
  'Required',
  'Optional',
  'Output only',
  'Deprecated',
  'Immutable',
  'Unimplemented',
};

final _notEndOfSentence = RegExp(r'\.[a-zA-Z]\. ');
final _validLinkRegexp = RegExp(
  r"([^ )]*\[[\w ,'\.\/]+\])" // leading non-space, then the bit in brackets
  r'[ ]?' // optional one space between, because discovery docs can be weird
  r'(\(http[s]?://[^\)\s]+\)[^ ]*)' // the bit in parens,
  // plus an optional trailing non-space
  ,
);

String bracketClean(String input) {
  if (input == null || input.isEmpty) {
    return input;
  }

  // Attempt to find weird, whitespace between the bracket and the link in
  // link syntax and fix it.
  input = input.replaceAll('] (http', '](http');

  // Attempt to find code blocks within "ticks". This seemed a bit more
  // straight forward that using regexp.
  final splits = input.split('`');
  if (splits.length > 1 && splits.length.isOdd) {
    // every sections at an odd index is within ticks
    // clean out the ones at even indexes.
    for (var i = 0; i < splits.length; i += 2) {
      splits[i] = _bracketClean(splits[i]);
    }
    return splits.join('`');
  } else {
    return _bracketClean(input);
  }
}

/// Returns [input] with likely invalid markdown `[links]` removed.
String _bracketClean(String input) => input.splitMapJoin(
      _validLinkRegexp,
      onMatch: (match) => '${match[1]}${match[2]}',
      onNonMatch: markdownEscape,
    );

/// Represents a comment of a dart element (e.g. class, method, ...)
class Comment {
  static final empty = Comment('');
  final String rawComment;

  Comment(String raw)
      : rawComment = (raw != null && raw.isNotEmpty) ? raw.trimRight() : '';

  factory Comment.header(String raw, bool clean) {
    if (raw == null) return Comment(raw);

    final prefixes = <String>{};
    Match match;
    do {
      for (var prefix in _docPrefixes) {
        // prefixes usually show up as `Prefix. Rest of thing...`
        // but sometimes they show up as `[Prefix] Rest of thing...`
        // So we cover both cases, but normalize to the first.
        match = '$prefix. '.toLowerCase().matchAsPrefix(raw.toLowerCase()) ??
            '[$prefix] '.toLowerCase().matchAsPrefix(raw.toLowerCase());
        if (match != null) {
          prefixes.add('$prefix. ');
          raw = raw.substring(match.group(0).length);
          break;
        }
      }
    } while (match != null);

    if (clean) {
      raw = bracketClean(raw);
    }

    // Very annoying. Sometimes we have first sentences like
    //
    //   "Something (e.g. like this)."
    //
    // Where we don't want to break in the middle of the `(e.g.`.
    var start = 0;
    int endOfFirstSentence;
    for (;;) {
      endOfFirstSentence = raw.indexOf(
        '. ',
        start,
      );
      if (endOfFirstSentence < 0) {
        // No sentence end!
        break;
      }
      final falseEndIndex = raw.indexOf(_notEndOfSentence, start);
      if (falseEndIndex < 0 || falseEndIndex > endOfFirstSentence) {
        // No false end to worry about
        break;
      }

      start = endOfFirstSentence + 1;
    }

    final lines = <String>[];

    if (endOfFirstSentence < 1) {
      lines.add(raw);
    } else {
      lines.addAll([
        raw.substring(0, endOfFirstSentence + 1),
        raw.substring(endOfFirstSentence + 2),
      ]);
    }

    if (prefixes.isNotEmpty) {
      lines.add(prefixes.join('').trim());
    }

    return Comment(lines.join('\n\n'));
  }

  /// Returns a block string which has [indentationLevel] spaces in front of it.
  ///
  /// If the rawComment is empty, an empty string will be returned. Otherwise,
  /// the block will start with spaces and ends with a new line.
  String asDartDoc(int indentationLevel) {
    if (rawComment.isEmpty) return '';

    final commentString = escapeComment(rawComment);
    final spaces = ' ' * indentationLevel;

    if (!commentString.contains('\n')) {
      final onelineComment =
          '$spaces${'/// ${escapeComment(commentString)}\n'}';
      if (onelineComment.length <= 80) {
        return onelineComment;
      }
    }

    final result = StringBuffer();

    final maxCommentLine = 80 - (indentationLevel + '/// '.length);
    final expandedLines = commentString.split('\n').expand((line) {
      if (line.length < maxCommentLine) {
        return [line];
      }

      // Try to break the line into several lines.
      final split = <String>[];
      final buffer = StringBuffer();

      for (var part in urlSplit(line)) {
        if ((buffer.length + part.length + 1) > maxCommentLine) {
          // If we have already data, we'll write a new line.
          if (buffer.length > 0) {
            split.add(buffer.toString());
            buffer.clear();
          }
        }
        if (buffer.isNotEmpty) buffer.write(' ');
        buffer.write(part);
      }
      if (buffer.isNotEmpty) split.add(buffer.toString());
      return split;
    });

    for (var line in expandedLines) {
      line = line.trimRight();
      result.write('$spaces///');
      if (line.isNotEmpty) {
        result.writeln(' $line');
      } else {
        result.writeln();
      }
    }

    return '$result';
  }
}

List<String> urlSplit(String input) {
  final result = <String>[];

  input.splitMapJoin(_validLinkRegexp, onMatch: (match) {
    result.add(match[0]);
    // no-op - not using the result
    return '';
  }, onNonMatch: (value) {
    result.addAll(value.split(' ').where((element) => element.isNotEmpty));
    // no-op - not using the result
    return '';
  });

  return result;
}
