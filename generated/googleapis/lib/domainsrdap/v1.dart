// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Domains RDAP API - v1
///
/// Read-only public API that lets users search for information about domain
/// names.
///
/// For more information, see <https://developers.google.com/domains/rdap/>
///
/// Create an instance of [DomainsRDAPApi] to access these resources:
///
/// - [AutnumResource]
/// - [DomainResource]
/// - [EntityResource]
/// - [IpResource]
/// - [NameserverResource]
/// - [V1Resource]
library domainsrdap.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Read-only public API that lets users search for information about domain
/// names.
class DomainsRDAPApi {
  final commons.ApiRequester _requester;

  AutnumResource get autnum => AutnumResource(_requester);
  DomainResource get domain => DomainResource(_requester);
  EntityResource get entity => EntityResource(_requester);
  IpResource get ip => IpResource(_requester);
  NameserverResource get nameserver => NameserverResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  DomainsRDAPApi(http.Client client,
      {core.String rootUrl = 'https://domainsrdap.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AutnumResource {
  final commons.ApiRequester _requester;

  AutnumResource(commons.ApiRequester client) : _requester = client;

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it.
  ///
  /// The response is a formatted 501 error.
  ///
  /// Request parameters:
  ///
  /// [autnumId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RdapResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RdapResponse> get(
    core.String autnumId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/autnum/' + commons.escapeVariable('$autnumId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RdapResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DomainResource {
  final commons.ApiRequester _requester;

  DomainResource(commons.ApiRequester client) : _requester = client;

  /// Look up RDAP information for a domain by name.
  ///
  /// Request parameters:
  ///
  /// [domainName] - Full domain name to look up. Example: "example.com"
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> get(
    core.String domainName, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/domain/' + core.Uri.encodeFull('$domainName');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class EntityResource {
  final commons.ApiRequester _requester;

  EntityResource(commons.ApiRequester client) : _requester = client;

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it.
  ///
  /// The response is a formatted 501 error.
  ///
  /// Request parameters:
  ///
  /// [entityId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RdapResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RdapResponse> get(
    core.String entityId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/entity/' + commons.escapeVariable('$entityId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RdapResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class IpResource {
  final commons.ApiRequester _requester;

  IpResource(commons.ApiRequester client) : _requester = client;

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it.
  ///
  /// The response is a formatted 501 error.
  ///
  /// Request parameters:
  ///
  /// [ipId] - null
  ///
  /// [ipId1] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RdapResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RdapResponse> get(
    core.String ipId,
    core.String ipId1, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/ip/' +
        commons.escapeVariable('$ipId') +
        '/' +
        commons.escapeVariable('$ipId1');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RdapResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NameserverResource {
  final commons.ApiRequester _requester;

  NameserverResource(commons.ApiRequester client) : _requester = client;

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it.
  ///
  /// The response is a formatted 501 error.
  ///
  /// Request parameters:
  ///
  /// [nameserverId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RdapResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RdapResponse> get(
    core.String nameserverId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/nameserver/' + commons.escapeVariable('$nameserverId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RdapResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it.
  ///
  /// The response is a formatted 501 error.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RdapResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RdapResponse> getDomains({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/domains';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RdapResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it.
  ///
  /// The response is a formatted 501 error.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RdapResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RdapResponse> getEntities({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/entities';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RdapResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get help information for the RDAP API, including links to documentation.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> getHelp({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/help';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it.
  ///
  /// The response is a formatted 501 error.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> getIp({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/ip';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it.
  ///
  /// The response is a formatted 501 error.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RdapResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RdapResponse> getNameservers({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/nameservers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RdapResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef HttpBody = $HttpBody;

/// Links object defined in
/// [section 4.2 of RFC 7483](https://tools.ietf.org/html/rfc7483#section-4.2).
class Link {
  /// Target URL of a link.
  ///
  /// Example: "http://example.com/previous".
  core.String? href;

  /// Language code of a link.
  ///
  /// Example: "en".
  core.String? hreflang;

  /// Media type of the link destination.
  ///
  /// Example: "screen".
  core.String? media;

  /// Relation type of a link.
  ///
  /// Example: "previous".
  core.String? rel;

  /// Title of this link.
  ///
  /// Example: "title".
  core.String? title;

  /// Content type of the link.
  ///
  /// Example: "application/json".
  core.String? type;

  /// URL giving context for the link.
  ///
  /// Example: "http://example.com/current".
  core.String? value;

  Link({
    this.href,
    this.hreflang,
    this.media,
    this.rel,
    this.title,
    this.type,
    this.value,
  });

  Link.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          hreflang: _json.containsKey('hreflang')
              ? _json['hreflang'] as core.String
              : null,
          media:
              _json.containsKey('media') ? _json['media'] as core.String : null,
          rel: _json.containsKey('rel') ? _json['rel'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (hreflang != null) 'hreflang': hreflang!,
        if (media != null) 'media': media!,
        if (rel != null) 'rel': rel!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// Notices object defined in
/// [section 4.3 of RFC 7483](https://tools.ietf.org/html/rfc7483#section-4.3).
class Notice {
  /// Description of the notice.
  core.List<core.String>? description;

  /// Link to a document containing more information.
  core.List<Link>? links;

  /// Title of a notice.
  ///
  /// Example: "Terms of Service".
  core.String? title;

  /// Type values defined in
  /// [section 10.2.1 of RFC 7483](https://tools.ietf.org/html/rfc7483#section-10.2.1)
  /// specific to a whole response: "result set truncated due to authorization",
  /// "result set truncated due to excessive load", "result set truncated due to
  /// unexplainable reasons".
  core.String? type;

  Notice({
    this.description,
    this.links,
    this.title,
    this.type,
  });

  Notice.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? (_json['description'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          links: _json.containsKey('links')
              ? (_json['links'] as core.List)
                  .map((value) => Link.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (links != null) 'links': links!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
      };
}

/// Response to a general RDAP query.
class RdapResponse {
  /// Error description.
  core.List<core.String>? description;

  /// Error HTTP code.
  ///
  /// Example: "501".
  core.int? errorCode;

  /// HTTP response with content type set to "application/json+rdap".
  HttpBody? jsonResponse;

  /// Error language code.
  ///
  /// Error response info fields are defined in
  /// [section 6 of RFC 7483](https://tools.ietf.org/html/rfc7483#section-6).
  core.String? lang;

  /// Notices applying to this response.
  core.List<Notice>? notices;

  /// RDAP conformance level.
  core.List<core.String>? rdapConformance;

  /// Error title.
  core.String? title;

  RdapResponse({
    this.description,
    this.errorCode,
    this.jsonResponse,
    this.lang,
    this.notices,
    this.rdapConformance,
    this.title,
  });

  RdapResponse.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? (_json['description'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          errorCode: _json.containsKey('errorCode')
              ? _json['errorCode'] as core.int
              : null,
          jsonResponse: _json.containsKey('jsonResponse')
              ? HttpBody.fromJson(
                  _json['jsonResponse'] as core.Map<core.String, core.dynamic>)
              : null,
          lang: _json.containsKey('lang') ? _json['lang'] as core.String : null,
          notices: _json.containsKey('notices')
              ? (_json['notices'] as core.List)
                  .map((value) => Notice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rdapConformance: _json.containsKey('rdapConformance')
              ? (_json['rdapConformance'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (errorCode != null) 'errorCode': errorCode!,
        if (jsonResponse != null) 'jsonResponse': jsonResponse!,
        if (lang != null) 'lang': lang!,
        if (notices != null) 'notices': notices!,
        if (rdapConformance != null) 'rdapConformance': rdapConformance!,
        if (title != null) 'title': title!,
      };
}
