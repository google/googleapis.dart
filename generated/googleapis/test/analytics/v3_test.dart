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

import 'package:googleapis/analytics/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccountChildLink = 0;
api.AccountChildLink buildAccountChildLink() {
  final o = api.AccountChildLink();
  buildCounterAccountChildLink++;
  if (buildCounterAccountChildLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterAccountChildLink--;
  return o;
}

void checkAccountChildLink(api.AccountChildLink o) {
  buildCounterAccountChildLink++;
  if (buildCounterAccountChildLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountChildLink--;
}

core.List<core.String> buildUnnamed5793() => [
      'foo',
      'foo',
    ];

void checkUnnamed5793(core.List<core.String> o) {
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

core.int buildCounterAccountPermissions = 0;
api.AccountPermissions buildAccountPermissions() {
  final o = api.AccountPermissions();
  buildCounterAccountPermissions++;
  if (buildCounterAccountPermissions < 3) {
    o.effective = buildUnnamed5793();
  }
  buildCounterAccountPermissions--;
  return o;
}

void checkAccountPermissions(api.AccountPermissions o) {
  buildCounterAccountPermissions++;
  if (buildCounterAccountPermissions < 3) {
    checkUnnamed5793(o.effective!);
  }
  buildCounterAccountPermissions--;
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.childLink = buildAccountChildLink();
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.permissions = buildAccountPermissions();
    o.selfLink = 'foo';
    o.starred = true;
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkAccountChildLink(o.childLink!);
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkAccountPermissions(o.permissions!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.starred!, unittest.isTrue);
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
  }
  buildCounterAccount--;
}

core.int buildCounterAccountRef = 0;
api.AccountRef buildAccountRef() {
  final o = api.AccountRef();
  buildCounterAccountRef++;
  if (buildCounterAccountRef < 3) {
    o.href = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterAccountRef--;
  return o;
}

void checkAccountRef(api.AccountRef o) {
  buildCounterAccountRef++;
  if (buildCounterAccountRef < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountRef--;
}

core.List<api.AccountSummary> buildUnnamed5794() => [
      buildAccountSummary(),
      buildAccountSummary(),
    ];

void checkUnnamed5794(core.List<api.AccountSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountSummary(o[0]);
  checkAccountSummary(o[1]);
}

core.int buildCounterAccountSummaries = 0;
api.AccountSummaries buildAccountSummaries() {
  final o = api.AccountSummaries();
  buildCounterAccountSummaries++;
  if (buildCounterAccountSummaries < 3) {
    o.items = buildUnnamed5794();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterAccountSummaries--;
  return o;
}

void checkAccountSummaries(api.AccountSummaries o) {
  buildCounterAccountSummaries++;
  if (buildCounterAccountSummaries < 3) {
    checkUnnamed5794(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountSummaries--;
}

core.List<api.WebPropertySummary> buildUnnamed5795() => [
      buildWebPropertySummary(),
      buildWebPropertySummary(),
    ];

void checkUnnamed5795(core.List<api.WebPropertySummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebPropertySummary(o[0]);
  checkWebPropertySummary(o[1]);
}

core.int buildCounterAccountSummary = 0;
api.AccountSummary buildAccountSummary() {
  final o = api.AccountSummary();
  buildCounterAccountSummary++;
  if (buildCounterAccountSummary < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.starred = true;
    o.webProperties = buildUnnamed5795();
  }
  buildCounterAccountSummary--;
  return o;
}

void checkAccountSummary(api.AccountSummary o) {
  buildCounterAccountSummary++;
  if (buildCounterAccountSummary < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.starred!, unittest.isTrue);
    checkUnnamed5795(o.webProperties!);
  }
  buildCounterAccountSummary--;
}

core.int buildCounterAccountTicket = 0;
api.AccountTicket buildAccountTicket() {
  final o = api.AccountTicket();
  buildCounterAccountTicket++;
  if (buildCounterAccountTicket < 3) {
    o.account = buildAccount();
    o.id = 'foo';
    o.kind = 'foo';
    o.profile = buildProfile();
    o.redirectUri = 'foo';
    o.webproperty = buildWebproperty();
  }
  buildCounterAccountTicket--;
  return o;
}

void checkAccountTicket(api.AccountTicket o) {
  buildCounterAccountTicket++;
  if (buildCounterAccountTicket < 3) {
    checkAccount(o.account!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkProfile(o.profile!);
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
    checkWebproperty(o.webproperty!);
  }
  buildCounterAccountTicket--;
}

core.int buildCounterAccountTreeRequest = 0;
api.AccountTreeRequest buildAccountTreeRequest() {
  final o = api.AccountTreeRequest();
  buildCounterAccountTreeRequest++;
  if (buildCounterAccountTreeRequest < 3) {
    o.accountName = 'foo';
    o.kind = 'foo';
    o.profileName = 'foo';
    o.timezone = 'foo';
    o.webpropertyName = 'foo';
    o.websiteUrl = 'foo';
  }
  buildCounterAccountTreeRequest--;
  return o;
}

void checkAccountTreeRequest(api.AccountTreeRequest o) {
  buildCounterAccountTreeRequest++;
  if (buildCounterAccountTreeRequest < 3) {
    unittest.expect(
      o.accountName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timezone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webpropertyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.websiteUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountTreeRequest--;
}

core.int buildCounterAccountTreeResponse = 0;
api.AccountTreeResponse buildAccountTreeResponse() {
  final o = api.AccountTreeResponse();
  buildCounterAccountTreeResponse++;
  if (buildCounterAccountTreeResponse < 3) {
    o.account = buildAccount();
    o.kind = 'foo';
    o.profile = buildProfile();
    o.webproperty = buildWebproperty();
  }
  buildCounterAccountTreeResponse--;
  return o;
}

void checkAccountTreeResponse(api.AccountTreeResponse o) {
  buildCounterAccountTreeResponse++;
  if (buildCounterAccountTreeResponse < 3) {
    checkAccount(o.account!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkProfile(o.profile!);
    checkWebproperty(o.webproperty!);
  }
  buildCounterAccountTreeResponse--;
}

core.List<api.Account> buildUnnamed5796() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed5796(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccounts = 0;
api.Accounts buildAccounts() {
  final o = api.Accounts();
  buildCounterAccounts++;
  if (buildCounterAccounts < 3) {
    o.items = buildUnnamed5796();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterAccounts--;
  return o;
}

void checkAccounts(api.Accounts o) {
  buildCounterAccounts++;
  if (buildCounterAccounts < 3) {
    checkUnnamed5796(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccounts--;
}

core.int buildCounterAdWordsAccount = 0;
api.AdWordsAccount buildAdWordsAccount() {
  final o = api.AdWordsAccount();
  buildCounterAdWordsAccount++;
  if (buildCounterAdWordsAccount < 3) {
    o.autoTaggingEnabled = true;
    o.customerId = 'foo';
    o.kind = 'foo';
  }
  buildCounterAdWordsAccount--;
  return o;
}

void checkAdWordsAccount(api.AdWordsAccount o) {
  buildCounterAdWordsAccount++;
  if (buildCounterAdWordsAccount < 3) {
    unittest.expect(o.autoTaggingEnabled!, unittest.isTrue);
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdWordsAccount--;
}

core.List<core.String> buildUnnamed5797() => [
      'foo',
      'foo',
    ];

void checkUnnamed5797(core.List<core.String> o) {
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

core.int buildCounterAnalyticsDataimportDeleteUploadDataRequest = 0;
api.AnalyticsDataimportDeleteUploadDataRequest
    buildAnalyticsDataimportDeleteUploadDataRequest() {
  final o = api.AnalyticsDataimportDeleteUploadDataRequest();
  buildCounterAnalyticsDataimportDeleteUploadDataRequest++;
  if (buildCounterAnalyticsDataimportDeleteUploadDataRequest < 3) {
    o.customDataImportUids = buildUnnamed5797();
  }
  buildCounterAnalyticsDataimportDeleteUploadDataRequest--;
  return o;
}

void checkAnalyticsDataimportDeleteUploadDataRequest(
    api.AnalyticsDataimportDeleteUploadDataRequest o) {
  buildCounterAnalyticsDataimportDeleteUploadDataRequest++;
  if (buildCounterAnalyticsDataimportDeleteUploadDataRequest < 3) {
    checkUnnamed5797(o.customDataImportUids!);
  }
  buildCounterAnalyticsDataimportDeleteUploadDataRequest--;
}

core.Map<core.String, core.String> buildUnnamed5798() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5798(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterColumn = 0;
api.Column buildColumn() {
  final o = api.Column();
  buildCounterColumn++;
  if (buildCounterColumn < 3) {
    o.attributes = buildUnnamed5798();
    o.id = 'foo';
    o.kind = 'foo';
  }
  buildCounterColumn--;
  return o;
}

void checkColumn(api.Column o) {
  buildCounterColumn++;
  if (buildCounterColumn < 3) {
    checkUnnamed5798(o.attributes!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterColumn--;
}

core.List<core.String> buildUnnamed5799() => [
      'foo',
      'foo',
    ];

void checkUnnamed5799(core.List<core.String> o) {
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

core.List<api.Column> buildUnnamed5800() => [
      buildColumn(),
      buildColumn(),
    ];

void checkUnnamed5800(core.List<api.Column> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumn(o[0]);
  checkColumn(o[1]);
}

core.int buildCounterColumns = 0;
api.Columns buildColumns() {
  final o = api.Columns();
  buildCounterColumns++;
  if (buildCounterColumns < 3) {
    o.attributeNames = buildUnnamed5799();
    o.etag = 'foo';
    o.items = buildUnnamed5800();
    o.kind = 'foo';
    o.totalResults = 42;
  }
  buildCounterColumns--;
  return o;
}

void checkColumns(api.Columns o) {
  buildCounterColumns++;
  if (buildCounterColumns < 3) {
    checkUnnamed5799(o.attributeNames!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed5800(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
  }
  buildCounterColumns--;
}

core.int buildCounterCustomDataSourceChildLink = 0;
api.CustomDataSourceChildLink buildCustomDataSourceChildLink() {
  final o = api.CustomDataSourceChildLink();
  buildCounterCustomDataSourceChildLink++;
  if (buildCounterCustomDataSourceChildLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterCustomDataSourceChildLink--;
  return o;
}

void checkCustomDataSourceChildLink(api.CustomDataSourceChildLink o) {
  buildCounterCustomDataSourceChildLink++;
  if (buildCounterCustomDataSourceChildLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomDataSourceChildLink--;
}

core.int buildCounterCustomDataSourceParentLink = 0;
api.CustomDataSourceParentLink buildCustomDataSourceParentLink() {
  final o = api.CustomDataSourceParentLink();
  buildCounterCustomDataSourceParentLink++;
  if (buildCounterCustomDataSourceParentLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterCustomDataSourceParentLink--;
  return o;
}

void checkCustomDataSourceParentLink(api.CustomDataSourceParentLink o) {
  buildCounterCustomDataSourceParentLink++;
  if (buildCounterCustomDataSourceParentLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomDataSourceParentLink--;
}

core.List<core.String> buildUnnamed5801() => [
      'foo',
      'foo',
    ];

void checkUnnamed5801(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5802() => [
      'foo',
      'foo',
    ];

void checkUnnamed5802(core.List<core.String> o) {
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

core.int buildCounterCustomDataSource = 0;
api.CustomDataSource buildCustomDataSource() {
  final o = api.CustomDataSource();
  buildCounterCustomDataSource++;
  if (buildCounterCustomDataSource < 3) {
    o.accountId = 'foo';
    o.childLink = buildCustomDataSourceChildLink();
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.description = 'foo';
    o.id = 'foo';
    o.importBehavior = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.parentLink = buildCustomDataSourceParentLink();
    o.profilesLinked = buildUnnamed5801();
    o.schema = buildUnnamed5802();
    o.selfLink = 'foo';
    o.type = 'foo';
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
    o.uploadType = 'foo';
    o.webPropertyId = 'foo';
  }
  buildCounterCustomDataSource--;
  return o;
}

void checkCustomDataSource(api.CustomDataSource o) {
  buildCounterCustomDataSource++;
  if (buildCounterCustomDataSource < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkCustomDataSourceChildLink(o.childLink!);
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importBehavior!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkCustomDataSourceParentLink(o.parentLink!);
    checkUnnamed5801(o.profilesLinked!);
    checkUnnamed5802(o.schema!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.uploadType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomDataSource--;
}

core.List<api.CustomDataSource> buildUnnamed5803() => [
      buildCustomDataSource(),
      buildCustomDataSource(),
    ];

void checkUnnamed5803(core.List<api.CustomDataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomDataSource(o[0]);
  checkCustomDataSource(o[1]);
}

core.int buildCounterCustomDataSources = 0;
api.CustomDataSources buildCustomDataSources() {
  final o = api.CustomDataSources();
  buildCounterCustomDataSources++;
  if (buildCounterCustomDataSources < 3) {
    o.items = buildUnnamed5803();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterCustomDataSources--;
  return o;
}

void checkCustomDataSources(api.CustomDataSources o) {
  buildCounterCustomDataSources++;
  if (buildCounterCustomDataSources < 3) {
    checkUnnamed5803(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomDataSources--;
}

core.int buildCounterCustomDimensionParentLink = 0;
api.CustomDimensionParentLink buildCustomDimensionParentLink() {
  final o = api.CustomDimensionParentLink();
  buildCounterCustomDimensionParentLink++;
  if (buildCounterCustomDimensionParentLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterCustomDimensionParentLink--;
  return o;
}

void checkCustomDimensionParentLink(api.CustomDimensionParentLink o) {
  buildCounterCustomDimensionParentLink++;
  if (buildCounterCustomDimensionParentLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomDimensionParentLink--;
}

core.int buildCounterCustomDimension = 0;
api.CustomDimension buildCustomDimension() {
  final o = api.CustomDimension();
  buildCounterCustomDimension++;
  if (buildCounterCustomDimension < 3) {
    o.accountId = 'foo';
    o.active = true;
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.id = 'foo';
    o.index = 42;
    o.kind = 'foo';
    o.name = 'foo';
    o.parentLink = buildCustomDimensionParentLink();
    o.scope = 'foo';
    o.selfLink = 'foo';
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
    o.webPropertyId = 'foo';
  }
  buildCounterCustomDimension--;
  return o;
}

void checkCustomDimension(api.CustomDimension o) {
  buildCounterCustomDimension++;
  if (buildCounterCustomDimension < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkCustomDimensionParentLink(o.parentLink!);
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomDimension--;
}

core.List<api.CustomDimension> buildUnnamed5804() => [
      buildCustomDimension(),
      buildCustomDimension(),
    ];

void checkUnnamed5804(core.List<api.CustomDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomDimension(o[0]);
  checkCustomDimension(o[1]);
}

core.int buildCounterCustomDimensions = 0;
api.CustomDimensions buildCustomDimensions() {
  final o = api.CustomDimensions();
  buildCounterCustomDimensions++;
  if (buildCounterCustomDimensions < 3) {
    o.items = buildUnnamed5804();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterCustomDimensions--;
  return o;
}

void checkCustomDimensions(api.CustomDimensions o) {
  buildCounterCustomDimensions++;
  if (buildCounterCustomDimensions < 3) {
    checkUnnamed5804(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomDimensions--;
}

core.int buildCounterCustomMetricParentLink = 0;
api.CustomMetricParentLink buildCustomMetricParentLink() {
  final o = api.CustomMetricParentLink();
  buildCounterCustomMetricParentLink++;
  if (buildCounterCustomMetricParentLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterCustomMetricParentLink--;
  return o;
}

void checkCustomMetricParentLink(api.CustomMetricParentLink o) {
  buildCounterCustomMetricParentLink++;
  if (buildCounterCustomMetricParentLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomMetricParentLink--;
}

core.int buildCounterCustomMetric = 0;
api.CustomMetric buildCustomMetric() {
  final o = api.CustomMetric();
  buildCounterCustomMetric++;
  if (buildCounterCustomMetric < 3) {
    o.accountId = 'foo';
    o.active = true;
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.id = 'foo';
    o.index = 42;
    o.kind = 'foo';
    o.maxValue = 'foo';
    o.minValue = 'foo';
    o.name = 'foo';
    o.parentLink = buildCustomMetricParentLink();
    o.scope = 'foo';
    o.selfLink = 'foo';
    o.type = 'foo';
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
    o.webPropertyId = 'foo';
  }
  buildCounterCustomMetric--;
  return o;
}

void checkCustomMetric(api.CustomMetric o) {
  buildCounterCustomMetric++;
  if (buildCounterCustomMetric < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkCustomMetricParentLink(o.parentLink!);
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomMetric--;
}

core.List<api.CustomMetric> buildUnnamed5805() => [
      buildCustomMetric(),
      buildCustomMetric(),
    ];

void checkUnnamed5805(core.List<api.CustomMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomMetric(o[0]);
  checkCustomMetric(o[1]);
}

core.int buildCounterCustomMetrics = 0;
api.CustomMetrics buildCustomMetrics() {
  final o = api.CustomMetrics();
  buildCounterCustomMetrics++;
  if (buildCounterCustomMetrics < 3) {
    o.items = buildUnnamed5805();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterCustomMetrics--;
  return o;
}

void checkCustomMetrics(api.CustomMetrics o) {
  buildCounterCustomMetrics++;
  if (buildCounterCustomMetrics < 3) {
    checkUnnamed5805(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomMetrics--;
}

core.List<api.AdWordsAccount> buildUnnamed5806() => [
      buildAdWordsAccount(),
      buildAdWordsAccount(),
    ];

void checkUnnamed5806(core.List<api.AdWordsAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdWordsAccount(o[0]);
  checkAdWordsAccount(o[1]);
}

core.int buildCounterEntityAdWordsLinkEntity = 0;
api.EntityAdWordsLinkEntity buildEntityAdWordsLinkEntity() {
  final o = api.EntityAdWordsLinkEntity();
  buildCounterEntityAdWordsLinkEntity++;
  if (buildCounterEntityAdWordsLinkEntity < 3) {
    o.webPropertyRef = buildWebPropertyRef();
  }
  buildCounterEntityAdWordsLinkEntity--;
  return o;
}

void checkEntityAdWordsLinkEntity(api.EntityAdWordsLinkEntity o) {
  buildCounterEntityAdWordsLinkEntity++;
  if (buildCounterEntityAdWordsLinkEntity < 3) {
    checkWebPropertyRef(o.webPropertyRef!);
  }
  buildCounterEntityAdWordsLinkEntity--;
}

core.List<core.String> buildUnnamed5807() => [
      'foo',
      'foo',
    ];

void checkUnnamed5807(core.List<core.String> o) {
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

core.int buildCounterEntityAdWordsLink = 0;
api.EntityAdWordsLink buildEntityAdWordsLink() {
  final o = api.EntityAdWordsLink();
  buildCounterEntityAdWordsLink++;
  if (buildCounterEntityAdWordsLink < 3) {
    o.adWordsAccounts = buildUnnamed5806();
    o.entity = buildEntityAdWordsLinkEntity();
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.profileIds = buildUnnamed5807();
    o.selfLink = 'foo';
  }
  buildCounterEntityAdWordsLink--;
  return o;
}

void checkEntityAdWordsLink(api.EntityAdWordsLink o) {
  buildCounterEntityAdWordsLink++;
  if (buildCounterEntityAdWordsLink < 3) {
    checkUnnamed5806(o.adWordsAccounts!);
    checkEntityAdWordsLinkEntity(o.entity!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5807(o.profileIds!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntityAdWordsLink--;
}

core.List<api.EntityAdWordsLink> buildUnnamed5808() => [
      buildEntityAdWordsLink(),
      buildEntityAdWordsLink(),
    ];

void checkUnnamed5808(core.List<api.EntityAdWordsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAdWordsLink(o[0]);
  checkEntityAdWordsLink(o[1]);
}

core.int buildCounterEntityAdWordsLinks = 0;
api.EntityAdWordsLinks buildEntityAdWordsLinks() {
  final o = api.EntityAdWordsLinks();
  buildCounterEntityAdWordsLinks++;
  if (buildCounterEntityAdWordsLinks < 3) {
    o.items = buildUnnamed5808();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
  }
  buildCounterEntityAdWordsLinks--;
  return o;
}

void checkEntityAdWordsLinks(api.EntityAdWordsLinks o) {
  buildCounterEntityAdWordsLinks++;
  if (buildCounterEntityAdWordsLinks < 3) {
    checkUnnamed5808(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
  }
  buildCounterEntityAdWordsLinks--;
}

core.int buildCounterEntityUserLinkEntity = 0;
api.EntityUserLinkEntity buildEntityUserLinkEntity() {
  final o = api.EntityUserLinkEntity();
  buildCounterEntityUserLinkEntity++;
  if (buildCounterEntityUserLinkEntity < 3) {
    o.accountRef = buildAccountRef();
    o.profileRef = buildProfileRef();
    o.webPropertyRef = buildWebPropertyRef();
  }
  buildCounterEntityUserLinkEntity--;
  return o;
}

void checkEntityUserLinkEntity(api.EntityUserLinkEntity o) {
  buildCounterEntityUserLinkEntity++;
  if (buildCounterEntityUserLinkEntity < 3) {
    checkAccountRef(o.accountRef!);
    checkProfileRef(o.profileRef!);
    checkWebPropertyRef(o.webPropertyRef!);
  }
  buildCounterEntityUserLinkEntity--;
}

core.List<core.String> buildUnnamed5809() => [
      'foo',
      'foo',
    ];

void checkUnnamed5809(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5810() => [
      'foo',
      'foo',
    ];

void checkUnnamed5810(core.List<core.String> o) {
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

core.int buildCounterEntityUserLinkPermissions = 0;
api.EntityUserLinkPermissions buildEntityUserLinkPermissions() {
  final o = api.EntityUserLinkPermissions();
  buildCounterEntityUserLinkPermissions++;
  if (buildCounterEntityUserLinkPermissions < 3) {
    o.effective = buildUnnamed5809();
    o.local = buildUnnamed5810();
  }
  buildCounterEntityUserLinkPermissions--;
  return o;
}

void checkEntityUserLinkPermissions(api.EntityUserLinkPermissions o) {
  buildCounterEntityUserLinkPermissions++;
  if (buildCounterEntityUserLinkPermissions < 3) {
    checkUnnamed5809(o.effective!);
    checkUnnamed5810(o.local!);
  }
  buildCounterEntityUserLinkPermissions--;
}

core.int buildCounterEntityUserLink = 0;
api.EntityUserLink buildEntityUserLink() {
  final o = api.EntityUserLink();
  buildCounterEntityUserLink++;
  if (buildCounterEntityUserLink < 3) {
    o.entity = buildEntityUserLinkEntity();
    o.id = 'foo';
    o.kind = 'foo';
    o.permissions = buildEntityUserLinkPermissions();
    o.selfLink = 'foo';
    o.userRef = buildUserRef();
  }
  buildCounterEntityUserLink--;
  return o;
}

void checkEntityUserLink(api.EntityUserLink o) {
  buildCounterEntityUserLink++;
  if (buildCounterEntityUserLink < 3) {
    checkEntityUserLinkEntity(o.entity!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkEntityUserLinkPermissions(o.permissions!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkUserRef(o.userRef!);
  }
  buildCounterEntityUserLink--;
}

core.List<api.EntityUserLink> buildUnnamed5811() => [
      buildEntityUserLink(),
      buildEntityUserLink(),
    ];

void checkUnnamed5811(core.List<api.EntityUserLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityUserLink(o[0]);
  checkEntityUserLink(o[1]);
}

core.int buildCounterEntityUserLinks = 0;
api.EntityUserLinks buildEntityUserLinks() {
  final o = api.EntityUserLinks();
  buildCounterEntityUserLinks++;
  if (buildCounterEntityUserLinks < 3) {
    o.items = buildUnnamed5811();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
  }
  buildCounterEntityUserLinks--;
  return o;
}

void checkEntityUserLinks(api.EntityUserLinks o) {
  buildCounterEntityUserLinks++;
  if (buildCounterEntityUserLinks < 3) {
    checkUnnamed5811(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
  }
  buildCounterEntityUserLinks--;
}

core.int buildCounterExperimentParentLink = 0;
api.ExperimentParentLink buildExperimentParentLink() {
  final o = api.ExperimentParentLink();
  buildCounterExperimentParentLink++;
  if (buildCounterExperimentParentLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterExperimentParentLink--;
  return o;
}

void checkExperimentParentLink(api.ExperimentParentLink o) {
  buildCounterExperimentParentLink++;
  if (buildCounterExperimentParentLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterExperimentParentLink--;
}

core.int buildCounterExperimentVariations = 0;
api.ExperimentVariations buildExperimentVariations() {
  final o = api.ExperimentVariations();
  buildCounterExperimentVariations++;
  if (buildCounterExperimentVariations < 3) {
    o.name = 'foo';
    o.status = 'foo';
    o.url = 'foo';
    o.weight = 42.0;
    o.won = true;
  }
  buildCounterExperimentVariations--;
  return o;
}

void checkExperimentVariations(api.ExperimentVariations o) {
  buildCounterExperimentVariations++;
  if (buildCounterExperimentVariations < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weight!,
      unittest.equals(42.0),
    );
    unittest.expect(o.won!, unittest.isTrue);
  }
  buildCounterExperimentVariations--;
}

core.List<api.ExperimentVariations> buildUnnamed5812() => [
      buildExperimentVariations(),
      buildExperimentVariations(),
    ];

void checkUnnamed5812(core.List<api.ExperimentVariations> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExperimentVariations(o[0]);
  checkExperimentVariations(o[1]);
}

core.int buildCounterExperiment = 0;
api.Experiment buildExperiment() {
  final o = api.Experiment();
  buildCounterExperiment++;
  if (buildCounterExperiment < 3) {
    o.accountId = 'foo';
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.description = 'foo';
    o.editableInGaUi = true;
    o.endTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.equalWeighting = true;
    o.id = 'foo';
    o.internalWebPropertyId = 'foo';
    o.kind = 'foo';
    o.minimumExperimentLengthInDays = 42;
    o.name = 'foo';
    o.objectiveMetric = 'foo';
    o.optimizationType = 'foo';
    o.parentLink = buildExperimentParentLink();
    o.profileId = 'foo';
    o.reasonExperimentEnded = 'foo';
    o.rewriteVariationUrlsAsOriginal = true;
    o.selfLink = 'foo';
    o.servingFramework = 'foo';
    o.snippet = 'foo';
    o.startTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.status = 'foo';
    o.trafficCoverage = 42.0;
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
    o.variations = buildUnnamed5812();
    o.webPropertyId = 'foo';
    o.winnerConfidenceLevel = 42.0;
    o.winnerFound = true;
  }
  buildCounterExperiment--;
  return o;
}

void checkExperiment(api.Experiment o) {
  buildCounterExperiment++;
  if (buildCounterExperiment < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.editableInGaUi!, unittest.isTrue);
    unittest.expect(
      o.endTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(o.equalWeighting!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumExperimentLengthInDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectiveMetric!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.optimizationType!,
      unittest.equals('foo'),
    );
    checkExperimentParentLink(o.parentLink!);
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonExperimentEnded!,
      unittest.equals('foo'),
    );
    unittest.expect(o.rewriteVariationUrlsAsOriginal!, unittest.isTrue);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servingFramework!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trafficCoverage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkUnnamed5812(o.variations!);
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.winnerConfidenceLevel!,
      unittest.equals(42.0),
    );
    unittest.expect(o.winnerFound!, unittest.isTrue);
  }
  buildCounterExperiment--;
}

core.List<api.Experiment> buildUnnamed5813() => [
      buildExperiment(),
      buildExperiment(),
    ];

void checkUnnamed5813(core.List<api.Experiment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExperiment(o[0]);
  checkExperiment(o[1]);
}

core.int buildCounterExperiments = 0;
api.Experiments buildExperiments() {
  final o = api.Experiments();
  buildCounterExperiments++;
  if (buildCounterExperiments < 3) {
    o.items = buildUnnamed5813();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterExperiments--;
  return o;
}

void checkExperiments(api.Experiments o) {
  buildCounterExperiments++;
  if (buildCounterExperiments < 3) {
    checkUnnamed5813(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterExperiments--;
}

core.int buildCounterFilterAdvancedDetails = 0;
api.FilterAdvancedDetails buildFilterAdvancedDetails() {
  final o = api.FilterAdvancedDetails();
  buildCounterFilterAdvancedDetails++;
  if (buildCounterFilterAdvancedDetails < 3) {
    o.caseSensitive = true;
    o.extractA = 'foo';
    o.extractB = 'foo';
    o.fieldA = 'foo';
    o.fieldAIndex = 42;
    o.fieldARequired = true;
    o.fieldB = 'foo';
    o.fieldBIndex = 42;
    o.fieldBRequired = true;
    o.outputConstructor = 'foo';
    o.outputToField = 'foo';
    o.outputToFieldIndex = 42;
    o.overrideOutputField = true;
  }
  buildCounterFilterAdvancedDetails--;
  return o;
}

void checkFilterAdvancedDetails(api.FilterAdvancedDetails o) {
  buildCounterFilterAdvancedDetails++;
  if (buildCounterFilterAdvancedDetails < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    unittest.expect(
      o.extractA!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.extractB!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldA!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldAIndex!,
      unittest.equals(42),
    );
    unittest.expect(o.fieldARequired!, unittest.isTrue);
    unittest.expect(
      o.fieldB!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldBIndex!,
      unittest.equals(42),
    );
    unittest.expect(o.fieldBRequired!, unittest.isTrue);
    unittest.expect(
      o.outputConstructor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputToField!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputToFieldIndex!,
      unittest.equals(42),
    );
    unittest.expect(o.overrideOutputField!, unittest.isTrue);
  }
  buildCounterFilterAdvancedDetails--;
}

core.int buildCounterFilterLowercaseDetails = 0;
api.FilterLowercaseDetails buildFilterLowercaseDetails() {
  final o = api.FilterLowercaseDetails();
  buildCounterFilterLowercaseDetails++;
  if (buildCounterFilterLowercaseDetails < 3) {
    o.field = 'foo';
    o.fieldIndex = 42;
  }
  buildCounterFilterLowercaseDetails--;
  return o;
}

void checkFilterLowercaseDetails(api.FilterLowercaseDetails o) {
  buildCounterFilterLowercaseDetails++;
  if (buildCounterFilterLowercaseDetails < 3) {
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldIndex!,
      unittest.equals(42),
    );
  }
  buildCounterFilterLowercaseDetails--;
}

core.int buildCounterFilterParentLink = 0;
api.FilterParentLink buildFilterParentLink() {
  final o = api.FilterParentLink();
  buildCounterFilterParentLink++;
  if (buildCounterFilterParentLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterFilterParentLink--;
  return o;
}

void checkFilterParentLink(api.FilterParentLink o) {
  buildCounterFilterParentLink++;
  if (buildCounterFilterParentLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilterParentLink--;
}

core.int buildCounterFilterSearchAndReplaceDetails = 0;
api.FilterSearchAndReplaceDetails buildFilterSearchAndReplaceDetails() {
  final o = api.FilterSearchAndReplaceDetails();
  buildCounterFilterSearchAndReplaceDetails++;
  if (buildCounterFilterSearchAndReplaceDetails < 3) {
    o.caseSensitive = true;
    o.field = 'foo';
    o.fieldIndex = 42;
    o.replaceString = 'foo';
    o.searchString = 'foo';
  }
  buildCounterFilterSearchAndReplaceDetails--;
  return o;
}

void checkFilterSearchAndReplaceDetails(api.FilterSearchAndReplaceDetails o) {
  buildCounterFilterSearchAndReplaceDetails++;
  if (buildCounterFilterSearchAndReplaceDetails < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.replaceString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchString!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilterSearchAndReplaceDetails--;
}

core.int buildCounterFilterUppercaseDetails = 0;
api.FilterUppercaseDetails buildFilterUppercaseDetails() {
  final o = api.FilterUppercaseDetails();
  buildCounterFilterUppercaseDetails++;
  if (buildCounterFilterUppercaseDetails < 3) {
    o.field = 'foo';
    o.fieldIndex = 42;
  }
  buildCounterFilterUppercaseDetails--;
  return o;
}

void checkFilterUppercaseDetails(api.FilterUppercaseDetails o) {
  buildCounterFilterUppercaseDetails++;
  if (buildCounterFilterUppercaseDetails < 3) {
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldIndex!,
      unittest.equals(42),
    );
  }
  buildCounterFilterUppercaseDetails--;
}

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  final o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.accountId = 'foo';
    o.advancedDetails = buildFilterAdvancedDetails();
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.excludeDetails = buildFilterExpression();
    o.id = 'foo';
    o.includeDetails = buildFilterExpression();
    o.kind = 'foo';
    o.lowercaseDetails = buildFilterLowercaseDetails();
    o.name = 'foo';
    o.parentLink = buildFilterParentLink();
    o.searchAndReplaceDetails = buildFilterSearchAndReplaceDetails();
    o.selfLink = 'foo';
    o.type = 'foo';
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
    o.uppercaseDetails = buildFilterUppercaseDetails();
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkFilterAdvancedDetails(o.advancedDetails!);
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkFilterExpression(o.excludeDetails!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkFilterExpression(o.includeDetails!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkFilterLowercaseDetails(o.lowercaseDetails!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkFilterParentLink(o.parentLink!);
    checkFilterSearchAndReplaceDetails(o.searchAndReplaceDetails!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkFilterUppercaseDetails(o.uppercaseDetails!);
  }
  buildCounterFilter--;
}

core.int buildCounterFilterExpression = 0;
api.FilterExpression buildFilterExpression() {
  final o = api.FilterExpression();
  buildCounterFilterExpression++;
  if (buildCounterFilterExpression < 3) {
    o.caseSensitive = true;
    o.expressionValue = 'foo';
    o.field = 'foo';
    o.fieldIndex = 42;
    o.kind = 'foo';
    o.matchType = 'foo';
  }
  buildCounterFilterExpression--;
  return o;
}

void checkFilterExpression(api.FilterExpression o) {
  buildCounterFilterExpression++;
  if (buildCounterFilterExpression < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    unittest.expect(
      o.expressionValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matchType!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilterExpression--;
}

core.int buildCounterFilterRef = 0;
api.FilterRef buildFilterRef() {
  final o = api.FilterRef();
  buildCounterFilterRef++;
  if (buildCounterFilterRef < 3) {
    o.accountId = 'foo';
    o.href = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterFilterRef--;
  return o;
}

void checkFilterRef(api.FilterRef o) {
  buildCounterFilterRef++;
  if (buildCounterFilterRef < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilterRef--;
}

core.List<api.Filter> buildUnnamed5814() => [
      buildFilter(),
      buildFilter(),
    ];

void checkUnnamed5814(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterFilters = 0;
api.Filters buildFilters() {
  final o = api.Filters();
  buildCounterFilters++;
  if (buildCounterFilters < 3) {
    o.items = buildUnnamed5814();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterFilters--;
  return o;
}

void checkFilters(api.Filters o) {
  buildCounterFilters++;
  if (buildCounterFilters < 3) {
    checkUnnamed5814(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterFilters--;
}

core.int buildCounterGaDataColumnHeaders = 0;
api.GaDataColumnHeaders buildGaDataColumnHeaders() {
  final o = api.GaDataColumnHeaders();
  buildCounterGaDataColumnHeaders++;
  if (buildCounterGaDataColumnHeaders < 3) {
    o.columnType = 'foo';
    o.dataType = 'foo';
    o.name = 'foo';
  }
  buildCounterGaDataColumnHeaders--;
  return o;
}

void checkGaDataColumnHeaders(api.GaDataColumnHeaders o) {
  buildCounterGaDataColumnHeaders++;
  if (buildCounterGaDataColumnHeaders < 3) {
    unittest.expect(
      o.columnType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGaDataColumnHeaders--;
}

core.List<api.GaDataColumnHeaders> buildUnnamed5815() => [
      buildGaDataColumnHeaders(),
      buildGaDataColumnHeaders(),
    ];

void checkUnnamed5815(core.List<api.GaDataColumnHeaders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGaDataColumnHeaders(o[0]);
  checkGaDataColumnHeaders(o[1]);
}

core.int buildCounterGaDataDataTableCols = 0;
api.GaDataDataTableCols buildGaDataDataTableCols() {
  final o = api.GaDataDataTableCols();
  buildCounterGaDataDataTableCols++;
  if (buildCounterGaDataDataTableCols < 3) {
    o.id = 'foo';
    o.label = 'foo';
    o.type = 'foo';
  }
  buildCounterGaDataDataTableCols--;
  return o;
}

void checkGaDataDataTableCols(api.GaDataDataTableCols o) {
  buildCounterGaDataDataTableCols++;
  if (buildCounterGaDataDataTableCols < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGaDataDataTableCols--;
}

core.List<api.GaDataDataTableCols> buildUnnamed5816() => [
      buildGaDataDataTableCols(),
      buildGaDataDataTableCols(),
    ];

void checkUnnamed5816(core.List<api.GaDataDataTableCols> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGaDataDataTableCols(o[0]);
  checkGaDataDataTableCols(o[1]);
}

core.int buildCounterGaDataDataTableRowsC = 0;
api.GaDataDataTableRowsC buildGaDataDataTableRowsC() {
  final o = api.GaDataDataTableRowsC();
  buildCounterGaDataDataTableRowsC++;
  if (buildCounterGaDataDataTableRowsC < 3) {
    o.v = 'foo';
  }
  buildCounterGaDataDataTableRowsC--;
  return o;
}

void checkGaDataDataTableRowsC(api.GaDataDataTableRowsC o) {
  buildCounterGaDataDataTableRowsC++;
  if (buildCounterGaDataDataTableRowsC < 3) {
    unittest.expect(
      o.v!,
      unittest.equals('foo'),
    );
  }
  buildCounterGaDataDataTableRowsC--;
}

core.List<api.GaDataDataTableRowsC> buildUnnamed5817() => [
      buildGaDataDataTableRowsC(),
      buildGaDataDataTableRowsC(),
    ];

void checkUnnamed5817(core.List<api.GaDataDataTableRowsC> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGaDataDataTableRowsC(o[0]);
  checkGaDataDataTableRowsC(o[1]);
}

core.int buildCounterGaDataDataTableRows = 0;
api.GaDataDataTableRows buildGaDataDataTableRows() {
  final o = api.GaDataDataTableRows();
  buildCounterGaDataDataTableRows++;
  if (buildCounterGaDataDataTableRows < 3) {
    o.c = buildUnnamed5817();
  }
  buildCounterGaDataDataTableRows--;
  return o;
}

void checkGaDataDataTableRows(api.GaDataDataTableRows o) {
  buildCounterGaDataDataTableRows++;
  if (buildCounterGaDataDataTableRows < 3) {
    checkUnnamed5817(o.c!);
  }
  buildCounterGaDataDataTableRows--;
}

core.List<api.GaDataDataTableRows> buildUnnamed5818() => [
      buildGaDataDataTableRows(),
      buildGaDataDataTableRows(),
    ];

void checkUnnamed5818(core.List<api.GaDataDataTableRows> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGaDataDataTableRows(o[0]);
  checkGaDataDataTableRows(o[1]);
}

core.int buildCounterGaDataDataTable = 0;
api.GaDataDataTable buildGaDataDataTable() {
  final o = api.GaDataDataTable();
  buildCounterGaDataDataTable++;
  if (buildCounterGaDataDataTable < 3) {
    o.cols = buildUnnamed5816();
    o.rows = buildUnnamed5818();
  }
  buildCounterGaDataDataTable--;
  return o;
}

void checkGaDataDataTable(api.GaDataDataTable o) {
  buildCounterGaDataDataTable++;
  if (buildCounterGaDataDataTable < 3) {
    checkUnnamed5816(o.cols!);
    checkUnnamed5818(o.rows!);
  }
  buildCounterGaDataDataTable--;
}

core.int buildCounterGaDataProfileInfo = 0;
api.GaDataProfileInfo buildGaDataProfileInfo() {
  final o = api.GaDataProfileInfo();
  buildCounterGaDataProfileInfo++;
  if (buildCounterGaDataProfileInfo < 3) {
    o.accountId = 'foo';
    o.internalWebPropertyId = 'foo';
    o.profileId = 'foo';
    o.profileName = 'foo';
    o.tableId = 'foo';
    o.webPropertyId = 'foo';
  }
  buildCounterGaDataProfileInfo--;
  return o;
}

void checkGaDataProfileInfo(api.GaDataProfileInfo o) {
  buildCounterGaDataProfileInfo++;
  if (buildCounterGaDataProfileInfo < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGaDataProfileInfo--;
}

core.List<core.String> buildUnnamed5819() => [
      'foo',
      'foo',
    ];

void checkUnnamed5819(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5820() => [
      'foo',
      'foo',
    ];

void checkUnnamed5820(core.List<core.String> o) {
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

core.int buildCounterGaDataQuery = 0;
api.GaDataQuery buildGaDataQuery() {
  final o = api.GaDataQuery();
  buildCounterGaDataQuery++;
  if (buildCounterGaDataQuery < 3) {
    o.dimensions = 'foo';
    o.endDate = 'foo';
    o.filters = 'foo';
    o.ids = 'foo';
    o.maxResults = 42;
    o.metrics = buildUnnamed5819();
    o.samplingLevel = 'foo';
    o.segment = 'foo';
    o.sort = buildUnnamed5820();
    o.startDate = 'foo';
    o.startIndex = 42;
  }
  buildCounterGaDataQuery--;
  return o;
}

void checkGaDataQuery(api.GaDataQuery o) {
  buildCounterGaDataQuery++;
  if (buildCounterGaDataQuery < 3) {
    unittest.expect(
      o.dimensions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filters!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ids!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxResults!,
      unittest.equals(42),
    );
    checkUnnamed5819(o.metrics!);
    unittest.expect(
      o.samplingLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segment!,
      unittest.equals('foo'),
    );
    checkUnnamed5820(o.sort!);
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
  }
  buildCounterGaDataQuery--;
}

core.List<core.String> buildUnnamed5821() => [
      'foo',
      'foo',
    ];

void checkUnnamed5821(core.List<core.String> o) {
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

core.List<core.List<core.String>> buildUnnamed5822() => [
      buildUnnamed5821(),
      buildUnnamed5821(),
    ];

void checkUnnamed5822(core.List<core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5821(o[0]);
  checkUnnamed5821(o[1]);
}

core.Map<core.String, core.String> buildUnnamed5823() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5823(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGaData = 0;
api.GaData buildGaData() {
  final o = api.GaData();
  buildCounterGaData++;
  if (buildCounterGaData < 3) {
    o.columnHeaders = buildUnnamed5815();
    o.containsSampledData = true;
    o.dataLastRefreshed = 'foo';
    o.dataTable = buildGaDataDataTable();
    o.id = 'foo';
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.profileInfo = buildGaDataProfileInfo();
    o.query = buildGaDataQuery();
    o.rows = buildUnnamed5822();
    o.sampleSize = 'foo';
    o.sampleSpace = 'foo';
    o.selfLink = 'foo';
    o.totalResults = 42;
    o.totalsForAllResults = buildUnnamed5823();
  }
  buildCounterGaData--;
  return o;
}

void checkGaData(api.GaData o) {
  buildCounterGaData++;
  if (buildCounterGaData < 3) {
    checkUnnamed5815(o.columnHeaders!);
    unittest.expect(o.containsSampledData!, unittest.isTrue);
    unittest.expect(
      o.dataLastRefreshed!,
      unittest.equals('foo'),
    );
    checkGaDataDataTable(o.dataTable!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    checkGaDataProfileInfo(o.profileInfo!);
    checkGaDataQuery(o.query!);
    checkUnnamed5822(o.rows!);
    unittest.expect(
      o.sampleSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleSpace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    checkUnnamed5823(o.totalsForAllResults!);
  }
  buildCounterGaData--;
}

core.int buildCounterGoalEventDetailsEventConditions = 0;
api.GoalEventDetailsEventConditions buildGoalEventDetailsEventConditions() {
  final o = api.GoalEventDetailsEventConditions();
  buildCounterGoalEventDetailsEventConditions++;
  if (buildCounterGoalEventDetailsEventConditions < 3) {
    o.comparisonType = 'foo';
    o.comparisonValue = 'foo';
    o.expression = 'foo';
    o.matchType = 'foo';
    o.type = 'foo';
  }
  buildCounterGoalEventDetailsEventConditions--;
  return o;
}

void checkGoalEventDetailsEventConditions(
    api.GoalEventDetailsEventConditions o) {
  buildCounterGoalEventDetailsEventConditions++;
  if (buildCounterGoalEventDetailsEventConditions < 3) {
    unittest.expect(
      o.comparisonType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.comparisonValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matchType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoalEventDetailsEventConditions--;
}

core.List<api.GoalEventDetailsEventConditions> buildUnnamed5824() => [
      buildGoalEventDetailsEventConditions(),
      buildGoalEventDetailsEventConditions(),
    ];

void checkUnnamed5824(core.List<api.GoalEventDetailsEventConditions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoalEventDetailsEventConditions(o[0]);
  checkGoalEventDetailsEventConditions(o[1]);
}

core.int buildCounterGoalEventDetails = 0;
api.GoalEventDetails buildGoalEventDetails() {
  final o = api.GoalEventDetails();
  buildCounterGoalEventDetails++;
  if (buildCounterGoalEventDetails < 3) {
    o.eventConditions = buildUnnamed5824();
    o.useEventValue = true;
  }
  buildCounterGoalEventDetails--;
  return o;
}

void checkGoalEventDetails(api.GoalEventDetails o) {
  buildCounterGoalEventDetails++;
  if (buildCounterGoalEventDetails < 3) {
    checkUnnamed5824(o.eventConditions!);
    unittest.expect(o.useEventValue!, unittest.isTrue);
  }
  buildCounterGoalEventDetails--;
}

core.int buildCounterGoalParentLink = 0;
api.GoalParentLink buildGoalParentLink() {
  final o = api.GoalParentLink();
  buildCounterGoalParentLink++;
  if (buildCounterGoalParentLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterGoalParentLink--;
  return o;
}

void checkGoalParentLink(api.GoalParentLink o) {
  buildCounterGoalParentLink++;
  if (buildCounterGoalParentLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoalParentLink--;
}

core.int buildCounterGoalUrlDestinationDetailsSteps = 0;
api.GoalUrlDestinationDetailsSteps buildGoalUrlDestinationDetailsSteps() {
  final o = api.GoalUrlDestinationDetailsSteps();
  buildCounterGoalUrlDestinationDetailsSteps++;
  if (buildCounterGoalUrlDestinationDetailsSteps < 3) {
    o.name = 'foo';
    o.number = 42;
    o.url = 'foo';
  }
  buildCounterGoalUrlDestinationDetailsSteps--;
  return o;
}

void checkGoalUrlDestinationDetailsSteps(api.GoalUrlDestinationDetailsSteps o) {
  buildCounterGoalUrlDestinationDetailsSteps++;
  if (buildCounterGoalUrlDestinationDetailsSteps < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals(42),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoalUrlDestinationDetailsSteps--;
}

core.List<api.GoalUrlDestinationDetailsSteps> buildUnnamed5825() => [
      buildGoalUrlDestinationDetailsSteps(),
      buildGoalUrlDestinationDetailsSteps(),
    ];

void checkUnnamed5825(core.List<api.GoalUrlDestinationDetailsSteps> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoalUrlDestinationDetailsSteps(o[0]);
  checkGoalUrlDestinationDetailsSteps(o[1]);
}

core.int buildCounterGoalUrlDestinationDetails = 0;
api.GoalUrlDestinationDetails buildGoalUrlDestinationDetails() {
  final o = api.GoalUrlDestinationDetails();
  buildCounterGoalUrlDestinationDetails++;
  if (buildCounterGoalUrlDestinationDetails < 3) {
    o.caseSensitive = true;
    o.firstStepRequired = true;
    o.matchType = 'foo';
    o.steps = buildUnnamed5825();
    o.url = 'foo';
  }
  buildCounterGoalUrlDestinationDetails--;
  return o;
}

void checkGoalUrlDestinationDetails(api.GoalUrlDestinationDetails o) {
  buildCounterGoalUrlDestinationDetails++;
  if (buildCounterGoalUrlDestinationDetails < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    unittest.expect(o.firstStepRequired!, unittest.isTrue);
    unittest.expect(
      o.matchType!,
      unittest.equals('foo'),
    );
    checkUnnamed5825(o.steps!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoalUrlDestinationDetails--;
}

core.int buildCounterGoalVisitNumPagesDetails = 0;
api.GoalVisitNumPagesDetails buildGoalVisitNumPagesDetails() {
  final o = api.GoalVisitNumPagesDetails();
  buildCounterGoalVisitNumPagesDetails++;
  if (buildCounterGoalVisitNumPagesDetails < 3) {
    o.comparisonType = 'foo';
    o.comparisonValue = 'foo';
  }
  buildCounterGoalVisitNumPagesDetails--;
  return o;
}

void checkGoalVisitNumPagesDetails(api.GoalVisitNumPagesDetails o) {
  buildCounterGoalVisitNumPagesDetails++;
  if (buildCounterGoalVisitNumPagesDetails < 3) {
    unittest.expect(
      o.comparisonType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.comparisonValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoalVisitNumPagesDetails--;
}

core.int buildCounterGoalVisitTimeOnSiteDetails = 0;
api.GoalVisitTimeOnSiteDetails buildGoalVisitTimeOnSiteDetails() {
  final o = api.GoalVisitTimeOnSiteDetails();
  buildCounterGoalVisitTimeOnSiteDetails++;
  if (buildCounterGoalVisitTimeOnSiteDetails < 3) {
    o.comparisonType = 'foo';
    o.comparisonValue = 'foo';
  }
  buildCounterGoalVisitTimeOnSiteDetails--;
  return o;
}

void checkGoalVisitTimeOnSiteDetails(api.GoalVisitTimeOnSiteDetails o) {
  buildCounterGoalVisitTimeOnSiteDetails++;
  if (buildCounterGoalVisitTimeOnSiteDetails < 3) {
    unittest.expect(
      o.comparisonType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.comparisonValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoalVisitTimeOnSiteDetails--;
}

core.int buildCounterGoal = 0;
api.Goal buildGoal() {
  final o = api.Goal();
  buildCounterGoal++;
  if (buildCounterGoal < 3) {
    o.accountId = 'foo';
    o.active = true;
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.eventDetails = buildGoalEventDetails();
    o.id = 'foo';
    o.internalWebPropertyId = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.parentLink = buildGoalParentLink();
    o.profileId = 'foo';
    o.selfLink = 'foo';
    o.type = 'foo';
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
    o.urlDestinationDetails = buildGoalUrlDestinationDetails();
    o.value = 42.0;
    o.visitNumPagesDetails = buildGoalVisitNumPagesDetails();
    o.visitTimeOnSiteDetails = buildGoalVisitTimeOnSiteDetails();
    o.webPropertyId = 'foo';
  }
  buildCounterGoal--;
  return o;
}

void checkGoal(api.Goal o) {
  buildCounterGoal++;
  if (buildCounterGoal < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkGoalEventDetails(o.eventDetails!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoalParentLink(o.parentLink!);
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    checkGoalUrlDestinationDetails(o.urlDestinationDetails!);
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
    checkGoalVisitNumPagesDetails(o.visitNumPagesDetails!);
    checkGoalVisitTimeOnSiteDetails(o.visitTimeOnSiteDetails!);
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoal--;
}

core.List<api.Goal> buildUnnamed5826() => [
      buildGoal(),
      buildGoal(),
    ];

void checkUnnamed5826(core.List<api.Goal> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoal(o[0]);
  checkGoal(o[1]);
}

core.int buildCounterGoals = 0;
api.Goals buildGoals() {
  final o = api.Goals();
  buildCounterGoals++;
  if (buildCounterGoals < 3) {
    o.items = buildUnnamed5826();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterGoals--;
  return o;
}

void checkGoals(api.Goals o) {
  buildCounterGoals++;
  if (buildCounterGoals < 3) {
    checkUnnamed5826(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoals--;
}

core.int buildCounterHashClientIdRequest = 0;
api.HashClientIdRequest buildHashClientIdRequest() {
  final o = api.HashClientIdRequest();
  buildCounterHashClientIdRequest++;
  if (buildCounterHashClientIdRequest < 3) {
    o.clientId = 'foo';
    o.kind = 'foo';
    o.webPropertyId = 'foo';
  }
  buildCounterHashClientIdRequest--;
  return o;
}

void checkHashClientIdRequest(api.HashClientIdRequest o) {
  buildCounterHashClientIdRequest++;
  if (buildCounterHashClientIdRequest < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterHashClientIdRequest--;
}

core.int buildCounterHashClientIdResponse = 0;
api.HashClientIdResponse buildHashClientIdResponse() {
  final o = api.HashClientIdResponse();
  buildCounterHashClientIdResponse++;
  if (buildCounterHashClientIdResponse < 3) {
    o.clientId = 'foo';
    o.hashedClientId = 'foo';
    o.kind = 'foo';
    o.webPropertyId = 'foo';
  }
  buildCounterHashClientIdResponse--;
  return o;
}

void checkHashClientIdResponse(api.HashClientIdResponse o) {
  buildCounterHashClientIdResponse++;
  if (buildCounterHashClientIdResponse < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashedClientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterHashClientIdResponse--;
}

core.int buildCounterIncludeConditions = 0;
api.IncludeConditions buildIncludeConditions() {
  final o = api.IncludeConditions();
  buildCounterIncludeConditions++;
  if (buildCounterIncludeConditions < 3) {
    o.daysToLookBack = 42;
    o.isSmartList = true;
    o.kind = 'foo';
    o.membershipDurationDays = 42;
    o.segment = 'foo';
  }
  buildCounterIncludeConditions--;
  return o;
}

void checkIncludeConditions(api.IncludeConditions o) {
  buildCounterIncludeConditions++;
  if (buildCounterIncludeConditions < 3) {
    unittest.expect(
      o.daysToLookBack!,
      unittest.equals(42),
    );
    unittest.expect(o.isSmartList!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.membershipDurationDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.segment!,
      unittest.equals('foo'),
    );
  }
  buildCounterIncludeConditions--;
}

core.int buildCounterLinkedForeignAccount = 0;
api.LinkedForeignAccount buildLinkedForeignAccount() {
  final o = api.LinkedForeignAccount();
  buildCounterLinkedForeignAccount++;
  if (buildCounterLinkedForeignAccount < 3) {
    o.accountId = 'foo';
    o.eligibleForSearch = true;
    o.id = 'foo';
    o.internalWebPropertyId = 'foo';
    o.kind = 'foo';
    o.linkedAccountId = 'foo';
    o.remarketingAudienceId = 'foo';
    o.status = 'foo';
    o.type = 'foo';
    o.webPropertyId = 'foo';
  }
  buildCounterLinkedForeignAccount--;
  return o;
}

void checkLinkedForeignAccount(api.LinkedForeignAccount o) {
  buildCounterLinkedForeignAccount++;
  if (buildCounterLinkedForeignAccount < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.eligibleForSearch!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkedAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remarketingAudienceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkedForeignAccount--;
}

core.int buildCounterMcfDataColumnHeaders = 0;
api.McfDataColumnHeaders buildMcfDataColumnHeaders() {
  final o = api.McfDataColumnHeaders();
  buildCounterMcfDataColumnHeaders++;
  if (buildCounterMcfDataColumnHeaders < 3) {
    o.columnType = 'foo';
    o.dataType = 'foo';
    o.name = 'foo';
  }
  buildCounterMcfDataColumnHeaders--;
  return o;
}

void checkMcfDataColumnHeaders(api.McfDataColumnHeaders o) {
  buildCounterMcfDataColumnHeaders++;
  if (buildCounterMcfDataColumnHeaders < 3) {
    unittest.expect(
      o.columnType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterMcfDataColumnHeaders--;
}

core.List<api.McfDataColumnHeaders> buildUnnamed5827() => [
      buildMcfDataColumnHeaders(),
      buildMcfDataColumnHeaders(),
    ];

void checkUnnamed5827(core.List<api.McfDataColumnHeaders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMcfDataColumnHeaders(o[0]);
  checkMcfDataColumnHeaders(o[1]);
}

core.int buildCounterMcfDataProfileInfo = 0;
api.McfDataProfileInfo buildMcfDataProfileInfo() {
  final o = api.McfDataProfileInfo();
  buildCounterMcfDataProfileInfo++;
  if (buildCounterMcfDataProfileInfo < 3) {
    o.accountId = 'foo';
    o.internalWebPropertyId = 'foo';
    o.profileId = 'foo';
    o.profileName = 'foo';
    o.tableId = 'foo';
    o.webPropertyId = 'foo';
  }
  buildCounterMcfDataProfileInfo--;
  return o;
}

void checkMcfDataProfileInfo(api.McfDataProfileInfo o) {
  buildCounterMcfDataProfileInfo++;
  if (buildCounterMcfDataProfileInfo < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMcfDataProfileInfo--;
}

core.List<core.String> buildUnnamed5828() => [
      'foo',
      'foo',
    ];

void checkUnnamed5828(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5829() => [
      'foo',
      'foo',
    ];

void checkUnnamed5829(core.List<core.String> o) {
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

core.int buildCounterMcfDataQuery = 0;
api.McfDataQuery buildMcfDataQuery() {
  final o = api.McfDataQuery();
  buildCounterMcfDataQuery++;
  if (buildCounterMcfDataQuery < 3) {
    o.dimensions = 'foo';
    o.endDate = 'foo';
    o.filters = 'foo';
    o.ids = 'foo';
    o.maxResults = 42;
    o.metrics = buildUnnamed5828();
    o.samplingLevel = 'foo';
    o.segment = 'foo';
    o.sort = buildUnnamed5829();
    o.startDate = 'foo';
    o.startIndex = 42;
  }
  buildCounterMcfDataQuery--;
  return o;
}

void checkMcfDataQuery(api.McfDataQuery o) {
  buildCounterMcfDataQuery++;
  if (buildCounterMcfDataQuery < 3) {
    unittest.expect(
      o.dimensions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filters!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ids!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxResults!,
      unittest.equals(42),
    );
    checkUnnamed5828(o.metrics!);
    unittest.expect(
      o.samplingLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segment!,
      unittest.equals('foo'),
    );
    checkUnnamed5829(o.sort!);
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
  }
  buildCounterMcfDataQuery--;
}

core.int buildCounterMcfDataRowsConversionPathValue = 0;
api.McfDataRowsConversionPathValue buildMcfDataRowsConversionPathValue() {
  final o = api.McfDataRowsConversionPathValue();
  buildCounterMcfDataRowsConversionPathValue++;
  if (buildCounterMcfDataRowsConversionPathValue < 3) {
    o.interactionType = 'foo';
    o.nodeValue = 'foo';
  }
  buildCounterMcfDataRowsConversionPathValue--;
  return o;
}

void checkMcfDataRowsConversionPathValue(api.McfDataRowsConversionPathValue o) {
  buildCounterMcfDataRowsConversionPathValue++;
  if (buildCounterMcfDataRowsConversionPathValue < 3) {
    unittest.expect(
      o.interactionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterMcfDataRowsConversionPathValue--;
}

core.List<api.McfDataRowsConversionPathValue> buildUnnamed5830() => [
      buildMcfDataRowsConversionPathValue(),
      buildMcfDataRowsConversionPathValue(),
    ];

void checkUnnamed5830(core.List<api.McfDataRowsConversionPathValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMcfDataRowsConversionPathValue(o[0]);
  checkMcfDataRowsConversionPathValue(o[1]);
}

core.int buildCounterMcfDataRows = 0;
api.McfDataRows buildMcfDataRows() {
  final o = api.McfDataRows();
  buildCounterMcfDataRows++;
  if (buildCounterMcfDataRows < 3) {
    o.conversionPathValue = buildUnnamed5830();
    o.primitiveValue = 'foo';
  }
  buildCounterMcfDataRows--;
  return o;
}

void checkMcfDataRows(api.McfDataRows o) {
  buildCounterMcfDataRows++;
  if (buildCounterMcfDataRows < 3) {
    checkUnnamed5830(o.conversionPathValue!);
    unittest.expect(
      o.primitiveValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterMcfDataRows--;
}

core.List<api.McfDataRows> buildUnnamed5831() => [
      buildMcfDataRows(),
      buildMcfDataRows(),
    ];

void checkUnnamed5831(core.List<api.McfDataRows> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMcfDataRows(o[0]);
  checkMcfDataRows(o[1]);
}

core.List<core.List<api.McfDataRows>> buildUnnamed5832() => [
      buildUnnamed5831(),
      buildUnnamed5831(),
    ];

void checkUnnamed5832(core.List<core.List<api.McfDataRows>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5831(o[0]);
  checkUnnamed5831(o[1]);
}

core.Map<core.String, core.String> buildUnnamed5833() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5833(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterMcfData = 0;
api.McfData buildMcfData() {
  final o = api.McfData();
  buildCounterMcfData++;
  if (buildCounterMcfData < 3) {
    o.columnHeaders = buildUnnamed5827();
    o.containsSampledData = true;
    o.id = 'foo';
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.profileInfo = buildMcfDataProfileInfo();
    o.query = buildMcfDataQuery();
    o.rows = buildUnnamed5832();
    o.sampleSize = 'foo';
    o.sampleSpace = 'foo';
    o.selfLink = 'foo';
    o.totalResults = 42;
    o.totalsForAllResults = buildUnnamed5833();
  }
  buildCounterMcfData--;
  return o;
}

void checkMcfData(api.McfData o) {
  buildCounterMcfData++;
  if (buildCounterMcfData < 3) {
    checkUnnamed5827(o.columnHeaders!);
    unittest.expect(o.containsSampledData!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    checkMcfDataProfileInfo(o.profileInfo!);
    checkMcfDataQuery(o.query!);
    checkUnnamed5832(o.rows!);
    unittest.expect(
      o.sampleSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleSpace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    checkUnnamed5833(o.totalsForAllResults!);
  }
  buildCounterMcfData--;
}

core.int buildCounterProfileChildLink = 0;
api.ProfileChildLink buildProfileChildLink() {
  final o = api.ProfileChildLink();
  buildCounterProfileChildLink++;
  if (buildCounterProfileChildLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterProfileChildLink--;
  return o;
}

void checkProfileChildLink(api.ProfileChildLink o) {
  buildCounterProfileChildLink++;
  if (buildCounterProfileChildLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterProfileChildLink--;
}

core.int buildCounterProfileParentLink = 0;
api.ProfileParentLink buildProfileParentLink() {
  final o = api.ProfileParentLink();
  buildCounterProfileParentLink++;
  if (buildCounterProfileParentLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterProfileParentLink--;
  return o;
}

void checkProfileParentLink(api.ProfileParentLink o) {
  buildCounterProfileParentLink++;
  if (buildCounterProfileParentLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterProfileParentLink--;
}

core.List<core.String> buildUnnamed5834() => [
      'foo',
      'foo',
    ];

void checkUnnamed5834(core.List<core.String> o) {
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

core.int buildCounterProfilePermissions = 0;
api.ProfilePermissions buildProfilePermissions() {
  final o = api.ProfilePermissions();
  buildCounterProfilePermissions++;
  if (buildCounterProfilePermissions < 3) {
    o.effective = buildUnnamed5834();
  }
  buildCounterProfilePermissions--;
  return o;
}

void checkProfilePermissions(api.ProfilePermissions o) {
  buildCounterProfilePermissions++;
  if (buildCounterProfilePermissions < 3) {
    checkUnnamed5834(o.effective!);
  }
  buildCounterProfilePermissions--;
}

core.int buildCounterProfile = 0;
api.Profile buildProfile() {
  final o = api.Profile();
  buildCounterProfile++;
  if (buildCounterProfile < 3) {
    o.accountId = 'foo';
    o.botFilteringEnabled = true;
    o.childLink = buildProfileChildLink();
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.currency = 'foo';
    o.defaultPage = 'foo';
    o.eCommerceTracking = true;
    o.enhancedECommerceTracking = true;
    o.excludeQueryParameters = 'foo';
    o.id = 'foo';
    o.internalWebPropertyId = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.parentLink = buildProfileParentLink();
    o.permissions = buildProfilePermissions();
    o.selfLink = 'foo';
    o.siteSearchCategoryParameters = 'foo';
    o.siteSearchQueryParameters = 'foo';
    o.starred = true;
    o.stripSiteSearchCategoryParameters = true;
    o.stripSiteSearchQueryParameters = true;
    o.timezone = 'foo';
    o.type = 'foo';
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
    o.webPropertyId = 'foo';
    o.websiteUrl = 'foo';
  }
  buildCounterProfile--;
  return o;
}

void checkProfile(api.Profile o) {
  buildCounterProfile++;
  if (buildCounterProfile < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.botFilteringEnabled!, unittest.isTrue);
    checkProfileChildLink(o.childLink!);
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultPage!,
      unittest.equals('foo'),
    );
    unittest.expect(o.eCommerceTracking!, unittest.isTrue);
    unittest.expect(o.enhancedECommerceTracking!, unittest.isTrue);
    unittest.expect(
      o.excludeQueryParameters!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkProfileParentLink(o.parentLink!);
    checkProfilePermissions(o.permissions!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteSearchCategoryParameters!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteSearchQueryParameters!,
      unittest.equals('foo'),
    );
    unittest.expect(o.starred!, unittest.isTrue);
    unittest.expect(o.stripSiteSearchCategoryParameters!, unittest.isTrue);
    unittest.expect(o.stripSiteSearchQueryParameters!, unittest.isTrue);
    unittest.expect(
      o.timezone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.websiteUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterProfile--;
}

core.int buildCounterProfileFilterLink = 0;
api.ProfileFilterLink buildProfileFilterLink() {
  final o = api.ProfileFilterLink();
  buildCounterProfileFilterLink++;
  if (buildCounterProfileFilterLink < 3) {
    o.filterRef = buildFilterRef();
    o.id = 'foo';
    o.kind = 'foo';
    o.profileRef = buildProfileRef();
    o.rank = 42;
    o.selfLink = 'foo';
  }
  buildCounterProfileFilterLink--;
  return o;
}

void checkProfileFilterLink(api.ProfileFilterLink o) {
  buildCounterProfileFilterLink++;
  if (buildCounterProfileFilterLink < 3) {
    checkFilterRef(o.filterRef!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkProfileRef(o.profileRef!);
    unittest.expect(
      o.rank!,
      unittest.equals(42),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterProfileFilterLink--;
}

core.List<api.ProfileFilterLink> buildUnnamed5835() => [
      buildProfileFilterLink(),
      buildProfileFilterLink(),
    ];

void checkUnnamed5835(core.List<api.ProfileFilterLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProfileFilterLink(o[0]);
  checkProfileFilterLink(o[1]);
}

core.int buildCounterProfileFilterLinks = 0;
api.ProfileFilterLinks buildProfileFilterLinks() {
  final o = api.ProfileFilterLinks();
  buildCounterProfileFilterLinks++;
  if (buildCounterProfileFilterLinks < 3) {
    o.items = buildUnnamed5835();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterProfileFilterLinks--;
  return o;
}

void checkProfileFilterLinks(api.ProfileFilterLinks o) {
  buildCounterProfileFilterLinks++;
  if (buildCounterProfileFilterLinks < 3) {
    checkUnnamed5835(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterProfileFilterLinks--;
}

core.int buildCounterProfileRef = 0;
api.ProfileRef buildProfileRef() {
  final o = api.ProfileRef();
  buildCounterProfileRef++;
  if (buildCounterProfileRef < 3) {
    o.accountId = 'foo';
    o.href = 'foo';
    o.id = 'foo';
    o.internalWebPropertyId = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.webPropertyId = 'foo';
  }
  buildCounterProfileRef--;
  return o;
}

void checkProfileRef(api.ProfileRef o) {
  buildCounterProfileRef++;
  if (buildCounterProfileRef < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterProfileRef--;
}

core.int buildCounterProfileSummary = 0;
api.ProfileSummary buildProfileSummary() {
  final o = api.ProfileSummary();
  buildCounterProfileSummary++;
  if (buildCounterProfileSummary < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.starred = true;
    o.type = 'foo';
  }
  buildCounterProfileSummary--;
  return o;
}

void checkProfileSummary(api.ProfileSummary o) {
  buildCounterProfileSummary++;
  if (buildCounterProfileSummary < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.starred!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterProfileSummary--;
}

core.List<api.Profile> buildUnnamed5836() => [
      buildProfile(),
      buildProfile(),
    ];

void checkUnnamed5836(core.List<api.Profile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProfile(o[0]);
  checkProfile(o[1]);
}

core.int buildCounterProfiles = 0;
api.Profiles buildProfiles() {
  final o = api.Profiles();
  buildCounterProfiles++;
  if (buildCounterProfiles < 3) {
    o.items = buildUnnamed5836();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterProfiles--;
  return o;
}

void checkProfiles(api.Profiles o) {
  buildCounterProfiles++;
  if (buildCounterProfiles < 3) {
    checkUnnamed5836(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterProfiles--;
}

core.int buildCounterRealtimeDataColumnHeaders = 0;
api.RealtimeDataColumnHeaders buildRealtimeDataColumnHeaders() {
  final o = api.RealtimeDataColumnHeaders();
  buildCounterRealtimeDataColumnHeaders++;
  if (buildCounterRealtimeDataColumnHeaders < 3) {
    o.columnType = 'foo';
    o.dataType = 'foo';
    o.name = 'foo';
  }
  buildCounterRealtimeDataColumnHeaders--;
  return o;
}

void checkRealtimeDataColumnHeaders(api.RealtimeDataColumnHeaders o) {
  buildCounterRealtimeDataColumnHeaders++;
  if (buildCounterRealtimeDataColumnHeaders < 3) {
    unittest.expect(
      o.columnType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterRealtimeDataColumnHeaders--;
}

core.List<api.RealtimeDataColumnHeaders> buildUnnamed5837() => [
      buildRealtimeDataColumnHeaders(),
      buildRealtimeDataColumnHeaders(),
    ];

void checkUnnamed5837(core.List<api.RealtimeDataColumnHeaders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRealtimeDataColumnHeaders(o[0]);
  checkRealtimeDataColumnHeaders(o[1]);
}

core.int buildCounterRealtimeDataProfileInfo = 0;
api.RealtimeDataProfileInfo buildRealtimeDataProfileInfo() {
  final o = api.RealtimeDataProfileInfo();
  buildCounterRealtimeDataProfileInfo++;
  if (buildCounterRealtimeDataProfileInfo < 3) {
    o.accountId = 'foo';
    o.internalWebPropertyId = 'foo';
    o.profileId = 'foo';
    o.profileName = 'foo';
    o.tableId = 'foo';
    o.webPropertyId = 'foo';
  }
  buildCounterRealtimeDataProfileInfo--;
  return o;
}

void checkRealtimeDataProfileInfo(api.RealtimeDataProfileInfo o) {
  buildCounterRealtimeDataProfileInfo++;
  if (buildCounterRealtimeDataProfileInfo < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRealtimeDataProfileInfo--;
}

core.List<core.String> buildUnnamed5838() => [
      'foo',
      'foo',
    ];

void checkUnnamed5838(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5839() => [
      'foo',
      'foo',
    ];

void checkUnnamed5839(core.List<core.String> o) {
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

core.int buildCounterRealtimeDataQuery = 0;
api.RealtimeDataQuery buildRealtimeDataQuery() {
  final o = api.RealtimeDataQuery();
  buildCounterRealtimeDataQuery++;
  if (buildCounterRealtimeDataQuery < 3) {
    o.dimensions = 'foo';
    o.filters = 'foo';
    o.ids = 'foo';
    o.maxResults = 42;
    o.metrics = buildUnnamed5838();
    o.sort = buildUnnamed5839();
  }
  buildCounterRealtimeDataQuery--;
  return o;
}

void checkRealtimeDataQuery(api.RealtimeDataQuery o) {
  buildCounterRealtimeDataQuery++;
  if (buildCounterRealtimeDataQuery < 3) {
    unittest.expect(
      o.dimensions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filters!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ids!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxResults!,
      unittest.equals(42),
    );
    checkUnnamed5838(o.metrics!);
    checkUnnamed5839(o.sort!);
  }
  buildCounterRealtimeDataQuery--;
}

core.List<core.String> buildUnnamed5840() => [
      'foo',
      'foo',
    ];

void checkUnnamed5840(core.List<core.String> o) {
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

core.List<core.List<core.String>> buildUnnamed5841() => [
      buildUnnamed5840(),
      buildUnnamed5840(),
    ];

void checkUnnamed5841(core.List<core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5840(o[0]);
  checkUnnamed5840(o[1]);
}

core.Map<core.String, core.String> buildUnnamed5842() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5842(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterRealtimeData = 0;
api.RealtimeData buildRealtimeData() {
  final o = api.RealtimeData();
  buildCounterRealtimeData++;
  if (buildCounterRealtimeData < 3) {
    o.columnHeaders = buildUnnamed5837();
    o.id = 'foo';
    o.kind = 'foo';
    o.profileInfo = buildRealtimeDataProfileInfo();
    o.query = buildRealtimeDataQuery();
    o.rows = buildUnnamed5841();
    o.selfLink = 'foo';
    o.totalResults = 42;
    o.totalsForAllResults = buildUnnamed5842();
  }
  buildCounterRealtimeData--;
  return o;
}

void checkRealtimeData(api.RealtimeData o) {
  buildCounterRealtimeData++;
  if (buildCounterRealtimeData < 3) {
    checkUnnamed5837(o.columnHeaders!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkRealtimeDataProfileInfo(o.profileInfo!);
    checkRealtimeDataQuery(o.query!);
    checkUnnamed5841(o.rows!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    checkUnnamed5842(o.totalsForAllResults!);
  }
  buildCounterRealtimeData--;
}

core.int buildCounterRemarketingAudienceAudienceDefinition = 0;
api.RemarketingAudienceAudienceDefinition
    buildRemarketingAudienceAudienceDefinition() {
  final o = api.RemarketingAudienceAudienceDefinition();
  buildCounterRemarketingAudienceAudienceDefinition++;
  if (buildCounterRemarketingAudienceAudienceDefinition < 3) {
    o.includeConditions = buildIncludeConditions();
  }
  buildCounterRemarketingAudienceAudienceDefinition--;
  return o;
}

void checkRemarketingAudienceAudienceDefinition(
    api.RemarketingAudienceAudienceDefinition o) {
  buildCounterRemarketingAudienceAudienceDefinition++;
  if (buildCounterRemarketingAudienceAudienceDefinition < 3) {
    checkIncludeConditions(o.includeConditions!);
  }
  buildCounterRemarketingAudienceAudienceDefinition--;
}

core.List<api.LinkedForeignAccount> buildUnnamed5843() => [
      buildLinkedForeignAccount(),
      buildLinkedForeignAccount(),
    ];

void checkUnnamed5843(core.List<api.LinkedForeignAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkedForeignAccount(o[0]);
  checkLinkedForeignAccount(o[1]);
}

core.List<core.String> buildUnnamed5844() => [
      'foo',
      'foo',
    ];

void checkUnnamed5844(core.List<core.String> o) {
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

core.int
    buildCounterRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions =
    0;
api.RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions
    buildRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions() {
  final o =
      api.RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions();
  buildCounterRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions++;
  if (buildCounterRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions <
      3) {
    o.exclusionDuration = 'foo';
    o.segment = 'foo';
  }
  buildCounterRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions--;
  return o;
}

void checkRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions(
    api.RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions o) {
  buildCounterRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions++;
  if (buildCounterRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions <
      3) {
    unittest.expect(
      o.exclusionDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segment!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions--;
}

core.int buildCounterRemarketingAudienceStateBasedAudienceDefinition = 0;
api.RemarketingAudienceStateBasedAudienceDefinition
    buildRemarketingAudienceStateBasedAudienceDefinition() {
  final o = api.RemarketingAudienceStateBasedAudienceDefinition();
  buildCounterRemarketingAudienceStateBasedAudienceDefinition++;
  if (buildCounterRemarketingAudienceStateBasedAudienceDefinition < 3) {
    o.excludeConditions =
        buildRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions();
    o.includeConditions = buildIncludeConditions();
  }
  buildCounterRemarketingAudienceStateBasedAudienceDefinition--;
  return o;
}

void checkRemarketingAudienceStateBasedAudienceDefinition(
    api.RemarketingAudienceStateBasedAudienceDefinition o) {
  buildCounterRemarketingAudienceStateBasedAudienceDefinition++;
  if (buildCounterRemarketingAudienceStateBasedAudienceDefinition < 3) {
    checkRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions(
        o.excludeConditions!);
    checkIncludeConditions(o.includeConditions!);
  }
  buildCounterRemarketingAudienceStateBasedAudienceDefinition--;
}

core.int buildCounterRemarketingAudience = 0;
api.RemarketingAudience buildRemarketingAudience() {
  final o = api.RemarketingAudience();
  buildCounterRemarketingAudience++;
  if (buildCounterRemarketingAudience < 3) {
    o.accountId = 'foo';
    o.audienceDefinition = buildRemarketingAudienceAudienceDefinition();
    o.audienceType = 'foo';
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.description = 'foo';
    o.id = 'foo';
    o.internalWebPropertyId = 'foo';
    o.kind = 'foo';
    o.linkedAdAccounts = buildUnnamed5843();
    o.linkedViews = buildUnnamed5844();
    o.name = 'foo';
    o.stateBasedAudienceDefinition =
        buildRemarketingAudienceStateBasedAudienceDefinition();
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
    o.webPropertyId = 'foo';
  }
  buildCounterRemarketingAudience--;
  return o;
}

void checkRemarketingAudience(api.RemarketingAudience o) {
  buildCounterRemarketingAudience++;
  if (buildCounterRemarketingAudience < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkRemarketingAudienceAudienceDefinition(o.audienceDefinition!);
    unittest.expect(
      o.audienceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5843(o.linkedAdAccounts!);
    checkUnnamed5844(o.linkedViews!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRemarketingAudienceStateBasedAudienceDefinition(
        o.stateBasedAudienceDefinition!);
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemarketingAudience--;
}

core.List<api.RemarketingAudience> buildUnnamed5845() => [
      buildRemarketingAudience(),
      buildRemarketingAudience(),
    ];

void checkUnnamed5845(core.List<api.RemarketingAudience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemarketingAudience(o[0]);
  checkRemarketingAudience(o[1]);
}

core.int buildCounterRemarketingAudiences = 0;
api.RemarketingAudiences buildRemarketingAudiences() {
  final o = api.RemarketingAudiences();
  buildCounterRemarketingAudiences++;
  if (buildCounterRemarketingAudiences < 3) {
    o.items = buildUnnamed5845();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterRemarketingAudiences--;
  return o;
}

void checkRemarketingAudiences(api.RemarketingAudiences o) {
  buildCounterRemarketingAudiences++;
  if (buildCounterRemarketingAudiences < 3) {
    checkUnnamed5845(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemarketingAudiences--;
}

core.int buildCounterSegment = 0;
api.Segment buildSegment() {
  final o = api.Segment();
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.definition = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.segmentId = 'foo';
    o.selfLink = 'foo';
    o.type = 'foo';
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
  }
  buildCounterSegment--;
  return o;
}

void checkSegment(api.Segment o) {
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.definition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
  }
  buildCounterSegment--;
}

core.List<api.Segment> buildUnnamed5846() => [
      buildSegment(),
      buildSegment(),
    ];

void checkUnnamed5846(core.List<api.Segment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegment(o[0]);
  checkSegment(o[1]);
}

core.int buildCounterSegments = 0;
api.Segments buildSegments() {
  final o = api.Segments();
  buildCounterSegments++;
  if (buildCounterSegments < 3) {
    o.items = buildUnnamed5846();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterSegments--;
  return o;
}

void checkSegments(api.Segments o) {
  buildCounterSegments++;
  if (buildCounterSegments < 3) {
    checkUnnamed5846(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterSegments--;
}

core.int buildCounterUnsampledReportCloudStorageDownloadDetails = 0;
api.UnsampledReportCloudStorageDownloadDetails
    buildUnsampledReportCloudStorageDownloadDetails() {
  final o = api.UnsampledReportCloudStorageDownloadDetails();
  buildCounterUnsampledReportCloudStorageDownloadDetails++;
  if (buildCounterUnsampledReportCloudStorageDownloadDetails < 3) {
    o.bucketId = 'foo';
    o.objectId = 'foo';
  }
  buildCounterUnsampledReportCloudStorageDownloadDetails--;
  return o;
}

void checkUnsampledReportCloudStorageDownloadDetails(
    api.UnsampledReportCloudStorageDownloadDetails o) {
  buildCounterUnsampledReportCloudStorageDownloadDetails++;
  if (buildCounterUnsampledReportCloudStorageDownloadDetails < 3) {
    unittest.expect(
      o.bucketId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnsampledReportCloudStorageDownloadDetails--;
}

core.int buildCounterUnsampledReportDriveDownloadDetails = 0;
api.UnsampledReportDriveDownloadDetails
    buildUnsampledReportDriveDownloadDetails() {
  final o = api.UnsampledReportDriveDownloadDetails();
  buildCounterUnsampledReportDriveDownloadDetails++;
  if (buildCounterUnsampledReportDriveDownloadDetails < 3) {
    o.documentId = 'foo';
  }
  buildCounterUnsampledReportDriveDownloadDetails--;
  return o;
}

void checkUnsampledReportDriveDownloadDetails(
    api.UnsampledReportDriveDownloadDetails o) {
  buildCounterUnsampledReportDriveDownloadDetails++;
  if (buildCounterUnsampledReportDriveDownloadDetails < 3) {
    unittest.expect(
      o.documentId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnsampledReportDriveDownloadDetails--;
}

core.int buildCounterUnsampledReport = 0;
api.UnsampledReport buildUnsampledReport() {
  final o = api.UnsampledReport();
  buildCounterUnsampledReport++;
  if (buildCounterUnsampledReport < 3) {
    o.accountId = 'foo';
    o.cloudStorageDownloadDetails =
        buildUnsampledReportCloudStorageDownloadDetails();
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.dimensions = 'foo';
    o.downloadType = 'foo';
    o.driveDownloadDetails = buildUnsampledReportDriveDownloadDetails();
    o.endDate = 'foo';
    o.filters = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.metrics = 'foo';
    o.profileId = 'foo';
    o.segment = 'foo';
    o.selfLink = 'foo';
    o.startDate = 'foo';
    o.status = 'foo';
    o.title = 'foo';
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
    o.webPropertyId = 'foo';
  }
  buildCounterUnsampledReport--;
  return o;
}

void checkUnsampledReport(api.UnsampledReport o) {
  buildCounterUnsampledReport++;
  if (buildCounterUnsampledReport < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnsampledReportCloudStorageDownloadDetails(
        o.cloudStorageDownloadDetails!);
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.dimensions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadType!,
      unittest.equals('foo'),
    );
    checkUnsampledReportDriveDownloadDetails(o.driveDownloadDetails!);
    unittest.expect(
      o.endDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filters!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metrics!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnsampledReport--;
}

core.List<api.UnsampledReport> buildUnnamed5847() => [
      buildUnsampledReport(),
      buildUnsampledReport(),
    ];

void checkUnnamed5847(core.List<api.UnsampledReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnsampledReport(o[0]);
  checkUnsampledReport(o[1]);
}

core.int buildCounterUnsampledReports = 0;
api.UnsampledReports buildUnsampledReports() {
  final o = api.UnsampledReports();
  buildCounterUnsampledReports++;
  if (buildCounterUnsampledReports < 3) {
    o.items = buildUnnamed5847();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterUnsampledReports--;
  return o;
}

void checkUnsampledReports(api.UnsampledReports o) {
  buildCounterUnsampledReports++;
  if (buildCounterUnsampledReports < 3) {
    checkUnnamed5847(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnsampledReports--;
}

core.List<core.String> buildUnnamed5848() => [
      'foo',
      'foo',
    ];

void checkUnnamed5848(core.List<core.String> o) {
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

core.int buildCounterUpload = 0;
api.Upload buildUpload() {
  final o = api.Upload();
  buildCounterUpload++;
  if (buildCounterUpload < 3) {
    o.accountId = 'foo';
    o.customDataSourceId = 'foo';
    o.errors = buildUnnamed5848();
    o.id = 'foo';
    o.kind = 'foo';
    o.status = 'foo';
    o.uploadTime = core.DateTime.parse('2002-02-27T14:01:02');
  }
  buildCounterUpload--;
  return o;
}

void checkUpload(api.Upload o) {
  buildCounterUpload++;
  if (buildCounterUpload < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customDataSourceId!,
      unittest.equals('foo'),
    );
    checkUnnamed5848(o.errors!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uploadTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
  }
  buildCounterUpload--;
}

core.List<api.Upload> buildUnnamed5849() => [
      buildUpload(),
      buildUpload(),
    ];

void checkUnnamed5849(core.List<api.Upload> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpload(o[0]);
  checkUpload(o[1]);
}

core.int buildCounterUploads = 0;
api.Uploads buildUploads() {
  final o = api.Uploads();
  buildCounterUploads++;
  if (buildCounterUploads < 3) {
    o.items = buildUnnamed5849();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
  }
  buildCounterUploads--;
  return o;
}

void checkUploads(api.Uploads o) {
  buildCounterUploads++;
  if (buildCounterUploads < 3) {
    checkUnnamed5849(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
  }
  buildCounterUploads--;
}

core.int buildCounterUserDeletionRequestId = 0;
api.UserDeletionRequestId buildUserDeletionRequestId() {
  final o = api.UserDeletionRequestId();
  buildCounterUserDeletionRequestId++;
  if (buildCounterUserDeletionRequestId < 3) {
    o.type = 'foo';
    o.userId = 'foo';
  }
  buildCounterUserDeletionRequestId--;
  return o;
}

void checkUserDeletionRequestId(api.UserDeletionRequestId o) {
  buildCounterUserDeletionRequestId++;
  if (buildCounterUserDeletionRequestId < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserDeletionRequestId--;
}

core.int buildCounterUserDeletionRequest = 0;
api.UserDeletionRequest buildUserDeletionRequest() {
  final o = api.UserDeletionRequest();
  buildCounterUserDeletionRequest++;
  if (buildCounterUserDeletionRequest < 3) {
    o.deletionRequestTime = core.DateTime.parse('2002-02-27T14:01:02');
    o.firebaseProjectId = 'foo';
    o.id = buildUserDeletionRequestId();
    o.kind = 'foo';
    o.propertyId = 'foo';
    o.webPropertyId = 'foo';
  }
  buildCounterUserDeletionRequest--;
  return o;
}

void checkUserDeletionRequest(api.UserDeletionRequest o) {
  buildCounterUserDeletionRequest++;
  if (buildCounterUserDeletionRequest < 3) {
    unittest.expect(
      o.deletionRequestTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.firebaseProjectId!,
      unittest.equals('foo'),
    );
    checkUserDeletionRequestId(o.id!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.propertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserDeletionRequest--;
}

core.int buildCounterUserRef = 0;
api.UserRef buildUserRef() {
  final o = api.UserRef();
  buildCounterUserRef++;
  if (buildCounterUserRef < 3) {
    o.email = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
  }
  buildCounterUserRef--;
  return o;
}

void checkUserRef(api.UserRef o) {
  buildCounterUserRef++;
  if (buildCounterUserRef < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserRef--;
}

core.int buildCounterWebPropertyRef = 0;
api.WebPropertyRef buildWebPropertyRef() {
  final o = api.WebPropertyRef();
  buildCounterWebPropertyRef++;
  if (buildCounterWebPropertyRef < 3) {
    o.accountId = 'foo';
    o.href = 'foo';
    o.id = 'foo';
    o.internalWebPropertyId = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterWebPropertyRef--;
  return o;
}

void checkWebPropertyRef(api.WebPropertyRef o) {
  buildCounterWebPropertyRef++;
  if (buildCounterWebPropertyRef < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebPropertyRef--;
}

core.List<api.ProfileSummary> buildUnnamed5850() => [
      buildProfileSummary(),
      buildProfileSummary(),
    ];

void checkUnnamed5850(core.List<api.ProfileSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProfileSummary(o[0]);
  checkProfileSummary(o[1]);
}

core.int buildCounterWebPropertySummary = 0;
api.WebPropertySummary buildWebPropertySummary() {
  final o = api.WebPropertySummary();
  buildCounterWebPropertySummary++;
  if (buildCounterWebPropertySummary < 3) {
    o.id = 'foo';
    o.internalWebPropertyId = 'foo';
    o.kind = 'foo';
    o.level = 'foo';
    o.name = 'foo';
    o.profiles = buildUnnamed5850();
    o.starred = true;
    o.websiteUrl = 'foo';
  }
  buildCounterWebPropertySummary--;
  return o;
}

void checkWebPropertySummary(api.WebPropertySummary o) {
  buildCounterWebPropertySummary++;
  if (buildCounterWebPropertySummary < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.level!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5850(o.profiles!);
    unittest.expect(o.starred!, unittest.isTrue);
    unittest.expect(
      o.websiteUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebPropertySummary--;
}

core.List<api.Webproperty> buildUnnamed5851() => [
      buildWebproperty(),
      buildWebproperty(),
    ];

void checkUnnamed5851(core.List<api.Webproperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebproperty(o[0]);
  checkWebproperty(o[1]);
}

core.int buildCounterWebproperties = 0;
api.Webproperties buildWebproperties() {
  final o = api.Webproperties();
  buildCounterWebproperties++;
  if (buildCounterWebproperties < 3) {
    o.items = buildUnnamed5851();
    o.itemsPerPage = 42;
    o.kind = 'foo';
    o.nextLink = 'foo';
    o.previousLink = 'foo';
    o.startIndex = 42;
    o.totalResults = 42;
    o.username = 'foo';
  }
  buildCounterWebproperties--;
  return o;
}

void checkWebproperties(api.Webproperties o) {
  buildCounterWebproperties++;
  if (buildCounterWebproperties < 3) {
    checkUnnamed5851(o.items!);
    unittest.expect(
      o.itemsPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebproperties--;
}

core.int buildCounterWebpropertyChildLink = 0;
api.WebpropertyChildLink buildWebpropertyChildLink() {
  final o = api.WebpropertyChildLink();
  buildCounterWebpropertyChildLink++;
  if (buildCounterWebpropertyChildLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterWebpropertyChildLink--;
  return o;
}

void checkWebpropertyChildLink(api.WebpropertyChildLink o) {
  buildCounterWebpropertyChildLink++;
  if (buildCounterWebpropertyChildLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebpropertyChildLink--;
}

core.int buildCounterWebpropertyParentLink = 0;
api.WebpropertyParentLink buildWebpropertyParentLink() {
  final o = api.WebpropertyParentLink();
  buildCounterWebpropertyParentLink++;
  if (buildCounterWebpropertyParentLink < 3) {
    o.href = 'foo';
    o.type = 'foo';
  }
  buildCounterWebpropertyParentLink--;
  return o;
}

void checkWebpropertyParentLink(api.WebpropertyParentLink o) {
  buildCounterWebpropertyParentLink++;
  if (buildCounterWebpropertyParentLink < 3) {
    unittest.expect(
      o.href!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebpropertyParentLink--;
}

core.List<core.String> buildUnnamed5852() => [
      'foo',
      'foo',
    ];

void checkUnnamed5852(core.List<core.String> o) {
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

core.int buildCounterWebpropertyPermissions = 0;
api.WebpropertyPermissions buildWebpropertyPermissions() {
  final o = api.WebpropertyPermissions();
  buildCounterWebpropertyPermissions++;
  if (buildCounterWebpropertyPermissions < 3) {
    o.effective = buildUnnamed5852();
  }
  buildCounterWebpropertyPermissions--;
  return o;
}

void checkWebpropertyPermissions(api.WebpropertyPermissions o) {
  buildCounterWebpropertyPermissions++;
  if (buildCounterWebpropertyPermissions < 3) {
    checkUnnamed5852(o.effective!);
  }
  buildCounterWebpropertyPermissions--;
}

core.int buildCounterWebproperty = 0;
api.Webproperty buildWebproperty() {
  final o = api.Webproperty();
  buildCounterWebproperty++;
  if (buildCounterWebproperty < 3) {
    o.accountId = 'foo';
    o.childLink = buildWebpropertyChildLink();
    o.created = core.DateTime.parse('2002-02-27T14:01:02');
    o.dataRetentionResetOnNewActivity = true;
    o.dataRetentionTtl = 'foo';
    o.defaultProfileId = 'foo';
    o.id = 'foo';
    o.industryVertical = 'foo';
    o.internalWebPropertyId = 'foo';
    o.kind = 'foo';
    o.level = 'foo';
    o.name = 'foo';
    o.parentLink = buildWebpropertyParentLink();
    o.permissions = buildWebpropertyPermissions();
    o.profileCount = 42;
    o.selfLink = 'foo';
    o.starred = true;
    o.updated = core.DateTime.parse('2002-02-27T14:01:02');
    o.websiteUrl = 'foo';
  }
  buildCounterWebproperty--;
  return o;
}

void checkWebproperty(api.Webproperty o) {
  buildCounterWebproperty++;
  if (buildCounterWebproperty < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkWebpropertyChildLink(o.childLink!);
    unittest.expect(
      o.created!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(o.dataRetentionResetOnNewActivity!, unittest.isTrue);
    unittest.expect(
      o.dataRetentionTtl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultProfileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.industryVertical!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internalWebPropertyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.level!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkWebpropertyParentLink(o.parentLink!);
    checkWebpropertyPermissions(o.permissions!);
    unittest.expect(
      o.profileCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.starred!, unittest.isTrue);
    unittest.expect(
      o.updated!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02')),
    );
    unittest.expect(
      o.websiteUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebproperty--;
}

void main() {
  unittest.group('obj-schema-AccountChildLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountChildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountChildLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountChildLink(od);
    });
  });

  unittest.group('obj-schema-AccountPermissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountPermissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountPermissions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountPermissions(od);
    });
  });

  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Account.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AccountRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AccountRef.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccountRef(od);
    });
  });

  unittest.group('obj-schema-AccountSummaries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountSummaries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountSummaries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountSummaries(od);
    });
  });

  unittest.group('obj-schema-AccountSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountSummary(od);
    });
  });

  unittest.group('obj-schema-AccountTicket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountTicket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountTicket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountTicket(od);
    });
  });

  unittest.group('obj-schema-AccountTreeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountTreeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountTreeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountTreeRequest(od);
    });
  });

  unittest.group('obj-schema-AccountTreeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountTreeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountTreeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountTreeResponse(od);
    });
  });

  unittest.group('obj-schema-Accounts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccounts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Accounts.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccounts(od);
    });
  });

  unittest.group('obj-schema-AdWordsAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdWordsAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdWordsAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdWordsAccount(od);
    });
  });

  unittest.group('obj-schema-AnalyticsDataimportDeleteUploadDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyticsDataimportDeleteUploadDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyticsDataimportDeleteUploadDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyticsDataimportDeleteUploadDataRequest(od);
    });
  });

  unittest.group('obj-schema-Column', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Column.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColumn(od);
    });
  });

  unittest.group('obj-schema-Columns', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumns();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Columns.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColumns(od);
    });
  });

  unittest.group('obj-schema-CustomDataSourceChildLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDataSourceChildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomDataSourceChildLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomDataSourceChildLink(od);
    });
  });

  unittest.group('obj-schema-CustomDataSourceParentLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDataSourceParentLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomDataSourceParentLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomDataSourceParentLink(od);
    });
  });

  unittest.group('obj-schema-CustomDataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomDataSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomDataSource(od);
    });
  });

  unittest.group('obj-schema-CustomDataSources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDataSources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomDataSources.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomDataSources(od);
    });
  });

  unittest.group('obj-schema-CustomDimensionParentLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDimensionParentLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomDimensionParentLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomDimensionParentLink(od);
    });
  });

  unittest.group('obj-schema-CustomDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomDimension(od);
    });
  });

  unittest.group('obj-schema-CustomDimensions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDimensions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomDimensions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomDimensions(od);
    });
  });

  unittest.group('obj-schema-CustomMetricParentLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomMetricParentLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomMetricParentLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomMetricParentLink(od);
    });
  });

  unittest.group('obj-schema-CustomMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomMetric(od);
    });
  });

  unittest.group('obj-schema-CustomMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomMetrics(od);
    });
  });

  unittest.group('obj-schema-EntityAdWordsLinkEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityAdWordsLinkEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityAdWordsLinkEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityAdWordsLinkEntity(od);
    });
  });

  unittest.group('obj-schema-EntityAdWordsLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityAdWordsLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityAdWordsLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityAdWordsLink(od);
    });
  });

  unittest.group('obj-schema-EntityAdWordsLinks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityAdWordsLinks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityAdWordsLinks.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityAdWordsLinks(od);
    });
  });

  unittest.group('obj-schema-EntityUserLinkEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityUserLinkEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityUserLinkEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityUserLinkEntity(od);
    });
  });

  unittest.group('obj-schema-EntityUserLinkPermissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityUserLinkPermissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityUserLinkPermissions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityUserLinkPermissions(od);
    });
  });

  unittest.group('obj-schema-EntityUserLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityUserLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityUserLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityUserLink(od);
    });
  });

  unittest.group('obj-schema-EntityUserLinks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityUserLinks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityUserLinks.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityUserLinks(od);
    });
  });

  unittest.group('obj-schema-ExperimentParentLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperimentParentLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExperimentParentLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExperimentParentLink(od);
    });
  });

  unittest.group('obj-schema-ExperimentVariations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperimentVariations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExperimentVariations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExperimentVariations(od);
    });
  });

  unittest.group('obj-schema-Experiment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperiment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Experiment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExperiment(od);
    });
  });

  unittest.group('obj-schema-Experiments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperiments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Experiments.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExperiments(od);
    });
  });

  unittest.group('obj-schema-FilterAdvancedDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterAdvancedDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterAdvancedDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterAdvancedDetails(od);
    });
  });

  unittest.group('obj-schema-FilterLowercaseDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterLowercaseDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterLowercaseDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterLowercaseDetails(od);
    });
  });

  unittest.group('obj-schema-FilterParentLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterParentLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterParentLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterParentLink(od);
    });
  });

  unittest.group('obj-schema-FilterSearchAndReplaceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterSearchAndReplaceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterSearchAndReplaceDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterSearchAndReplaceDetails(od);
    });
  });

  unittest.group('obj-schema-FilterUppercaseDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterUppercaseDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterUppercaseDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterUppercaseDetails(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Filter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilter(od);
    });
  });

  unittest.group('obj-schema-FilterExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterExpression(od);
    });
  });

  unittest.group('obj-schema-FilterRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FilterRef.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilterRef(od);
    });
  });

  unittest.group('obj-schema-Filters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Filters.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilters(od);
    });
  });

  unittest.group('obj-schema-GaDataColumnHeaders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGaDataColumnHeaders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GaDataColumnHeaders.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGaDataColumnHeaders(od);
    });
  });

  unittest.group('obj-schema-GaDataDataTableCols', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGaDataDataTableCols();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GaDataDataTableCols.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGaDataDataTableCols(od);
    });
  });

  unittest.group('obj-schema-GaDataDataTableRowsC', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGaDataDataTableRowsC();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GaDataDataTableRowsC.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGaDataDataTableRowsC(od);
    });
  });

  unittest.group('obj-schema-GaDataDataTableRows', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGaDataDataTableRows();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GaDataDataTableRows.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGaDataDataTableRows(od);
    });
  });

  unittest.group('obj-schema-GaDataDataTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGaDataDataTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GaDataDataTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGaDataDataTable(od);
    });
  });

  unittest.group('obj-schema-GaDataProfileInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGaDataProfileInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GaDataProfileInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGaDataProfileInfo(od);
    });
  });

  unittest.group('obj-schema-GaDataQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGaDataQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GaDataQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGaDataQuery(od);
    });
  });

  unittest.group('obj-schema-GaData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGaData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GaData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGaData(od);
    });
  });

  unittest.group('obj-schema-GoalEventDetailsEventConditions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoalEventDetailsEventConditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoalEventDetailsEventConditions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoalEventDetailsEventConditions(od);
    });
  });

  unittest.group('obj-schema-GoalEventDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoalEventDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoalEventDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoalEventDetails(od);
    });
  });

  unittest.group('obj-schema-GoalParentLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoalParentLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoalParentLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoalParentLink(od);
    });
  });

  unittest.group('obj-schema-GoalUrlDestinationDetailsSteps', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoalUrlDestinationDetailsSteps();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoalUrlDestinationDetailsSteps.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoalUrlDestinationDetailsSteps(od);
    });
  });

  unittest.group('obj-schema-GoalUrlDestinationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoalUrlDestinationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoalUrlDestinationDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoalUrlDestinationDetails(od);
    });
  });

  unittest.group('obj-schema-GoalVisitNumPagesDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoalVisitNumPagesDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoalVisitNumPagesDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoalVisitNumPagesDetails(od);
    });
  });

  unittest.group('obj-schema-GoalVisitTimeOnSiteDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoalVisitTimeOnSiteDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoalVisitTimeOnSiteDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoalVisitTimeOnSiteDetails(od);
    });
  });

  unittest.group('obj-schema-Goal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Goal.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoal(od);
    });
  });

  unittest.group('obj-schema-Goals', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoals();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Goals.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoals(od);
    });
  });

  unittest.group('obj-schema-HashClientIdRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHashClientIdRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HashClientIdRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHashClientIdRequest(od);
    });
  });

  unittest.group('obj-schema-HashClientIdResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHashClientIdResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HashClientIdResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHashClientIdResponse(od);
    });
  });

  unittest.group('obj-schema-IncludeConditions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIncludeConditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IncludeConditions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIncludeConditions(od);
    });
  });

  unittest.group('obj-schema-LinkedForeignAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedForeignAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedForeignAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedForeignAccount(od);
    });
  });

  unittest.group('obj-schema-McfDataColumnHeaders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcfDataColumnHeaders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McfDataColumnHeaders.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMcfDataColumnHeaders(od);
    });
  });

  unittest.group('obj-schema-McfDataProfileInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcfDataProfileInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McfDataProfileInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMcfDataProfileInfo(od);
    });
  });

  unittest.group('obj-schema-McfDataQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcfDataQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McfDataQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMcfDataQuery(od);
    });
  });

  unittest.group('obj-schema-McfDataRowsConversionPathValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcfDataRowsConversionPathValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McfDataRowsConversionPathValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMcfDataRowsConversionPathValue(od);
    });
  });

  unittest.group('obj-schema-McfDataRows', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcfDataRows();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McfDataRows.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMcfDataRows(od);
    });
  });

  unittest.group('obj-schema-McfData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcfData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.McfData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMcfData(od);
    });
  });

  unittest.group('obj-schema-ProfileChildLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfileChildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProfileChildLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProfileChildLink(od);
    });
  });

  unittest.group('obj-schema-ProfileParentLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfileParentLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProfileParentLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProfileParentLink(od);
    });
  });

  unittest.group('obj-schema-ProfilePermissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfilePermissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProfilePermissions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProfilePermissions(od);
    });
  });

  unittest.group('obj-schema-Profile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Profile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProfile(od);
    });
  });

  unittest.group('obj-schema-ProfileFilterLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfileFilterLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProfileFilterLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProfileFilterLink(od);
    });
  });

  unittest.group('obj-schema-ProfileFilterLinks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfileFilterLinks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProfileFilterLinks.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProfileFilterLinks(od);
    });
  });

  unittest.group('obj-schema-ProfileRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfileRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ProfileRef.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProfileRef(od);
    });
  });

  unittest.group('obj-schema-ProfileSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfileSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProfileSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProfileSummary(od);
    });
  });

  unittest.group('obj-schema-Profiles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfiles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Profiles.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProfiles(od);
    });
  });

  unittest.group('obj-schema-RealtimeDataColumnHeaders', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRealtimeDataColumnHeaders();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RealtimeDataColumnHeaders.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRealtimeDataColumnHeaders(od);
    });
  });

  unittest.group('obj-schema-RealtimeDataProfileInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRealtimeDataProfileInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RealtimeDataProfileInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRealtimeDataProfileInfo(od);
    });
  });

  unittest.group('obj-schema-RealtimeDataQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRealtimeDataQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RealtimeDataQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRealtimeDataQuery(od);
    });
  });

  unittest.group('obj-schema-RealtimeData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRealtimeData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RealtimeData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRealtimeData(od);
    });
  });

  unittest.group('obj-schema-RemarketingAudienceAudienceDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemarketingAudienceAudienceDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemarketingAudienceAudienceDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemarketingAudienceAudienceDefinition(od);
    });
  });

  unittest.group(
      'obj-schema-RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRemarketingAudienceStateBasedAudienceDefinitionExcludeConditions(od);
    });
  });

  unittest.group('obj-schema-RemarketingAudienceStateBasedAudienceDefinition',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemarketingAudienceStateBasedAudienceDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemarketingAudienceStateBasedAudienceDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemarketingAudienceStateBasedAudienceDefinition(od);
    });
  });

  unittest.group('obj-schema-RemarketingAudience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemarketingAudience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemarketingAudience.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemarketingAudience(od);
    });
  });

  unittest.group('obj-schema-RemarketingAudiences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemarketingAudiences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemarketingAudiences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemarketingAudiences(od);
    });
  });

  unittest.group('obj-schema-Segment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Segment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSegment(od);
    });
  });

  unittest.group('obj-schema-Segments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Segments.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSegments(od);
    });
  });

  unittest.group('obj-schema-UnsampledReportCloudStorageDownloadDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnsampledReportCloudStorageDownloadDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnsampledReportCloudStorageDownloadDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnsampledReportCloudStorageDownloadDetails(od);
    });
  });

  unittest.group('obj-schema-UnsampledReportDriveDownloadDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnsampledReportDriveDownloadDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnsampledReportDriveDownloadDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnsampledReportDriveDownloadDetails(od);
    });
  });

  unittest.group('obj-schema-UnsampledReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnsampledReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnsampledReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnsampledReport(od);
    });
  });

  unittest.group('obj-schema-UnsampledReports', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnsampledReports();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnsampledReports.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnsampledReports(od);
    });
  });

  unittest.group('obj-schema-Upload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Upload.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUpload(od);
    });
  });

  unittest.group('obj-schema-Uploads', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploads();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Uploads.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUploads(od);
    });
  });

  unittest.group('obj-schema-UserDeletionRequestId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserDeletionRequestId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserDeletionRequestId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserDeletionRequestId(od);
    });
  });

  unittest.group('obj-schema-UserDeletionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserDeletionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserDeletionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserDeletionRequest(od);
    });
  });

  unittest.group('obj-schema-UserRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UserRef.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUserRef(od);
    });
  });

  unittest.group('obj-schema-WebPropertyRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebPropertyRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebPropertyRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebPropertyRef(od);
    });
  });

  unittest.group('obj-schema-WebPropertySummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebPropertySummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebPropertySummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebPropertySummary(od);
    });
  });

  unittest.group('obj-schema-Webproperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebproperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Webproperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebproperties(od);
    });
  });

  unittest.group('obj-schema-WebpropertyChildLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebpropertyChildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebpropertyChildLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebpropertyChildLink(od);
    });
  });

  unittest.group('obj-schema-WebpropertyParentLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebpropertyParentLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebpropertyParentLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebpropertyParentLink(od);
    });
  });

  unittest.group('obj-schema-WebpropertyPermissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebpropertyPermissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebpropertyPermissions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebpropertyPermissions(od);
    });
  });

  unittest.group('obj-schema-Webproperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebproperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Webproperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebproperty(od);
    });
  });

  unittest.group('resource-DataGaResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).data.ga;
      final arg_ids = 'foo';
      final arg_startDate = 'foo';
      final arg_endDate = 'foo';
      final arg_metrics = 'foo';
      final arg_dimensions = 'foo';
      final arg_filters = 'foo';
      final arg_includeEmptyRows = true;
      final arg_maxResults = 42;
      final arg_output = 'foo';
      final arg_samplingLevel = 'foo';
      final arg_segment = 'foo';
      final arg_sort = 'foo';
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('data/ga'),
        );
        pathOffset += 7;

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
          queryMap['ids']!.first,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['start-date']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap['end-date']!.first,
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          queryMap['metrics']!.first,
          unittest.equals(arg_metrics),
        );
        unittest.expect(
          queryMap['dimensions']!.first,
          unittest.equals(arg_dimensions),
        );
        unittest.expect(
          queryMap['filters']!.first,
          unittest.equals(arg_filters),
        );
        unittest.expect(
          queryMap['include-empty-rows']!.first,
          unittest.equals('$arg_includeEmptyRows'),
        );
        unittest.expect(
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['output']!.first,
          unittest.equals(arg_output),
        );
        unittest.expect(
          queryMap['samplingLevel']!.first,
          unittest.equals(arg_samplingLevel),
        );
        unittest.expect(
          queryMap['segment']!.first,
          unittest.equals(arg_segment),
        );
        unittest.expect(
          queryMap['sort']!.first,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGaData());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_ids, arg_startDate, arg_endDate, arg_metrics,
          dimensions: arg_dimensions,
          filters: arg_filters,
          includeEmptyRows: arg_includeEmptyRows,
          maxResults: arg_maxResults,
          output: arg_output,
          samplingLevel: arg_samplingLevel,
          segment: arg_segment,
          sort: arg_sort,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkGaData(response as api.GaData);
    });
  });

  unittest.group('resource-DataMcfResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).data.mcf;
      final arg_ids = 'foo';
      final arg_startDate = 'foo';
      final arg_endDate = 'foo';
      final arg_metrics = 'foo';
      final arg_dimensions = 'foo';
      final arg_filters = 'foo';
      final arg_maxResults = 42;
      final arg_samplingLevel = 'foo';
      final arg_sort = 'foo';
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('data/mcf'),
        );
        pathOffset += 8;

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
          queryMap['ids']!.first,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['start-date']!.first,
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap['end-date']!.first,
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          queryMap['metrics']!.first,
          unittest.equals(arg_metrics),
        );
        unittest.expect(
          queryMap['dimensions']!.first,
          unittest.equals(arg_dimensions),
        );
        unittest.expect(
          queryMap['filters']!.first,
          unittest.equals(arg_filters),
        );
        unittest.expect(
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['samplingLevel']!.first,
          unittest.equals(arg_samplingLevel),
        );
        unittest.expect(
          queryMap['sort']!.first,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMcfData());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_ids, arg_startDate, arg_endDate, arg_metrics,
          dimensions: arg_dimensions,
          filters: arg_filters,
          maxResults: arg_maxResults,
          samplingLevel: arg_samplingLevel,
          sort: arg_sort,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkMcfData(response as api.McfData);
    });
  });

  unittest.group('resource-DataRealtimeResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).data.realtime;
      final arg_ids = 'foo';
      final arg_metrics = 'foo';
      final arg_dimensions = 'foo';
      final arg_filters = 'foo';
      final arg_maxResults = 42;
      final arg_sort = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('data/realtime'),
        );
        pathOffset += 13;

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
          queryMap['ids']!.first,
          unittest.equals(arg_ids),
        );
        unittest.expect(
          queryMap['metrics']!.first,
          unittest.equals(arg_metrics),
        );
        unittest.expect(
          queryMap['dimensions']!.first,
          unittest.equals(arg_dimensions),
        );
        unittest.expect(
          queryMap['filters']!.first,
          unittest.equals(arg_filters),
        );
        unittest.expect(
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['sort']!.first,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRealtimeData());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_ids, arg_metrics,
          dimensions: arg_dimensions,
          filters: arg_filters,
          maxResults: arg_maxResults,
          sort: arg_sort,
          $fields: arg_$fields);
      checkRealtimeData(response as api.RealtimeData);
    });
  });

  unittest.group('resource-ManagementAccountSummariesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.accountSummaries;
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('management/accountSummaries'),
        );
        pathOffset += 27;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccountSummaries());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkAccountSummaries(response as api.AccountSummaries);
    });
  });

  unittest.group('resource-ManagementAccountUserLinksResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.accountUserLinks;
      final arg_accountId = 'foo';
      final arg_linkId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/entityUserLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/entityUserLinks/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_linkId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_accountId, arg_linkId, $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.accountUserLinks;
      final arg_request = buildEntityUserLink();
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EntityUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntityUserLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/entityUserLinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/entityUserLinks'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildEntityUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_accountId, $fields: arg_$fields);
      checkEntityUserLink(response as api.EntityUserLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.accountUserLinks;
      final arg_accountId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/entityUserLinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/entityUserLinks'),
        );
        pathOffset += 16;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEntityUserLinks());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkEntityUserLinks(response as api.EntityUserLinks);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.accountUserLinks;
      final arg_request = buildEntityUserLink();
      final arg_accountId = 'foo';
      final arg_linkId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EntityUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntityUserLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/entityUserLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/entityUserLinks/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_linkId'),
        );

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
        final resp = convert.json.encode(buildEntityUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_accountId, arg_linkId,
          $fields: arg_$fields);
      checkEntityUserLink(response as api.EntityUserLink);
    });
  });

  unittest.group('resource-ManagementAccountsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.accounts;
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('management/accounts'),
        );
        pathOffset += 19;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccounts());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkAccounts(response as api.Accounts);
    });
  });

  unittest.group('resource-ManagementClientIdResource', () {
    unittest.test('method--hashClientId', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.clientId;
      final arg_request = buildHashClientIdRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.HashClientIdRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkHashClientIdRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('management/clientId:hashClientId'),
        );
        pathOffset += 32;

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
        final resp = convert.json.encode(buildHashClientIdResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.hashClientId(arg_request, $fields: arg_$fields);
      checkHashClientIdResponse(response as api.HashClientIdResponse);
    });
  });

  unittest.group('resource-ManagementCustomDataSourcesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customDataSources;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customDataSources', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/customDataSources'),
        );
        pathOffset += 18;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomDataSources());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_webPropertyId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkCustomDataSources(response as api.CustomDataSources);
    });
  });

  unittest.group('resource-ManagementCustomDimensionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customDimensions;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_customDimensionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customDimensions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/customDimensions/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customDimensionId'),
        );

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
        final resp = convert.json.encode(buildCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_webPropertyId, arg_customDimensionId,
          $fields: arg_$fields);
      checkCustomDimension(response as api.CustomDimension);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customDimensions;
      final arg_request = buildCustomDimension();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomDimension.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomDimension(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customDimensions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/customDimensions'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId,
          $fields: arg_$fields);
      checkCustomDimension(response as api.CustomDimension);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customDimensions;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customDimensions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/customDimensions'),
        );
        pathOffset += 17;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomDimensions());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_webPropertyId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkCustomDimensions(response as api.CustomDimensions);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customDimensions;
      final arg_request = buildCustomDimension();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_customDimensionId = 'foo';
      final arg_ignoreCustomDataSourceLinks = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomDimension.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomDimension(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customDimensions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/customDimensions/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customDimensionId'),
        );

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
          queryMap['ignoreCustomDataSourceLinks']!.first,
          unittest.equals('$arg_ignoreCustomDataSourceLinks'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_accountId, arg_webPropertyId, arg_customDimensionId,
          ignoreCustomDataSourceLinks: arg_ignoreCustomDataSourceLinks,
          $fields: arg_$fields);
      checkCustomDimension(response as api.CustomDimension);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customDimensions;
      final arg_request = buildCustomDimension();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_customDimensionId = 'foo';
      final arg_ignoreCustomDataSourceLinks = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomDimension.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomDimension(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customDimensions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/customDimensions/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customDimensionId'),
        );

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
          queryMap['ignoreCustomDataSourceLinks']!.first,
          unittest.equals('$arg_ignoreCustomDataSourceLinks'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_webPropertyId, arg_customDimensionId,
          ignoreCustomDataSourceLinks: arg_ignoreCustomDataSourceLinks,
          $fields: arg_$fields);
      checkCustomDimension(response as api.CustomDimension);
    });
  });

  unittest.group('resource-ManagementCustomMetricsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customMetrics;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_customMetricId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customMetrics/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/customMetrics/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customMetricId'),
        );

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
        final resp = convert.json.encode(buildCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_webPropertyId, arg_customMetricId,
          $fields: arg_$fields);
      checkCustomMetric(response as api.CustomMetric);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customMetrics;
      final arg_request = buildCustomMetric();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomMetric(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customMetrics', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/customMetrics'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId,
          $fields: arg_$fields);
      checkCustomMetric(response as api.CustomMetric);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customMetrics;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customMetrics', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/customMetrics'),
        );
        pathOffset += 14;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomMetrics());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_webPropertyId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkCustomMetrics(response as api.CustomMetrics);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customMetrics;
      final arg_request = buildCustomMetric();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_customMetricId = 'foo';
      final arg_ignoreCustomDataSourceLinks = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomMetric(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customMetrics/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/customMetrics/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customMetricId'),
        );

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
          queryMap['ignoreCustomDataSourceLinks']!.first,
          unittest.equals('$arg_ignoreCustomDataSourceLinks'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_accountId, arg_webPropertyId, arg_customMetricId,
          ignoreCustomDataSourceLinks: arg_ignoreCustomDataSourceLinks,
          $fields: arg_$fields);
      checkCustomMetric(response as api.CustomMetric);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.customMetrics;
      final arg_request = buildCustomMetric();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_customMetricId = 'foo';
      final arg_ignoreCustomDataSourceLinks = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomMetric(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customMetrics/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/customMetrics/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customMetricId'),
        );

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
          queryMap['ignoreCustomDataSourceLinks']!.first,
          unittest.equals('$arg_ignoreCustomDataSourceLinks'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_webPropertyId, arg_customMetricId,
          ignoreCustomDataSourceLinks: arg_ignoreCustomDataSourceLinks,
          $fields: arg_$fields);
      checkCustomMetric(response as api.CustomMetric);
    });
  });

  unittest.group('resource-ManagementExperimentsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.experiments;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_experimentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/experiments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/experiments/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_experimentId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(
          arg_accountId, arg_webPropertyId, arg_profileId, arg_experimentId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.experiments;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_experimentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/experiments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/experiments/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_experimentId'),
        );

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
        final resp = convert.json.encode(buildExperiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_webPropertyId, arg_profileId, arg_experimentId,
          $fields: arg_$fields);
      checkExperiment(response as api.Experiment);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.experiments;
      final arg_request = buildExperiment();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Experiment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExperiment(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/experiments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/experiments'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildExperiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId, arg_profileId,
          $fields: arg_$fields);
      checkExperiment(response as api.Experiment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.experiments;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/experiments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/experiments'),
        );
        pathOffset += 12;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildExperiments());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_accountId, arg_webPropertyId, arg_profileId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkExperiments(response as api.Experiments);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.experiments;
      final arg_request = buildExperiment();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_experimentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Experiment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExperiment(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/experiments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/experiments/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_experimentId'),
        );

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
        final resp = convert.json.encode(buildExperiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_accountId,
          arg_webPropertyId, arg_profileId, arg_experimentId,
          $fields: arg_$fields);
      checkExperiment(response as api.Experiment);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.experiments;
      final arg_request = buildExperiment();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_experimentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Experiment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExperiment(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/experiments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/experiments/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_experimentId'),
        );

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
        final resp = convert.json.encode(buildExperiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_accountId,
          arg_webPropertyId, arg_profileId, arg_experimentId,
          $fields: arg_$fields);
      checkExperiment(response as api.Experiment);
    });
  });

  unittest.group('resource-ManagementFiltersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.filters;
      final arg_accountId = 'foo';
      final arg_filterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/filters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/filters/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_filterId'),
        );

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
        final resp = convert.json.encode(buildFilter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_accountId, arg_filterId, $fields: arg_$fields);
      checkFilter(response as api.Filter);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.filters;
      final arg_accountId = 'foo';
      final arg_filterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/filters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/filters/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_filterId'),
        );

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
        final resp = convert.json.encode(buildFilter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_accountId, arg_filterId, $fields: arg_$fields);
      checkFilter(response as api.Filter);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.filters;
      final arg_request = buildFilter();
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Filter.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFilter(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/filters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/filters'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildFilter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_accountId, $fields: arg_$fields);
      checkFilter(response as api.Filter);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.filters;
      final arg_accountId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/filters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/filters'),
        );
        pathOffset += 8;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFilters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkFilters(response as api.Filters);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.filters;
      final arg_request = buildFilter();
      final arg_accountId = 'foo';
      final arg_filterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Filter.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFilter(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/filters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/filters/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_filterId'),
        );

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
        final resp = convert.json.encode(buildFilter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_accountId, arg_filterId,
          $fields: arg_$fields);
      checkFilter(response as api.Filter);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.filters;
      final arg_request = buildFilter();
      final arg_accountId = 'foo';
      final arg_filterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Filter.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFilter(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/filters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/filters/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_filterId'),
        );

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
        final resp = convert.json.encode(buildFilter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_filterId,
          $fields: arg_$fields);
      checkFilter(response as api.Filter);
    });
  });

  unittest.group('resource-ManagementGoalsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.goals;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_goalId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/goals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/goals/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_goalId'),
        );

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
        final resp = convert.json.encode(buildGoal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_webPropertyId, arg_profileId, arg_goalId,
          $fields: arg_$fields);
      checkGoal(response as api.Goal);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.goals;
      final arg_request = buildGoal();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Goal.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoal(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/goals', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/goals'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildGoal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId, arg_profileId,
          $fields: arg_$fields);
      checkGoal(response as api.Goal);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.goals;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/goals', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/goals'),
        );
        pathOffset += 6;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoals());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_accountId, arg_webPropertyId, arg_profileId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkGoals(response as api.Goals);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.goals;
      final arg_request = buildGoal();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_goalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Goal.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoal(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/goals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/goals/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_goalId'),
        );

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
        final resp = convert.json.encode(buildGoal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_accountId,
          arg_webPropertyId, arg_profileId, arg_goalId,
          $fields: arg_$fields);
      checkGoal(response as api.Goal);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.goals;
      final arg_request = buildGoal();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_goalId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Goal.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoal(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/goals/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/goals/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_goalId'),
        );

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
        final resp = convert.json.encode(buildGoal());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_accountId,
          arg_webPropertyId, arg_profileId, arg_goalId,
          $fields: arg_$fields);
      checkGoal(response as api.Goal);
    });
  });

  unittest.group('resource-ManagementProfileFilterLinksResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profileFilterLinks;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_linkId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/profileFilterLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/profileFilterLinks/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_linkId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(
          arg_accountId, arg_webPropertyId, arg_profileId, arg_linkId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profileFilterLinks;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_linkId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/profileFilterLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/profileFilterLinks/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_linkId'),
        );

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
        final resp = convert.json.encode(buildProfileFilterLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_webPropertyId, arg_profileId, arg_linkId,
          $fields: arg_$fields);
      checkProfileFilterLink(response as api.ProfileFilterLink);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profileFilterLinks;
      final arg_request = buildProfileFilterLink();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProfileFilterLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProfileFilterLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/profileFilterLinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/profileFilterLinks'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildProfileFilterLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId, arg_profileId,
          $fields: arg_$fields);
      checkProfileFilterLink(response as api.ProfileFilterLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profileFilterLinks;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/profileFilterLinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/profileFilterLinks'),
        );
        pathOffset += 19;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProfileFilterLinks());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_accountId, arg_webPropertyId, arg_profileId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkProfileFilterLinks(response as api.ProfileFilterLinks);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profileFilterLinks;
      final arg_request = buildProfileFilterLink();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_linkId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProfileFilterLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProfileFilterLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/profileFilterLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/profileFilterLinks/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_linkId'),
        );

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
        final resp = convert.json.encode(buildProfileFilterLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_accountId,
          arg_webPropertyId, arg_profileId, arg_linkId,
          $fields: arg_$fields);
      checkProfileFilterLink(response as api.ProfileFilterLink);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profileFilterLinks;
      final arg_request = buildProfileFilterLink();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_linkId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProfileFilterLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProfileFilterLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/profileFilterLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/profileFilterLinks/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_linkId'),
        );

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
        final resp = convert.json.encode(buildProfileFilterLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_accountId,
          arg_webPropertyId, arg_profileId, arg_linkId,
          $fields: arg_$fields);
      checkProfileFilterLink(response as api.ProfileFilterLink);
    });
  });

  unittest.group('resource-ManagementProfileUserLinksResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profileUserLinks;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_linkId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/entityUserLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/entityUserLinks/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_linkId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(
          arg_accountId, arg_webPropertyId, arg_profileId, arg_linkId,
          $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profileUserLinks;
      final arg_request = buildEntityUserLink();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EntityUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntityUserLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/entityUserLinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/entityUserLinks'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildEntityUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId, arg_profileId,
          $fields: arg_$fields);
      checkEntityUserLink(response as api.EntityUserLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profileUserLinks;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/entityUserLinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/entityUserLinks'),
        );
        pathOffset += 16;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEntityUserLinks());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_accountId, arg_webPropertyId, arg_profileId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkEntityUserLinks(response as api.EntityUserLinks);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profileUserLinks;
      final arg_request = buildEntityUserLink();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_linkId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EntityUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntityUserLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/entityUserLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/entityUserLinks/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_linkId'),
        );

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
        final resp = convert.json.encode(buildEntityUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_accountId,
          arg_webPropertyId, arg_profileId, arg_linkId,
          $fields: arg_$fields);
      checkEntityUserLink(response as api.EntityUserLink);
    });
  });

  unittest.group('resource-ManagementProfilesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profiles;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_accountId, arg_webPropertyId, arg_profileId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profiles;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );

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
        final resp = convert.json.encode(buildProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_webPropertyId, arg_profileId,
          $fields: arg_$fields);
      checkProfile(response as api.Profile);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profiles;
      final arg_request = buildProfile();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Profile.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProfile(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/profiles'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId,
          $fields: arg_$fields);
      checkProfile(response as api.Profile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profiles;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/profiles'),
        );
        pathOffset += 9;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProfiles());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_webPropertyId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkProfiles(response as api.Profiles);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profiles;
      final arg_request = buildProfile();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Profile.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProfile(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );

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
        final resp = convert.json.encode(buildProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_accountId, arg_webPropertyId, arg_profileId,
          $fields: arg_$fields);
      checkProfile(response as api.Profile);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.profiles;
      final arg_request = buildProfile();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Profile.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProfile(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );

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
        final resp = convert.json.encode(buildProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_webPropertyId, arg_profileId,
          $fields: arg_$fields);
      checkProfile(response as api.Profile);
    });
  });

  unittest.group('resource-ManagementRemarketingAudienceResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.remarketingAudience;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_remarketingAudienceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/remarketingAudiences/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/remarketingAudiences/'),
        );
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_remarketingAudienceId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(
          arg_accountId, arg_webPropertyId, arg_remarketingAudienceId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.remarketingAudience;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_remarketingAudienceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/remarketingAudiences/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/remarketingAudiences/'),
        );
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_remarketingAudienceId'),
        );

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
        final resp = convert.json.encode(buildRemarketingAudience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_webPropertyId, arg_remarketingAudienceId,
          $fields: arg_$fields);
      checkRemarketingAudience(response as api.RemarketingAudience);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.remarketingAudience;
      final arg_request = buildRemarketingAudience();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemarketingAudience.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemarketingAudience(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/remarketingAudiences', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/remarketingAudiences'),
        );
        pathOffset += 21;

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
        final resp = convert.json.encode(buildRemarketingAudience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId,
          $fields: arg_$fields);
      checkRemarketingAudience(response as api.RemarketingAudience);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.remarketingAudience;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
      final arg_type = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/remarketingAudiences', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/remarketingAudiences'),
        );
        pathOffset += 21;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemarketingAudiences());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_webPropertyId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          type: arg_type,
          $fields: arg_$fields);
      checkRemarketingAudiences(response as api.RemarketingAudiences);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.remarketingAudience;
      final arg_request = buildRemarketingAudience();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_remarketingAudienceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemarketingAudience.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemarketingAudience(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/remarketingAudiences/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/remarketingAudiences/'),
        );
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_remarketingAudienceId'),
        );

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
        final resp = convert.json.encode(buildRemarketingAudience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_accountId,
          arg_webPropertyId, arg_remarketingAudienceId,
          $fields: arg_$fields);
      checkRemarketingAudience(response as api.RemarketingAudience);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.remarketingAudience;
      final arg_request = buildRemarketingAudience();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_remarketingAudienceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemarketingAudience.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemarketingAudience(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/remarketingAudiences/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/remarketingAudiences/'),
        );
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_remarketingAudienceId'),
        );

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
        final resp = convert.json.encode(buildRemarketingAudience());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_accountId,
          arg_webPropertyId, arg_remarketingAudienceId,
          $fields: arg_$fields);
      checkRemarketingAudience(response as api.RemarketingAudience);
    });
  });

  unittest.group('resource-ManagementSegmentsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.segments;
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('management/segments'),
        );
        pathOffset += 19;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSegments());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkSegments(response as api.Segments);
    });
  });

  unittest.group('resource-ManagementUnsampledReportsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.unsampledReports;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_unsampledReportId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/unsampledReports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/unsampledReports/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_unsampledReportId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_accountId, arg_webPropertyId, arg_profileId,
          arg_unsampledReportId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.unsampledReports;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_unsampledReportId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/unsampledReports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/unsampledReports/'),
        );
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_unsampledReportId'),
        );

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
        final resp = convert.json.encode(buildUnsampledReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_accountId, arg_webPropertyId,
          arg_profileId, arg_unsampledReportId,
          $fields: arg_$fields);
      checkUnsampledReport(response as api.UnsampledReport);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.unsampledReports;
      final arg_request = buildUnsampledReport();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UnsampledReport.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUnsampledReport(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/unsampledReports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/unsampledReports'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildUnsampledReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId, arg_profileId,
          $fields: arg_$fields);
      checkUnsampledReport(response as api.UnsampledReport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.unsampledReports;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_profileId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/profiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/profiles/'),
        );
        pathOffset += 10;
        index = path.indexOf('/unsampledReports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_profileId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/unsampledReports'),
        );
        pathOffset += 17;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUnsampledReports());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_accountId, arg_webPropertyId, arg_profileId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkUnsampledReports(response as api.UnsampledReports);
    });
  });

  unittest.group('resource-ManagementUploadsResource', () {
    unittest.test('method--deleteUploadData', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.uploads;
      final arg_request = buildAnalyticsDataimportDeleteUploadDataRequest();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_customDataSourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnalyticsDataimportDeleteUploadDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnalyticsDataimportDeleteUploadDataRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customDataSources/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/customDataSources/'),
        );
        pathOffset += 19;
        index = path.indexOf('/deleteUploadData', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customDataSourceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/deleteUploadData'),
        );
        pathOffset += 17;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.deleteUploadData(
          arg_request, arg_accountId, arg_webPropertyId, arg_customDataSourceId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.uploads;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_customDataSourceId = 'foo';
      final arg_uploadId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customDataSources/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/customDataSources/'),
        );
        pathOffset += 19;
        index = path.indexOf('/uploads/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customDataSourceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/uploads/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_uploadId'),
        );

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
        final resp = convert.json.encode(buildUpload());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_accountId, arg_webPropertyId,
          arg_customDataSourceId, arg_uploadId,
          $fields: arg_$fields);
      checkUpload(response as api.Upload);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.uploads;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_customDataSourceId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customDataSources/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/customDataSources/'),
        );
        pathOffset += 19;
        index = path.indexOf('/uploads', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customDataSourceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/uploads'),
        );
        pathOffset += 8;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUploads());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_accountId, arg_webPropertyId, arg_customDataSourceId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkUploads(response as api.Uploads);
    });

    unittest.test('method--uploadData', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.uploads;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_customDataSourceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/customDataSources/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/customDataSources/'),
        );
        pathOffset += 19;
        index = path.indexOf('/uploads', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customDataSourceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/uploads'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildUpload());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.uploadData(
          arg_accountId, arg_webPropertyId, arg_customDataSourceId,
          $fields: arg_$fields);
      checkUpload(response as api.Upload);
    });
  });

  unittest.group('resource-ManagementWebPropertyAdWordsLinksResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webPropertyAdWordsLinks;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_webPropertyAdWordsLinkId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/entityAdWordsLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/entityAdWordsLinks/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyAdWordsLinkId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(
          arg_accountId, arg_webPropertyId, arg_webPropertyAdWordsLinkId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webPropertyAdWordsLinks;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_webPropertyAdWordsLinkId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/entityAdWordsLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/entityAdWordsLinks/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyAdWordsLinkId'),
        );

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
        final resp = convert.json.encode(buildEntityAdWordsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_accountId, arg_webPropertyId, arg_webPropertyAdWordsLinkId,
          $fields: arg_$fields);
      checkEntityAdWordsLink(response as api.EntityAdWordsLink);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webPropertyAdWordsLinks;
      final arg_request = buildEntityAdWordsLink();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EntityAdWordsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntityAdWordsLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/entityAdWordsLinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/entityAdWordsLinks'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildEntityAdWordsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId,
          $fields: arg_$fields);
      checkEntityAdWordsLink(response as api.EntityAdWordsLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webPropertyAdWordsLinks;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/entityAdWordsLinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/entityAdWordsLinks'),
        );
        pathOffset += 19;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEntityAdWordsLinks());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_webPropertyId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkEntityAdWordsLinks(response as api.EntityAdWordsLinks);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webPropertyAdWordsLinks;
      final arg_request = buildEntityAdWordsLink();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_webPropertyAdWordsLinkId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EntityAdWordsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntityAdWordsLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/entityAdWordsLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/entityAdWordsLinks/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyAdWordsLinkId'),
        );

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
        final resp = convert.json.encode(buildEntityAdWordsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_accountId,
          arg_webPropertyId, arg_webPropertyAdWordsLinkId,
          $fields: arg_$fields);
      checkEntityAdWordsLink(response as api.EntityAdWordsLink);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webPropertyAdWordsLinks;
      final arg_request = buildEntityAdWordsLink();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_webPropertyAdWordsLinkId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EntityAdWordsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntityAdWordsLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/entityAdWordsLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/entityAdWordsLinks/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyAdWordsLinkId'),
        );

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
        final resp = convert.json.encode(buildEntityAdWordsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_accountId,
          arg_webPropertyId, arg_webPropertyAdWordsLinkId,
          $fields: arg_$fields);
      checkEntityAdWordsLink(response as api.EntityAdWordsLink);
    });
  });

  unittest.group('resource-ManagementWebpropertiesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webproperties;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );

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
        final resp = convert.json.encode(buildWebproperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_accountId, arg_webPropertyId, $fields: arg_$fields);
      checkWebproperty(response as api.Webproperty);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webproperties;
      final arg_request = buildWebproperty();
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Webproperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWebproperty(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/webproperties'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildWebproperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_accountId, $fields: arg_$fields);
      checkWebproperty(response as api.Webproperty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webproperties;
      final arg_accountId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/webproperties'),
        );
        pathOffset += 14;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildWebproperties());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkWebproperties(response as api.Webproperties);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webproperties;
      final arg_request = buildWebproperty();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Webproperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWebproperty(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );

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
        final resp = convert.json.encode(buildWebproperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_accountId, arg_webPropertyId,
          $fields: arg_$fields);
      checkWebproperty(response as api.Webproperty);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webproperties;
      final arg_request = buildWebproperty();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Webproperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWebproperty(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );

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
        final resp = convert.json.encode(buildWebproperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_webPropertyId,
          $fields: arg_$fields);
      checkWebproperty(response as api.Webproperty);
    });
  });

  unittest.group('resource-ManagementWebpropertyUserLinksResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webpropertyUserLinks;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_linkId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/entityUserLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/entityUserLinks/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_linkId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_accountId, arg_webPropertyId, arg_linkId,
          $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webpropertyUserLinks;
      final arg_request = buildEntityUserLink();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EntityUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntityUserLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/entityUserLinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/entityUserLinks'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildEntityUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_accountId, arg_webPropertyId,
          $fields: arg_$fields);
      checkEntityUserLink(response as api.EntityUserLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webpropertyUserLinks;
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/entityUserLinks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/entityUserLinks'),
        );
        pathOffset += 16;

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
          core.int.parse(queryMap['max-results']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['start-index']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEntityUserLinks());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, arg_webPropertyId,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkEntityUserLinks(response as api.EntityUserLinks);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).management.webpropertyUserLinks;
      final arg_request = buildEntityUserLink();
      final arg_accountId = 'foo';
      final arg_webPropertyId = 'foo';
      final arg_linkId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EntityUserLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntityUserLink(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('management/accounts/'),
        );
        pathOffset += 20;
        index = path.indexOf('/webproperties/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/webproperties/'),
        );
        pathOffset += 15;
        index = path.indexOf('/entityUserLinks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webPropertyId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/entityUserLinks/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_linkId'),
        );

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
        final resp = convert.json.encode(buildEntityUserLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_webPropertyId, arg_linkId,
          $fields: arg_$fields);
      checkEntityUserLink(response as api.EntityUserLink);
    });
  });

  unittest.group('resource-MetadataColumnsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).metadata.columns;
      final arg_reportType = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('metadata/'),
        );
        pathOffset += 9;
        index = path.indexOf('/columns', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportType'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/columns'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildColumns());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_reportType, $fields: arg_$fields);
      checkColumns(response as api.Columns);
    });
  });

  unittest.group('resource-ProvisioningResource', () {
    unittest.test('method--createAccountTicket', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).provisioning;
      final arg_request = buildAccountTicket();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountTicket.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountTicket(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('provisioning/createAccountTicket'),
        );
        pathOffset += 32;

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
        final resp = convert.json.encode(buildAccountTicket());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createAccountTicket(arg_request, $fields: arg_$fields);
      checkAccountTicket(response as api.AccountTicket);
    });

    unittest.test('method--createAccountTree', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).provisioning;
      final arg_request = buildAccountTreeRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountTreeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountTreeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('provisioning/createAccountTree'),
        );
        pathOffset += 30;

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
        final resp = convert.json.encode(buildAccountTreeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createAccountTree(arg_request, $fields: arg_$fields);
      checkAccountTreeResponse(response as api.AccountTreeResponse);
    });
  });

  unittest.group('resource-UserDeletionUserDeletionRequestResource', () {
    unittest.test('method--upsert', () async {
      final mock = HttpServerMock();
      final res = api.AnalyticsApi(mock).userDeletion.userDeletionRequest;
      final arg_request = buildUserDeletionRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserDeletionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserDeletionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('analytics/v3/'),
        );
        pathOffset += 13;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 40),
          unittest.equals('userDeletion/userDeletionRequests:upsert'),
        );
        pathOffset += 40;

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
        final resp = convert.json.encode(buildUserDeletionRequest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.upsert(arg_request, $fields: arg_$fields);
      checkUserDeletionRequest(response as api.UserDeletionRequest);
    });
  });
}
