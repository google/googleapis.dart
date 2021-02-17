// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/libraryagent/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterGoogleExampleLibraryagentV1Book = 0;
api.GoogleExampleLibraryagentV1Book buildGoogleExampleLibraryagentV1Book() {
  var o = api.GoogleExampleLibraryagentV1Book();
  buildCounterGoogleExampleLibraryagentV1Book++;
  if (buildCounterGoogleExampleLibraryagentV1Book < 3) {
    o.author = 'foo';
    o.name = 'foo';
    o.read = true;
    o.title = 'foo';
  }
  buildCounterGoogleExampleLibraryagentV1Book--;
  return o;
}

void checkGoogleExampleLibraryagentV1Book(
    api.GoogleExampleLibraryagentV1Book o) {
  buildCounterGoogleExampleLibraryagentV1Book++;
  if (buildCounterGoogleExampleLibraryagentV1Book < 3) {
    unittest.expect(o.author, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.read, unittest.isTrue);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleExampleLibraryagentV1Book--;
}

core.List<api.GoogleExampleLibraryagentV1Book> buildUnnamed4096() {
  var o = <api.GoogleExampleLibraryagentV1Book>[];
  o.add(buildGoogleExampleLibraryagentV1Book());
  o.add(buildGoogleExampleLibraryagentV1Book());
  return o;
}

void checkUnnamed4096(core.List<api.GoogleExampleLibraryagentV1Book> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleExampleLibraryagentV1Book(
      o[0] as api.GoogleExampleLibraryagentV1Book);
  checkGoogleExampleLibraryagentV1Book(
      o[1] as api.GoogleExampleLibraryagentV1Book);
}

core.int buildCounterGoogleExampleLibraryagentV1ListBooksResponse = 0;
api.GoogleExampleLibraryagentV1ListBooksResponse
    buildGoogleExampleLibraryagentV1ListBooksResponse() {
  var o = api.GoogleExampleLibraryagentV1ListBooksResponse();
  buildCounterGoogleExampleLibraryagentV1ListBooksResponse++;
  if (buildCounterGoogleExampleLibraryagentV1ListBooksResponse < 3) {
    o.books = buildUnnamed4096();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleExampleLibraryagentV1ListBooksResponse--;
  return o;
}

void checkGoogleExampleLibraryagentV1ListBooksResponse(
    api.GoogleExampleLibraryagentV1ListBooksResponse o) {
  buildCounterGoogleExampleLibraryagentV1ListBooksResponse++;
  if (buildCounterGoogleExampleLibraryagentV1ListBooksResponse < 3) {
    checkUnnamed4096(o.books);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleExampleLibraryagentV1ListBooksResponse--;
}

core.List<api.GoogleExampleLibraryagentV1Shelf> buildUnnamed4097() {
  var o = <api.GoogleExampleLibraryagentV1Shelf>[];
  o.add(buildGoogleExampleLibraryagentV1Shelf());
  o.add(buildGoogleExampleLibraryagentV1Shelf());
  return o;
}

void checkUnnamed4097(core.List<api.GoogleExampleLibraryagentV1Shelf> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleExampleLibraryagentV1Shelf(
      o[0] as api.GoogleExampleLibraryagentV1Shelf);
  checkGoogleExampleLibraryagentV1Shelf(
      o[1] as api.GoogleExampleLibraryagentV1Shelf);
}

core.int buildCounterGoogleExampleLibraryagentV1ListShelvesResponse = 0;
api.GoogleExampleLibraryagentV1ListShelvesResponse
    buildGoogleExampleLibraryagentV1ListShelvesResponse() {
  var o = api.GoogleExampleLibraryagentV1ListShelvesResponse();
  buildCounterGoogleExampleLibraryagentV1ListShelvesResponse++;
  if (buildCounterGoogleExampleLibraryagentV1ListShelvesResponse < 3) {
    o.nextPageToken = 'foo';
    o.shelves = buildUnnamed4097();
  }
  buildCounterGoogleExampleLibraryagentV1ListShelvesResponse--;
  return o;
}

void checkGoogleExampleLibraryagentV1ListShelvesResponse(
    api.GoogleExampleLibraryagentV1ListShelvesResponse o) {
  buildCounterGoogleExampleLibraryagentV1ListShelvesResponse++;
  if (buildCounterGoogleExampleLibraryagentV1ListShelvesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4097(o.shelves);
  }
  buildCounterGoogleExampleLibraryagentV1ListShelvesResponse--;
}

core.int buildCounterGoogleExampleLibraryagentV1Shelf = 0;
api.GoogleExampleLibraryagentV1Shelf buildGoogleExampleLibraryagentV1Shelf() {
  var o = api.GoogleExampleLibraryagentV1Shelf();
  buildCounterGoogleExampleLibraryagentV1Shelf++;
  if (buildCounterGoogleExampleLibraryagentV1Shelf < 3) {
    o.name = 'foo';
    o.theme = 'foo';
  }
  buildCounterGoogleExampleLibraryagentV1Shelf--;
  return o;
}

void checkGoogleExampleLibraryagentV1Shelf(
    api.GoogleExampleLibraryagentV1Shelf o) {
  buildCounterGoogleExampleLibraryagentV1Shelf++;
  if (buildCounterGoogleExampleLibraryagentV1Shelf < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.theme, unittest.equals('foo'));
  }
  buildCounterGoogleExampleLibraryagentV1Shelf--;
}

void main() {
  unittest.group('obj-schema-GoogleExampleLibraryagentV1Book', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleExampleLibraryagentV1Book();
      var od = api.GoogleExampleLibraryagentV1Book.fromJson(o.toJson());
      checkGoogleExampleLibraryagentV1Book(
          od as api.GoogleExampleLibraryagentV1Book);
    });
  });

  unittest.group('obj-schema-GoogleExampleLibraryagentV1ListBooksResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleExampleLibraryagentV1ListBooksResponse();
      var od =
          api.GoogleExampleLibraryagentV1ListBooksResponse.fromJson(o.toJson());
      checkGoogleExampleLibraryagentV1ListBooksResponse(
          od as api.GoogleExampleLibraryagentV1ListBooksResponse);
    });
  });

  unittest.group('obj-schema-GoogleExampleLibraryagentV1ListShelvesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleExampleLibraryagentV1ListShelvesResponse();
      var od = api.GoogleExampleLibraryagentV1ListShelvesResponse.fromJson(
          o.toJson());
      checkGoogleExampleLibraryagentV1ListShelvesResponse(
          od as api.GoogleExampleLibraryagentV1ListShelvesResponse);
    });
  });

  unittest.group('obj-schema-GoogleExampleLibraryagentV1Shelf', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleExampleLibraryagentV1Shelf();
      var od = api.GoogleExampleLibraryagentV1Shelf.fromJson(o.toJson());
      checkGoogleExampleLibraryagentV1Shelf(
          od as api.GoogleExampleLibraryagentV1Shelf);
    });
  });

  unittest.group('resource-ShelvesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.LibraryagentApi(mock).shelves;
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
        var resp = convert.json.encode(buildGoogleExampleLibraryagentV1Shelf());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1Shelf(
            response as api.GoogleExampleLibraryagentV1Shelf);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.LibraryagentApi(mock).shelves;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/shelves"));
        pathOffset += 10;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleExampleLibraryagentV1ListShelvesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1ListShelvesResponse(
            response as api.GoogleExampleLibraryagentV1ListShelvesResponse);
      })));
    });
  });

  unittest.group('resource-ShelvesBooksResource', () {
    unittest.test('method--borrow', () {
      var mock = HttpServerMock();
      var res = api.LibraryagentApi(mock).shelves.books;
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
        var resp = convert.json.encode(buildGoogleExampleLibraryagentV1Book());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .borrow(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1Book(
            response as api.GoogleExampleLibraryagentV1Book);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.LibraryagentApi(mock).shelves.books;
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
        var resp = convert.json.encode(buildGoogleExampleLibraryagentV1Book());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1Book(
            response as api.GoogleExampleLibraryagentV1Book);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.LibraryagentApi(mock).shelves.books;
      var arg_parent = 'foo';
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleExampleLibraryagentV1ListBooksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1ListBooksResponse(
            response as api.GoogleExampleLibraryagentV1ListBooksResponse);
      })));
    });

    unittest.test('method--return_', () {
      var mock = HttpServerMock();
      var res = api.LibraryagentApi(mock).shelves.books;
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
        var resp = convert.json.encode(buildGoogleExampleLibraryagentV1Book());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .return_(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleExampleLibraryagentV1Book(
            response as api.GoogleExampleLibraryagentV1Book);
      })));
    });
  });
}
