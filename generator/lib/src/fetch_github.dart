import 'dart:convert';
import 'dart:io';

import 'package:discoveryapis_generator/discoveryapis_generator.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:path/path.dart' as p;
import 'package:pool/pool.dart';

import 'fetch_core.dart';
import 'utils.dart';

const _submodulePath = 'discovery-artifact-manager';
const _discoveriesPath = 'discoveries';

class FetchGitHub extends FetchCore {
  const FetchGitHub();

  @override
  Future<List<RestDescription>> fetchDiscoveryDocuments({
    Map<String, String>? existingRevisions,
  }) async {
    final executablePath = p.dirname(Platform.script.toFilePath());
    final repoRoot = p.dirname(p.dirname(executablePath));
    final submodulePath = p.join(repoRoot, _submodulePath);
    final discoveriesPath = p.join(submodulePath, _discoveriesPath);
    final discoveriesIndex = p.join(discoveriesPath, 'index.json');

    final directoryList = DirectoryList.fromJson(
      await _jsonFromFile(discoveriesIndex),
    );

    final list = directoryList.items!;

    Future<RestDescription?> download(DirectoryListItems item) async {
      final itemPath = p.join(
        discoveriesPath,
        '${item.name}.${item.version}.json',
      );

      try {
        final description = RestDescription.fromJson(
          await _jsonFromFile(itemPath),
        );

        description.sort();

        return description;
      } on PathNotFoundException catch (e, stack) {
        ansi.red.wrap('$e\n$stack');
        return null;
      }
    }

    final pool = Pool(10);
    try {
      var count = 0;
      return await pool
          .forEach(list, (DirectoryListItems item) async {
            print(
              ansi.darkGray.wrap(
                'Requesting ${++count} of ${list.length} - ${item.id}',
              ),
            );

            RestDescription? description;
            for (var i = 1; i <= 10; i++) {
              description = await download(item);
              if (i > 1) {
                print('  ${item.id} try #$i');
              }

              final existingRevision = existingRevisions![description?.id!];
              if (existingRevision != null &&
                  existingRevision != description!.revision) {
                final compare = existingRevision.compareTo(
                  description.revision!,
                );

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
  }
}

Future<Map<String, dynamic>> _jsonFromFile(String filePath) async =>
    (await _decoder.bind(File(filePath).openRead()).single)
        as Map<String, dynamic>;

final _decoder = const Utf8Decoder().fuse(const JsonDecoder());
