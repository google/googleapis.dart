// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:google_cloud/constants.dart' as cloud_constants;
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
  final Uri _scopesUrl;
  final Uri _tokenUrl;
  final http.Client _client;

  factory MetadataServerAuthorizationFlow(
    http.Client client, {
    String email = 'default',
  }) {
    final encodedEmail = Uri.encodeComponent(email);
    return MetadataServerAuthorizationFlow._(
      client,
      email,
      gceMetadataUrl('instance/service-accounts/$encodedEmail/scopes'),
      gceMetadataUrl('instance/service-accounts/$encodedEmail/token'),
    );
  }

  MetadataServerAuthorizationFlow._(
    this._client,
    this.email,
    this._scopesUrl,
    this._tokenUrl,
  );

  @override
  Future<AccessCredentials> run() async {
    final json = await _client.requestJson(
      'GET',
      _tokenUrl,
      'Failed to obtain access credentials.',
      headers: cloud_constants.metadataFlavorHeaders,
    );
    final accessToken = parseAccessToken(json);

    final scopesString = await _getScopes();
    final scopes = scopesString
        .replaceAll('\n', ' ')
        .split(' ')
        .where((part) => part.isNotEmpty)
        .toList();

    return AccessCredentials(accessToken, null, scopes);
  }

  Future<String> _getScopes() async {
    final response = await _client.get(
      _scopesUrl,
      headers: cloud_constants.metadataFlavorHeaders,
    );
    return response.body;
  }
}
