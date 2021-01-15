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

const _scopes = [StorageApi.DevstorageReadOnlyScope];

void main() {
  clientViaServiceAccount(_credentials, _scopes).then((httpClient) {
    final storage = StorageApi(httpClient);
    storage.buckets.list('dart-on-cloud').then((buckets) {
      print('Received ${buckets.items.length} bucket names:');
      for (var file in buckets.items) {
        print(file.name);
      }
    });
  });
}
