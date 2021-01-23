// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discoveryapis_generator.dart_comments;

import 'utils.dart';

/// Represents a comment of a dart element (e.g. class, method, ...)
class Comment {
  static final empty = Comment('');
  final String rawComment;

  Comment(String raw)
      : rawComment = (raw != null && raw.isNotEmpty) ? raw.trimRight() : '';

  /// Returns a block string which has [indentationLevel] spaces in front of it.
  ///
  /// If the rawComment is empty, an empty string will be returned. Otherwise,
  /// the block will start with spaces and ends with a new line.
  String asDartDoc(int indentationLevel) {
    if (rawComment.isEmpty) return '';

    final commentString = escapeComment(rawComment);
    final spaces = ' ' * indentationLevel;

    String multilineComment() {
      final result = StringBuffer();

      final maxCommentLine = 80 - (indentationLevel + '/// '.length);
      final expandedLines = commentString.split('\n').expand((String s) {
        if (s.length < maxCommentLine) {
          return [s];
        }

        // Try to break the line into several lines.
        final splitted = <String>[];
        final sb = StringBuffer();

        for (var part in s.split(' ')) {
          if ((sb.length + part.length + 1) > maxCommentLine) {
            // If we have already data, we'll write a new line.
            if (sb.length > 0) {
              splitted.add('$sb');
              sb.clear();
            }
          }
          if (sb.isNotEmpty) sb.write(' ');
          sb.write(part);
        }
        if (sb.isNotEmpty) splitted.add('$sb');
        return splitted;
      });

      for (var line in expandedLines) {
        line = line.trimRight();
        result.write('$spaces///');
        if (line.isNotEmpty) {
          result.writeln(' $line');
        } else {
          result.writeln('');
        }
      }

      return '$result';
    }

    if (!commentString.contains('\n')) {
      final onelineComment = spaces + '/// ${escapeComment(commentString)}\n';
      if (onelineComment.length <= 80) {
        return onelineComment;
      }
      return multilineComment();
    } else {
      return multilineComment();
    }
  }
}
