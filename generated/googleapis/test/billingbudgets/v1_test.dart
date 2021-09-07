// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/billingbudgets/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleCloudBillingBudgetsV1ThresholdRule> buildUnnamed1732() => [
      buildGoogleCloudBillingBudgetsV1ThresholdRule(),
      buildGoogleCloudBillingBudgetsV1ThresholdRule(),
    ];

void checkUnnamed1732(
    core.List<api.GoogleCloudBillingBudgetsV1ThresholdRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBudgetsV1ThresholdRule(o[0]);
  checkGoogleCloudBillingBudgetsV1ThresholdRule(o[1]);
}

core.int buildCounterGoogleCloudBillingBudgetsV1Budget = 0;
api.GoogleCloudBillingBudgetsV1Budget buildGoogleCloudBillingBudgetsV1Budget() {
  final o = api.GoogleCloudBillingBudgetsV1Budget();
  buildCounterGoogleCloudBillingBudgetsV1Budget++;
  if (buildCounterGoogleCloudBillingBudgetsV1Budget < 3) {
    o.amount = buildGoogleCloudBillingBudgetsV1BudgetAmount();
    o.budgetFilter = buildGoogleCloudBillingBudgetsV1Filter();
    o.displayName = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.notificationsRule = buildGoogleCloudBillingBudgetsV1NotificationsRule();
    o.thresholdRules = buildUnnamed1732();
  }
  buildCounterGoogleCloudBillingBudgetsV1Budget--;
  return o;
}

