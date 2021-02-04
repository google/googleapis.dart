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
import 'package:googleapis/domainsrdap/v1.dart' as api;

import '../test_shared.dart';

core.Map<core.String, core.Object> buildUnnamed1653() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed1653(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed1654() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed1653());
  o.add(buildUnnamed1653());
  return o;
}

void checkUnnamed1654(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1653(o[0]);
  checkUnnamed1653(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  var o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed1654();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    checkUnnamed1654(o.extensions);
  }
  buildCounterHttpBody--;
}

core.int buildCounterLink = 0;
api.Link buildLink() {
  var o = api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.href = 'foo';
    o.hreflang = 'foo';
    o.media = 'foo';
    o.rel = 'foo';
    o.title = 'foo';
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    unittest.expect(o.href, unittest.equals('foo'));
    unittest.expect(o.hreflang, unittest.equals('foo'));
    unittest.expect(o.media, unittest.equals('foo'));
    unittest.expect(o.rel, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterLink--;
}

core.List<core.String> buildUnnamed1655() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1655(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Link> buildUnnamed1656() {
  var o = <api.Link>[];
  o.add(buildLink());
  o.add(buildLink());
  return o;
}

void checkUnnamed1656(core.List<api.Link> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLink(o[0] as api.Link);
  checkLink(o[1] as api.Link);
}

core.int buildCounterNotice = 0;
api.Notice buildNotice() {
  var o = api.Notice();
  buildCounterNotice++;
  if (buildCounterNotice < 3) {
    o.description = buildUnnamed1655();
    o.links = buildUnnamed1656();
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterNotice--;
  return o;
}

void checkNotice(api.Notice o) {
  buildCounterNotice++;
  if (buildCounterNotice < 3) {
    checkUnnamed1655(o.description);
    checkUnnamed1656(o.links);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterNotice--;
}

core.List<core.String> buildUnnamed1657() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1657(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Notice> buildUnnamed1658() {
  var o = <api.Notice>[];
  o.add(buildNotice());
  o.add(buildNotice());
  return o;
}

void checkUnnamed1658(core.List<api.Notice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotice(o[0] as api.Notice);
  checkNotice(o[1] as api.Notice);
}

core.List<core.String> buildUnnamed1659() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1659(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRdapResponse = 0;
api.RdapResponse buildRdapResponse() {
  var o = api.RdapResponse();
  buildCounterRdapResponse++;
  if (buildCounterRdapResponse < 3) {
    o.description = buildUnnamed1657();
    o.errorCode = 42;
    o.jsonResponse = buildHttpBody();
    o.lang = 'foo';
    o.notices = buildUnnamed1658();
    o.rdapConformance = buildUnnamed1659();
    o.title = 'foo';
  }
  buildCounterRdapResponse--;
  return o;
}

void checkRdapResponse(api.RdapResponse o) {
  buildCounterRdapResponse++;
  if (buildCounterRdapResponse < 3) {
    checkUnnamed1657(o.description);
    unittest.expect(o.errorCode, unittest.equals(42));
    checkHttpBody(o.jsonResponse as api.HttpBody);
    unittest.expect(o.lang, unittest.equals('foo'));
    checkUnnamed1658(o.notices);
    checkUnnamed1659(o.rdapConformance);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterRdapResponse--;
}

void main() {
  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () {
      var o = buildHttpBody();
      var od = api.HttpBody.fromJson(o.toJson());
      checkHttpBody(od as api.HttpBody);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () {
      var o = buildLink();
      var od = api.Link.fromJson(o.toJson());
      checkLink(od as api.Link);
    });
  });

  unittest.group('obj-schema-Notice', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotice();
      var od = api.Notice.fromJson(o.toJson());
      checkNotice(od as api.Notice);
    });
  });

  unittest.group('obj-schema-RdapResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRdapResponse();
      var od = api.RdapResponse.fromJson(o.toJson());
      checkRdapResponse(od as api.RdapResponse);
    });
  });

  unittest.group('resource-AutnumResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DomainsRDAPApi(mock).autnum;
      var arg_autnumId = 'foo';
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
            unittest.equals("v1/autnum/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_autnumId'));

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
        var resp = convert.json.encode(buildRdapResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_autnumId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRdapResponse(response as api.RdapResponse);
      })));
    });
  });

  unittest.group('resource-DomainResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DomainsRDAPApi(mock).domain;
      var arg_domainName = 'foo';
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
            unittest.equals("v1/domain/"));
        pathOffset += 10;
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
        var resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_domainName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response as api.HttpBody);
      })));
    });
  });

  unittest.group('resource-EntityResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DomainsRDAPApi(mock).entity;
      var arg_entityId = 'foo';
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
            unittest.equals("v1/entity/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entityId'));

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
        var resp = convert.json.encode(buildRdapResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_entityId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRdapResponse(response as api.RdapResponse);
      })));
    });
  });

  unittest.group('resource-IpResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DomainsRDAPApi(mock).ip;
      var arg_ipId = 'foo';
      var arg_ipId1 = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("v1/ip/"));
        pathOffset += 6;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_ipId'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_ipId1'));

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
        var resp = convert.json.encode(buildRdapResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_ipId, arg_ipId1, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRdapResponse(response as api.RdapResponse);
      })));
    });
  });

  unittest.group('resource-NameserverResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DomainsRDAPApi(mock).nameserver;
      var arg_nameserverId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/nameserver/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_nameserverId'));

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
        var resp = convert.json.encode(buildRdapResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_nameserverId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRdapResponse(response as api.RdapResponse);
      })));
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--getDomains', () {
      var mock = HttpServerMock();
      var res = api.DomainsRDAPApi(mock).v1;
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
            unittest.equals("v1/domains"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRdapResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getDomains($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRdapResponse(response as api.RdapResponse);
      })));
    });

    unittest.test('method--getEntities', () {
      var mock = HttpServerMock();
      var res = api.DomainsRDAPApi(mock).v1;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/entities"));
        pathOffset += 11;

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
        var resp = convert.json.encode(buildRdapResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getEntities($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRdapResponse(response as api.RdapResponse);
      })));
    });

    unittest.test('method--getHelp', () {
      var mock = HttpServerMock();
      var res = api.DomainsRDAPApi(mock).v1;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1/help"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getHelp($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkHttpBody(response as api.HttpBody);
      })));
    });

    unittest.test('method--getIp', () {
      var mock = HttpServerMock();
      var res = api.DomainsRDAPApi(mock).v1;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("v1/ip"));
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
        var resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getIp($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkHttpBody(response as api.HttpBody);
      })));
    });

    unittest.test('method--getNameservers', () {
      var mock = HttpServerMock();
      var res = api.DomainsRDAPApi(mock).v1;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/nameservers"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildRdapResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getNameservers($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRdapResponse(response as api.RdapResponse);
      })));
    });
  });
}
