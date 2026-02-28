// Copyright 2024 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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
