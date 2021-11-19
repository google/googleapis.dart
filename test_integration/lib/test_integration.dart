// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:yaml/yaml.dart';

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
    List<String> scopes, Future<T> Function(http.Client) action) async {
  final client = IOClient();

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
  Future<T> Function(http.Client) action,
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
  IOClient client,
  List<String> scopes,
) async {
  final clientId = openClientId();

  final credentialsFile = File('credentials.json');

  AccessCredentials? credentials;

  if (credentialsFile.existsSync()) {
    final json =
        jsonDecode(credentialsFile.readAsStringSync()) as Map<String, dynamic>;

    credentials = AccessCredentials.fromJson(json);

    if (credentials.scopes.toSet().containsAll(scopes)) {
      credentials = await refreshCredentials(clientId, credentials, client);
    } else {
      credentials = null;
      print('Cached credentials lack the requested scopes - doing auth!');
    }
  }

  credentials ??= await obtainAccessCredentialsViaUserConsent(
    clientId,
    scopes,
    client,
    _prompt,
  );

  credentialsFile.writeAsStringSync(prettyJsonEncode(credentials));

  print(
    '* Credentials expire in '
    '${credentials.accessToken.expiry.difference(DateTime.now())} *',
  );

  return credentials;
}

void _prompt(String url) {
  print('Please go to the following URL and grant access:');
  print('  => $url');
  print('');
}

String prettyJsonEncode(Object? object) =>
    const JsonEncoder.withIndent(' ').convert(object);
