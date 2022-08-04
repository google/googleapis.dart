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

/// Google Site Verification API - v1
///
/// Verifies ownership of websites or domains with Google.
///
/// For more information, see <https://developers.google.com/site-verification/>
///
/// Create an instance of [SiteVerificationApi] to access these resources:
///
/// - [WebResourceResource]
library siteVerification.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Verifies ownership of websites or domains with Google.
class SiteVerificationApi {
  /// Manage the list of sites and domains you control
  static const siteverificationScope =
      'https://www.googleapis.com/auth/siteverification';

  /// Manage your new site verifications with Google
  static const siteverificationVerifyOnlyScope =
      'https://www.googleapis.com/auth/siteverification.verify_only';

  final commons.ApiRequester _requester;

  WebResourceResource get webResource => WebResourceResource(_requester);

  SiteVerificationApi(http.Client client,
      {core.String rootUrl = 'https://www.googleapis.com/',
      core.String servicePath = 'siteVerification/v1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class WebResourceResource {
  final commons.ApiRequester _requester;

  WebResourceResource(commons.ApiRequester client) : _requester = client;

  /// Relinquish ownership of a website or domain.
  ///
  /// Request parameters:
  ///
  /// [id] - The id of a verified site or domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webResource/' + commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Get the most current data for a website or domain.
  ///
  /// Request parameters:
  ///
  /// [id] - The id of a verified site or domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceResource> get(
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webResource/' + commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SiteVerificationWebResourceResource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a verification token for placing on a website or domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceGettokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceGettokenResponse> getToken(
    SiteVerificationWebResourceGettokenRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'token';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SiteVerificationWebResourceGettokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Attempt verification of a website or domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [verificationMethod] - The method to use for verifying a site or domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceResource> insert(
    SiteVerificationWebResourceResource request,
    core.String verificationMethod, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'verificationMethod': [verificationMethod],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'webResource';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SiteVerificationWebResourceResource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the list of your verified websites and domains.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceListResponse> list({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'webResource';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SiteVerificationWebResourceListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modify the list of owners for your website or domain.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - The id of a verified site or domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceResource> patch(
    SiteVerificationWebResourceResource request,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webResource/' + commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SiteVerificationWebResourceResource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modify the list of owners for your website or domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - The id of a verified site or domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteVerificationWebResourceResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteVerificationWebResourceResource> update(
    SiteVerificationWebResourceResource request,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'webResource/' + commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return SiteVerificationWebResourceResource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The site for which a verification token will be generated.
class SiteVerificationWebResourceGettokenRequestSite {
  /// The site identifier.
  ///
  /// If the type is set to SITE, the identifier is a URL. If the type is set to
  /// INET_DOMAIN, the site identifier is a domain name.
  core.String? identifier;

  /// The type of resource to be verified.
  ///
  /// Can be SITE or INET_DOMAIN (domain name).
  core.String? type;

  SiteVerificationWebResourceGettokenRequestSite({
    this.identifier,
    this.type,
  });

  SiteVerificationWebResourceGettokenRequestSite.fromJson(core.Map json_)
      : this(
          identifier: json_.containsKey('identifier')
              ? json_['identifier'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identifier != null) 'identifier': identifier!,
        if (type != null) 'type': type!,
      };
}

class SiteVerificationWebResourceGettokenRequest {
  /// The site for which a verification token will be generated.
  SiteVerificationWebResourceGettokenRequestSite? site;

  /// The verification method that will be used to verify this site.
  ///
  /// For sites, 'FILE' or 'META' methods may be used. For domains, only 'DNS'
  /// may be used.
  core.String? verificationMethod;

  SiteVerificationWebResourceGettokenRequest({
    this.site,
    this.verificationMethod,
  });

  SiteVerificationWebResourceGettokenRequest.fromJson(core.Map json_)
      : this(
          site: json_.containsKey('site')
              ? SiteVerificationWebResourceGettokenRequestSite.fromJson(
                  json_['site'] as core.Map<core.String, core.dynamic>)
              : null,
          verificationMethod: json_.containsKey('verificationMethod')
              ? json_['verificationMethod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (site != null) 'site': site!,
        if (verificationMethod != null)
          'verificationMethod': verificationMethod!,
      };
}

class SiteVerificationWebResourceGettokenResponse {
  /// The verification method to use in conjunction with this token.
  ///
  /// For FILE, the token should be placed in the top-level directory of the
  /// site, stored inside a file of the same name. For META, the token should be
  /// placed in the HEAD tag of the default page that is loaded for the site.
  /// For DNS, the token should be placed in a TXT record of the domain.
  core.String? method;

  /// The verification token.
  ///
  /// The token must be placed appropriately in order for verification to
  /// succeed.
  core.String? token;

  SiteVerificationWebResourceGettokenResponse({
    this.method,
    this.token,
  });

  SiteVerificationWebResourceGettokenResponse.fromJson(core.Map json_)
      : this(
          method: json_.containsKey('method')
              ? json_['method'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (method != null) 'method': method!,
        if (token != null) 'token': token!,
      };
}

class SiteVerificationWebResourceListResponse {
  /// The list of sites that are owned by the authenticated user.
  core.List<SiteVerificationWebResourceResource>? items;

  SiteVerificationWebResourceListResponse({
    this.items,
  });

  SiteVerificationWebResourceListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => SiteVerificationWebResourceResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

/// The address and type of a site that is verified or will be verified.
class SiteVerificationWebResourceResourceSite {
  /// The site identifier.
  ///
  /// If the type is set to SITE, the identifier is a URL. If the type is set to
  /// INET_DOMAIN, the site identifier is a domain name.
  core.String? identifier;

  /// The site type.
  ///
  /// Can be SITE or INET_DOMAIN (domain name).
  core.String? type;

  SiteVerificationWebResourceResourceSite({
    this.identifier,
    this.type,
  });

  SiteVerificationWebResourceResourceSite.fromJson(core.Map json_)
      : this(
          identifier: json_.containsKey('identifier')
              ? json_['identifier'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identifier != null) 'identifier': identifier!,
        if (type != null) 'type': type!,
      };
}

class SiteVerificationWebResourceResource {
  /// The string used to identify this site.
  ///
  /// This value should be used in the "id" portion of the REST URL for the Get,
  /// Update, and Delete operations.
  core.String? id;

  /// The email addresses of all verified owners.
  core.List<core.String>? owners;

  /// The address and type of a site that is verified or will be verified.
  SiteVerificationWebResourceResourceSite? site;

  SiteVerificationWebResourceResource({
    this.id,
    this.owners,
    this.site,
  });

  SiteVerificationWebResourceResource.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          owners: json_.containsKey('owners')
              ? (json_['owners'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          site: json_.containsKey('site')
              ? SiteVerificationWebResourceResourceSite.fromJson(
                  json_['site'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (owners != null) 'owners': owners!,
        if (site != null) 'site': site!,
      };
}
