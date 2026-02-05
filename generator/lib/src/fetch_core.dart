// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:discoveryapis_generator/discoveryapis_generator.dart';

import 'fetch_github.dart';
import 'fetch_service.dart';

abstract class FetchCore {
  const FetchCore();

  @Deprecated('Use github instead. Tis better')
  const factory FetchCore.service() = FetchService;
  const factory FetchCore.github() = FetchGitHub;

  Future<List<RestDescription>> fetchDiscoveryDocuments({
    Map<String, String>? existingRevisions,
  });
}
