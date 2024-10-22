import 'dart:async';
import 'dart:convert';

import 'package:discoveryapis_generator/discoveryapis_generator.dart';
import 'package:http/io_client.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:pool/pool.dart';

import 'fetch_core.dart';
import 'utils.dart';

class FetchService extends FetchCore {
  const FetchService();

  @override
  Future<List<RestDescription>> fetchDiscoveryDocuments({
    Map<String, String>? existingRevisions,
    Map<String, String>? additionalEntries,
  }) async {
    final client = IOClient();

    Future<RestDescription?> download(DirectoryListItems item) async {
      try {
        final result = await client.get(
          Uri.parse(item.discoveryRestUrl!),
          headers: requestHeaders,
        );

        if (result.statusCode != 200) {
          throw StateError(
            'Not a 200 – ${result.statusCode}\n${result.body}',
          );
        }

        final description = RestDescription.fromJson(
          jsonDecode(result.body) as Map<String, dynamic>,
        );

        // Sort members here for stability in the output!
        description.sort();

        return description;
      } catch (e, stack) {
        print(
          ansi.red.wrap(
            '''
${item.discoveryRestUrl}
Failed to retrieve document for "${item.name}:${item.version}" -> Ignoring!
$e
$stack
''',
          ),
        );
        return null;
      }
    }

    try {
      final directoryList = await DiscoveryApi(client).apis.list();
      final list = directoryList.items!;

      if (additionalEntries != null) {
        for (var entry in additionalEntries.entries) {
          list.add(DirectoryListItems(
            id: entry.key,
            discoveryRestUrl: entry.value,
          ));
        }
      }

      final pool = Pool(10);
      try {
        var count = 0;
        return await pool
            .forEach(list, (DirectoryListItems item) async {
              print(ansi.darkGray.wrap(
                'Requesting ${++count} of ${list.length} - ${item.id}',
              ));

              RestDescription? description;
              for (var i = 1; i <= 10; i++) {
                description = await download(item);
                if (i > 1) {
                  print('  ${item.id} try #$i');
                }

                final existingRevision = existingRevisions![description?.id!];
                if (existingRevision != null &&
                    existingRevision != description!.revision) {
                  final compare =
                      existingRevision.compareTo(description.revision!);

                  if (compare.isNegative) {
                    print(
                      '  New! ${description.id} '
                      'from $existingRevision to ${description.revision}',
                    );
                  } else {
                    final tryAgainLag = i > 5 ? 5 : i;
                    print(
                      '  Old revision for ${description.id} '
                      'from $existingRevision to ${description.revision}.\n'
                      '    Trying again in $tryAgainLag second(s) – '
                      '${item.discoveryRestUrl}',
                    );
                    await Future<void>.delayed(Duration(seconds: tryAgainLag));
                    continue;
                  }
                }

                return description;
              }
              return description;
            })
            .where((rd) => rd != null)
            .cast<RestDescription>()
            .toList();
      } finally {
        await pool.close();
      }
    } finally {
      client.close();
    }
  }
}
