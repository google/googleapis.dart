// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'dart:convert';
import 'dart:io';

import 'package:google_cloud/google_cloud.dart';
import 'package:google_cloud_shelf/google_cloud_shelf.dart';
import 'package:googleapis/oauth2/v2.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

Future<void> main() async {
  final router = Router();

  router.get('/user_info', (Request request) async {
    try {
      final client = await clientViaApplicationDefaultCredentials(
        scopes: [Oauth2Api.userinfoEmailScope],
      );
      try {
        final api = Oauth2Api(client);
        final userInfo = await api.userinfo.get();
        return Response.ok(
          'User: ${userInfo.email}',
          headers: {'content-type': 'text/plain'},
        );
      } finally {
        client.close();
      }
    } catch (e, stack) {
      print('Error: $e\n$stack');
      return Response.internalServerError(body: 'Auth failed: $e');
    }
  });

  router.get('/sign_blob', (Request request) async {
    try {
      // Need a purely authenticated client (no specific scopes needed for IAM
      // signing itself usually, but 'cloud-platform' is mentioned in docs).
      // However, clientViaApplicationDefaultCredentials requires scopes.
      final client = await clientViaApplicationDefaultCredentials(
        scopes: ['https://www.googleapis.com/auth/cloud-platform'],
      );

      String? email;
      final envCreds = Platform.environment['GOOGLE_APPLICATION_CREDENTIALS'];
      if (envCreds != null && File(envCreds).existsSync()) {
        try {
          final json = jsonDecode(File(envCreds).readAsStringSync());
          if (json is Map && json['type'] == 'service_account') {
            email = json['client_email'] as String?;
          }
        } catch (e) {
          print('Failed to parse creds file: $e');
        }
      }

      try {
        final result = await signBlob(
          client,
          utf8.encode('Hello World'),
          serviceAccountEmail: email,
        );
        return Response.ok(
          jsonEncode({'signedBlob': result.signedBlob, 'keyId': result.keyId}),
          headers: {'content-type': 'application/json'},
        );
      } finally {
        client.close();
      }
    } catch (e, stack) {
      if (e.toString().contains('metadata.google.internal')) {
        print('Skipping signBlob: Metadata server unavailable');
        return Response(412, body: 'Metadata server unavailable');
      }
      print('Error signing blob: $e\n$stack');
      return Response.internalServerError(body: 'Sign blob failed: $e');
    }
  });

  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(router.call);

  await serveHandler(handler);
}
