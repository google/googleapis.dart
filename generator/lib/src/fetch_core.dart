import 'package:discoveryapis_generator/discoveryapis_generator.dart';

import 'fetch_service.dart';

abstract class FetchCore {
  const FetchCore();

  const factory FetchCore.service() = FetchService;

  Future<List<RestDescription>> fetchDiscoveryDocuments({
    Map<String, String>? existingRevisions,
    Map<String, String>? additionalEntries,
  });
}
