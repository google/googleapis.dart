// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart';
import 'package:yaml/yaml.dart';

import 'shared.dart';

const _configFile = 'config.yaml';

Object? readConfig(String key) {
  final configFile = File(_configFile);

  if (!configFile.existsSync()) {
    throw StateError('"$_configFile" does not exist.');
  }

  final yaml = loadYaml(
    configFile.readAsStringSync(),
    sourceUrl: Uri.parse(_configFile),
  );

  if (yaml is! YamlMap) {
    throw StateError('"$_configFile" does not contain a Map.');
  }

  if (!yaml.containsKey(key)) {
    throw ArgumentError('"$_configFile" does not have a value for "$key".');
  }

  return yaml[key];
}

Future<T> withClientFromUserCredentials<T>(
    List<String> scopes, Future<T> Function(AuthClient) action) async {
  final client = Client();

  final credentials = await _credentials(client, scopes);

  try {
    return await action(authenticatedClient(client, credentials));
  } on DetailedApiRequestError catch (e) {
    print(e);
    print(prettyJsonEncode(e.jsonResponse));
    rethrow;
  } finally {
    client.close();
  }
}

Future<T> withClientFromDefaultCredentials<T>(
  List<String> scopes,
  Future<T> Function(AuthClient) action,
) async {
  final client = await clientViaApplicationDefaultCredentials(
    scopes: scopes,
  );
  try {
    return await action(client);
  } finally {
    client.close();
  }
}

ClientId openClientId() => ClientId.fromJson(
      (loadYamlNode(File('client_id.yaml').readAsStringSync()) as Map)
          .cast<String, dynamic>(),
    );

Future<AccessCredentials> _credentials(
  Client client,
  List<String> scopes,
) async {
  final clientId = openClientId();

  final credentialsFile = File('credentials.json');

  AccessCredentials? credentials;

  if (credentialsFile.existsSync()) {
    final json =
        jsonDecode(credentialsFile.readAsStringSync()) as Map<String, dynamic>;

    credentials = AccessCredentials.fromJson(json);

    if (credentials.accessToken.hasExpired ||
        !credentials.scopes.toSet().containsAll(scopes)) {
      credentials = null;
      stderr.writeln(
        'Cached credentials have expired or the requested scopes mismatch - '
        'doing auth!',
      );
    }
  }

  credentials ??= await obtainAccessCredentialsViaUserConsent(
    clientId,
    scopes,
    client,
    _prompt,
    listenPort: 8181,
  );

  credentialsFile.writeAsStringSync(prettyJsonEncode(credentials));

  stderr.writeln(
    '* Credentials expire in '
    '${credentials.accessToken.expiry.difference(DateTime.now())} *',
  );

  return credentials;
}

void _prompt(String url) {
  stderr.writeln('Please go to the following URL and grant access:');
  stderr.writeln('  => $url');
  stderr.writeln();
}
