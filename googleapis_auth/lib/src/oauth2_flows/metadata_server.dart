// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:async';
import 'dart:convert';

import 'package:google_cloud/google_cloud.dart';
import 'package:http/http.dart' as http;

import '../access_credentials.dart';
import '../exceptions.dart';
import '../utils.dart';
import 'base_flow.dart';

/// Obtains access credentials form the metadata server.
///
/// Using this class assumes that the current program is running a
/// ComputeEngine VM. It will retrieve the current access token from the
/// metadata server, looking first for one set in the environment under
/// `$GCE_METADATA_HOST`.
class MetadataServerAuthorizationFlow extends BaseFlow {
  static const _defaultUniverseDomainTimeout = Duration(seconds: 3);

  final String email;
  final http.Client _client;
  final Duration _universeDomainTimeout;
  String? _cachedUniverseDomain;

  MetadataServerAuthorizationFlow(
    http.Client client, {
    this.email = 'default',
    Duration universeDomainTimeout = _defaultUniverseDomainTimeout,
  }) : _client = client,
       _universeDomainTimeout = universeDomainTimeout;

  @override
  Future<AccessCredentials> run({bool refresh = false}) async {
    final tokenJsonString = await fetchMetadataValue(
      'instance/service-accounts/$email/token',
      client: _client,
    );
    final json = jsonDecode(tokenJsonString) as Map<String, dynamic>;
    final accessToken = parseAccessToken(json);

    final scopesString = await getMetadataValue(
      'instance/service-accounts/$email/scopes',
      client: _client,
      refresh: refresh,
    );
    final scopes = scopesString
        .replaceAll('\n', ' ')
        .split(' ')
        .where((part) => part.isNotEmpty)
        .toList();

    final universeDomain = await _fetchUniverseDomain(refresh: refresh);

    return AccessCredentials(
      accessToken,
      null,
      scopes,
      universeDomain: universeDomain,
    );
  }

  Future<String> _fetchUniverseDomain({bool refresh = false}) async {
    if (!refresh && _cachedUniverseDomain != null) {
      return _cachedUniverseDomain!;
    }
    final response = await _client
        .get(
          gceMetadataUrl('universe/universe-domain'),
          headers: const {'Metadata-Flavor': 'Google'},
        )
        .timeout(_universeDomainTimeout);
    if (response.statusCode == 200) {
      final trimmed = response.body.trim();
      if (trimmed.isEmpty) {
        return _cachedUniverseDomain = defaultUniverseDomain;
      }
      final normalized = tryNormalizeUniverseDomain(trimmed);
      if (normalized == null) {
        throw ServerRequestFailedException(
          'Metadata server returned an invalid universe domain: "$trimmed".',
          statusCode: response.statusCode,
          responseContent: response.body,
        );
      }
      return _cachedUniverseDomain = normalized;
    }
    // 404 indicates an older metadata server without universe-domain support.
    if (response.statusCode == 404) {
      return _cachedUniverseDomain = defaultUniverseDomain;
    }
    throw ServerRequestFailedException(
      'Failed to obtain universe domain from metadata server.',
      statusCode: response.statusCode,
      responseContent: response.body,
    );
  }
}
