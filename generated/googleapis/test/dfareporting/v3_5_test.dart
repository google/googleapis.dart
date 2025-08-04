// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/dfareporting/v3_5.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterClickTag = 0;
api.ClickTag buildClickTag() {
  final o = api.ClickTag();
  buildCounterClickTag++;
  if (buildCounterClickTag < 3) {
    o.clickThroughUrl = buildCreativeClickThroughUrl();
    o.eventName = 'foo';
    o.name = 'foo';
  }
  buildCounterClickTag--;
  return o;
}

void checkClickTag(api.ClickTag o) {
  buildCounterClickTag++;
  if (buildCounterClickTag < 3) {
    checkCreativeClickThroughUrl(o.clickThroughUrl!);
    unittest.expect(o.eventName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterClickTag--;
}

core.int buildCounterCreativeAssetId = 0;
api.CreativeAssetId buildCreativeAssetId() {
  final o = api.CreativeAssetId();
  buildCounterCreativeAssetId++;
  if (buildCounterCreativeAssetId < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterCreativeAssetId--;
  return o;
}

void checkCreativeAssetId(api.CreativeAssetId o) {
  buildCounterCreativeAssetId++;
  if (buildCounterCreativeAssetId < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterCreativeAssetId--;
}

core.List<api.ClickTag> buildUnnamed0() => [buildClickTag(), buildClickTag()];

void checkUnnamed0(core.List<api.ClickTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClickTag(o[0]);
  checkClickTag(o[1]);
}

core.List<api.CreativeCustomEvent> buildUnnamed1() => [
  buildCreativeCustomEvent(),
  buildCreativeCustomEvent(),
];

void checkUnnamed1(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CreativeCustomEvent> buildUnnamed3() => [
  buildCreativeCustomEvent(),
  buildCreativeCustomEvent(),
];

void checkUnnamed3(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<api.CreativeCustomEvent> buildUnnamed4() => [
  buildCreativeCustomEvent(),
  buildCreativeCustomEvent(),
];

void checkUnnamed4(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeAssetMetadata = 0;
api.CreativeAssetMetadata buildCreativeAssetMetadata() {
  final o = api.CreativeAssetMetadata();
  buildCounterCreativeAssetMetadata++;
  if (buildCounterCreativeAssetMetadata < 3) {
    o.assetIdentifier = buildCreativeAssetId();
    o.clickTags = buildUnnamed0();
    o.counterCustomEvents = buildUnnamed1();
    o.detectedFeatures = buildUnnamed2();
    o.exitCustomEvents = buildUnnamed3();
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.kind = 'foo';
    o.richMedia = true;
    o.timerCustomEvents = buildUnnamed4();
    o.warnedValidationRules = buildUnnamed5();
  }
  buildCounterCreativeAssetMetadata--;
  return o;
}

void checkCreativeAssetMetadata(api.CreativeAssetMetadata o) {
  buildCounterCreativeAssetMetadata++;
  if (buildCounterCreativeAssetMetadata < 3) {
    checkCreativeAssetId(o.assetIdentifier!);
    checkUnnamed0(o.clickTags!);
    checkUnnamed1(o.counterCustomEvents!);
    checkUnnamed2(o.detectedFeatures!);
    checkUnnamed3(o.exitCustomEvents!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.richMedia!, unittest.isTrue);
    checkUnnamed4(o.timerCustomEvents!);
    checkUnnamed5(o.warnedValidationRules!);
  }
  buildCounterCreativeAssetMetadata--;
}

core.int buildCounterCreativeClickThroughUrl = 0;
api.CreativeClickThroughUrl buildCreativeClickThroughUrl() {
  final o = api.CreativeClickThroughUrl();
  buildCounterCreativeClickThroughUrl++;
  if (buildCounterCreativeClickThroughUrl < 3) {
    o.computedClickThroughUrl = 'foo';
    o.customClickThroughUrl = 'foo';
    o.landingPageId = 'foo';
  }
  buildCounterCreativeClickThroughUrl--;
  return o;
}

void checkCreativeClickThroughUrl(api.CreativeClickThroughUrl o) {
  buildCounterCreativeClickThroughUrl++;
  if (buildCounterCreativeClickThroughUrl < 3) {
    unittest.expect(o.computedClickThroughUrl!, unittest.equals('foo'));
    unittest.expect(o.customClickThroughUrl!, unittest.equals('foo'));
    unittest.expect(o.landingPageId!, unittest.equals('foo'));
  }
  buildCounterCreativeClickThroughUrl--;
}

core.int buildCounterCreativeCustomEvent = 0;
api.CreativeCustomEvent buildCreativeCustomEvent() {
  final o = api.CreativeCustomEvent();
  buildCounterCreativeCustomEvent++;
  if (buildCounterCreativeCustomEvent < 3) {
    o.advertiserCustomEventId = 'foo';
    o.advertiserCustomEventName = 'foo';
    o.advertiserCustomEventType = 'foo';
    o.artworkLabel = 'foo';
    o.artworkType = 'foo';
    o.exitClickThroughUrl = buildCreativeClickThroughUrl();
    o.id = 'foo';
    o.popupWindowProperties = buildPopupWindowProperties();
    o.targetType = 'foo';
    o.videoReportingId = 'foo';
  }
  buildCounterCreativeCustomEvent--;
  return o;
}

void checkCreativeCustomEvent(api.CreativeCustomEvent o) {
  buildCounterCreativeCustomEvent++;
  if (buildCounterCreativeCustomEvent < 3) {
    unittest.expect(o.advertiserCustomEventId!, unittest.equals('foo'));
    unittest.expect(o.advertiserCustomEventName!, unittest.equals('foo'));
    unittest.expect(o.advertiserCustomEventType!, unittest.equals('foo'));
    unittest.expect(o.artworkLabel!, unittest.equals('foo'));
    unittest.expect(o.artworkType!, unittest.equals('foo'));
    checkCreativeClickThroughUrl(o.exitClickThroughUrl!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkPopupWindowProperties(o.popupWindowProperties!);
    unittest.expect(o.targetType!, unittest.equals('foo'));
    unittest.expect(o.videoReportingId!, unittest.equals('foo'));
  }
  buildCounterCreativeCustomEvent--;
}

core.int buildCounterDimensionValue = 0;
api.DimensionValue buildDimensionValue() {
  final o = api.DimensionValue();
  buildCounterDimensionValue++;
  if (buildCounterDimensionValue < 3) {
    o.dimensionName = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.matchType = 'foo';
    o.value = 'foo';
  }
  buildCounterDimensionValue--;
  return o;
}

void checkDimensionValue(api.DimensionValue o) {
  buildCounterDimensionValue++;
  if (buildCounterDimensionValue < 3) {
    unittest.expect(o.dimensionName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.matchType!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterDimensionValue--;
}

core.int buildCounterOffsetPosition = 0;
api.OffsetPosition buildOffsetPosition() {
  final o = api.OffsetPosition();
  buildCounterOffsetPosition++;
  if (buildCounterOffsetPosition < 3) {
    o.left = 42;
    o.top = 42;
  }
  buildCounterOffsetPosition--;
  return o;
}

void checkOffsetPosition(api.OffsetPosition o) {
  buildCounterOffsetPosition++;
  if (buildCounterOffsetPosition < 3) {
    unittest.expect(o.left!, unittest.equals(42));
    unittest.expect(o.top!, unittest.equals(42));
  }
  buildCounterOffsetPosition--;
}

core.int buildCounterPopupWindowProperties = 0;
api.PopupWindowProperties buildPopupWindowProperties() {
  final o = api.PopupWindowProperties();
  buildCounterPopupWindowProperties++;
  if (buildCounterPopupWindowProperties < 3) {
    o.dimension = buildSize();
    o.offset = buildOffsetPosition();
    o.positionType = 'foo';
    o.showAddressBar = true;
    o.showMenuBar = true;
    o.showScrollBar = true;
    o.showStatusBar = true;
    o.showToolBar = true;
    o.title = 'foo';
  }
  buildCounterPopupWindowProperties--;
  return o;
}

void checkPopupWindowProperties(api.PopupWindowProperties o) {
  buildCounterPopupWindowProperties++;
  if (buildCounterPopupWindowProperties < 3) {
    checkSize(o.dimension!);
    checkOffsetPosition(o.offset!);
    unittest.expect(o.positionType!, unittest.equals('foo'));
    unittest.expect(o.showAddressBar!, unittest.isTrue);
    unittest.expect(o.showMenuBar!, unittest.isTrue);
    unittest.expect(o.showScrollBar!, unittest.isTrue);
    unittest.expect(o.showStatusBar!, unittest.isTrue);
    unittest.expect(o.showToolBar!, unittest.isTrue);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterPopupWindowProperties--;
}

core.int buildCounterSize = 0;
api.Size buildSize() {
  final o = api.Size();
  buildCounterSize++;
  if (buildCounterSize < 3) {
    o.height = 42;
    o.iab = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.width = 42;
  }
  buildCounterSize--;
  return o;
}

void checkSize(api.Size o) {
  buildCounterSize++;
  if (buildCounterSize < 3) {
    unittest.expect(o.height!, unittest.equals(42));
    unittest.expect(o.iab!, unittest.isTrue);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.width!, unittest.equals(42));
  }
  buildCounterSize--;
}

void main() {
  unittest.group('obj-schema-ClickTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClickTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClickTag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClickTag(od);
    });
  });

  unittest.group('obj-schema-CreativeAssetId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeAssetId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeAssetId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreativeAssetId(od);
    });
  });

  unittest.group('obj-schema-CreativeAssetMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeAssetMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeAssetMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreativeAssetMetadata(od);
    });
  });

  unittest.group('obj-schema-CreativeClickThroughUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeClickThroughUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeClickThroughUrl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreativeClickThroughUrl(od);
    });
  });

  unittest.group('obj-schema-CreativeCustomEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreativeCustomEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreativeCustomEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreativeCustomEvent(od);
    });
  });

  unittest.group('obj-schema-DimensionValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimensionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DimensionValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDimensionValue(od);
    });
  });

  unittest.group('obj-schema-OffsetPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOffsetPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OffsetPosition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOffsetPosition(od);
    });
  });

  unittest.group('obj-schema-PopupWindowProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPopupWindowProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PopupWindowProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPopupWindowProperties(od);
    });
  });

  unittest.group('obj-schema-Size', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Size.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSize(od);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DfareportingApi(mock).media;
      final arg_request = buildCreativeAssetMetadata();
      final arg_profileId = 'foo';
      final arg_advertiserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreativeAssetMetadata.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreativeAssetMetadata(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('dfareporting/v3.5/'),
          );
          pathOffset += 18;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('userprofiles/'),
          );
          pathOffset += 13;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCreativeAssetMetadata());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.upload(
        arg_request,
        arg_profileId,
        arg_advertiserId,
        $fields: arg_$fields,
      );
      checkCreativeAssetMetadata(response as api.CreativeAssetMetadata);
    });
  });
}
