import 'package:googleapis/storage/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

Future<void> main() async {
  final httpClient = await clientViaApplicationDefaultCredentials(scopes: [
    StorageApi.devstorageReadOnlyScope,
  ]);
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
