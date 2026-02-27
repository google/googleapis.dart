import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:test/test.dart';

void main() {
  final urlEnv = Platform.environment['E2E_URL'];

  group('E2E Validation', () {
    final url =
        urlEnv ?? 'http://localhost:${Platform.environment['PORT'] ?? '8080'}';
    final rootUri = Uri.parse(url);

    test('get user_info', () async {
      final response = await http.get(rootUri.replace(path: '/user_info'));
      expect(response.statusCode, 200);
      print('User Info: ${response.body}');
    });

    test('sign_blob', () async {
      final response = await http.get(rootUri.replace(path: '/sign_blob'));
      if (response.statusCode == 412) {
        print(
          'Skipping sign_blob test: Metadata server unavailable (local env)',
        );
        return;
      }
      expect(response.statusCode, 200, reason: response.body);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      expect(json, contains('signedBlob'));
      expect(json, contains('keyId'));
      print('Signed Blob JSON: $json');
    });
  });
}
