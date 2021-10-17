// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:googleapis/admob/v1.dart';
import 'package:test_integration/test_integration.dart';

// Allow reproduction of https://github.com/google/googleapis.dart/issues/183
Future<void> main() async {
  await withClientFromUserCredentials(
    [AdMobApi.admobReportScope],
    (client) async {
      final api = AdMobApi(client);

      final accounts = await api.accounts.list();
      print(prettyJsonEncode(accounts));

      final result = await api.accounts.networkReport.generate(
        GenerateNetworkReportRequest(
            reportSpec: NetworkReportSpec.fromJson({
          'dateRange': {
            'startDate': {'year': 2021, 'month': 9, 'day': 1},
            'endDate': {'year': 2021, 'month': 9, 'day': 30}
          },
          'dimensions': ['DATE', 'APP', 'COUNTRY'],
          'metrics': ['CLICKS', 'ESTIMATED_EARNINGS'],
          'dimensionFilters': [
            {
              'dimension': 'COUNTRY',
              'matchesAny': {
                'values': ['US', 'CN']
              }
            }
          ],
          'sortConditions': [
            {'dimension': 'APP', 'order': 'ASCENDING'},
            {'metric': 'CLICKS', 'order': 'DESCENDING'}
          ],
          'localizationSettings': {
            'currencyCode': 'USD',
            'languageCode': 'en-US'
          }
        })),
        accounts.account!.first.name!,
      );

      print(prettyJsonEncode(result));
    },
  );
}