void checkGoogleCloudBillingBudgetsV1Budget(
    api.GoogleCloudBillingBudgetsV1Budget o) {
  buildCounterGoogleCloudBillingBudgetsV1Budget++;
  if (buildCounterGoogleCloudBillingBudgetsV1Budget < 3) {
    checkGoogleCloudBillingBudgetsV1BudgetAmount(o.amount!);
    checkGoogleCloudBillingBudgetsV1Filter(o.budgetFilter!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudBillingBudgetsV1NotificationsRule(o.notificationsRule!);
    checkUnnamed1732(o.thresholdRules!);
  }
  buildCounterGoogleCloudBillingBudgetsV1Budget--;
}

core.int buildCounterGoogleCloudBillingBudgetsV1BudgetAmount = 0;
api.GoogleCloudBillingBudgetsV1BudgetAmount
    buildGoogleCloudBillingBudgetsV1BudgetAmount() {
  final o = api.GoogleCloudBillingBudgetsV1BudgetAmount();
  buildCounterGoogleCloudBillingBudgetsV1BudgetAmount++;
  if (buildCounterGoogleCloudBillingBudgetsV1BudgetAmount < 3) {
    o.lastPeriodAmount = buildGoogleCloudBillingBudgetsV1LastPeriodAmount();
    o.specifiedAmount = buildGoogleTypeMoney();
  }
  buildCounterGoogleCloudBillingBudgetsV1BudgetAmount--;
  return o;
}

void checkGoogleCloudBillingBudgetsV1BudgetAmount(
    api.GoogleCloudBillingBudgetsV1BudgetAmount o) {
  buildCounterGoogleCloudBillingBudgetsV1BudgetAmount++;
  if (buildCounterGoogleCloudBillingBudgetsV1BudgetAmount < 3) {
    checkGoogleCloudBillingBudgetsV1LastPeriodAmount(o.lastPeriodAmount!);
    checkGoogleTypeMoney(o.specifiedAmount!);
  }
  buildCounterGoogleCloudBillingBudgetsV1BudgetAmount--;
}

core.int buildCounterGoogleCloudBillingBudgetsV1CustomPeriod = 0;
api.GoogleCloudBillingBudgetsV1CustomPeriod
    buildGoogleCloudBillingBudgetsV1CustomPeriod() {
  final o = api.GoogleCloudBillingBudgetsV1CustomPeriod();
  buildCounterGoogleCloudBillingBudgetsV1CustomPeriod++;
  if (buildCounterGoogleCloudBillingBudgetsV1CustomPeriod < 3) {
    o.endDate = buildGoogleTypeDate();
    o.startDate = buildGoogleTypeDate();
  }
  buildCounterGoogleCloudBillingBudgetsV1CustomPeriod--;
  return o;
}

void checkGoogleCloudBillingBudgetsV1CustomPeriod(
    api.GoogleCloudBillingBudgetsV1CustomPeriod o) {
  buildCounterGoogleCloudBillingBudgetsV1CustomPeriod++;
  if (buildCounterGoogleCloudBillingBudgetsV1CustomPeriod < 3) {
    checkGoogleTypeDate(o.endDate!);
    checkGoogleTypeDate(o.startDate!);
  }
  buildCounterGoogleCloudBillingBudgetsV1CustomPeriod--;
}

core.List<core.String> buildUnnamed1733() => [
      'foo',
      'foo',
    ];

void checkUnnamed1733(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.Object> buildUnnamed1734() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed1734(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.List<core.Object>> buildUnnamed1735() => {
      'x': buildUnnamed1734(),
      'y': buildUnnamed1734(),
    };

void checkUnnamed1735(core.Map<core.String, core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1734(o['x']!);
  checkUnnamed1734(o['y']!);
}

core.List<core.String> buildUnnamed1736() => [
      'foo',
      'foo',
    ];

void checkUnnamed1736(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed1737() => [
      'foo',
      'foo',
    ];

void checkUnnamed1737(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed1738() => [
      'foo',
      'foo',
    ];

void checkUnnamed1738(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudBillingBudgetsV1Filter = 0;
api.GoogleCloudBillingBudgetsV1Filter buildGoogleCloudBillingBudgetsV1Filter() {
  final o = api.GoogleCloudBillingBudgetsV1Filter();
  buildCounterGoogleCloudBillingBudgetsV1Filter++;
  if (buildCounterGoogleCloudBillingBudgetsV1Filter < 3) {
    o.calendarPeriod = 'foo';
    o.creditTypes = buildUnnamed1733();
    o.creditTypesTreatment = 'foo';
    o.customPeriod = buildGoogleCloudBillingBudgetsV1CustomPeriod();
    o.labels = buildUnnamed1735();
    o.projects = buildUnnamed1736();
    o.services = buildUnnamed1737();
    o.subaccounts = buildUnnamed1738();
  }
  buildCounterGoogleCloudBillingBudgetsV1Filter--;
  return o;
}

void checkGoogleCloudBillingBudgetsV1Filter(
    api.GoogleCloudBillingBudgetsV1Filter o) {
  buildCounterGoogleCloudBillingBudgetsV1Filter++;
  if (buildCounterGoogleCloudBillingBudgetsV1Filter < 3) {
    unittest.expect(
      o.calendarPeriod!,
      unittest.equals('foo'),
    );
    checkUnnamed1733(o.creditTypes!);
    unittest.expect(
      o.creditTypesTreatment!,
      unittest.equals('foo'),
    );
    checkGoogleCloudBillingBudgetsV1CustomPeriod(o.customPeriod!);
    checkUnnamed1735(o.labels!);
    checkUnnamed1736(o.projects!);
    checkUnnamed1737(o.services!);
    checkUnnamed1738(o.subaccounts!);
  }
  buildCounterGoogleCloudBillingBudgetsV1Filter--;
}

core.int buildCounterGoogleCloudBillingBudgetsV1LastPeriodAmount = 0;
api.GoogleCloudBillingBudgetsV1LastPeriodAmount
    buildGoogleCloudBillingBudgetsV1LastPeriodAmount() {
  final o = api.GoogleCloudBillingBudgetsV1LastPeriodAmount();
  buildCounterGoogleCloudBillingBudgetsV1LastPeriodAmount++;
  if (buildCounterGoogleCloudBillingBudgetsV1LastPeriodAmount < 3) {}
  buildCounterGoogleCloudBillingBudgetsV1LastPeriodAmount--;
  return o;
}

void checkGoogleCloudBillingBudgetsV1LastPeriodAmount(
    api.GoogleCloudBillingBudgetsV1LastPeriodAmount o) {
  buildCounterGoogleCloudBillingBudgetsV1LastPeriodAmount++;
  if (buildCounterGoogleCloudBillingBudgetsV1LastPeriodAmount < 3) {}
  buildCounterGoogleCloudBillingBudgetsV1LastPeriodAmount--;
}

core.List<api.GoogleCloudBillingBudgetsV1Budget> buildUnnamed1739() => [
      buildGoogleCloudBillingBudgetsV1Budget(),
      buildGoogleCloudBillingBudgetsV1Budget(),
    ];

void checkUnnamed1739(core.List<api.GoogleCloudBillingBudgetsV1Budget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBudgetsV1Budget(o[0]);
  checkGoogleCloudBillingBudgetsV1Budget(o[1]);
}

core.int buildCounterGoogleCloudBillingBudgetsV1ListBudgetsResponse = 0;
api.GoogleCloudBillingBudgetsV1ListBudgetsResponse
    buildGoogleCloudBillingBudgetsV1ListBudgetsResponse() {
  final o = api.GoogleCloudBillingBudgetsV1ListBudgetsResponse();
  buildCounterGoogleCloudBillingBudgetsV1ListBudgetsResponse++;
  if (buildCounterGoogleCloudBillingBudgetsV1ListBudgetsResponse < 3) {
    o.budgets = buildUnnamed1739();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudBillingBudgetsV1ListBudgetsResponse--;
  return o;
}

void checkGoogleCloudBillingBudgetsV1ListBudgetsResponse(
    api.GoogleCloudBillingBudgetsV1ListBudgetsResponse o) {
  buildCounterGoogleCloudBillingBudgetsV1ListBudgetsResponse++;
  if (buildCounterGoogleCloudBillingBudgetsV1ListBudgetsResponse < 3) {
    checkUnnamed1739(o.budgets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudBillingBudgetsV1ListBudgetsResponse--;
}

core.List<core.String> buildUnnamed1740() => [
      'foo',
      'foo',
    ];

void checkUnnamed1740(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudBillingBudgetsV1NotificationsRule = 0;
api.GoogleCloudBillingBudgetsV1NotificationsRule
    buildGoogleCloudBillingBudgetsV1NotificationsRule() {
  final o = api.GoogleCloudBillingBudgetsV1NotificationsRule();
  buildCounterGoogleCloudBillingBudgetsV1NotificationsRule++;
  if (buildCounterGoogleCloudBillingBudgetsV1NotificationsRule < 3) {
    o.disableDefaultIamRecipients = true;
    o.monitoringNotificationChannels = buildUnnamed1740();
    o.pubsubTopic = 'foo';
    o.schemaVersion = 'foo';
  }
  buildCounterGoogleCloudBillingBudgetsV1NotificationsRule--;
  return o;
}

void checkGoogleCloudBillingBudgetsV1NotificationsRule(
    api.GoogleCloudBillingBudgetsV1NotificationsRule o) {
  buildCounterGoogleCloudBillingBudgetsV1NotificationsRule++;
  if (buildCounterGoogleCloudBillingBudgetsV1NotificationsRule < 3) {
    unittest.expect(o.disableDefaultIamRecipients!, unittest.isTrue);
    checkUnnamed1740(o.monitoringNotificationChannels!);
    unittest.expect(
      o.pubsubTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schemaVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudBillingBudgetsV1NotificationsRule--;
}

core.int buildCounterGoogleCloudBillingBudgetsV1ThresholdRule = 0;
api.GoogleCloudBillingBudgetsV1ThresholdRule
    buildGoogleCloudBillingBudgetsV1ThresholdRule() {
  final o = api.GoogleCloudBillingBudgetsV1ThresholdRule();
  buildCounterGoogleCloudBillingBudgetsV1ThresholdRule++;
  if (buildCounterGoogleCloudBillingBudgetsV1ThresholdRule < 3) {
    o.spendBasis = 'foo';
    o.thresholdPercent = 42.0;
  }
  buildCounterGoogleCloudBillingBudgetsV1ThresholdRule--;
  return o;
}

void checkGoogleCloudBillingBudgetsV1ThresholdRule(
    api.GoogleCloudBillingBudgetsV1ThresholdRule o) {
  buildCounterGoogleCloudBillingBudgetsV1ThresholdRule++;
  if (buildCounterGoogleCloudBillingBudgetsV1ThresholdRule < 3) {
    unittest.expect(
      o.spendBasis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thresholdPercent!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudBillingBudgetsV1ThresholdRule--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeMoney = 0;
api.GoogleTypeMoney buildGoogleTypeMoney() {
  final o = api.GoogleTypeMoney();
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterGoogleTypeMoney--;
  return o;
}

void checkGoogleTypeMoney(api.GoogleTypeMoney o) {
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeMoney--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudBillingBudgetsV1Budget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingBudgetsV1Budget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingBudgetsV1Budget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBillingBudgetsV1Budget(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBillingBudgetsV1BudgetAmount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingBudgetsV1BudgetAmount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingBudgetsV1BudgetAmount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBillingBudgetsV1BudgetAmount(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBillingBudgetsV1CustomPeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingBudgetsV1CustomPeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingBudgetsV1CustomPeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBillingBudgetsV1CustomPeriod(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBillingBudgetsV1Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingBudgetsV1Filter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingBudgetsV1Filter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBillingBudgetsV1Filter(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBillingBudgetsV1LastPeriodAmount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingBudgetsV1LastPeriodAmount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingBudgetsV1LastPeriodAmount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBillingBudgetsV1LastPeriodAmount(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBillingBudgetsV1ListBudgetsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingBudgetsV1ListBudgetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingBudgetsV1ListBudgetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBillingBudgetsV1ListBudgetsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBillingBudgetsV1NotificationsRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingBudgetsV1NotificationsRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingBudgetsV1NotificationsRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBillingBudgetsV1NotificationsRule(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBillingBudgetsV1ThresholdRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingBudgetsV1ThresholdRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingBudgetsV1ThresholdRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudBillingBudgetsV1ThresholdRule(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeMoney.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group('resource-BillingAccountsBudgetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudBillingBudgetApi(mock).billingAccounts.budgets;
      final arg_request = buildGoogleCloudBillingBudgetsV1Budget();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudBillingBudgetsV1Budget.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudBillingBudgetsV1Budget(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudBillingBudgetsV1Budget());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudBillingBudgetsV1Budget(
          response as api.GoogleCloudBillingBudgetsV1Budget);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudBillingBudgetApi(mock).billingAccounts.budgets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudBillingBudgetApi(mock).billingAccounts.budgets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudBillingBudgetsV1Budget());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBillingBudgetsV1Budget(
          response as api.GoogleCloudBillingBudgetsV1Budget);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudBillingBudgetApi(mock).billingAccounts.budgets;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudBillingBudgetsV1ListBudgetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudBillingBudgetsV1ListBudgetsResponse(
          response as api.GoogleCloudBillingBudgetsV1ListBudgetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudBillingBudgetApi(mock).billingAccounts.budgets;
      final arg_request = buildGoogleCloudBillingBudgetsV1Budget();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudBillingBudgetsV1Budget.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudBillingBudgetsV1Budget(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudBillingBudgetsV1Budget());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudBillingBudgetsV1Budget(
          response as api.GoogleCloudBillingBudgetsV1Budget);
    });
  });
}
