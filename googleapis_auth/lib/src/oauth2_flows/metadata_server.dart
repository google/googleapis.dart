// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:google_cloud/general.dart';
import 'package:http/http.dart' as http;

import '../access_credentials.dart';
import '../utils.dart';
import 'base_flow.dart';

/// Obtains access credentials form the metadata server.
///
/// Using this class assumes that the current program is running a
/// ComputeEngine VM. It will retrieve the current access token from the
/// metadata server, looking first for one set in the environment under
/// `$GCE_METADATA_HOST`.
class MetadataServerAuthorizationFlow extends BaseFlow {
  final String email;
  final http.Client _client;

  MetadataServerAuthorizationFlow(this._client, {this.email = 'default'});

  @override
  Future<AccessCredentials> run({bool refresh = false}) async {
    final tokenJsonString = await fetchMetadataValue(
      'instance/service-accounts/$email/token',
      client: _client,
    );
    final json = jsonDecode(tokenJsonString) as Map<String, dynamic>;
    final accessToken = parseAccessToken(json);

    final scopesString = await _getScopes(refresh: refresh);
    final scopes = scopesString
        .replaceAll('\n', ' ')
        .split(' ')
        .where((part) => part.isNotEmpty)
        .toList();

    return AccessCredentials(accessToken, null, scopes);
  }

  Future<String> _getScopes({bool refresh = false}) async => getMetadataValue(
    'instance/service-accounts/$email/scopes',
    client: _client,
    refresh: refresh,
  );
}
