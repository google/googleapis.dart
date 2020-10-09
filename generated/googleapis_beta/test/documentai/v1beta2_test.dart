library googleapis_beta.documentai.v1beta2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/documentai/v1beta2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata() {
  var o = new api
      .GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata <
      3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata() {
  var o =
      new api.GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata <
      3) {
    o.createTime = "foo";
    o.state = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata(
    api.GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata() {
  var o = new api
      .GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata <
      3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata = 0;
buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata = 0;
buildGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse = 0;
buildGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse(
    api.GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata = 0;
buildGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata(
    api.GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse = 0;
buildGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse() {
  var o = new api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse(
    api.GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse < 3) {}
  buildCounterGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata =
    0;
buildGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata() {
  var o = new api
      .GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata();
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata <
      3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata(
    api.GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata--;
}

buildUnnamed6009() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>();
  o.add(buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse());
  o.add(buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse());
  return o;
}

checkUnnamed6009(
    core.List<api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(o[0]);
  checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse =
    0;
buildGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse <
      3) {
    o.responses = buildUnnamed6009();
  }
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse(
    api.GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse <
      3) {
    checkUnnamed6009(o.responses);
  }
  buildCounterGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse--;
}

buildUnnamed6010() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1NormalizedVertex>();
  o.add(buildGoogleCloudDocumentaiV1beta1NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta1NormalizedVertex());
  return o;
}

checkUnnamed6010(
    core.List<api.GoogleCloudDocumentaiV1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1beta1NormalizedVertex(o[1]);
}

buildUnnamed6011() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1Vertex>();
  o.add(buildGoogleCloudDocumentaiV1beta1Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta1Vertex());
  return o;
}

checkUnnamed6011(core.List<api.GoogleCloudDocumentaiV1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1Vertex(o[0]);
  checkGoogleCloudDocumentaiV1beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly = 0;
buildGoogleCloudDocumentaiV1beta1BoundingPoly() {
  var o = new api.GoogleCloudDocumentaiV1beta1BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed6010();
    o.vertices = buildUnnamed6011();
  }
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1BoundingPoly(
    api.GoogleCloudDocumentaiV1beta1BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly < 3) {
    checkUnnamed6010(o.normalizedVertices);
    checkUnnamed6011(o.vertices);
  }
  buildCounterGoogleCloudDocumentaiV1beta1BoundingPoly--;
}

buildUnnamed6012() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  return o;
}

checkUnnamed6012(core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[1]);
}

buildUnnamed6013() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation());
  return o;
}

checkUnnamed6013(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(o[1]);
}

buildUnnamed6014() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPage());
  return o;
}

checkUnnamed6014(core.List<api.GoogleCloudDocumentaiV1beta1DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPage(o[1]);
}

buildUnnamed6015() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentRevision>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentRevision());
  return o;
}

checkUnnamed6015(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentRevision(o[1]);
}

buildUnnamed6016() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextChange>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextChange());
  return o;
}

checkUnnamed6016(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentTextChange(o[1]);
}

buildUnnamed6017() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentStyle>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentStyle());
  return o;
}

checkUnnamed6017(core.List<api.GoogleCloudDocumentaiV1beta1DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentStyle(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentStyle(o[1]);
}

buildUnnamed6018() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentTranslation>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTranslation());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTranslation());
  return o;
}

checkUnnamed6018(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTranslation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTranslation(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentTranslation(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1Document = 0;
buildGoogleCloudDocumentaiV1beta1Document() {
  var o = new api.GoogleCloudDocumentaiV1beta1Document();
  buildCounterGoogleCloudDocumentaiV1beta1Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Document < 3) {
    o.content = "foo";
    o.entities = buildUnnamed6012();
    o.entityRelations = buildUnnamed6013();
    o.error = buildGoogleRpcStatus();
    o.mimeType = "foo";
    o.pages = buildUnnamed6014();
    o.revisions = buildUnnamed6015();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta1DocumentShardInfo();
    o.text = "foo";
    o.textChanges = buildUnnamed6016();
    o.textStyles = buildUnnamed6017();
    o.translations = buildUnnamed6018();
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1Document--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1Document(
    api.GoogleCloudDocumentaiV1beta1Document o) {
  buildCounterGoogleCloudDocumentaiV1beta1Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Document < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed6012(o.entities);
    checkUnnamed6013(o.entityRelations);
    checkGoogleRpcStatus(o.error);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    checkUnnamed6014(o.pages);
    checkUnnamed6015(o.revisions);
    checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(o.shardInfo);
    unittest.expect(o.text, unittest.equals('foo'));
    checkUnnamed6016(o.textChanges);
    checkUnnamed6017(o.textStyles);
    checkUnnamed6018(o.translations);
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1Document--;
}

buildUnnamed6019() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentEntity());
  return o;
}

checkUnnamed6019(core.List<api.GoogleCloudDocumentaiV1beta1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentEntity(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity = 0;
buildGoogleCloudDocumentaiV1beta1DocumentEntity() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = "foo";
    o.mentionId = "foo";
    o.mentionText = "foo";
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor();
    o.properties = buildUnnamed6019();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentEntity(
    api.GoogleCloudDocumentaiV1beta1DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.mentionId, unittest.equals('foo'));
    unittest.expect(o.mentionText, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(
        o.normalizedValue);
    checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(o.pageAnchor);
    checkUnnamed6019(o.properties);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance);
    unittest.expect(o.redacted, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue =
    0;
buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue <
      3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.moneyValue = buildGoogleTypeMoney();
    o.text = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue <
      3) {
    checkGoogleTypePostalAddress(o.addressValue);
    checkGoogleTypeDate(o.dateValue);
    checkGoogleTypeDateTime(o.datetimeValue);
    checkGoogleTypeMoney(o.moneyValue);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation = 0;
buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation < 3) {
    o.objectId = "foo";
    o.relation = "foo";
    o.subjectId = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation < 3) {
    unittest.expect(o.objectId, unittest.equals('foo'));
    unittest.expect(o.relation, unittest.equals('foo'));
    unittest.expect(o.subjectId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentEntityRelation--;
}

buildUnnamed6020() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageBlock>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageBlock());
  return o;
}

checkUnnamed6020(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(o[1]);
}

buildUnnamed6021() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6021(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6022() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageFormField>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageFormField());
  return o;
}

checkUnnamed6022(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(o[1]);
}

buildUnnamed6023() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageLine>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageLine());
  return o;
}

checkUnnamed6023(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageLine(o[1]);
}

buildUnnamed6024() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph());
  return o;
}

checkUnnamed6024(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(o[1]);
}

buildUnnamed6025() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTable>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTable());
  return o;
}

checkUnnamed6025(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTable(o[1]);
}

buildUnnamed6026() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageToken>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageToken());
  return o;
}

checkUnnamed6026(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageToken(o[1]);
}

buildUnnamed6027() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix());
  return o;
}

checkUnnamed6027(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(o[1]);
}

buildUnnamed6028() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement());
  return o;
}

