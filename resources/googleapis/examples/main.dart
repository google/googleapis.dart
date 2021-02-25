import 'package:googleapis/storage/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

final _credentials = ServiceAccountCredentials.fromJson(r'''
{
  "private_key_id": ...,
  "private_key": ...,
  "client_email": ...,
  "client_id": ...,
  "type": "service_account"
}
''');

const _scopes = [StorageApi.devstorageReadOnlyScope];

Future<void> main() async {
  final httpClient = await clientViaServiceAccount(_credentials, _scopes);
  try {
    final storage = StorageApi(httpClient);

    final buckets = await storage.buckets.list('dart-on-cloud');
    final items = buckets.items!;
    print('Received ${items.length} bucket names:');
    for (var file in items) {
      print(file.name);
    }
  } finally {
    httpClient.close();
  }
}
