// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unused_import, unnecessary_cast

library googleapis.domainsrdap.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client domainsrdap/v1';

/// Read-only public API that lets users search for information about domain
/// names.
class DomainsrdapApi {
  final commons.ApiRequester _requester;

  AutnumResourceApi get autnum => new AutnumResourceApi(_requester);
  DomainResourceApi get domain => new DomainResourceApi(_requester);
  EntityResourceApi get entity => new EntityResourceApi(_requester);
  IpResourceApi get ip => new IpResourceApi(_requester);
  NameserverResourceApi get nameserver => new NameserverResourceApi(_requester);
  V1ResourceApi get v1 => new V1ResourceApi(_requester);

  DomainsrdapApi(http.Client client,
      {core.String rootUrl = "https://domainsrdap.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AutnumResourceApi {
  final commons.ApiRequester _requester;

  AutnumResourceApi(commons.ApiRequester client) : _requester = client;

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it. The response is a formatted 501 error.
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
  async.Future<RdapResponse> get(core.String autnumId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (autnumId == null) {
      throw new core.ArgumentError("Parameter autnumId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/autnum/' + commons.Escaper.ecapeVariable('$autnumId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RdapResponse.fromJson(data));
  }
}

class DomainResourceApi {
  final commons.ApiRequester _requester;

  DomainResourceApi(commons.ApiRequester client) : _requester = client;

  /// Look up RDAP information for a domain by name.
  ///
  /// Request parameters:
  ///
  /// [domainName] - Full domain name to look up. Example: "example.com"
  /// Value must have pattern "^[^/]+$".
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
  async.Future<HttpBody> get(core.String domainName, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (domainName == null) {
      throw new core.ArgumentError("Parameter domainName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/domain/' + commons.Escaper.ecapeVariableReserved('$domainName');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }
}

class EntityResourceApi {
  final commons.ApiRequester _requester;

  EntityResourceApi(commons.ApiRequester client) : _requester = client;

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it. The response is a formatted 501 error.
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
  async.Future<RdapResponse> get(core.String entityId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (entityId == null) {
      throw new core.ArgumentError("Parameter entityId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/entity/' + commons.Escaper.ecapeVariable('$entityId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RdapResponse.fromJson(data));
  }
}

class IpResourceApi {
  final commons.ApiRequester _requester;

  IpResourceApi(commons.ApiRequester client) : _requester = client;

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it. The response is a formatted 501 error.
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
  async.Future<RdapResponse> get(core.String ipId, core.String ipId1,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (ipId == null) {
      throw new core.ArgumentError("Parameter ipId is required.");
    }
    if (ipId1 == null) {
      throw new core.ArgumentError("Parameter ipId1 is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/ip/' +
        commons.Escaper.ecapeVariable('$ipId') +
        '/' +
        commons.Escaper.ecapeVariable('$ipId1');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RdapResponse.fromJson(data));
  }
}

class NameserverResourceApi {
  final commons.ApiRequester _requester;

  NameserverResourceApi(commons.ApiRequester client) : _requester = client;

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it. The response is a formatted 501 error.
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
  async.Future<RdapResponse> get(core.String nameserverId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (nameserverId == null) {
      throw new core.ArgumentError("Parameter nameserverId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/nameserver/' + commons.Escaper.ecapeVariable('$nameserverId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RdapResponse.fromJson(data));
  }
}

class V1ResourceApi {
  final commons.ApiRequester _requester;

  V1ResourceApi(commons.ApiRequester client) : _requester = client;

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it. The response is a formatted 501 error.
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
  async.Future<RdapResponse> getDomains({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/domains';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RdapResponse.fromJson(data));
  }

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it. The response is a formatted 501 error.
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
  async.Future<RdapResponse> getEntities({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/entities';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RdapResponse.fromJson(data));
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
  async.Future<HttpBody> getHelp({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/help';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it. The response is a formatted 501 error.
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
  async.Future<HttpBody> getIp({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/ip';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// The RDAP API recognizes this command from the RDAP specification but does
  /// not support it. The response is a formatted 501 error.
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
  async.Future<RdapResponse> getNameservers({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/nameservers';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RdapResponse.fromJson(data));
  }
}

/// Message that represents an arbitrary HTTP body. It should only be used for
/// payload formats that can't be represented as JSON, such as raw binary or an
/// HTML page. This message can be used both in streaming and non-streaming API
/// methods in the request as well as the response. It can be used as a
/// top-level request field, which is convenient if one wants to extract
/// parameters from either the URL or HTTP template into the request fields and
/// also want access to the raw HTTP body. Example: message GetResourceRequest {
/// // A unique request id. string request_id = 1; // The raw HTTP body is bound
/// to this field. google.api.HttpBody http_body = 2; } service ResourceService
/// { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
/// UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); }
/// Example with streaming methods: service CaldavService { rpc
/// GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
class HttpBody {
  /// The HTTP Content-Type header value specifying the content type of the
  /// body.
  core.String contentType;

  /// The HTTP request/response body as raw binary.
  core.String data;
  core.List<core.int> get dataAsBytes {
    return convert.base64.decode(data);
  }

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Application specific response metadata. Must be set in the first response
  /// for streaming APIs.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> extensions;

  HttpBody();

  HttpBody.fromJson(core.Map _json) {
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("extensions")) {
      extensions = (_json["extensions"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (extensions != null) {
      _json["extensions"] = extensions;
    }
    return _json;
  }
}

/// Links object defined in [section 4.2 of RFC
/// 7483](https://tools.ietf.org/html/rfc7483#section-4.2).
class Link {
  /// Target URL of a link. Example: "http://example.com/previous".
  core.String href;

  /// Language code of a link. Example: "en".
  core.String hreflang;

  /// Media type of the link destination. Example: "screen".
  core.String media;

  /// Relation type of a link. Example: "previous".
  core.String rel;

  /// Title of this link. Example: "title".
  core.String title;

  /// Content type of the link. Example: "application/json".
  core.String type;

  /// URL giving context for the link. Example: "http://example.com/current".
  core.String value;

  Link();

  Link.fromJson(core.Map _json) {
    if (_json.containsKey("href")) {
      href = _json["href"];
    }
    if (_json.containsKey("hreflang")) {
      hreflang = _json["hreflang"];
    }
    if (_json.containsKey("media")) {
      media = _json["media"];
    }
    if (_json.containsKey("rel")) {
      rel = _json["rel"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (href != null) {
      _json["href"] = href;
    }
    if (hreflang != null) {
      _json["hreflang"] = hreflang;
    }
    if (media != null) {
      _json["media"] = media;
    }
    if (rel != null) {
      _json["rel"] = rel;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Notices object defined in [section 4.3 of RFC
/// 7483](https://tools.ietf.org/html/rfc7483#section-4.3).
class Notice {
  /// Description of the notice.
  core.List<core.String> description;

  /// Link to a document containing more information.
  core.List<Link> links;

  /// Title of a notice. Example: "Terms of Service".
  core.String title;

  /// Type values defined in [section 10.2.1 of RFC
  /// 7483](https://tools.ietf.org/html/rfc7483#section-10.2.1) specific to a
  /// whole response: "result set truncated due to authorization", "result set
  /// truncated due to excessive load", "result set truncated due to
  /// unexplainable reasons".
  core.String type;

  Notice();

  Notice.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = (_json["description"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("links")) {
      links = (_json["links"] as core.List)
          .map<Link>((value) => new Link.fromJson(value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Response to a general RDAP query.
class RdapResponse {
  /// Error description.
  core.List<core.String> description;

  /// Error HTTP code. Example: "501".
  core.int errorCode;

  /// HTTP response with content type set to "application/json+rdap".
  HttpBody jsonResponse;

  /// Error language code. Error response info fields are defined in [section 6
  /// of RFC 7483](https://tools.ietf.org/html/rfc7483#section-6).
  core.String lang;

  /// Notices applying to this response.
  core.List<Notice> notices;

  /// RDAP conformance level.
  core.List<core.String> rdapConformance;

  /// Error title.
  core.String title;

  RdapResponse();

  RdapResponse.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = (_json["description"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("errorCode")) {
      errorCode = _json["errorCode"];
    }
    if (_json.containsKey("jsonResponse")) {
      jsonResponse = new HttpBody.fromJson(_json["jsonResponse"]);
    }
    if (_json.containsKey("lang")) {
      lang = _json["lang"];
    }
    if (_json.containsKey("notices")) {
      notices = (_json["notices"] as core.List)
          .map<Notice>((value) => new Notice.fromJson(value))
          .toList();
    }
    if (_json.containsKey("rdapConformance")) {
      rdapConformance =
          (_json["rdapConformance"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (errorCode != null) {
      _json["errorCode"] = errorCode;
    }
    if (jsonResponse != null) {
      _json["jsonResponse"] = (jsonResponse).toJson();
    }
    if (lang != null) {
      _json["lang"] = lang;
    }
    if (notices != null) {
      _json["notices"] = notices.map((value) => (value).toJson()).toList();
    }
    if (rdapConformance != null) {
      _json["rdapConformance"] = rdapConformance;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}