checkUnnamed6028(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPage = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPage() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPage < 3) {
    o.blocks = buildUnnamed6020();
    o.detectedLanguages = buildUnnamed6021();
    o.dimension = buildGoogleCloudDocumentaiV1beta1DocumentPageDimension();
    o.formFields = buildUnnamed6022();
    o.image = buildGoogleCloudDocumentaiV1beta1DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.lines = buildUnnamed6023();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed6024();
    o.tables = buildUnnamed6025();
    o.tokens = buildUnnamed6026();
    o.transforms = buildUnnamed6027();
    o.visualElements = buildUnnamed6028();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPage(
    api.GoogleCloudDocumentaiV1beta1DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPage < 3) {
    checkUnnamed6020(o.blocks);
    checkUnnamed6021(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(o.dimension);
    checkUnnamed6022(o.formFields);
    checkGoogleCloudDocumentaiV1beta1DocumentPageImage(o.image);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    checkUnnamed6023(o.lines);
    unittest.expect(o.pageNumber, unittest.equals(42));
    checkUnnamed6024(o.paragraphs);
    checkUnnamed6025(o.tables);
    checkUnnamed6026(o.tokens);
    checkUnnamed6027(o.transforms);
    checkUnnamed6028(o.visualElements);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPage--;
}

buildUnnamed6029() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef());
  return o;
}

checkUnnamed6029(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed6029();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor < 3) {
    checkUnnamed6029(o.pageRefs);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
    o.layoutId = "foo";
    o.layoutType = "foo";
    o.page = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.layoutId, unittest.equals('foo'));
    unittest.expect(o.layoutType, unittest.equals('foo'));
    unittest.expect(o.page, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef--;
}

