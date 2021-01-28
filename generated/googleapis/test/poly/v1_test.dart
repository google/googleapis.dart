// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
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

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/poly/v1.dart' as api;

import '../test_shared.dart';

core.List<api.Format> buildUnnamed4329() {
  var o = <api.Format>[];
  o.add(buildFormat());
  o.add(buildFormat());
  return o;
}

void checkUnnamed4329(core.List<api.Format> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFormat(o[0] as api.Format);
  checkFormat(o[1] as api.Format);
}

core.int buildCounterAsset = 0;
api.Asset buildAsset() {
  var o = api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.authorName = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.formats = buildUnnamed4329();
    o.isCurated = true;
    o.license = 'foo';
    o.metadata = 'foo';
    o.name = 'foo';
    o.presentationParams = buildPresentationParams();
    o.remixInfo = buildRemixInfo();
    o.thumbnail = buildFile();
    o.updateTime = 'foo';
    o.visibility = 'foo';
  }
  buildCounterAsset--;
  return o;
}

void checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    unittest.expect(o.authorName, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4329(o.formats);
    unittest.expect(o.isCurated, unittest.isTrue);
    unittest.expect(o.license, unittest.equals('foo'));
    unittest.expect(o.metadata, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkPresentationParams(o.presentationParams as api.PresentationParams);
    checkRemixInfo(o.remixInfo as api.RemixInfo);
    checkFile(o.thumbnail as api.File);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterAsset--;
}

core.int buildCounterAssetImportMessage = 0;
api.AssetImportMessage buildAssetImportMessage() {
  var o = api.AssetImportMessage();
  buildCounterAssetImportMessage++;
  if (buildCounterAssetImportMessage < 3) {
    o.code = 'foo';
    o.filePath = 'foo';
    o.imageError = buildImageError();
    o.objParseError = buildObjParseError();
  }
  buildCounterAssetImportMessage--;
  return o;
}

void checkAssetImportMessage(api.AssetImportMessage o) {
  buildCounterAssetImportMessage++;
  if (buildCounterAssetImportMessage < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.filePath, unittest.equals('foo'));
    checkImageError(o.imageError as api.ImageError);
    checkObjParseError(o.objParseError as api.ObjParseError);
  }
  buildCounterAssetImportMessage--;
}

core.int buildCounterFile = 0;
api.File buildFile() {
  var o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.contentType = 'foo';
    o.relativePath = 'foo';
    o.url = 'foo';
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.relativePath, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterFile--;
}

core.List<api.File> buildUnnamed4330() {
  var o = <api.File>[];
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

void checkUnnamed4330(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0] as api.File);
  checkFile(o[1] as api.File);
}

core.int buildCounterFormat = 0;
api.Format buildFormat() {
  var o = api.Format();
  buildCounterFormat++;
  if (buildCounterFormat < 3) {
    o.formatComplexity = buildFormatComplexity();
    o.formatType = 'foo';
    o.resources = buildUnnamed4330();
    o.root = buildFile();
  }
  buildCounterFormat--;
  return o;
}

void checkFormat(api.Format o) {
  buildCounterFormat++;
  if (buildCounterFormat < 3) {
    checkFormatComplexity(o.formatComplexity as api.FormatComplexity);
    unittest.expect(o.formatType, unittest.equals('foo'));
    checkUnnamed4330(o.resources);
    checkFile(o.root as api.File);
  }
  buildCounterFormat--;
}

core.int buildCounterFormatComplexity = 0;
api.FormatComplexity buildFormatComplexity() {
  var o = api.FormatComplexity();
  buildCounterFormatComplexity++;
  if (buildCounterFormatComplexity < 3) {
    o.lodHint = 42;
    o.triangleCount = 'foo';
  }
  buildCounterFormatComplexity--;
  return o;
}

void checkFormatComplexity(api.FormatComplexity o) {
  buildCounterFormatComplexity++;
  if (buildCounterFormatComplexity < 3) {
    unittest.expect(o.lodHint, unittest.equals(42));
    unittest.expect(o.triangleCount, unittest.equals('foo'));
  }
  buildCounterFormatComplexity--;
}

core.int buildCounterImageError = 0;
api.ImageError buildImageError() {
  var o = api.ImageError();
  buildCounterImageError++;
  if (buildCounterImageError < 3) {
    o.code = 'foo';
    o.filePath = 'foo';
  }
  buildCounterImageError--;
  return o;
}

