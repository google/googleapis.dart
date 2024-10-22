import 'package:discoveryapis_generator/discoveryapis_generator.dart';

import 'fetch_github.dart';
import 'fetch_service.dart';

abstract class FetchCore {
  const FetchCore();

  @Deprecated('Use github instead. Tis better')
  const factory FetchCore.service() = FetchService;
  const factory FetchCore.github() = FetchGitHub;

  Future<List<RestDescription>> fetchDiscoveryDocuments({
    Map<String, String>? existingRevisions,
  });
}