buildUnnamed6030() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6030(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageBlock() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed6030();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(
    api.GoogleCloudDocumentaiV1beta1DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock < 3) {
    checkUnnamed6030(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage =
    0;
buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageDimension() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = "foo";
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(
    api.GoogleCloudDocumentaiV1beta1DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension < 3) {
    unittest.expect(o.height, unittest.equals(42.0));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageDimension--;
}

buildUnnamed6031() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6031(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6032() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6032(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageFormField() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed6031();
    o.valueDetectedLanguages = buildUnnamed6032();
    o.valueType = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta1DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.fieldName);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.fieldValue);
    checkUnnamed6031(o.nameDetectedLanguages);
    checkUnnamed6032(o.valueDetectedLanguages);
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageImage() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage < 3) {
    o.content = "foo";
    o.height = 42;
    o.mimeType = "foo";
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageImage(
    api.GoogleCloudDocumentaiV1beta1DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageLayout() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
    o.confidence = 42.0;
    o.orientation = "foo";
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(
    api.GoogleCloudDocumentaiV1beta1DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.orientation, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLayout--;
}

buildUnnamed6033() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6033(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageLine() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed6033();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageLine(
    api.GoogleCloudDocumentaiV1beta1DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine < 3) {
    checkUnnamed6033(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = "foo";
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix < 3) {
    unittest.expect(o.cols, unittest.equals(42));
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.rows, unittest.equals(42));
    unittest.expect(o.type, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageMatrix--;
}

buildUnnamed6034() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6034(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed6034();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph < 3) {
    checkUnnamed6034(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageParagraph--;
}

buildUnnamed6035() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  return o;
}

checkUnnamed6035(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[1]);
}

buildUnnamed6036() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6036(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6037() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow());
  return o;
}

checkUnnamed6037(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageTable() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed6035();
    o.detectedLanguages = buildUnnamed6036();
    o.headerRows = buildUnnamed6037();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable < 3) {
    checkUnnamed6035(o.bodyRows);
    checkUnnamed6036(o.detectedLanguages);
    checkUnnamed6037(o.headerRows);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTable--;
}

buildUnnamed6038() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6038(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed6038();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell < 3) {
    unittest.expect(o.colSpan, unittest.equals(42));
    checkUnnamed6038(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    unittest.expect(o.rowSpan, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell--;
}

buildUnnamed6039() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell());
  return o;
}

checkUnnamed6039(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed6039();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow < 3) {
    checkUnnamed6039(o.cells);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow--;
}

buildUnnamed6040() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6040(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageToken() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed6040();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageToken(
    api.GoogleCloudDocumentaiV1beta1DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(
        o.detectedBreak);
    checkUnnamed6040(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak <
      3) {
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak--;
}

buildUnnamed6041() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6041(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement = 0;
buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed6041();
    o.layout = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement < 3) {
    checkUnnamed6041(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(o.layout);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentPageVisualElement--;
}

buildUnnamed6042() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent());
  return o;
}

checkUnnamed6042(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance = 0;
buildGoogleCloudDocumentaiV1beta1DocumentProvenance() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed6042();
    o.revision = 42;
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentProvenance(
    api.GoogleCloudDocumentaiV1beta1DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance < 3) {
    unittest.expect(o.id, unittest.equals(42));
    checkUnnamed6042(o.parents);
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent = 0;
buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent < 3) {
    o.id = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent < 3) {
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.revision, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentProvenanceParent--;
}

buildUnnamed6043() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed6043(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision = 0;
buildGoogleCloudDocumentaiV1beta1DocumentRevision() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision < 3) {
    o.agent = "foo";
    o.createTime = "foo";
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
    o.id = "foo";
    o.parent = buildUnnamed6043();
    o.processor = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentRevision(
    api.GoogleCloudDocumentaiV1beta1DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision < 3) {
    unittest.expect(o.agent, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(o.humanReview);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed6043(o.parent);
    unittest.expect(o.processor, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview =
    0;
buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview < 3) {
    o.state = "foo";
    o.stateMessage = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo = 0;
buildGoogleCloudDocumentaiV1beta1DocumentShardInfo() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo < 3) {
    o.shardCount = "foo";
    o.shardIndex = "foo";
    o.textOffset = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(
    api.GoogleCloudDocumentaiV1beta1DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo < 3) {
    unittest.expect(o.shardCount, unittest.equals('foo'));
    unittest.expect(o.shardIndex, unittest.equals('foo'));
    unittest.expect(o.textOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle = 0;
buildGoogleCloudDocumentaiV1beta1DocumentStyle() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
    o.fontWeight = "foo";
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
    o.textDecoration = "foo";
    o.textStyle = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentStyle(
    api.GoogleCloudDocumentaiV1beta1DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor);
    checkGoogleTypeColor(o.color);
    checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(o.fontSize);
    unittest.expect(o.fontWeight, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.textDecoration, unittest.equals('foo'));
    unittest.expect(o.textStyle, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize = 0;
buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize < 3) {
    unittest.expect(o.size, unittest.equals(42.0));
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentStyleFontSize--;
}

buildUnnamed6044() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment());
  return o;
}

checkUnnamed6044(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor = 0;
buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor < 3) {
    o.content = "foo";
    o.textSegments = buildUnnamed6044();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed6044(o.textSegments);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment =
    0;
buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment <
      3) {
    o.endIndex = "foo";
    o.startIndex = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(o.endIndex, unittest.equals('foo'));
    unittest.expect(o.startIndex, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment--;
}

buildUnnamed6045() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  return o;
}

checkUnnamed6045(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange = 0;
buildGoogleCloudDocumentaiV1beta1DocumentTextChange() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange < 3) {
    o.changedText = "foo";
    o.provenance = buildUnnamed6045();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentTextChange(
    api.GoogleCloudDocumentaiV1beta1DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange < 3) {
    unittest.expect(o.changedText, unittest.equals('foo'));
    checkUnnamed6045(o.provenance);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTextChange--;
}

buildUnnamed6046() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance>();
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta1DocumentProvenance());
  return o;
}

checkUnnamed6046(
    core.List<api.GoogleCloudDocumentaiV1beta1DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta1DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation = 0;
buildGoogleCloudDocumentaiV1beta1DocumentTranslation() {
  var o = new api.GoogleCloudDocumentaiV1beta1DocumentTranslation();
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation < 3) {
    o.languageCode = "foo";
    o.provenance = buildUnnamed6046();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
    o.translatedText = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1DocumentTranslation(
    api.GoogleCloudDocumentaiV1beta1DocumentTranslation o) {
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation++;
  if (buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed6046(o.provenance);
    checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.translatedText, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1DocumentTranslation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1GcsDestination = 0;
buildGoogleCloudDocumentaiV1beta1GcsDestination() {
  var o = new api.GoogleCloudDocumentaiV1beta1GcsDestination();
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsDestination < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1GcsDestination(
    api.GoogleCloudDocumentaiV1beta1GcsDestination o) {
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsDestination--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1GcsSource = 0;
buildGoogleCloudDocumentaiV1beta1GcsSource() {
  var o = new api.GoogleCloudDocumentaiV1beta1GcsSource();
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1GcsSource(
    api.GoogleCloudDocumentaiV1beta1GcsSource o) {
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta1GcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1GcsSource--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1InputConfig = 0;
buildGoogleCloudDocumentaiV1beta1InputConfig() {
  var o = new api.GoogleCloudDocumentaiV1beta1InputConfig();
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1InputConfig < 3) {
    o.gcsSource = buildGoogleCloudDocumentaiV1beta1GcsSource();
    o.mimeType = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1InputConfig(
    api.GoogleCloudDocumentaiV1beta1InputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1InputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta1GcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1InputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex = 0;
buildGoogleCloudDocumentaiV1beta1NormalizedVertex() {
  var o = new api.GoogleCloudDocumentaiV1beta1NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1NormalizedVertex(
    api.GoogleCloudDocumentaiV1beta1NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata = 0;
buildGoogleCloudDocumentaiV1beta1OperationMetadata() {
  var o = new api.GoogleCloudDocumentaiV1beta1OperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1OperationMetadata(
    api.GoogleCloudDocumentaiV1beta1OperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1OutputConfig = 0;
buildGoogleCloudDocumentaiV1beta1OutputConfig() {
  var o = new api.GoogleCloudDocumentaiV1beta1OutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDocumentaiV1beta1GcsDestination();
    o.pagesPerShard = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1OutputConfig(
    api.GoogleCloudDocumentaiV1beta1OutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta1OutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta1GcsDestination(o.gcsDestination);
    unittest.expect(o.pagesPerShard, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1OutputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse = 0;
buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse < 3) {
    o.inputConfig = buildGoogleCloudDocumentaiV1beta1InputConfig();
    o.outputConfig = buildGoogleCloudDocumentaiV1beta1OutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(
    api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse < 3) {
    checkGoogleCloudDocumentaiV1beta1InputConfig(o.inputConfig);
    checkGoogleCloudDocumentaiV1beta1OutputConfig(o.outputConfig);
  }
  buildCounterGoogleCloudDocumentaiV1beta1ProcessDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta1Vertex = 0;
buildGoogleCloudDocumentaiV1beta1Vertex() {
  var o = new api.GoogleCloudDocumentaiV1beta1Vertex();
  buildCounterGoogleCloudDocumentaiV1beta1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta1Vertex--;
  return o;
}

checkGoogleCloudDocumentaiV1beta1Vertex(
    api.GoogleCloudDocumentaiV1beta1Vertex o) {
  buildCounterGoogleCloudDocumentaiV1beta1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta1Vertex < 3) {
    unittest.expect(o.x, unittest.equals(42));
    unittest.expect(o.y, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta1Vertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams = 0;
buildGoogleCloudDocumentaiV1beta2AutoMlParams() {
  var o = new api.GoogleCloudDocumentaiV1beta2AutoMlParams();
  buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams < 3) {
    o.model = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2AutoMlParams(
    api.GoogleCloudDocumentaiV1beta2AutoMlParams o) {
  buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams < 3) {
    unittest.expect(o.model, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2AutoMlParams--;
}

buildUnnamed6047() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest>();
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest());
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest());
  return o;
}

checkUnnamed6047(
    core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(o[0]);
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest =
    0;
buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest() {
  var o = new api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest();
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest <
      3) {
    o.requests = buildUnnamed6047();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest(
    api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest <
      3) {
    checkUnnamed6047(o.requests);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest--;
}

buildUnnamed6048() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>();
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse());
  o.add(buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse());
  return o;
}

checkUnnamed6048(
    core.List<api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(o[0]);
  checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse =
    0;
buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse <
      3) {
    o.responses = buildUnnamed6048();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse(
    api.GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse <
      3) {
    checkUnnamed6048(o.responses);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse--;
}

buildUnnamed6049() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2NormalizedVertex>();
  o.add(buildGoogleCloudDocumentaiV1beta2NormalizedVertex());
  o.add(buildGoogleCloudDocumentaiV1beta2NormalizedVertex());
  return o;
}

checkUnnamed6049(
    core.List<api.GoogleCloudDocumentaiV1beta2NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1beta2NormalizedVertex(o[1]);
}

buildUnnamed6050() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2Vertex>();
  o.add(buildGoogleCloudDocumentaiV1beta2Vertex());
  o.add(buildGoogleCloudDocumentaiV1beta2Vertex());
  return o;
}

checkUnnamed6050(core.List<api.GoogleCloudDocumentaiV1beta2Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2Vertex(o[0]);
  checkGoogleCloudDocumentaiV1beta2Vertex(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly = 0;
buildGoogleCloudDocumentaiV1beta2BoundingPoly() {
  var o = new api.GoogleCloudDocumentaiV1beta2BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed6049();
    o.vertices = buildUnnamed6050();
  }
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2BoundingPoly(
    api.GoogleCloudDocumentaiV1beta2BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly < 3) {
    checkUnnamed6049(o.normalizedVertices);
    checkUnnamed6050(o.vertices);
  }
  buildCounterGoogleCloudDocumentaiV1beta2BoundingPoly--;
}

buildUnnamed6051() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  return o;
}

checkUnnamed6051(core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[1]);
}

buildUnnamed6052() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation());
  return o;
}

checkUnnamed6052(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(o[1]);
}

buildUnnamed6053() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentLabel>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentLabel());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentLabel());
  return o;
}

checkUnnamed6053(core.List<api.GoogleCloudDocumentaiV1beta2DocumentLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentLabel(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentLabel(o[1]);
}

buildUnnamed6054() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPage());
  return o;
}

checkUnnamed6054(core.List<api.GoogleCloudDocumentaiV1beta2DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPage(o[1]);
}

buildUnnamed6055() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentRevision>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentRevision());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentRevision());
  return o;
}

checkUnnamed6055(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentRevision(o[1]);
}

buildUnnamed6056() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextChange>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextChange());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextChange());
  return o;
}

checkUnnamed6056(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentTextChange(o[1]);
}

buildUnnamed6057() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentStyle>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentStyle());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentStyle());
  return o;
}

checkUnnamed6057(core.List<api.GoogleCloudDocumentaiV1beta2DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentStyle(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentStyle(o[1]);
}

buildUnnamed6058() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentTranslation>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTranslation());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTranslation());
  return o;
}

checkUnnamed6058(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTranslation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTranslation(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentTranslation(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2Document = 0;
buildGoogleCloudDocumentaiV1beta2Document() {
  var o = new api.GoogleCloudDocumentaiV1beta2Document();
  buildCounterGoogleCloudDocumentaiV1beta2Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Document < 3) {
    o.content = "foo";
    o.entities = buildUnnamed6051();
    o.entityRelations = buildUnnamed6052();
    o.error = buildGoogleRpcStatus();
    o.labels = buildUnnamed6053();
    o.mimeType = "foo";
    o.pages = buildUnnamed6054();
    o.revisions = buildUnnamed6055();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta2DocumentShardInfo();
    o.text = "foo";
    o.textChanges = buildUnnamed6056();
    o.textStyles = buildUnnamed6057();
    o.translations = buildUnnamed6058();
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2Document--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2Document(
    api.GoogleCloudDocumentaiV1beta2Document o) {
  buildCounterGoogleCloudDocumentaiV1beta2Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Document < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed6051(o.entities);
    checkUnnamed6052(o.entityRelations);
    checkGoogleRpcStatus(o.error);
    checkUnnamed6053(o.labels);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    checkUnnamed6054(o.pages);
    checkUnnamed6055(o.revisions);
    checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(o.shardInfo);
    unittest.expect(o.text, unittest.equals('foo'));
    checkUnnamed6056(o.textChanges);
    checkUnnamed6057(o.textStyles);
    checkUnnamed6058(o.translations);
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2Document--;
}

buildUnnamed6059() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentEntity());
  return o;
}

checkUnnamed6059(core.List<api.GoogleCloudDocumentaiV1beta2DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentEntity(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity = 0;
buildGoogleCloudDocumentaiV1beta2DocumentEntity() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = "foo";
    o.mentionId = "foo";
    o.mentionText = "foo";
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor();
    o.properties = buildUnnamed6059();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentEntity(
    api.GoogleCloudDocumentaiV1beta2DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.mentionId, unittest.equals('foo'));
    unittest.expect(o.mentionText, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(
        o.normalizedValue);
    checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(o.pageAnchor);
    checkUnnamed6059(o.properties);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance);
    unittest.expect(o.redacted, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue =
    0;
buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue <
      3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.moneyValue = buildGoogleTypeMoney();
    o.text = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue <
      3) {
    checkGoogleTypePostalAddress(o.addressValue);
    checkGoogleTypeDate(o.dateValue);
    checkGoogleTypeDateTime(o.datetimeValue);
    checkGoogleTypeMoney(o.moneyValue);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation = 0;
buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation < 3) {
    o.objectId = "foo";
    o.relation = "foo";
    o.subjectId = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation < 3) {
    unittest.expect(o.objectId, unittest.equals('foo'));
    unittest.expect(o.relation, unittest.equals('foo'));
    unittest.expect(o.subjectId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentEntityRelation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel = 0;
buildGoogleCloudDocumentaiV1beta2DocumentLabel() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentLabel();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel < 3) {
    o.automlModel = "foo";
    o.confidence = 42.0;
    o.name = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentLabel(
    api.GoogleCloudDocumentaiV1beta2DocumentLabel o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel < 3) {
    unittest.expect(o.automlModel, unittest.equals('foo'));
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentLabel--;
}

buildUnnamed6060() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageBlock>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageBlock());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageBlock());
  return o;
}

checkUnnamed6060(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(o[1]);
}

buildUnnamed6061() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6061(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6062() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageFormField>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageFormField());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageFormField());
  return o;
}

checkUnnamed6062(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(o[1]);
}

buildUnnamed6063() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageLine>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageLine());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageLine());
  return o;
}

checkUnnamed6063(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageLine(o[1]);
}

buildUnnamed6064() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph());
  return o;
}

checkUnnamed6064(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(o[1]);
}

buildUnnamed6065() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTable>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTable());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTable());
  return o;
}

checkUnnamed6065(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTable(o[1]);
}

buildUnnamed6066() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageToken>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageToken());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageToken());
  return o;
}

