// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.discovery.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/discovery/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(http.BaseRequest, core.Object)
      _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterDirectoryListItemsIcons = 0;
api.DirectoryListItemsIcons buildDirectoryListItemsIcons() {
  var o = api.DirectoryListItemsIcons();
  buildCounterDirectoryListItemsIcons++;
  if (buildCounterDirectoryListItemsIcons < 3) {
    o.x16 = 'foo';
    o.x32 = 'foo';
  }
  buildCounterDirectoryListItemsIcons--;
  return o;
}

void checkDirectoryListItemsIcons(api.DirectoryListItemsIcons o) {
  buildCounterDirectoryListItemsIcons++;
  if (buildCounterDirectoryListItemsIcons < 3) {
    unittest.expect(o.x16, unittest.equals('foo'));
    unittest.expect(o.x32, unittest.equals('foo'));
  }
  buildCounterDirectoryListItemsIcons--;
}

core.List<core.String> buildUnnamed551() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed551(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDirectoryListItems = 0;
api.DirectoryListItems buildDirectoryListItems() {
  var o = api.DirectoryListItems();
  buildCounterDirectoryListItems++;
  if (buildCounterDirectoryListItems < 3) {
    o.description = 'foo';
    o.discoveryLink = 'foo';
    o.discoveryRestUrl = 'foo';
    o.documentationLink = 'foo';
    o.icons = buildDirectoryListItemsIcons();
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed551();
    o.name = 'foo';
    o.preferred = true;
    o.title = 'foo';
    o.version = 'foo';
  }
  buildCounterDirectoryListItems--;
  return o;
}

void checkDirectoryListItems(api.DirectoryListItems o) {
  buildCounterDirectoryListItems++;
  if (buildCounterDirectoryListItems < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.discoveryLink, unittest.equals('foo'));
    unittest.expect(o.discoveryRestUrl, unittest.equals('foo'));
    unittest.expect(o.documentationLink, unittest.equals('foo'));
    checkDirectoryListItemsIcons(o.icons);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed551(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.preferred, unittest.isTrue);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterDirectoryListItems--;
}

core.List<api.DirectoryListItems> buildUnnamed552() {
  var o = <api.DirectoryListItems>[];
  o.add(buildDirectoryListItems());
  o.add(buildDirectoryListItems());
  return o;
}

void checkUnnamed552(core.List<api.DirectoryListItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDirectoryListItems(o[0]);
  checkDirectoryListItems(o[1]);
}

core.int buildCounterDirectoryList = 0;
api.DirectoryList buildDirectoryList() {
  var o = api.DirectoryList();
  buildCounterDirectoryList++;
  if (buildCounterDirectoryList < 3) {
    o.discoveryVersion = 'foo';
    o.items = buildUnnamed552();
    o.kind = 'foo';
  }
  buildCounterDirectoryList--;
  return o;
}

void checkDirectoryList(api.DirectoryList o) {
  buildCounterDirectoryList++;
  if (buildCounterDirectoryList < 3) {
    unittest.expect(o.discoveryVersion, unittest.equals('foo'));
    checkUnnamed552(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDirectoryList--;
}

core.List<core.String> buildUnnamed553() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed553(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJsonSchemaAnnotations = 0;
api.JsonSchemaAnnotations buildJsonSchemaAnnotations() {
  var o = api.JsonSchemaAnnotations();
  buildCounterJsonSchemaAnnotations++;
  if (buildCounterJsonSchemaAnnotations < 3) {
    o.required = buildUnnamed553();
  }
  buildCounterJsonSchemaAnnotations--;
  return o;
}

void checkJsonSchemaAnnotations(api.JsonSchemaAnnotations o) {
  buildCounterJsonSchemaAnnotations++;
  if (buildCounterJsonSchemaAnnotations < 3) {
    checkUnnamed553(o.required);
  }
  buildCounterJsonSchemaAnnotations--;
}

core.List<core.String> buildUnnamed554() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed554(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed555() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed555(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.JsonSchema> buildUnnamed556() {
  var o = <core.String, api.JsonSchema>{};
  o['x'] = buildJsonSchema();
  o['y'] = buildJsonSchema();
  return o;
}

void checkUnnamed556(core.Map<core.String, api.JsonSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJsonSchema(o['x']);
  checkJsonSchema(o['y']);
}

core.int buildCounterJsonSchemaVariantMap = 0;
api.JsonSchemaVariantMap buildJsonSchemaVariantMap() {
  var o = api.JsonSchemaVariantMap();
  buildCounterJsonSchemaVariantMap++;
  if (buildCounterJsonSchemaVariantMap < 3) {
    o.P_ref = 'foo';
    o.typeValue = 'foo';
  }
  buildCounterJsonSchemaVariantMap--;
  return o;
}

void checkJsonSchemaVariantMap(api.JsonSchemaVariantMap o) {
  buildCounterJsonSchemaVariantMap++;
  if (buildCounterJsonSchemaVariantMap < 3) {
    unittest.expect(o.P_ref, unittest.equals('foo'));
    unittest.expect(o.typeValue, unittest.equals('foo'));
  }
  buildCounterJsonSchemaVariantMap--;
}

core.List<api.JsonSchemaVariantMap> buildUnnamed557() {
  var o = <api.JsonSchemaVariantMap>[];
  o.add(buildJsonSchemaVariantMap());
  o.add(buildJsonSchemaVariantMap());
  return o;
}

void checkUnnamed557(core.List<api.JsonSchemaVariantMap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJsonSchemaVariantMap(o[0]);
  checkJsonSchemaVariantMap(o[1]);
}

core.int buildCounterJsonSchemaVariant = 0;
api.JsonSchemaVariant buildJsonSchemaVariant() {
  var o = api.JsonSchemaVariant();
  buildCounterJsonSchemaVariant++;
  if (buildCounterJsonSchemaVariant < 3) {
    o.discriminant = 'foo';
    o.map = buildUnnamed557();
  }
  buildCounterJsonSchemaVariant--;
  return o;
}

void checkJsonSchemaVariant(api.JsonSchemaVariant o) {
  buildCounterJsonSchemaVariant++;
  if (buildCounterJsonSchemaVariant < 3) {
    unittest.expect(o.discriminant, unittest.equals('foo'));
    checkUnnamed557(o.map);
  }
  buildCounterJsonSchemaVariant--;
}

core.int buildCounterJsonSchema = 0;
api.JsonSchema buildJsonSchema() {
  var o = api.JsonSchema();
  buildCounterJsonSchema++;
  if (buildCounterJsonSchema < 3) {
    o.P_ref = 'foo';
    o.additionalProperties = buildJsonSchema();
    o.annotations = buildJsonSchemaAnnotations();
    o.default_ = 'foo';
    o.description = 'foo';
    o.enum_ = buildUnnamed554();
    o.enumDescriptions = buildUnnamed555();
    o.format = 'foo';
    o.id = 'foo';
    o.items = buildJsonSchema();
    o.location = 'foo';
    o.maximum = 'foo';
    o.minimum = 'foo';
    o.pattern = 'foo';
    o.properties = buildUnnamed556();
    o.readOnly = true;
    o.repeated = true;
    o.required = true;
    o.type = 'foo';
    o.variant = buildJsonSchemaVariant();
  }
  buildCounterJsonSchema--;
  return o;
}

void checkJsonSchema(api.JsonSchema o) {
  buildCounterJsonSchema++;
  if (buildCounterJsonSchema < 3) {
    unittest.expect(o.P_ref, unittest.equals('foo'));
    checkJsonSchema(o.additionalProperties);
    checkJsonSchemaAnnotations(o.annotations);
    unittest.expect(o.default_, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed554(o.enum_);
    checkUnnamed555(o.enumDescriptions);
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkJsonSchema(o.items);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.maximum, unittest.equals('foo'));
    unittest.expect(o.minimum, unittest.equals('foo'));
    unittest.expect(o.pattern, unittest.equals('foo'));
    checkUnnamed556(o.properties);
    unittest.expect(o.readOnly, unittest.isTrue);
    unittest.expect(o.repeated, unittest.isTrue);
    unittest.expect(o.required, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    checkJsonSchemaVariant(o.variant);
  }
  buildCounterJsonSchema--;
}

core.int buildCounterRestDescriptionAuthOauth2ScopesValue = 0;
api.RestDescriptionAuthOauth2ScopesValue
    buildRestDescriptionAuthOauth2ScopesValue() {
  var o = api.RestDescriptionAuthOauth2ScopesValue();
  buildCounterRestDescriptionAuthOauth2ScopesValue++;
  if (buildCounterRestDescriptionAuthOauth2ScopesValue < 3) {
    o.description = 'foo';
  }
  buildCounterRestDescriptionAuthOauth2ScopesValue--;
  return o;
}

void checkRestDescriptionAuthOauth2ScopesValue(
    api.RestDescriptionAuthOauth2ScopesValue o) {
  buildCounterRestDescriptionAuthOauth2ScopesValue++;
  if (buildCounterRestDescriptionAuthOauth2ScopesValue < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
  }
  buildCounterRestDescriptionAuthOauth2ScopesValue--;
}

core.Map<core.String, api.RestDescriptionAuthOauth2ScopesValue>
    buildUnnamed558() {
  var o = <core.String, api.RestDescriptionAuthOauth2ScopesValue>{};
  o['x'] = buildRestDescriptionAuthOauth2ScopesValue();
  o['y'] = buildRestDescriptionAuthOauth2ScopesValue();
  return o;
}

void checkUnnamed558(
    core.Map<core.String, api.RestDescriptionAuthOauth2ScopesValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRestDescriptionAuthOauth2ScopesValue(o['x']);
  checkRestDescriptionAuthOauth2ScopesValue(o['y']);
}

core.int buildCounterRestDescriptionAuthOauth2 = 0;
api.RestDescriptionAuthOauth2 buildRestDescriptionAuthOauth2() {
  var o = api.RestDescriptionAuthOauth2();
  buildCounterRestDescriptionAuthOauth2++;
  if (buildCounterRestDescriptionAuthOauth2 < 3) {
    o.scopes = buildUnnamed558();
  }
  buildCounterRestDescriptionAuthOauth2--;
  return o;
}

void checkRestDescriptionAuthOauth2(api.RestDescriptionAuthOauth2 o) {
  buildCounterRestDescriptionAuthOauth2++;
  if (buildCounterRestDescriptionAuthOauth2 < 3) {
    checkUnnamed558(o.scopes);
  }
  buildCounterRestDescriptionAuthOauth2--;
}

core.int buildCounterRestDescriptionAuth = 0;
api.RestDescriptionAuth buildRestDescriptionAuth() {
  var o = api.RestDescriptionAuth();
  buildCounterRestDescriptionAuth++;
  if (buildCounterRestDescriptionAuth < 3) {
    o.oauth2 = buildRestDescriptionAuthOauth2();
  }
  buildCounterRestDescriptionAuth--;
  return o;
}

void checkRestDescriptionAuth(api.RestDescriptionAuth o) {
  buildCounterRestDescriptionAuth++;
  if (buildCounterRestDescriptionAuth < 3) {
    checkRestDescriptionAuthOauth2(o.oauth2);
  }
  buildCounterRestDescriptionAuth--;
}

core.List<core.String> buildUnnamed559() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed559(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRestDescriptionIcons = 0;
api.RestDescriptionIcons buildRestDescriptionIcons() {
  var o = api.RestDescriptionIcons();
  buildCounterRestDescriptionIcons++;
  if (buildCounterRestDescriptionIcons < 3) {
    o.x16 = 'foo';
    o.x32 = 'foo';
  }
  buildCounterRestDescriptionIcons--;
  return o;
}

void checkRestDescriptionIcons(api.RestDescriptionIcons o) {
  buildCounterRestDescriptionIcons++;
  if (buildCounterRestDescriptionIcons < 3) {
    unittest.expect(o.x16, unittest.equals('foo'));
    unittest.expect(o.x32, unittest.equals('foo'));
  }
  buildCounterRestDescriptionIcons--;
}

core.List<core.String> buildUnnamed560() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed560(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.RestMethod> buildUnnamed561() {
  var o = <core.String, api.RestMethod>{};
  o['x'] = buildRestMethod();
  o['y'] = buildRestMethod();
  return o;
}

void checkUnnamed561(core.Map<core.String, api.RestMethod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRestMethod(o['x']);
  checkRestMethod(o['y']);
}

core.Map<core.String, api.JsonSchema> buildUnnamed562() {
  var o = <core.String, api.JsonSchema>{};
  o['x'] = buildJsonSchema();
  o['y'] = buildJsonSchema();
  return o;
}

void checkUnnamed562(core.Map<core.String, api.JsonSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJsonSchema(o['x']);
  checkJsonSchema(o['y']);
}

core.Map<core.String, api.RestResource> buildUnnamed563() {
  var o = <core.String, api.RestResource>{};
  o['x'] = buildRestResource();
  o['y'] = buildRestResource();
  return o;
}

void checkUnnamed563(core.Map<core.String, api.RestResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRestResource(o['x']);
  checkRestResource(o['y']);
}

core.Map<core.String, api.JsonSchema> buildUnnamed564() {
  var o = <core.String, api.JsonSchema>{};
  o['x'] = buildJsonSchema();
  o['y'] = buildJsonSchema();
  return o;
}

void checkUnnamed564(core.Map<core.String, api.JsonSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJsonSchema(o['x']);
  checkJsonSchema(o['y']);
}

core.int buildCounterRestDescription = 0;
api.RestDescription buildRestDescription() {
  var o = api.RestDescription();
  buildCounterRestDescription++;
  if (buildCounterRestDescription < 3) {
    o.auth = buildRestDescriptionAuth();
    o.basePath = 'foo';
    o.baseUrl = 'foo';
    o.batchPath = 'foo';
    o.canonicalName = 'foo';
    o.description = 'foo';
    o.discoveryVersion = 'foo';
    o.documentationLink = 'foo';
    o.etag = 'foo';
    o.exponentialBackoffDefault = true;
    o.features = buildUnnamed559();
    o.icons = buildRestDescriptionIcons();
    o.id = 'foo';
    o.kind = 'foo';
    o.labels = buildUnnamed560();
    o.methods = buildUnnamed561();
    o.name = 'foo';
    o.ownerDomain = 'foo';
    o.ownerName = 'foo';
    o.packagePath = 'foo';
    o.parameters = buildUnnamed562();
    o.protocol = 'foo';
    o.resources = buildUnnamed563();
    o.revision = 'foo';
    o.rootUrl = 'foo';
    o.schemas = buildUnnamed564();
    o.servicePath = 'foo';
    o.title = 'foo';
    o.version = 'foo';
    o.versionModule = true;
  }
  buildCounterRestDescription--;
  return o;
}

void checkRestDescription(api.RestDescription o) {
  buildCounterRestDescription++;
  if (buildCounterRestDescription < 3) {
    checkRestDescriptionAuth(o.auth);
    unittest.expect(o.basePath, unittest.equals('foo'));
    unittest.expect(o.baseUrl, unittest.equals('foo'));
    unittest.expect(o.batchPath, unittest.equals('foo'));
    unittest.expect(o.canonicalName, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.discoveryVersion, unittest.equals('foo'));
    unittest.expect(o.documentationLink, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.exponentialBackoffDefault, unittest.isTrue);
    checkUnnamed559(o.features);
    checkRestDescriptionIcons(o.icons);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed560(o.labels);
    checkUnnamed561(o.methods);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ownerDomain, unittest.equals('foo'));
    unittest.expect(o.ownerName, unittest.equals('foo'));
    unittest.expect(o.packagePath, unittest.equals('foo'));
    checkUnnamed562(o.parameters);
    unittest.expect(o.protocol, unittest.equals('foo'));
    checkUnnamed563(o.resources);
    unittest.expect(o.revision, unittest.equals('foo'));
    unittest.expect(o.rootUrl, unittest.equals('foo'));
    checkUnnamed564(o.schemas);
    unittest.expect(o.servicePath, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
    unittest.expect(o.versionModule, unittest.isTrue);
  }
  buildCounterRestDescription--;
}

core.List<core.String> buildUnnamed565() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed565(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRestMethodMediaUploadProtocolsResumable = 0;
api.RestMethodMediaUploadProtocolsResumable
    buildRestMethodMediaUploadProtocolsResumable() {
  var o = api.RestMethodMediaUploadProtocolsResumable();
  buildCounterRestMethodMediaUploadProtocolsResumable++;
  if (buildCounterRestMethodMediaUploadProtocolsResumable < 3) {
    o.multipart = true;
    o.path = 'foo';
  }
  buildCounterRestMethodMediaUploadProtocolsResumable--;
  return o;
}

void checkRestMethodMediaUploadProtocolsResumable(
    api.RestMethodMediaUploadProtocolsResumable o) {
  buildCounterRestMethodMediaUploadProtocolsResumable++;
  if (buildCounterRestMethodMediaUploadProtocolsResumable < 3) {
    unittest.expect(o.multipart, unittest.isTrue);
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterRestMethodMediaUploadProtocolsResumable--;
}

core.int buildCounterRestMethodMediaUploadProtocolsSimple = 0;
api.RestMethodMediaUploadProtocolsSimple
    buildRestMethodMediaUploadProtocolsSimple() {
  var o = api.RestMethodMediaUploadProtocolsSimple();
  buildCounterRestMethodMediaUploadProtocolsSimple++;
  if (buildCounterRestMethodMediaUploadProtocolsSimple < 3) {
    o.multipart = true;
    o.path = 'foo';
  }
  buildCounterRestMethodMediaUploadProtocolsSimple--;
  return o;
}

void checkRestMethodMediaUploadProtocolsSimple(
    api.RestMethodMediaUploadProtocolsSimple o) {
  buildCounterRestMethodMediaUploadProtocolsSimple++;
  if (buildCounterRestMethodMediaUploadProtocolsSimple < 3) {
    unittest.expect(o.multipart, unittest.isTrue);
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterRestMethodMediaUploadProtocolsSimple--;
}

core.int buildCounterRestMethodMediaUploadProtocols = 0;
api.RestMethodMediaUploadProtocols buildRestMethodMediaUploadProtocols() {
  var o = api.RestMethodMediaUploadProtocols();
  buildCounterRestMethodMediaUploadProtocols++;
  if (buildCounterRestMethodMediaUploadProtocols < 3) {
    o.resumable = buildRestMethodMediaUploadProtocolsResumable();
    o.simple = buildRestMethodMediaUploadProtocolsSimple();
  }
  buildCounterRestMethodMediaUploadProtocols--;
  return o;
}

void checkRestMethodMediaUploadProtocols(api.RestMethodMediaUploadProtocols o) {
  buildCounterRestMethodMediaUploadProtocols++;
  if (buildCounterRestMethodMediaUploadProtocols < 3) {
    checkRestMethodMediaUploadProtocolsResumable(o.resumable);
    checkRestMethodMediaUploadProtocolsSimple(o.simple);
  }
  buildCounterRestMethodMediaUploadProtocols--;
}

core.int buildCounterRestMethodMediaUpload = 0;
api.RestMethodMediaUpload buildRestMethodMediaUpload() {
  var o = api.RestMethodMediaUpload();
  buildCounterRestMethodMediaUpload++;
  if (buildCounterRestMethodMediaUpload < 3) {
    o.accept = buildUnnamed565();
    o.maxSize = 'foo';
    o.protocols = buildRestMethodMediaUploadProtocols();
  }
  buildCounterRestMethodMediaUpload--;
  return o;
}

void checkRestMethodMediaUpload(api.RestMethodMediaUpload o) {
  buildCounterRestMethodMediaUpload++;
  if (buildCounterRestMethodMediaUpload < 3) {
    checkUnnamed565(o.accept);
    unittest.expect(o.maxSize, unittest.equals('foo'));
    checkRestMethodMediaUploadProtocols(o.protocols);
  }
  buildCounterRestMethodMediaUpload--;
}

core.List<core.String> buildUnnamed566() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed566(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.JsonSchema> buildUnnamed567() {
  var o = <core.String, api.JsonSchema>{};
  o['x'] = buildJsonSchema();
  o['y'] = buildJsonSchema();
  return o;
}

void checkUnnamed567(core.Map<core.String, api.JsonSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJsonSchema(o['x']);
  checkJsonSchema(o['y']);
}

core.int buildCounterRestMethodRequest = 0;
api.RestMethodRequest buildRestMethodRequest() {
  var o = api.RestMethodRequest();
  buildCounterRestMethodRequest++;
  if (buildCounterRestMethodRequest < 3) {
    o.P_ref = 'foo';
    o.parameterName = 'foo';
  }
  buildCounterRestMethodRequest--;
  return o;
}

void checkRestMethodRequest(api.RestMethodRequest o) {
  buildCounterRestMethodRequest++;
  if (buildCounterRestMethodRequest < 3) {
    unittest.expect(o.P_ref, unittest.equals('foo'));
    unittest.expect(o.parameterName, unittest.equals('foo'));
  }
  buildCounterRestMethodRequest--;
}

core.int buildCounterRestMethodResponse = 0;
api.RestMethodResponse buildRestMethodResponse() {
  var o = api.RestMethodResponse();
  buildCounterRestMethodResponse++;
  if (buildCounterRestMethodResponse < 3) {
    o.P_ref = 'foo';
  }
  buildCounterRestMethodResponse--;
  return o;
}

void checkRestMethodResponse(api.RestMethodResponse o) {
  buildCounterRestMethodResponse++;
  if (buildCounterRestMethodResponse < 3) {
    unittest.expect(o.P_ref, unittest.equals('foo'));
  }
  buildCounterRestMethodResponse--;
}

core.List<core.String> buildUnnamed568() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed568(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRestMethod = 0;
api.RestMethod buildRestMethod() {
  var o = api.RestMethod();
  buildCounterRestMethod++;
  if (buildCounterRestMethod < 3) {
    o.description = 'foo';
    o.etagRequired = true;
    o.httpMethod = 'foo';
    o.id = 'foo';
    o.mediaUpload = buildRestMethodMediaUpload();
    o.parameterOrder = buildUnnamed566();
    o.parameters = buildUnnamed567();
    o.path = 'foo';
    o.request = buildRestMethodRequest();
    o.response = buildRestMethodResponse();
    o.scopes = buildUnnamed568();
    o.supportsMediaDownload = true;
    o.supportsMediaUpload = true;
    o.supportsSubscription = true;
    o.useMediaDownloadService = true;
  }
  buildCounterRestMethod--;
  return o;
}

void checkRestMethod(api.RestMethod o) {
  buildCounterRestMethod++;
  if (buildCounterRestMethod < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etagRequired, unittest.isTrue);
    unittest.expect(o.httpMethod, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkRestMethodMediaUpload(o.mediaUpload);
    checkUnnamed566(o.parameterOrder);
    checkUnnamed567(o.parameters);
    unittest.expect(o.path, unittest.equals('foo'));
    checkRestMethodRequest(o.request);
    checkRestMethodResponse(o.response);
    checkUnnamed568(o.scopes);
    unittest.expect(o.supportsMediaDownload, unittest.isTrue);
    unittest.expect(o.supportsMediaUpload, unittest.isTrue);
    unittest.expect(o.supportsSubscription, unittest.isTrue);
    unittest.expect(o.useMediaDownloadService, unittest.isTrue);
  }
  buildCounterRestMethod--;
}

core.Map<core.String, api.RestMethod> buildUnnamed569() {
  var o = <core.String, api.RestMethod>{};
  o['x'] = buildRestMethod();
  o['y'] = buildRestMethod();
  return o;
}

void checkUnnamed569(core.Map<core.String, api.RestMethod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRestMethod(o['x']);
  checkRestMethod(o['y']);
}

core.Map<core.String, api.RestResource> buildUnnamed570() {
  var o = <core.String, api.RestResource>{};
  o['x'] = buildRestResource();
  o['y'] = buildRestResource();
  return o;
}

void checkUnnamed570(core.Map<core.String, api.RestResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRestResource(o['x']);
  checkRestResource(o['y']);
}

core.int buildCounterRestResource = 0;
api.RestResource buildRestResource() {
  var o = api.RestResource();
  buildCounterRestResource++;
  if (buildCounterRestResource < 3) {
    o.methods = buildUnnamed569();
    o.resources = buildUnnamed570();
  }
  buildCounterRestResource--;
  return o;
}

void checkRestResource(api.RestResource o) {
  buildCounterRestResource++;
  if (buildCounterRestResource < 3) {
    checkUnnamed569(o.methods);
    checkUnnamed570(o.resources);
  }
  buildCounterRestResource--;
}

void main() {
  unittest.group('obj-schema-DirectoryListItemsIcons', () {
    unittest.test('to-json--from-json', () {
      var o = buildDirectoryListItemsIcons();
      var od = api.DirectoryListItemsIcons.fromJson(o.toJson());
      checkDirectoryListItemsIcons(od);
    });
  });

  unittest.group('obj-schema-DirectoryListItems', () {
    unittest.test('to-json--from-json', () {
      var o = buildDirectoryListItems();
      var od = api.DirectoryListItems.fromJson(o.toJson());
      checkDirectoryListItems(od);
    });
  });

  unittest.group('obj-schema-DirectoryList', () {
    unittest.test('to-json--from-json', () {
      var o = buildDirectoryList();
      var od = api.DirectoryList.fromJson(o.toJson());
      checkDirectoryList(od);
    });
  });

  unittest.group('obj-schema-JsonSchemaAnnotations', () {
    unittest.test('to-json--from-json', () {
      var o = buildJsonSchemaAnnotations();
      var od = api.JsonSchemaAnnotations.fromJson(o.toJson());
      checkJsonSchemaAnnotations(od);
    });
  });

  unittest.group('obj-schema-JsonSchemaVariantMap', () {
    unittest.test('to-json--from-json', () {
      var o = buildJsonSchemaVariantMap();
      var od = api.JsonSchemaVariantMap.fromJson(o.toJson());
      checkJsonSchemaVariantMap(od);
    });
  });

  unittest.group('obj-schema-JsonSchemaVariant', () {
    unittest.test('to-json--from-json', () {
      var o = buildJsonSchemaVariant();
      var od = api.JsonSchemaVariant.fromJson(o.toJson());
      checkJsonSchemaVariant(od);
    });
  });

  unittest.group('obj-schema-JsonSchema', () {
    unittest.test('to-json--from-json', () {
      var o = buildJsonSchema();
      var od = api.JsonSchema.fromJson(o.toJson());
      checkJsonSchema(od);
    });
  });

  unittest.group('obj-schema-RestDescriptionAuthOauth2ScopesValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestDescriptionAuthOauth2ScopesValue();
      var od = api.RestDescriptionAuthOauth2ScopesValue.fromJson(o.toJson());
      checkRestDescriptionAuthOauth2ScopesValue(od);
    });
  });

  unittest.group('obj-schema-RestDescriptionAuthOauth2', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestDescriptionAuthOauth2();
      var od = api.RestDescriptionAuthOauth2.fromJson(o.toJson());
      checkRestDescriptionAuthOauth2(od);
    });
  });

  unittest.group('obj-schema-RestDescriptionAuth', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestDescriptionAuth();
      var od = api.RestDescriptionAuth.fromJson(o.toJson());
      checkRestDescriptionAuth(od);
    });
  });

  unittest.group('obj-schema-RestDescriptionIcons', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestDescriptionIcons();
      var od = api.RestDescriptionIcons.fromJson(o.toJson());
      checkRestDescriptionIcons(od);
    });
  });

  unittest.group('obj-schema-RestDescription', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestDescription();
      var od = api.RestDescription.fromJson(o.toJson());
      checkRestDescription(od);
    });
  });

  unittest.group('obj-schema-RestMethodMediaUploadProtocolsResumable', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestMethodMediaUploadProtocolsResumable();
      var od = api.RestMethodMediaUploadProtocolsResumable.fromJson(o.toJson());
      checkRestMethodMediaUploadProtocolsResumable(od);
    });
  });

  unittest.group('obj-schema-RestMethodMediaUploadProtocolsSimple', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestMethodMediaUploadProtocolsSimple();
      var od = api.RestMethodMediaUploadProtocolsSimple.fromJson(o.toJson());
      checkRestMethodMediaUploadProtocolsSimple(od);
    });
  });

  unittest.group('obj-schema-RestMethodMediaUploadProtocols', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestMethodMediaUploadProtocols();
      var od = api.RestMethodMediaUploadProtocols.fromJson(o.toJson());
      checkRestMethodMediaUploadProtocols(od);
    });
  });

  unittest.group('obj-schema-RestMethodMediaUpload', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestMethodMediaUpload();
      var od = api.RestMethodMediaUpload.fromJson(o.toJson());
      checkRestMethodMediaUpload(od);
    });
  });

  unittest.group('obj-schema-RestMethodRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestMethodRequest();
      var od = api.RestMethodRequest.fromJson(o.toJson());
      checkRestMethodRequest(od);
    });
  });

  unittest.group('obj-schema-RestMethodResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestMethodResponse();
      var od = api.RestMethodResponse.fromJson(o.toJson());
      checkRestMethodResponse(od);
    });
  });

  unittest.group('obj-schema-RestMethod', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestMethod();
      var od = api.RestMethod.fromJson(o.toJson());
      checkRestMethod(od);
    });
  });

  unittest.group('obj-schema-RestResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestResource();
      var od = api.RestResource.fromJson(o.toJson());
      checkRestResource(od);
    });
  });

  unittest.group('resource-ApisResourceApi', () {
    unittest.test('method--getRest', () {
      var mock = HttpServerMock();
      var res = api.DiscoveryApi(mock).apis;
      var arg_api = 'foo';
      var arg_version = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("discovery/v1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("apis/"));
        pathOffset += 5;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_api'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf('/rest', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_version'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/rest"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRestDescription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getRest(arg_api, arg_version, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRestDescription(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DiscoveryApi(mock).apis;
      var arg_name = 'foo';
      var arg_preferred = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("discovery/v1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("apis"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(
            queryMap["preferred"].first, unittest.equals("$arg_preferred"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDirectoryList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(name: arg_name, preferred: arg_preferred, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDirectoryList(response);
      })));
    });
  });
}
