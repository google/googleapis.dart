// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';
import 'dart:io';

import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:googleapis_auth/src/adc_utils.dart'
    show fromApplicationsCredentialsFile;
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

import '../test_utils.dart';

const authorizedUserJson = <String, Object?>{
  'client_id': 'id',
  'client_secret': 'secret',
  'refresh_token': 'refresh',
  'type': 'authorized_user',
};

Map<String, Object?> externalAccountJson(
  String subjectTokenPath, {
  String audience = 'aud',
  String? tokenUrl = 'https://sts.googleapis.com/v1/token',
  String? impersonationUrl,
  String? universeDomain,
  String? quotaProjectId,
  Map<String, Object?> overrides = const {},
}) => {
  'type': 'external_account',
  'audience': audience,
  'subject_token_type': 'urn:ietf:params:oauth:token-type:jwt',
  'token_url': ?tokenUrl,
  'service_account_impersonation_url': ?impersonationUrl,
  'universe_domain': ?universeDomain,
  'quota_project_id': ?quotaProjectId,
  'credential_source': {'file': subjectTokenPath},
  ...overrides,
};

Future<AutoRefreshingAuthClient> loadAdcCreds(
  Map<String, Object?> config,
  Client client, {
  List<String> scopes = const ['s1'],
  String fileName = 'creds.json',
}) async {
  await d.file(fileName, jsonEncode(config)).create();
  return fromApplicationsCredentialsFile(
    File(d.path(fileName)),
    'test-credentials-file',
    scopes,
    client,
  );
}

Future<void> expectAdcError(
  Map<String, Object?> config,
  String expectedMessage, {
  List<String> scopes = const ['s1'],
  String fileName = 'bad_creds.json',
  String? reason,
}) async {
  await d.file(fileName, jsonEncode(config)).create();
  await expectLater(
    fromApplicationsCredentialsFile(
      File(d.path(fileName)),
      'test-credentials-file',
      scopes,
      neverClient,
    ),
    throwsA(
      isA<CredentialsFileException>().having(
        (e) => e.message,
        'message',
        contains(expectedMessage),
      ),
    ),
    reason: reason,
  );
}