checkUnnamed6066(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageToken(o[1]);
}

buildUnnamed6067() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix());
  return o;
}

checkUnnamed6067(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(o[1]);
}

buildUnnamed6068() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement());
  return o;
}

checkUnnamed6068(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPage = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPage() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPage < 3) {
    o.blocks = buildUnnamed6060();
    o.detectedLanguages = buildUnnamed6061();
    o.dimension = buildGoogleCloudDocumentaiV1beta2DocumentPageDimension();
    o.formFields = buildUnnamed6062();
    o.image = buildGoogleCloudDocumentaiV1beta2DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.lines = buildUnnamed6063();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed6064();
    o.tables = buildUnnamed6065();
    o.tokens = buildUnnamed6066();
    o.transforms = buildUnnamed6067();
    o.visualElements = buildUnnamed6068();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPage(
    api.GoogleCloudDocumentaiV1beta2DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPage < 3) {
    checkUnnamed6060(o.blocks);
    checkUnnamed6061(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(o.dimension);
    checkUnnamed6062(o.formFields);
    checkGoogleCloudDocumentaiV1beta2DocumentPageImage(o.image);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    checkUnnamed6063(o.lines);
    unittest.expect(o.pageNumber, unittest.equals(42));
    checkUnnamed6064(o.paragraphs);
    checkUnnamed6065(o.tables);
    checkUnnamed6066(o.tokens);
    checkUnnamed6067(o.transforms);
    checkUnnamed6068(o.visualElements);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPage--;
}

buildUnnamed6069() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef());
  return o;
}

