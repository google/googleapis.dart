// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
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

library googleapis.siteVerification.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/siteverification/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
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

core.int buildCounterSiteVerificationWebResourceGettokenRequestSite = 0;
api.SiteVerificationWebResourceGettokenRequestSite
    buildSiteVerificationWebResourceGettokenRequestSite() {
  var o = api.SiteVerificationWebResourceGettokenRequestSite();
  buildCounterSiteVerificationWebResourceGettokenRequestSite++;
  if (buildCounterSiteVerificationWebResourceGettokenRequestSite < 3) {
    o.identifier = 'foo';
    o.type = 'foo';
  }
  buildCounterSiteVerificationWebResourceGettokenRequestSite--;
  return o;
}

void checkSiteVerificationWebResourceGettokenRequestSite(
    api.SiteVerificationWebResourceGettokenRequestSite o) {
  buildCounterSiteVerificationWebResourceGettokenRequestSite++;
  if (buildCounterSiteVerificationWebResourceGettokenRequestSite < 3) {
    unittest.expect(o.identifier, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSiteVerificationWebResourceGettokenRequestSite--;
}

core.int buildCounterSiteVerificationWebResourceGettokenRequest = 0;
api.SiteVerificationWebResourceGettokenRequest
    buildSiteVerificationWebResourceGettokenRequest() {
  var o = api.SiteVerificationWebResourceGettokenRequest();
  buildCounterSiteVerificationWebResourceGettokenRequest++;
  if (buildCounterSiteVerificationWebResourceGettokenRequest < 3) {
    o.site = buildSiteVerificationWebResourceGettokenRequestSite();
    o.verificationMethod = 'foo';
  }
  buildCounterSiteVerificationWebResourceGettokenRequest--;
  return o;
}

void checkSiteVerificationWebResourceGettokenRequest(
    api.SiteVerificationWebResourceGettokenRequest o) {
  buildCounterSiteVerificationWebResourceGettokenRequest++;
  if (buildCounterSiteVerificationWebResourceGettokenRequest < 3) {
    checkSiteVerificationWebResourceGettokenRequestSite(o.site);
    unittest.expect(o.verificationMethod, unittest.equals('foo'));
  }
  buildCounterSiteVerificationWebResourceGettokenRequest--;
}

core.int buildCounterSiteVerificationWebResourceGettokenResponse = 0;
api.SiteVerificationWebResourceGettokenResponse
    buildSiteVerificationWebResourceGettokenResponse() {
  var o = api.SiteVerificationWebResourceGettokenResponse();
  buildCounterSiteVerificationWebResourceGettokenResponse++;
  if (buildCounterSiteVerificationWebResourceGettokenResponse < 3) {
    o.method = 'foo';
    o.token = 'foo';
  }
  buildCounterSiteVerificationWebResourceGettokenResponse--;
  return o;
}

void checkSiteVerificationWebResourceGettokenResponse(
    api.SiteVerificationWebResourceGettokenResponse o) {
  buildCounterSiteVerificationWebResourceGettokenResponse++;
  if (buildCounterSiteVerificationWebResourceGettokenResponse < 3) {
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterSiteVerificationWebResourceGettokenResponse--;
}

core.List<api.SiteVerificationWebResourceResource> buildUnnamed4336() {
  var o = <api.SiteVerificationWebResourceResource>[];
  o.add(buildSiteVerificationWebResourceResource());
  o.add(buildSiteVerificationWebResourceResource());
  return o;
}

void checkUnnamed4336(core.List<api.SiteVerificationWebResourceResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSiteVerificationWebResourceResource(o[0]);
  checkSiteVerificationWebResourceResource(o[1]);
}

core.int buildCounterSiteVerificationWebResourceListResponse = 0;
api.SiteVerificationWebResourceListResponse
    buildSiteVerificationWebResourceListResponse() {
  var o = api.SiteVerificationWebResourceListResponse();
  buildCounterSiteVerificationWebResourceListResponse++;
  if (buildCounterSiteVerificationWebResourceListResponse < 3) {
    o.items = buildUnnamed4336();
  }
  buildCounterSiteVerificationWebResourceListResponse--;
  return o;
}

void checkSiteVerificationWebResourceListResponse(
    api.SiteVerificationWebResourceListResponse o) {
  buildCounterSiteVerificationWebResourceListResponse++;
  if (buildCounterSiteVerificationWebResourceListResponse < 3) {
    checkUnnamed4336(o.items);
  }
  buildCounterSiteVerificationWebResourceListResponse--;
}

core.List<core.String> buildUnnamed4337() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4337(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSiteVerificationWebResourceResourceSite = 0;
api.SiteVerificationWebResourceResourceSite
    buildSiteVerificationWebResourceResourceSite() {
  var o = api.SiteVerificationWebResourceResourceSite();
  buildCounterSiteVerificationWebResourceResourceSite++;
  if (buildCounterSiteVerificationWebResourceResourceSite < 3) {
    o.identifier = 'foo';
    o.type = 'foo';
  }
  buildCounterSiteVerificationWebResourceResourceSite--;
  return o;
}

void checkSiteVerificationWebResourceResourceSite(
    api.SiteVerificationWebResourceResourceSite o) {
  buildCounterSiteVerificationWebResourceResourceSite++;
  if (buildCounterSiteVerificationWebResourceResourceSite < 3) {
    unittest.expect(o.identifier, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSiteVerificationWebResourceResourceSite--;
}

core.int buildCounterSiteVerificationWebResourceResource = 0;
api.SiteVerificationWebResourceResource
    buildSiteVerificationWebResourceResource() {
  var o = api.SiteVerificationWebResourceResource();
  buildCounterSiteVerificationWebResourceResource++;
  if (buildCounterSiteVerificationWebResourceResource < 3) {
    o.id = 'foo';
    o.owners = buildUnnamed4337();
    o.site = buildSiteVerificationWebResourceResourceSite();
  }
  buildCounterSiteVerificationWebResourceResource--;
  return o;
}

void checkSiteVerificationWebResourceResource(
    api.SiteVerificationWebResourceResource o) {
  buildCounterSiteVerificationWebResourceResource++;
  if (buildCounterSiteVerificationWebResourceResource < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed4337(o.owners);
    checkSiteVerificationWebResourceResourceSite(o.site);
  }
  buildCounterSiteVerificationWebResourceResource--;
}

void main() {
  unittest.group('obj-schema-SiteVerificationWebResourceGettokenRequestSite',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteVerificationWebResourceGettokenRequestSite();
      var od = api.SiteVerificationWebResourceGettokenRequestSite.fromJson(
          o.toJson());
      checkSiteVerificationWebResourceGettokenRequestSite(od);
    });
  });

  unittest.group('obj-schema-SiteVerificationWebResourceGettokenRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteVerificationWebResourceGettokenRequest();
      var od =
          api.SiteVerificationWebResourceGettokenRequest.fromJson(o.toJson());
      checkSiteVerificationWebResourceGettokenRequest(od);
    });
  });

  unittest.group('obj-schema-SiteVerificationWebResourceGettokenResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteVerificationWebResourceGettokenResponse();
      var od =
          api.SiteVerificationWebResourceGettokenResponse.fromJson(o.toJson());
      checkSiteVerificationWebResourceGettokenResponse(od);
    });
  });

  unittest.group('obj-schema-SiteVerificationWebResourceListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteVerificationWebResourceListResponse();
      var od = api.SiteVerificationWebResourceListResponse.fromJson(o.toJson());
      checkSiteVerificationWebResourceListResponse(od);
    });
  });

  unittest.group('obj-schema-SiteVerificationWebResourceResourceSite', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteVerificationWebResourceResourceSite();
      var od = api.SiteVerificationWebResourceResourceSite.fromJson(o.toJson());
      checkSiteVerificationWebResourceResourceSite(od);
    });
  });

  unittest.group('obj-schema-SiteVerificationWebResourceResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteVerificationWebResourceResource();
      var od = api.SiteVerificationWebResourceResource.fromJson(o.toJson());
      checkSiteVerificationWebResourceResource(od);
    });
  });

  unittest.group('resource-WebResourceResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.WebResourceResourceApi res =
          api.SiteVerificationApi(mock).webResource;
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("siteVerification/v1/"));
        pathOffset += 20;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("webResource/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.WebResourceResourceApi res =
          api.SiteVerificationApi(mock).webResource;
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("siteVerification/v1/"));
        pathOffset += 20;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("webResource/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildSiteVerificationWebResourceResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSiteVerificationWebResourceResource(response);
      })));
    });

    unittest.test('method--getToken', () {
      var mock = HttpServerMock();
      api.WebResourceResourceApi res =
          api.SiteVerificationApi(mock).webResource;
      var arg_request = buildSiteVerificationWebResourceGettokenRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SiteVerificationWebResourceGettokenRequest.fromJson(json);
        checkSiteVerificationWebResourceGettokenRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("siteVerification/v1/"));
        pathOffset += 20;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("token"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json
            .encode(buildSiteVerificationWebResourceGettokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getToken(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSiteVerificationWebResourceGettokenResponse(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.WebResourceResourceApi res =
          api.SiteVerificationApi(mock).webResource;
      var arg_request = buildSiteVerificationWebResourceResource();
      var arg_verificationMethod = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SiteVerificationWebResourceResource.fromJson(json);
        checkSiteVerificationWebResourceResource(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("siteVerification/v1/"));
        pathOffset += 20;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("webResource"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["verificationMethod"].first,
            unittest.equals(arg_verificationMethod));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildSiteVerificationWebResourceResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_verificationMethod, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSiteVerificationWebResourceResource(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.WebResourceResourceApi res =
          api.SiteVerificationApi(mock).webResource;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("siteVerification/v1/"));
        pathOffset += 20;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("webResource"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildSiteVerificationWebResourceListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkSiteVerificationWebResourceListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.WebResourceResourceApi res =
          api.SiteVerificationApi(mock).webResource;
      var arg_request = buildSiteVerificationWebResourceResource();
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SiteVerificationWebResourceResource.fromJson(json);
        checkSiteVerificationWebResourceResource(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("siteVerification/v1/"));
        pathOffset += 20;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("webResource/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildSiteVerificationWebResourceResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSiteVerificationWebResourceResource(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.WebResourceResourceApi res =
          api.SiteVerificationApi(mock).webResource;
      var arg_request = buildSiteVerificationWebResourceResource();
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SiteVerificationWebResourceResource.fromJson(json);
        checkSiteVerificationWebResourceResource(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("siteVerification/v1/"));
        pathOffset += 20;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("webResource/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp =
            convert.json.encode(buildSiteVerificationWebResourceResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSiteVerificationWebResourceResource(response);
      })));
    });
  });
}