void checkImageError(api.ImageError o) {
  buildCounterImageError++;
  if (buildCounterImageError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.filePath, unittest.equals('foo'));
  }
  buildCounterImageError--;
}

core.List<api.Asset> buildUnnamed4331() {
  var o = <api.Asset>[];
  o.add(buildAsset());
  o.add(buildAsset());
  return o;
}

void checkUnnamed4331(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0] as api.Asset);
  checkAsset(o[1] as api.Asset);
}

core.int buildCounterListAssetsResponse = 0;
api.ListAssetsResponse buildListAssetsResponse() {
  var o = api.ListAssetsResponse();
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    o.assets = buildUnnamed4331();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListAssetsResponse--;
  return o;
}

void checkListAssetsResponse(api.ListAssetsResponse o) {
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    checkUnnamed4331(o.assets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListAssetsResponse--;
}

core.List<api.Asset> buildUnnamed4332() {
  var o = <api.Asset>[];
  o.add(buildAsset());
  o.add(buildAsset());
  return o;
}

void checkUnnamed4332(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0] as api.Asset);
  checkAsset(o[1] as api.Asset);
}

core.int buildCounterListLikedAssetsResponse = 0;
api.ListLikedAssetsResponse buildListLikedAssetsResponse() {
  var o = api.ListLikedAssetsResponse();
  buildCounterListLikedAssetsResponse++;
  if (buildCounterListLikedAssetsResponse < 3) {
    o.assets = buildUnnamed4332();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListLikedAssetsResponse--;
  return o;
}

void checkListLikedAssetsResponse(api.ListLikedAssetsResponse o) {
  buildCounterListLikedAssetsResponse++;
  if (buildCounterListLikedAssetsResponse < 3) {
    checkUnnamed4332(o.assets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListLikedAssetsResponse--;
}

core.List<api.UserAsset> buildUnnamed4333() {
  var o = <api.UserAsset>[];
  o.add(buildUserAsset());
  o.add(buildUserAsset());
  return o;
}

void checkUnnamed4333(core.List<api.UserAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserAsset(o[0] as api.UserAsset);
  checkUserAsset(o[1] as api.UserAsset);
}

core.int buildCounterListUserAssetsResponse = 0;
api.ListUserAssetsResponse buildListUserAssetsResponse() {
  var o = api.ListUserAssetsResponse();
  buildCounterListUserAssetsResponse++;
  if (buildCounterListUserAssetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.totalSize = 42;
    o.userAssets = buildUnnamed4333();
  }
  buildCounterListUserAssetsResponse--;
  return o;
}

void checkListUserAssetsResponse(api.ListUserAssetsResponse o) {
  buildCounterListUserAssetsResponse++;
  if (buildCounterListUserAssetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
    checkUnnamed4333(o.userAssets);
  }
  buildCounterListUserAssetsResponse--;
}

core.int buildCounterObjParseError = 0;
api.ObjParseError buildObjParseError() {
  var o = api.ObjParseError();
  buildCounterObjParseError++;
  if (buildCounterObjParseError < 3) {
    o.code = 'foo';
    o.endIndex = 42;
    o.filePath = 'foo';
    o.line = 'foo';
    o.lineNumber = 42;
    o.startIndex = 42;
  }
  buildCounterObjParseError--;
  return o;
}

void checkObjParseError(api.ObjParseError o) {
  buildCounterObjParseError++;
  if (buildCounterObjParseError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.endIndex, unittest.equals(42));
    unittest.expect(o.filePath, unittest.equals('foo'));
    unittest.expect(o.line, unittest.equals('foo'));
    unittest.expect(o.lineNumber, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
  }
  buildCounterObjParseError--;
}

core.int buildCounterPresentationParams = 0;
api.PresentationParams buildPresentationParams() {
  var o = api.PresentationParams();
  buildCounterPresentationParams++;
  if (buildCounterPresentationParams < 3) {
    o.backgroundColor = 'foo';
    o.colorSpace = 'foo';
    o.orientingRotation = buildQuaternion();
  }
  buildCounterPresentationParams--;
  return o;
}

void checkPresentationParams(api.PresentationParams o) {
  buildCounterPresentationParams++;
  if (buildCounterPresentationParams < 3) {
    unittest.expect(o.backgroundColor, unittest.equals('foo'));
    unittest.expect(o.colorSpace, unittest.equals('foo'));
    checkQuaternion(o.orientingRotation as api.Quaternion);
  }
  buildCounterPresentationParams--;
}

core.int buildCounterQuaternion = 0;
api.Quaternion buildQuaternion() {
  var o = api.Quaternion();
  buildCounterQuaternion++;
  if (buildCounterQuaternion < 3) {
    o.w = 42.0;
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterQuaternion--;
  return o;
}

void checkQuaternion(api.Quaternion o) {
  buildCounterQuaternion++;
  if (buildCounterQuaternion < 3) {
    unittest.expect(o.w, unittest.equals(42.0));
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
    unittest.expect(o.z, unittest.equals(42.0));
  }
  buildCounterQuaternion--;
}

core.List<core.String> buildUnnamed4334() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4334(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRemixInfo = 0;
api.RemixInfo buildRemixInfo() {
  var o = api.RemixInfo();
  buildCounterRemixInfo++;
  if (buildCounterRemixInfo < 3) {
    o.sourceAsset = buildUnnamed4334();
  }
  buildCounterRemixInfo--;
  return o;
}

void checkRemixInfo(api.RemixInfo o) {
  buildCounterRemixInfo++;
  if (buildCounterRemixInfo < 3) {
    checkUnnamed4334(o.sourceAsset);
  }
  buildCounterRemixInfo--;
}

core.List<api.AssetImportMessage> buildUnnamed4335() {
  var o = <api.AssetImportMessage>[];
  o.add(buildAssetImportMessage());
  o.add(buildAssetImportMessage());
  return o;
}

void checkUnnamed4335(core.List<api.AssetImportMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssetImportMessage(o[0] as api.AssetImportMessage);
  checkAssetImportMessage(o[1] as api.AssetImportMessage);
}

core.int buildCounterStartAssetImportResponse = 0;
api.StartAssetImportResponse buildStartAssetImportResponse() {
  var o = api.StartAssetImportResponse();
  buildCounterStartAssetImportResponse++;
  if (buildCounterStartAssetImportResponse < 3) {
    o.assetId = 'foo';
    o.assetImportId = 'foo';
    o.assetImportMessages = buildUnnamed4335();
    o.publishUrl = 'foo';
  }
  buildCounterStartAssetImportResponse--;
  return o;
}

void checkStartAssetImportResponse(api.StartAssetImportResponse o) {
  buildCounterStartAssetImportResponse++;
  if (buildCounterStartAssetImportResponse < 3) {
    unittest.expect(o.assetId, unittest.equals('foo'));
    unittest.expect(o.assetImportId, unittest.equals('foo'));
    checkUnnamed4335(o.assetImportMessages);
    unittest.expect(o.publishUrl, unittest.equals('foo'));
  }
  buildCounterStartAssetImportResponse--;
}

core.int buildCounterUserAsset = 0;
api.UserAsset buildUserAsset() {
  var o = api.UserAsset();
  buildCounterUserAsset++;
  if (buildCounterUserAsset < 3) {
    o.asset = buildAsset();
  }
  buildCounterUserAsset--;
  return o;
}

void checkUserAsset(api.UserAsset o) {
  buildCounterUserAsset++;
  if (buildCounterUserAsset < 3) {
    checkAsset(o.asset as api.Asset);
  }
  buildCounterUserAsset--;
}

void main() {
  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () {
      var o = buildAsset();
      var od = api.Asset.fromJson(o.toJson());
      checkAsset(od as api.Asset);
    });
  });

  unittest.group('obj-schema-AssetImportMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildAssetImportMessage();
      var od = api.AssetImportMessage.fromJson(o.toJson());
      checkAssetImportMessage(od as api.AssetImportMessage);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () {
      var o = buildFile();
      var od = api.File.fromJson(o.toJson());
      checkFile(od as api.File);
    });
  });

  unittest.group('obj-schema-Format', () {
    unittest.test('to-json--from-json', () {
      var o = buildFormat();
      var od = api.Format.fromJson(o.toJson());
      checkFormat(od as api.Format);
    });
  });

  unittest.group('obj-schema-FormatComplexity', () {
    unittest.test('to-json--from-json', () {
      var o = buildFormatComplexity();
      var od = api.FormatComplexity.fromJson(o.toJson());
      checkFormatComplexity(od as api.FormatComplexity);
    });
  });

  unittest.group('obj-schema-ImageError', () {
    unittest.test('to-json--from-json', () {
      var o = buildImageError();
      var od = api.ImageError.fromJson(o.toJson());
      checkImageError(od as api.ImageError);
    });
  });

  unittest.group('obj-schema-ListAssetsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAssetsResponse();
      var od = api.ListAssetsResponse.fromJson(o.toJson());
      checkListAssetsResponse(od as api.ListAssetsResponse);
    });
  });

  unittest.group('obj-schema-ListLikedAssetsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLikedAssetsResponse();
      var od = api.ListLikedAssetsResponse.fromJson(o.toJson());
      checkListLikedAssetsResponse(od as api.ListLikedAssetsResponse);
    });
  });

  unittest.group('obj-schema-ListUserAssetsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListUserAssetsResponse();
      var od = api.ListUserAssetsResponse.fromJson(o.toJson());
      checkListUserAssetsResponse(od as api.ListUserAssetsResponse);
    });
  });

  unittest.group('obj-schema-ObjParseError', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjParseError();
      var od = api.ObjParseError.fromJson(o.toJson());
      checkObjParseError(od as api.ObjParseError);
    });
  });

  unittest.group('obj-schema-PresentationParams', () {
    unittest.test('to-json--from-json', () {
      var o = buildPresentationParams();
      var od = api.PresentationParams.fromJson(o.toJson());
      checkPresentationParams(od as api.PresentationParams);
    });
  });

  unittest.group('obj-schema-Quaternion', () {
    unittest.test('to-json--from-json', () {
      var o = buildQuaternion();
      var od = api.Quaternion.fromJson(o.toJson());
      checkQuaternion(od as api.Quaternion);
    });
  });

  unittest.group('obj-schema-RemixInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemixInfo();
      var od = api.RemixInfo.fromJson(o.toJson());
      checkRemixInfo(od as api.RemixInfo);
    });
  });

  unittest.group('obj-schema-StartAssetImportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartAssetImportResponse();
      var od = api.StartAssetImportResponse.fromJson(o.toJson());
      checkStartAssetImportResponse(od as api.StartAssetImportResponse);
    });
  });

  unittest.group('obj-schema-UserAsset', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserAsset();
      var od = api.UserAsset.fromJson(o.toJson());
      checkUserAsset(od as api.UserAsset);
    });
  });

  unittest.group('resource-AssetsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.PolyServiceApi(mock).assets;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildAsset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAsset(response as api.Asset);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.PolyServiceApi(mock).assets;
      var arg_category = 'foo';
      var arg_curated = true;
      var arg_format = 'foo';
      var arg_keywords = 'foo';
      var arg_maxComplexity = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/assets"));
        pathOffset += 9;

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
        unittest.expect(
            queryMap["category"].first, unittest.equals(arg_category));
        unittest.expect(
            queryMap["curated"].first, unittest.equals("$arg_curated"));
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(
            queryMap["keywords"].first, unittest.equals(arg_keywords));
        unittest.expect(queryMap["maxComplexity"].first,
            unittest.equals(arg_maxComplexity));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAssetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              category: arg_category,
              curated: arg_curated,
              format: arg_format,
              keywords: arg_keywords,
              maxComplexity: arg_maxComplexity,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAssetsResponse(response as api.ListAssetsResponse);
      })));
    });
  });

  unittest.group('resource-UsersAssetsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.PolyServiceApi(mock).users.assets;
      var arg_name = 'foo';
      var arg_format = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_visibility = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["visibility"].first, unittest.equals(arg_visibility));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListUserAssetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              format: arg_format,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              visibility: arg_visibility,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListUserAssetsResponse(response as api.ListUserAssetsResponse);
      })));
    });
  });

  unittest.group('resource-UsersLikedassetsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.PolyServiceApi(mock).users.likedassets;
      var arg_name = 'foo';
      var arg_format = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLikedAssetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              format: arg_format,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLikedAssetsResponse(response as api.ListLikedAssetsResponse);
      })));
    });
  });
}