checkUnnamed6069(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed6069();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor < 3) {
    checkUnnamed6069(o.pageRefs);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
    o.layoutId = "foo";
    o.layoutType = "foo";
    o.page = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(o.boundingPoly);
    unittest.expect(o.layoutId, unittest.equals('foo'));
    unittest.expect(o.layoutType, unittest.equals('foo'));
    unittest.expect(o.page, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef--;
}

buildUnnamed6070() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6070(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageBlock() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed6070();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(
    api.GoogleCloudDocumentaiV1beta2DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock < 3) {
    checkUnnamed6070(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage =
    0;
buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageDimension() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = "foo";
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(
    api.GoogleCloudDocumentaiV1beta2DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension < 3) {
    unittest.expect(o.height, unittest.equals(42.0));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageDimension--;
}

buildUnnamed6071() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6071(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6072() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6072(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageFormField() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField < 3) {
    o.fieldName = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed6071();
    o.valueDetectedLanguages = buildUnnamed6072();
    o.valueType = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta2DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField < 3) {
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.fieldName);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.fieldValue);
    checkUnnamed6071(o.nameDetectedLanguages);
    checkUnnamed6072(o.valueDetectedLanguages);
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageImage() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage < 3) {
    o.content = "foo";
    o.height = 42;
    o.mimeType = "foo";
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageImage(
    api.GoogleCloudDocumentaiV1beta2DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageLayout() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
    o.confidence = 42.0;
    o.orientation = "foo";
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(
    api.GoogleCloudDocumentaiV1beta2DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.orientation, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLayout--;
}

buildUnnamed6073() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6073(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageLine() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed6073();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageLine(
    api.GoogleCloudDocumentaiV1beta2DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine < 3) {
    checkUnnamed6073(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = "foo";
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix < 3) {
    unittest.expect(o.cols, unittest.equals(42));
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.rows, unittest.equals(42));
    unittest.expect(o.type, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageMatrix--;
}

buildUnnamed6074() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6074(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed6074();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph < 3) {
    checkUnnamed6074(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageParagraph--;
}

buildUnnamed6075() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  return o;
}

checkUnnamed6075(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[1]);
}

buildUnnamed6076() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6076(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

buildUnnamed6077() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow());
  return o;
}

checkUnnamed6077(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageTable() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed6075();
    o.detectedLanguages = buildUnnamed6076();
    o.headerRows = buildUnnamed6077();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable < 3) {
    checkUnnamed6075(o.bodyRows);
    checkUnnamed6076(o.detectedLanguages);
    checkUnnamed6077(o.headerRows);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTable--;
}

buildUnnamed6078() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6078(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed6078();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell < 3) {
    unittest.expect(o.colSpan, unittest.equals(42));
    checkUnnamed6078(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    unittest.expect(o.rowSpan, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell--;
}

buildUnnamed6079() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell());
  return o;
}

checkUnnamed6079(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed6079();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow < 3) {
    checkUnnamed6079(o.cells);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow--;
}

buildUnnamed6080() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6080(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageToken() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed6080();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageToken(
    api.GoogleCloudDocumentaiV1beta2DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(
        o.detectedBreak);
    checkUnnamed6080(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o.provenance);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak <
      3) {
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak--;
}

buildUnnamed6081() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage());
  return o;
}

checkUnnamed6081(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement = 0;
buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed6081();
    o.layout = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1beta2DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement < 3) {
    checkUnnamed6081(o.detectedLanguages);
    checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(o.layout);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentPageVisualElement--;
}

buildUnnamed6082() {
  var o =
      new core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent());
  return o;
}

checkUnnamed6082(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance = 0;
buildGoogleCloudDocumentaiV1beta2DocumentProvenance() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed6082();
    o.revision = 42;
    o.type = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentProvenance(
    api.GoogleCloudDocumentaiV1beta2DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance < 3) {
    unittest.expect(o.id, unittest.equals(42));
    checkUnnamed6082(o.parents);
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent = 0;
buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent < 3) {
    o.id = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent < 3) {
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.revision, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentProvenanceParent--;
}

buildUnnamed6083() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed6083(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision = 0;
buildGoogleCloudDocumentaiV1beta2DocumentRevision() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision < 3) {
    o.agent = "foo";
    o.createTime = "foo";
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
    o.id = "foo";
    o.parent = buildUnnamed6083();
    o.processor = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentRevision(
    api.GoogleCloudDocumentaiV1beta2DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision < 3) {
    unittest.expect(o.agent, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(o.humanReview);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed6083(o.parent);
    unittest.expect(o.processor, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview =
    0;
buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview < 3) {
    o.state = "foo";
    o.stateMessage = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo = 0;
buildGoogleCloudDocumentaiV1beta2DocumentShardInfo() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo < 3) {
    o.shardCount = "foo";
    o.shardIndex = "foo";
    o.textOffset = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(
    api.GoogleCloudDocumentaiV1beta2DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo < 3) {
    unittest.expect(o.shardCount, unittest.equals('foo'));
    unittest.expect(o.shardIndex, unittest.equals('foo'));
    unittest.expect(o.textOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle = 0;
buildGoogleCloudDocumentaiV1beta2DocumentStyle() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
    o.fontWeight = "foo";
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
    o.textDecoration = "foo";
    o.textStyle = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentStyle(
    api.GoogleCloudDocumentaiV1beta2DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor);
    checkGoogleTypeColor(o.color);
    checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(o.fontSize);
    unittest.expect(o.fontWeight, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.textDecoration, unittest.equals('foo'));
    unittest.expect(o.textStyle, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize = 0;
buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize < 3) {
    unittest.expect(o.size, unittest.equals(42.0));
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentStyleFontSize--;
}

buildUnnamed6084() {
  var o = new core
      .List<api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment());
  return o;
}

checkUnnamed6084(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor = 0;
buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor < 3) {
    o.content = "foo";
    o.textSegments = buildUnnamed6084();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed6084(o.textSegments);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment =
    0;
buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment <
      3) {
    o.endIndex = "foo";
    o.startIndex = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(o.endIndex, unittest.equals('foo'));
    unittest.expect(o.startIndex, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment--;
}

buildUnnamed6085() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  return o;
}

checkUnnamed6085(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange = 0;
buildGoogleCloudDocumentaiV1beta2DocumentTextChange() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange < 3) {
    o.changedText = "foo";
    o.provenance = buildUnnamed6085();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentTextChange(
    api.GoogleCloudDocumentaiV1beta2DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange < 3) {
    unittest.expect(o.changedText, unittest.equals('foo'));
    checkUnnamed6085(o.provenance);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor);
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTextChange--;
}

buildUnnamed6086() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance>();
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  o.add(buildGoogleCloudDocumentaiV1beta2DocumentProvenance());
  return o;
}

checkUnnamed6086(
    core.List<api.GoogleCloudDocumentaiV1beta2DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta2DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation = 0;
buildGoogleCloudDocumentaiV1beta2DocumentTranslation() {
  var o = new api.GoogleCloudDocumentaiV1beta2DocumentTranslation();
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation < 3) {
    o.languageCode = "foo";
    o.provenance = buildUnnamed6086();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
    o.translatedText = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2DocumentTranslation(
    api.GoogleCloudDocumentaiV1beta2DocumentTranslation o) {
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation++;
  if (buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed6086(o.provenance);
    checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(o.textAnchor);
    unittest.expect(o.translatedText, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2DocumentTranslation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams = 0;
buildGoogleCloudDocumentaiV1beta2EntityExtractionParams() {
  var o = new api.GoogleCloudDocumentaiV1beta2EntityExtractionParams();
  buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams < 3) {
    o.enabled = true;
    o.modelVersion = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2EntityExtractionParams(
    api.GoogleCloudDocumentaiV1beta2EntityExtractionParams o) {
  buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.modelVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2EntityExtractionParams--;
}

buildUnnamed6087() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2KeyValuePairHint>();
  o.add(buildGoogleCloudDocumentaiV1beta2KeyValuePairHint());
  o.add(buildGoogleCloudDocumentaiV1beta2KeyValuePairHint());
  return o;
}

checkUnnamed6087(
    core.List<api.GoogleCloudDocumentaiV1beta2KeyValuePairHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2KeyValuePairHint(o[0]);
  checkGoogleCloudDocumentaiV1beta2KeyValuePairHint(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams = 0;
buildGoogleCloudDocumentaiV1beta2FormExtractionParams() {
  var o = new api.GoogleCloudDocumentaiV1beta2FormExtractionParams();
  buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams < 3) {
    o.enabled = true;
    o.keyValuePairHints = buildUnnamed6087();
    o.modelVersion = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2FormExtractionParams(
    api.GoogleCloudDocumentaiV1beta2FormExtractionParams o) {
  buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    checkUnnamed6087(o.keyValuePairHints);
    unittest.expect(o.modelVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2FormExtractionParams--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2GcsDestination = 0;
buildGoogleCloudDocumentaiV1beta2GcsDestination() {
  var o = new api.GoogleCloudDocumentaiV1beta2GcsDestination();
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsDestination < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2GcsDestination(
    api.GoogleCloudDocumentaiV1beta2GcsDestination o) {
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsDestination--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2GcsSource = 0;
buildGoogleCloudDocumentaiV1beta2GcsSource() {
  var o = new api.GoogleCloudDocumentaiV1beta2GcsSource();
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2GcsSource(
    api.GoogleCloudDocumentaiV1beta2GcsSource o) {
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta2GcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2GcsSource--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2InputConfig = 0;
buildGoogleCloudDocumentaiV1beta2InputConfig() {
  var o = new api.GoogleCloudDocumentaiV1beta2InputConfig();
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2InputConfig < 3) {
    o.contents = "foo";
    o.gcsSource = buildGoogleCloudDocumentaiV1beta2GcsSource();
    o.mimeType = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2InputConfig(
    api.GoogleCloudDocumentaiV1beta2InputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2InputConfig < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2GcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2InputConfig--;
}

buildUnnamed6088() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6088(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint = 0;
buildGoogleCloudDocumentaiV1beta2KeyValuePairHint() {
  var o = new api.GoogleCloudDocumentaiV1beta2KeyValuePairHint();
  buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint++;
  if (buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint < 3) {
    o.key = "foo";
    o.valueTypes = buildUnnamed6088();
  }
  buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2KeyValuePairHint(
    api.GoogleCloudDocumentaiV1beta2KeyValuePairHint o) {
  buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint++;
  if (buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed6088(o.valueTypes);
  }
  buildCounterGoogleCloudDocumentaiV1beta2KeyValuePairHint--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex = 0;
buildGoogleCloudDocumentaiV1beta2NormalizedVertex() {
  var o = new api.GoogleCloudDocumentaiV1beta2NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2NormalizedVertex(
    api.GoogleCloudDocumentaiV1beta2NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta2NormalizedVertex--;
}

buildUnnamed6089() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6089(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDocumentaiV1beta2OcrParams = 0;
buildGoogleCloudDocumentaiV1beta2OcrParams() {
  var o = new api.GoogleCloudDocumentaiV1beta2OcrParams();
  buildCounterGoogleCloudDocumentaiV1beta2OcrParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OcrParams < 3) {
    o.languageHints = buildUnnamed6089();
  }
  buildCounterGoogleCloudDocumentaiV1beta2OcrParams--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2OcrParams(
    api.GoogleCloudDocumentaiV1beta2OcrParams o) {
  buildCounterGoogleCloudDocumentaiV1beta2OcrParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OcrParams < 3) {
    checkUnnamed6089(o.languageHints);
  }
  buildCounterGoogleCloudDocumentaiV1beta2OcrParams--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata = 0;
buildGoogleCloudDocumentaiV1beta2OperationMetadata() {
  var o = new api.GoogleCloudDocumentaiV1beta2OperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2OperationMetadata(
    api.GoogleCloudDocumentaiV1beta2OperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta2OperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2OutputConfig = 0;
buildGoogleCloudDocumentaiV1beta2OutputConfig() {
  var o = new api.GoogleCloudDocumentaiV1beta2OutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDocumentaiV1beta2GcsDestination();
    o.pagesPerShard = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2OutputConfig(
    api.GoogleCloudDocumentaiV1beta2OutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta2OutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta2GcsDestination(o.gcsDestination);
    unittest.expect(o.pagesPerShard, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2OutputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest = 0;
buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest() {
  var o = new api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest();
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest < 3) {
    o.automlParams = buildGoogleCloudDocumentaiV1beta2AutoMlParams();
    o.documentType = "foo";
    o.entityExtractionParams =
        buildGoogleCloudDocumentaiV1beta2EntityExtractionParams();
    o.formExtractionParams =
        buildGoogleCloudDocumentaiV1beta2FormExtractionParams();
    o.inputConfig = buildGoogleCloudDocumentaiV1beta2InputConfig();
    o.ocrParams = buildGoogleCloudDocumentaiV1beta2OcrParams();
    o.outputConfig = buildGoogleCloudDocumentaiV1beta2OutputConfig();
    o.parent = "foo";
    o.tableExtractionParams =
        buildGoogleCloudDocumentaiV1beta2TableExtractionParams();
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(
    api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest < 3) {
    checkGoogleCloudDocumentaiV1beta2AutoMlParams(o.automlParams);
    unittest.expect(o.documentType, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2EntityExtractionParams(
        o.entityExtractionParams);
    checkGoogleCloudDocumentaiV1beta2FormExtractionParams(
        o.formExtractionParams);
    checkGoogleCloudDocumentaiV1beta2InputConfig(o.inputConfig);
    checkGoogleCloudDocumentaiV1beta2OcrParams(o.ocrParams);
    checkGoogleCloudDocumentaiV1beta2OutputConfig(o.outputConfig);
    unittest.expect(o.parent, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta2TableExtractionParams(
        o.tableExtractionParams);
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse = 0;
buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse < 3) {
    o.inputConfig = buildGoogleCloudDocumentaiV1beta2InputConfig();
    o.outputConfig = buildGoogleCloudDocumentaiV1beta2OutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(
    api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse < 3) {
    checkGoogleCloudDocumentaiV1beta2InputConfig(o.inputConfig);
    checkGoogleCloudDocumentaiV1beta2OutputConfig(o.outputConfig);
  }
  buildCounterGoogleCloudDocumentaiV1beta2ProcessDocumentResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint = 0;
buildGoogleCloudDocumentaiV1beta2TableBoundHint() {
  var o = new api.GoogleCloudDocumentaiV1beta2TableBoundHint();
  buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint++;
  if (buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint < 3) {
    o.boundingBox = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
    o.pageNumber = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2TableBoundHint(
    api.GoogleCloudDocumentaiV1beta2TableBoundHint o) {
  buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint++;
  if (buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint < 3) {
    checkGoogleCloudDocumentaiV1beta2BoundingPoly(o.boundingBox);
    unittest.expect(o.pageNumber, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2TableBoundHint--;
}

buildUnnamed6090() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6090(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6091() {
  var o = new core.List<api.GoogleCloudDocumentaiV1beta2TableBoundHint>();
  o.add(buildGoogleCloudDocumentaiV1beta2TableBoundHint());
  o.add(buildGoogleCloudDocumentaiV1beta2TableBoundHint());
  return o;
}

checkUnnamed6091(core.List<api.GoogleCloudDocumentaiV1beta2TableBoundHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta2TableBoundHint(o[0]);
  checkGoogleCloudDocumentaiV1beta2TableBoundHint(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams = 0;
buildGoogleCloudDocumentaiV1beta2TableExtractionParams() {
  var o = new api.GoogleCloudDocumentaiV1beta2TableExtractionParams();
  buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams < 3) {
    o.enabled = true;
    o.headerHints = buildUnnamed6090();
    o.modelVersion = "foo";
    o.tableBoundHints = buildUnnamed6091();
  }
  buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2TableExtractionParams(
    api.GoogleCloudDocumentaiV1beta2TableExtractionParams o) {
  buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams++;
  if (buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    checkUnnamed6090(o.headerHints);
    unittest.expect(o.modelVersion, unittest.equals('foo'));
    checkUnnamed6091(o.tableBoundHints);
  }
  buildCounterGoogleCloudDocumentaiV1beta2TableExtractionParams--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta2Vertex = 0;
buildGoogleCloudDocumentaiV1beta2Vertex() {
  var o = new api.GoogleCloudDocumentaiV1beta2Vertex();
  buildCounterGoogleCloudDocumentaiV1beta2Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta2Vertex--;
  return o;
}

checkGoogleCloudDocumentaiV1beta2Vertex(
    api.GoogleCloudDocumentaiV1beta2Vertex o) {
  buildCounterGoogleCloudDocumentaiV1beta2Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta2Vertex < 3) {
    unittest.expect(o.x, unittest.equals(42));
    unittest.expect(o.y, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta2Vertex--;
}

buildUnnamed6092() {
  var o = new core.List<
      api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>();
  o.add(
      buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus());
  o.add(
      buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus());
  return o;
}

checkUnnamed6092(
    core.List<
            api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
      o[0]);
  checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
      o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata = 0;
buildGoogleCloudDocumentaiV1beta3BatchProcessMetadata() {
  var o = new api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata < 3) {
    o.createTime = "foo";
    o.individualProcessStatuses = buildUnnamed6092();
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata--;
  return o;
}

checkGoogleCloudDocumentaiV1beta3BatchProcessMetadata(
    api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed6092(o.individualProcessStatuses);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadata--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus =
    0;
buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus() {
  var o = new api
      .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus <
      3) {
    o.humanReviewOperation = "foo";
    o.inputGcsSource = "foo";
    o.outputGcsDestination = "foo";
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus--;
  return o;
}

checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
    api.GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
        o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus <
      3) {
    unittest.expect(o.humanReviewOperation, unittest.equals('foo'));
    unittest.expect(o.inputGcsSource, unittest.equals('foo'));
    unittest.expect(o.outputGcsDestination, unittest.equals('foo'));
    checkGoogleRpcStatus(o.status);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse = 0;
buildGoogleCloudDocumentaiV1beta3BatchProcessResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta3BatchProcessResponse();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta3BatchProcessResponse(
    api.GoogleCloudDocumentaiV1beta3BatchProcessResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessResponse--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata = 0;
buildGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata() {
  var o = new api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata <
      3) {
    o.createTime = "foo";
    o.state = "foo";
    o.stateMessage = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata--;
  return o;
}

checkGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateMessage, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse = 0;
buildGoogleCloudDocumentaiV1beta3ReviewDocumentResponse() {
  var o = new api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse < 3) {
    o.gcsDestination = "foo";
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse--;
  return o;
}

checkGoogleCloudDocumentaiV1beta3ReviewDocumentResponse(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse < 3) {
    unittest.expect(o.gcsDestination, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentResponse--;
}

buildUnnamed6093() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6093(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed6094() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6094(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed6093();
    o.name = "foo";
    o.response = buildUnnamed6094();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed6093(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6094(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

buildUnnamed6095() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6095(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed6096() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed6095());
  o.add(buildUnnamed6095());
  return o;
}

checkUnnamed6096(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6095(o[0]);
  checkUnnamed6095(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6096();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6096(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeColor = 0;
buildGoogleTypeColor() {
  var o = new api.GoogleTypeColor();
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGoogleTypeColor--;
  return o;
}

checkGoogleTypeColor(api.GoogleTypeColor o) {
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    unittest.expect(o.alpha, unittest.equals(42.0));
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterGoogleTypeColor--;
}

core.int buildCounterGoogleTypeDate = 0;
buildGoogleTypeDate() {
  var o = new api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeDateTime = 0;
buildGoogleTypeDateTime() {
  var o = new api.GoogleTypeDateTime();
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    o.day = 42;
    o.hours = 42;
    o.minutes = 42;
    o.month = 42;
    o.nanos = 42;
    o.seconds = 42;
    o.timeZone = buildGoogleTypeTimeZone();
    o.utcOffset = "foo";
    o.year = 42;
  }
  buildCounterGoogleTypeDateTime--;
  return o;
}

checkGoogleTypeDateTime(api.GoogleTypeDateTime o) {
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
    checkGoogleTypeTimeZone(o.timeZone);
    unittest.expect(o.utcOffset, unittest.equals('foo'));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterGoogleTypeDateTime--;
}

core.int buildCounterGoogleTypeMoney = 0;
buildGoogleTypeMoney() {
  var o = new api.GoogleTypeMoney();
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    o.currencyCode = "foo";
    o.nanos = 42;
    o.units = "foo";
  }
  buildCounterGoogleTypeMoney--;
  return o;
}

checkGoogleTypeMoney(api.GoogleTypeMoney o) {
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterGoogleTypeMoney--;
}

buildUnnamed6097() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6097(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6098() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6098(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleTypePostalAddress = 0;
buildGoogleTypePostalAddress() {
  var o = new api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed6097();
    o.administrativeArea = "foo";
    o.languageCode = "foo";
    o.locality = "foo";
    o.organization = "foo";
    o.postalCode = "foo";
    o.recipients = buildUnnamed6098();
    o.regionCode = "foo";
    o.revision = 42;
    o.sortingCode = "foo";
    o.sublocality = "foo";
  }
  buildCounterGoogleTypePostalAddress--;
  return o;
}

checkGoogleTypePostalAddress(api.GoogleTypePostalAddress o) {
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    checkUnnamed6097(o.addressLines);
    unittest.expect(o.administrativeArea, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    checkUnnamed6098(o.recipients);
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.sortingCode, unittest.equals('foo'));
    unittest.expect(o.sublocality, unittest.equals('foo'));
  }
  buildCounterGoogleTypePostalAddress--;
}

core.int buildCounterGoogleTypeTimeZone = 0;
buildGoogleTypeTimeZone() {
  var o = new api.GoogleTypeTimeZone();
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    o.id = "foo";
    o.version = "foo";
  }
  buildCounterGoogleTypeTimeZone--;
  return o;
}

checkGoogleTypeTimeZone(api.GoogleTypeTimeZone o) {
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleTypeTimeZone--;
}

main() {
  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3DisableProcessorResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3EnableProcessorResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata();
      var od = new api
              .GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();
      var od = new api
              .GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1BoundingPoly", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1BoundingPoly();
      var od =
          new api.GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1BoundingPoly(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1Document", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1Document();
      var od =
          new api.GoogleCloudDocumentaiV1beta1Document.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1Document(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntity();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentEntity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentEntityRelation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentEntityRelation();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentEntityRelation.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentEntityRelation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPage();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentPage.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageAnchor",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchor();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageAnchor.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageAnchor(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageBlock",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageBlock();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageBlock.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageBlock(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageDimension",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageDimension();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentPageDimension.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageDimension(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageFormField",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageFormField();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentPageFormField.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageFormField(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageImage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageImage();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageImage.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageImage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageLayout",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageLayout();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageLayout(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageLine", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageLine();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageLine.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageLine(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageMatrix",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageMatrix();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageMatrix.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageMatrix(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageParagraph",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageParagraph();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentPageParagraph.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageParagraph(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTable",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTable();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageTable.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageTable(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableCell(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageTableTableRow(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageToken",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageToken();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentPageToken.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageToken(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentPageVisualElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentPageVisualElement();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentPageVisualElement.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentPageVisualElement(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentProvenance",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentProvenance();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentProvenance(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentProvenanceParent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentProvenanceParent();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentProvenanceParent.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentProvenanceParent(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentRevision", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentRevision();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentRevision.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentRevision(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentShardInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentShardInfo();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentShardInfo.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentShardInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentStyle();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentStyle.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentStyle(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentStyleFontSize",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentStyleFontSize();
      var od =
          new api.GoogleCloudDocumentaiV1beta1DocumentStyleFontSize.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentStyleFontSize(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextAnchor",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchor();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentTextAnchor(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();
      var od = new api
              .GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentTextChange",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTextChange();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentTextChange.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentTextChange(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1DocumentTranslation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1DocumentTranslation();
      var od = new api.GoogleCloudDocumentaiV1beta1DocumentTranslation.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1DocumentTranslation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1GcsDestination();
      var od = new api.GoogleCloudDocumentaiV1beta1GcsDestination.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1GcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1GcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1GcsSource();
      var od =
          new api.GoogleCloudDocumentaiV1beta1GcsSource.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1GcsSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1InputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1InputConfig();
      var od =
          new api.GoogleCloudDocumentaiV1beta1InputConfig.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1InputConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1NormalizedVertex();
      var od = new api.GoogleCloudDocumentaiV1beta1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1NormalizedVertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1OperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1OperationMetadata();
      var od = new api.GoogleCloudDocumentaiV1beta1OperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta1OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1OutputConfig();
      var od =
          new api.GoogleCloudDocumentaiV1beta1OutputConfig.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1OutputConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta1ProcessDocumentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1ProcessDocumentResponse();
      var od =
          new api.GoogleCloudDocumentaiV1beta1ProcessDocumentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta1ProcessDocumentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta1Vertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta1Vertex();
      var od = new api.GoogleCloudDocumentaiV1beta1Vertex.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta1Vertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2AutoMlParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2AutoMlParams();
      var od =
          new api.GoogleCloudDocumentaiV1beta2AutoMlParams.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2AutoMlParams(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest();
      var od = new api
              .GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();
      var od = new api
              .GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2BoundingPoly", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2BoundingPoly();
      var od =
          new api.GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2BoundingPoly(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2Document", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2Document();
      var od =
          new api.GoogleCloudDocumentaiV1beta2Document.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2Document(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntity();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentEntity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentEntityRelation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentEntityRelation();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentEntityRelation.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentEntityRelation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentLabel", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentLabel();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentLabel.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentLabel(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPage();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentPage.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageAnchor",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchor();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageAnchor.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageAnchor(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageBlock",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageBlock();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageBlock.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageBlock(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageDimension",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageDimension();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentPageDimension.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageDimension(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageFormField",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageFormField();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentPageFormField.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageFormField(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageImage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageImage();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageImage.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageImage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageLayout",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageLayout();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageLayout(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageLine", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageLine();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageLine.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageLine(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageMatrix",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageMatrix();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageMatrix.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageMatrix(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageParagraph",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageParagraph();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentPageParagraph.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageParagraph(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTable",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTable();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageTable.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageTable(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableCell(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageTableTableRow(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageToken",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageToken();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentPageToken.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageToken(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentPageVisualElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentPageVisualElement();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentPageVisualElement.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentPageVisualElement(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentProvenance",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentProvenance();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentProvenance(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentProvenanceParent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentProvenanceParent();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentProvenanceParent.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentProvenanceParent(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentRevision", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentRevision();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentRevision.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentRevision(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentShardInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentShardInfo();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentShardInfo.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentShardInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentStyle();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentStyle.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentStyle(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentStyleFontSize",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentStyleFontSize();
      var od =
          new api.GoogleCloudDocumentaiV1beta2DocumentStyleFontSize.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentStyleFontSize(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextAnchor",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchor();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentTextAnchor(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();
      var od = new api
              .GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentTextChange",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTextChange();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentTextChange.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentTextChange(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2DocumentTranslation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2DocumentTranslation();
      var od = new api.GoogleCloudDocumentaiV1beta2DocumentTranslation.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2DocumentTranslation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2EntityExtractionParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2EntityExtractionParams();
      var od =
          new api.GoogleCloudDocumentaiV1beta2EntityExtractionParams.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2EntityExtractionParams(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2FormExtractionParams",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2FormExtractionParams();
      var od =
          new api.GoogleCloudDocumentaiV1beta2FormExtractionParams.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2FormExtractionParams(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2GcsDestination();
      var od = new api.GoogleCloudDocumentaiV1beta2GcsDestination.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2GcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2GcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2GcsSource();
      var od =
          new api.GoogleCloudDocumentaiV1beta2GcsSource.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2GcsSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2InputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2InputConfig();
      var od =
          new api.GoogleCloudDocumentaiV1beta2InputConfig.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2InputConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2KeyValuePairHint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2KeyValuePairHint();
      var od = new api.GoogleCloudDocumentaiV1beta2KeyValuePairHint.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2KeyValuePairHint(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2NormalizedVertex();
      var od = new api.GoogleCloudDocumentaiV1beta2NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2NormalizedVertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2OcrParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2OcrParams();
      var od =
          new api.GoogleCloudDocumentaiV1beta2OcrParams.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2OcrParams(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2OperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2OperationMetadata();
      var od = new api.GoogleCloudDocumentaiV1beta2OperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2OutputConfig();
      var od =
          new api.GoogleCloudDocumentaiV1beta2OutputConfig.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2OutputConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2ProcessDocumentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest();
      var od =
          new api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta2ProcessDocumentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2ProcessDocumentResponse();
      var od =
          new api.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2ProcessDocumentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2TableBoundHint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2TableBoundHint();
      var od = new api.GoogleCloudDocumentaiV1beta2TableBoundHint.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta2TableBoundHint(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2TableExtractionParams",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2TableExtractionParams();
      var od =
          new api.GoogleCloudDocumentaiV1beta2TableExtractionParams.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta2TableExtractionParams(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta2Vertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta2Vertex();
      var od = new api.GoogleCloudDocumentaiV1beta2Vertex.fromJson(o.toJson());
      checkGoogleCloudDocumentaiV1beta2Vertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta3BatchProcessMetadata();
      var od =
          new api.GoogleCloudDocumentaiV1beta3BatchProcessMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta3BatchProcessMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus();
      var od = new api
              .GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta3BatchProcessResponse();
      var od =
          new api.GoogleCloudDocumentaiV1beta3BatchProcessResponse.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta3BatchProcessResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();
      var od = new api
              .GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDocumentaiV1beta3ReviewDocumentResponse();
      var od =
          new api.GoogleCloudDocumentaiV1beta3ReviewDocumentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeColor", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeColor();
      var od = new api.GoogleTypeColor.fromJson(o.toJson());
      checkGoogleTypeColor(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeDate", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeDate();
      var od = new api.GoogleTypeDate.fromJson(o.toJson());
      checkGoogleTypeDate(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeDateTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeDateTime();
      var od = new api.GoogleTypeDateTime.fromJson(o.toJson());
      checkGoogleTypeDateTime(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeMoney", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeMoney();
      var od = new api.GoogleTypeMoney.fromJson(o.toJson());
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group("obj-schema-GoogleTypePostalAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypePostalAddress();
      var od = new api.GoogleTypePostalAddress.fromJson(o.toJson());
      checkGoogleTypePostalAddress(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeTimeZone", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeTimeZone();
      var od = new api.GoogleTypeTimeZone.fromJson(o.toJson());
      checkGoogleTypeTimeZone(od);
    });
  });

  unittest.group("resource-ProjectsDocumentsResourceApi", () {
    unittest.test("method--batchProcess", () {
      var mock = new HttpServerMock();
      api.ProjectsDocumentsResourceApi res =
          new api.DocumentaiApi(mock).projects.documents;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest.fromJson(
            json);
        checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchProcess(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--process", () {
      var mock = new HttpServerMock();
      api.ProjectsDocumentsResourceApi res =
          new api.DocumentaiApi(mock).projects.documents;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest.fromJson(
                json);
        checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDocumentaiV1beta2Document());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .process(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDocumentaiV1beta2Document(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsDocumentsResourceApi", () {
    unittest.test("method--batchProcess", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDocumentsResourceApi res =
          new api.DocumentaiApi(mock).projects.locations.documents;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest.fromJson(
            json);
        checkGoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchProcess(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--process", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDocumentsResourceApi res =
          new api.DocumentaiApi(mock).projects.locations.documents;
      var arg_request =
          buildGoogleCloudDocumentaiV1beta2ProcessDocumentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest.fromJson(
                json);
        checkGoogleCloudDocumentaiV1beta2ProcessDocumentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDocumentaiV1beta2Document());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .process(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDocumentaiV1beta2Document(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.DocumentaiApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DocumentaiApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });
}
