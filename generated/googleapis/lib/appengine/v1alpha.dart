// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// App Engine Admin API - v1alpha
///
/// Provisions and manages developers' App Engine applications.
///
/// For more information, see
/// <https://cloud.google.com/appengine/docs/admin-api/>
///
/// Create an instance of [AppengineApi] to access these resources:
///
/// - [AppsResource]
///   - [AppsAuthorizedCertificatesResource]
///   - [AppsAuthorizedDomainsResource]
///   - [AppsDomainMappingsResource]
///   - [AppsLocationsResource]
///   - [AppsOperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsApplicationsResource]
///       - [ProjectsLocationsApplicationsAuthorizedCertificatesResource]
///       - [ProjectsLocationsApplicationsAuthorizedDomainsResource]
///       - [ProjectsLocationsApplicationsDomainMappingsResource]
///     - [ProjectsLocationsOperationsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provisions and manages developers' App Engine applications.
class AppengineApi {
  /// View and manage your applications deployed on Google App Engine
  static const appengineAdminScope =
      'https://www.googleapis.com/auth/appengine.admin';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  AppsResource get apps => AppsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  AppengineApi(
    http.Client client, {
    core.String rootUrl = 'https://appengine.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AppsResource {
  final commons.ApiRequester _requester;

  AppsAuthorizedCertificatesResource get authorizedCertificates =>
      AppsAuthorizedCertificatesResource(_requester);
  AppsAuthorizedDomainsResource get authorizedDomains =>
      AppsAuthorizedDomainsResource(_requester);
  AppsDomainMappingsResource get domainMappings =>
      AppsDomainMappingsResource(_requester);
  AppsLocationsResource get locations => AppsLocationsResource(_requester);
  AppsOperationsResource get operations => AppsOperationsResource(_requester);

  AppsResource(commons.ApiRequester client) : _requester = client;
}

class AppsAuthorizedCertificatesResource {
  final commons.ApiRequester _requester;

  AppsAuthorizedCertificatesResource(commons.ApiRequester client)
    : _requester = client;

  /// Uploads the specified SSL certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizedCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizedCertificate> create(
    AuthorizedCertificate request,
    core.String appsId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/authorizedCertificates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuthorizedCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified SSL certificate.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to delete. Example:
  /// apps/myapp/authorizedCertificates/12345.
  ///
  /// [authorizedCertificatesId] - Part of `name`. See documentation of
  /// `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String appsId,
    core.String authorizedCertificatesId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/authorizedCertificates/' +
        commons.escapeVariable('$authorizedCertificatesId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified SSL certificate.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/authorizedCertificates/12345.
  ///
  /// [authorizedCertificatesId] - Part of `name`. See documentation of
  /// `appsId`.
  ///
  /// [view] - Controls the set of fields returned in the GET response.
  /// Possible string values are:
  /// - "BASIC_CERTIFICATE" : Basic certificate information, including
  /// applicable domains and expiration date.
  /// - "FULL_CERTIFICATE" : The information from BASIC_CERTIFICATE, plus
  /// detailed information on the domain mappings that have this certificate
  /// mapped.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizedCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizedCertificate> get(
    core.String appsId,
    core.String authorizedCertificatesId, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/authorizedCertificates/' +
        commons.escapeVariable('$authorizedCertificatesId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AuthorizedCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all SSL certificates the user is authorized to administer.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [view] - Controls the set of fields returned in the LIST response.
  /// Possible string values are:
  /// - "BASIC_CERTIFICATE" : Basic certificate information, including
  /// applicable domains and expiration date.
  /// - "FULL_CERTIFICATE" : The information from BASIC_CERTIFICATE, plus
  /// detailed information on the domain mappings that have this certificate
  /// mapped.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizedCertificatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizedCertificatesResponse> list(
    core.String appsId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/authorizedCertificates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizedCertificatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified SSL certificate.
  ///
  /// To renew a certificate and maintain its existing domain mappings, update
  /// certificate_data with a new certificate. The new certificate must be
  /// applicable to the same domains as the original certificate. The
  /// certificate display_name may also be updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to update. Example:
  /// apps/myapp/authorizedCertificates/12345.
  ///
  /// [authorizedCertificatesId] - Part of `name`. See documentation of
  /// `appsId`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  /// Updates are only supported on the certificate_raw_data and display_name
  /// fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizedCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizedCertificate> patch(
    AuthorizedCertificate request,
    core.String appsId,
    core.String authorizedCertificatesId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/authorizedCertificates/' +
        commons.escapeVariable('$authorizedCertificatesId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AuthorizedCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AppsAuthorizedDomainsResource {
  final commons.ApiRequester _requester;

  AppsAuthorizedDomainsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists all domains the user is authorized to administer.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizedDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizedDomainsResponse> list(
    core.String appsId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/authorizedDomains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizedDomainsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AppsDomainMappingsResource {
  final commons.ApiRequester _requester;

  AppsDomainMappingsResource(commons.ApiRequester client) : _requester = client;

  /// Maps a domain to an application.
  ///
  /// A user must be authorized to administer a domain in order to map it to an
  /// application. For a list of available authorized domains, see
  /// AuthorizedDomains.ListAuthorizedDomains.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [noManagedCertificate] - Whether a managed certificate should be provided
  /// by App Engine. If true, a certificate ID must be manaually set in the
  /// DomainMapping resource to configure SSL for this domain. If false, a
  /// managed certificate will be provisioned and a certificate ID will be
  /// automatically populated.
  ///
  /// [overrideStrategy] - Whether the domain creation should override any
  /// existing mappings for this domain. By default, overrides are rejected.
  /// Possible string values are:
  /// - "UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY" : Strategy unspecified. Defaults
  /// to STRICT.
  /// - "STRICT" : Overrides not allowed. If a mapping already exists for the
  /// specified domain, the request will return an ALREADY_EXISTS (409).
  /// - "OVERRIDE" : Overrides allowed. If a mapping already exists for the
  /// specified domain, the request will overwrite it. Note that this might stop
  /// another Google product from serving. For example, if the domain is mapped
  /// to another App Engine application, that app will no longer serve from that
  /// domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    DomainMapping request,
    core.String appsId, {
    core.bool? noManagedCertificate,
    core.String? overrideStrategy,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (noManagedCertificate != null)
        'noManagedCertificate': ['${noManagedCertificate}'],
      if (overrideStrategy != null) 'overrideStrategy': [overrideStrategy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' + commons.escapeVariable('$appsId') + '/domainMappings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified domain mapping.
  ///
  /// A user must be authorized to administer the associated domain in order to
  /// delete a DomainMapping resource.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to delete. Example:
  /// apps/myapp/domainMappings/example.com.
  ///
  /// [domainMappingsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String appsId,
    core.String domainMappingsId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/domainMappings/' +
        commons.escapeVariable('$domainMappingsId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified domain mapping.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/domainMappings/example.com.
  ///
  /// [domainMappingsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainMapping> get(
    core.String appsId,
    core.String domainMappingsId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/domainMappings/' +
        commons.escapeVariable('$domainMappingsId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DomainMapping.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the domain mappings on an application.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainMappingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainMappingsResponse> list(
    core.String appsId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' + commons.escapeVariable('$appsId') + '/domainMappings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDomainMappingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified domain mapping.
  ///
  /// To map an SSL certificate to a domain mapping, update certificate_id to
  /// point to an AuthorizedCertificate resource. A user must be authorized to
  /// administer the associated domain in order to update a DomainMapping
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to update. Example:
  /// apps/myapp/domainMappings/example.com.
  ///
  /// [domainMappingsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [noManagedCertificate] - Whether a managed certificate should be provided
  /// by App Engine. If true, a certificate ID must be manually set in the
  /// DomainMapping resource to configure SSL for this domain. If false, a
  /// managed certificate will be provisioned and a certificate ID will be
  /// automatically populated. Only applicable if ssl_settings.certificate_id is
  /// specified in the update mask.
  ///
  /// [updateMask] - Required. Standard field mask for the set of fields to be
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    DomainMapping request,
    core.String appsId,
    core.String domainMappingsId, {
    core.bool? noManagedCertificate,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (noManagedCertificate != null)
        'noManagedCertificate': ['${noManagedCertificate}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/domainMappings/' +
        commons.escapeVariable('$domainMappingsId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AppsLocationsResource {
  final commons.ApiRequester _requester;

  AppsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Resource name for the location.
  ///
  /// [locationsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(
    core.String appsId,
    core.String locationsId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. The resource that owns the locations
  /// collection, if applicable.
  ///
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
  /// documented in more detail in AIP-160 (https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the next_page_token field in the
  /// response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String appsId, {
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' + commons.escapeVariable('$appsId') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AppsOperationsResource {
  final commons.ApiRequester _requester;

  AppsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. The name of the operation resource.
  ///
  /// [operationsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String appsId,
    core.String operationsId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' +
        commons.escapeVariable('$appsId') +
        '/operations/' +
        commons.escapeVariable('$operationsId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. The name of the operation's parent resource.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String appsId, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/apps/' + commons.escapeVariable('$appsId') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApplicationsResource get applications =>
      ProjectsLocationsApplicationsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `name`. Resource name for the location.
  ///
  /// [locationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(
    core.String projectsId,
    core.String locationsId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `name`. The resource that owns the locations
  /// collection, if applicable.
  ///
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
  /// documented in more detail in AIP-160 (https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the next_page_token field in the
  /// response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String projectsId, {
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApplicationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApplicationsAuthorizedCertificatesResource
  get authorizedCertificates =>
      ProjectsLocationsApplicationsAuthorizedCertificatesResource(_requester);
  ProjectsLocationsApplicationsAuthorizedDomainsResource
  get authorizedDomains =>
      ProjectsLocationsApplicationsAuthorizedDomainsResource(_requester);
  ProjectsLocationsApplicationsDomainMappingsResource get domainMappings =>
      ProjectsLocationsApplicationsDomainMappingsResource(_requester);

  ProjectsLocationsApplicationsResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsApplicationsAuthorizedCertificatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApplicationsAuthorizedCertificatesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Uploads the specified SSL certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [locationsId] - Part of `parent`. See documentation of `projectsId`.
  ///
  /// [applicationsId] - Part of `parent`. See documentation of `projectsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizedCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizedCertificate> create(
    AuthorizedCertificate request,
    core.String projectsId,
    core.String locationsId,
    core.String applicationsId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId') +
        '/applications/' +
        commons.escapeVariable('$applicationsId') +
        '/authorizedCertificates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuthorizedCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the specified SSL certificate.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `name`. Name of the resource to delete. Example:
  /// apps/myapp/authorizedCertificates/12345.
  ///
  /// [locationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [applicationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [authorizedCertificatesId] - Part of `name`. See documentation of
  /// `projectsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String projectsId,
    core.String locationsId,
    core.String applicationsId,
    core.String authorizedCertificatesId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId') +
        '/applications/' +
        commons.escapeVariable('$applicationsId') +
        '/authorizedCertificates/' +
        commons.escapeVariable('$authorizedCertificatesId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified SSL certificate.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/authorizedCertificates/12345.
  ///
  /// [locationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [applicationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [authorizedCertificatesId] - Part of `name`. See documentation of
  /// `projectsId`.
  ///
  /// [view] - Controls the set of fields returned in the GET response.
  /// Possible string values are:
  /// - "BASIC_CERTIFICATE" : Basic certificate information, including
  /// applicable domains and expiration date.
  /// - "FULL_CERTIFICATE" : The information from BASIC_CERTIFICATE, plus
  /// detailed information on the domain mappings that have this certificate
  /// mapped.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizedCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizedCertificate> get(
    core.String projectsId,
    core.String locationsId,
    core.String applicationsId,
    core.String authorizedCertificatesId, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId') +
        '/applications/' +
        commons.escapeVariable('$applicationsId') +
        '/authorizedCertificates/' +
        commons.escapeVariable('$authorizedCertificatesId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AuthorizedCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all SSL certificates the user is authorized to administer.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [locationsId] - Part of `parent`. See documentation of `projectsId`.
  ///
  /// [applicationsId] - Part of `parent`. See documentation of `projectsId`.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [view] - Controls the set of fields returned in the LIST response.
  /// Possible string values are:
  /// - "BASIC_CERTIFICATE" : Basic certificate information, including
  /// applicable domains and expiration date.
  /// - "FULL_CERTIFICATE" : The information from BASIC_CERTIFICATE, plus
  /// detailed information on the domain mappings that have this certificate
  /// mapped.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizedCertificatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizedCertificatesResponse> list(
    core.String projectsId,
    core.String locationsId,
    core.String applicationsId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId') +
        '/applications/' +
        commons.escapeVariable('$applicationsId') +
        '/authorizedCertificates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizedCertificatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified SSL certificate.
  ///
  /// To renew a certificate and maintain its existing domain mappings, update
  /// certificate_data with a new certificate. The new certificate must be
  /// applicable to the same domains as the original certificate. The
  /// certificate display_name may also be updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `name`. Name of the resource to update. Example:
  /// apps/myapp/authorizedCertificates/12345.
  ///
  /// [locationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [applicationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [authorizedCertificatesId] - Part of `name`. See documentation of
  /// `projectsId`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  /// Updates are only supported on the certificate_raw_data and display_name
  /// fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizedCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizedCertificate> patch(
    AuthorizedCertificate request,
    core.String projectsId,
    core.String locationsId,
    core.String applicationsId,
    core.String authorizedCertificatesId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId') +
        '/applications/' +
        commons.escapeVariable('$applicationsId') +
        '/authorizedCertificates/' +
        commons.escapeVariable('$authorizedCertificatesId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AuthorizedCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApplicationsAuthorizedDomainsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApplicationsAuthorizedDomainsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists all domains the user is authorized to administer.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [locationsId] - Part of `parent`. See documentation of `projectsId`.
  ///
  /// [applicationsId] - Part of `parent`. See documentation of `projectsId`.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizedDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizedDomainsResponse> list(
    core.String projectsId,
    core.String locationsId,
    core.String applicationsId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId') +
        '/applications/' +
        commons.escapeVariable('$applicationsId') +
        '/authorizedDomains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizedDomainsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApplicationsDomainMappingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApplicationsDomainMappingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Maps a domain to an application.
  ///
  /// A user must be authorized to administer a domain in order to map it to an
  /// application. For a list of available authorized domains, see
  /// AuthorizedDomains.ListAuthorizedDomains.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `parent`. Name of the parent Application resource.
  /// Example: apps/myapp.
  ///
  /// [locationsId] - Part of `parent`. See documentation of `projectsId`.
  ///
  /// [applicationsId] - Part of `parent`. See documentation of `projectsId`.
  ///
  /// [noManagedCertificate] - Whether a managed certificate should be provided
  /// by App Engine. If true, a certificate ID must be manaually set in the
  /// DomainMapping resource to configure SSL for this domain. If false, a
  /// managed certificate will be provisioned and a certificate ID will be
  /// automatically populated.
  ///
  /// [overrideStrategy] - Whether the domain creation should override any
  /// existing mappings for this domain. By default, overrides are rejected.
  /// Possible string values are:
  /// - "UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY" : Strategy unspecified. Defaults
  /// to STRICT.
  /// - "STRICT" : Overrides not allowed. If a mapping already exists for the
  /// specified domain, the request will return an ALREADY_EXISTS (409).
  /// - "OVERRIDE" : Overrides allowed. If a mapping already exists for the
  /// specified domain, the request will overwrite it. Note that this might stop
  /// another Google product from serving. For example, if the domain is mapped
  /// to another App Engine application, that app will no longer serve from that
  /// domain.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    DomainMapping request,
    core.String projectsId,
    core.String locationsId,
    core.String applicationsId, {
    core.bool? noManagedCertificate,
    core.String? overrideStrategy,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (noManagedCertificate != null)
        'noManagedCertificate': ['${noManagedCertificate}'],
      if (overrideStrategy != null) 'overrideStrategy': [overrideStrategy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId') +
        '/applications/' +
        commons.escapeVariable('$applicationsId') +
        '/domainMappings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified domain mapping.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/domainMappings/example.com.
  ///
  /// [locationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [applicationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [domainMappingsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainMapping> get(
    core.String projectsId,
    core.String locationsId,
    core.String applicationsId,
    core.String domainMappingsId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId') +
        '/applications/' +
        commons.escapeVariable('$applicationsId') +
        '/domainMappings/' +
        commons.escapeVariable('$domainMappingsId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DomainMapping.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `name`. The name of the operation resource.
  ///
  /// [locationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [operationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String projectsId,
    core.String locationsId,
    core.String operationsId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId') +
        '/operations/' +
        commons.escapeVariable('$operationsId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.
  ///
  /// Request parameters:
  ///
  /// [projectsId] - Part of `name`. The name of the operation's parent
  /// resource.
  ///
  /// [locationsId] - Part of `name`. See documentation of `projectsId`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String projectsId,
    core.String locationsId, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/projects/' +
        commons.escapeVariable('$projectsId') +
        '/locations/' +
        commons.escapeVariable('$locationsId') +
        '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// An SSL certificate that a user has been authorized to administer.
///
/// A user is authorized to administer any certificate that applies to one of
/// their authorized domains.
class AuthorizedCertificate {
  /// The SSL certificate serving the AuthorizedCertificate resource.
  ///
  /// This must be obtained independently from a certificate authority.
  CertificateRawData? certificateRawData;

  /// The user-specified display name of the certificate.
  ///
  /// This is not guaranteed to be unique. Example: My Certificate.
  core.String? displayName;

  /// Aggregate count of the domain mappings with this certificate mapped.
  ///
  /// This count includes domain mappings on applications for which the user
  /// does not have VIEWER permissions.Only returned by GET or LIST requests
  /// when specifically requested by the view=FULL_CERTIFICATE
  /// option.@OutputOnly
  core.int? domainMappingsCount;

  /// Topmost applicable domains of this certificate.
  ///
  /// This certificate applies to these domains and their subdomains. Example:
  /// example.com.@OutputOnly
  core.List<core.String>? domainNames;

  /// The time when this certificate expires.
  ///
  /// To update the renewal time on this certificate, upload an SSL certificate
  /// with a different expiration time using
  /// AuthorizedCertificates.UpdateAuthorizedCertificate.@OutputOnly
  core.String? expireTime;

  /// Relative name of the certificate.
  ///
  /// This is a unique value autogenerated on AuthorizedCertificate resource
  /// creation. Example: 12345.@OutputOnly
  core.String? id;

  /// Only applicable if this certificate is managed by App Engine.
  ///
  /// Managed certificates are tied to the lifecycle of a DomainMapping and
  /// cannot be updated or deleted via the AuthorizedCertificates API. If this
  /// certificate is manually administered by the user, this field will be
  /// empty.@OutputOnly
  ManagedCertificate? managedCertificate;

  /// Full path to the AuthorizedCertificate resource in the API.
  ///
  /// Example: apps/myapp/authorizedCertificates/12345.@OutputOnly
  core.String? name;

  /// The full paths to user visible Domain Mapping resources that have this
  /// certificate mapped.
  ///
  /// Example: apps/myapp/domainMappings/example.com.This may not represent the
  /// full list of mapped domain mappings if the user does not have VIEWER
  /// permissions on all of the applications that have this certificate mapped.
  /// See domain_mappings_count for a complete count.Only returned by GET or
  /// LIST requests when specifically requested by the view=FULL_CERTIFICATE
  /// option.@OutputOnly
  core.List<core.String>? visibleDomainMappings;

  AuthorizedCertificate({
    this.certificateRawData,
    this.displayName,
    this.domainMappingsCount,
    this.domainNames,
    this.expireTime,
    this.id,
    this.managedCertificate,
    this.name,
    this.visibleDomainMappings,
  });

  AuthorizedCertificate.fromJson(core.Map json_)
    : this(
        certificateRawData:
            json_.containsKey('certificateRawData')
                ? CertificateRawData.fromJson(
                  json_['certificateRawData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
        domainMappingsCount: json_['domainMappingsCount'] as core.int?,
        domainNames:
            (json_['domainNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        expireTime: json_['expireTime'] as core.String?,
        id: json_['id'] as core.String?,
        managedCertificate:
            json_.containsKey('managedCertificate')
                ? ManagedCertificate.fromJson(
                  json_['managedCertificate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        visibleDomainMappings:
            (json_['visibleDomainMappings'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificateRawData != null) 'certificateRawData': certificateRawData!,
    if (displayName != null) 'displayName': displayName!,
    if (domainMappingsCount != null)
      'domainMappingsCount': domainMappingsCount!,
    if (domainNames != null) 'domainNames': domainNames!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (id != null) 'id': id!,
    if (managedCertificate != null) 'managedCertificate': managedCertificate!,
    if (name != null) 'name': name!,
    if (visibleDomainMappings != null)
      'visibleDomainMappings': visibleDomainMappings!,
  };
}

/// A domain that a user has been authorized to administer.
///
/// To authorize use of a domain, verify ownership via Search Console
/// (https://search.google.com/search-console/welcome).
typedef AuthorizedDomain = $AuthorizedDomain;

/// An SSL certificate obtained from a certificate authority.
typedef CertificateRawData = $CertificateRawData;

/// A domain serving an App Engine application.
class DomainMapping {
  /// Relative name of the domain serving the application.
  ///
  /// Example: example.com.
  core.String? id;

  /// Full path to the DomainMapping resource in the API.
  ///
  /// Example: apps/myapp/domainMapping/example.com.@OutputOnly
  core.String? name;

  /// The resource records required to configure this domain mapping.
  ///
  /// These records must be added to the domain's DNS configuration in order to
  /// serve the application via this domain mapping.@OutputOnly
  core.List<ResourceRecord>? resourceRecords;

  /// SSL configuration for this domain.
  ///
  /// If unconfigured, this domain will not serve with SSL.
  SslSettings? sslSettings;

  DomainMapping({this.id, this.name, this.resourceRecords, this.sslSettings});

  DomainMapping.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        resourceRecords:
            (json_['resourceRecords'] as core.List?)
                ?.map(
                  (value) => ResourceRecord.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sslSettings:
            json_.containsKey('sslSettings')
                ? SslSettings.fromJson(
                  json_['sslSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (resourceRecords != null) 'resourceRecords': resourceRecords!,
    if (sslSettings != null) 'sslSettings': sslSettings!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Response message for AuthorizedCertificates.ListAuthorizedCertificates.
class ListAuthorizedCertificatesResponse {
  /// The SSL certificates the user is authorized to administer.
  core.List<AuthorizedCertificate>? certificates;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListAuthorizedCertificatesResponse({this.certificates, this.nextPageToken});

  ListAuthorizedCertificatesResponse.fromJson(core.Map json_)
    : this(
        certificates:
            (json_['certificates'] as core.List?)
                ?.map(
                  (value) => AuthorizedCertificate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificates != null) 'certificates': certificates!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for AuthorizedDomains.ListAuthorizedDomains.
class ListAuthorizedDomainsResponse {
  /// The authorized domains belonging to the user.
  core.List<AuthorizedDomain>? domains;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListAuthorizedDomainsResponse({this.domains, this.nextPageToken});

  ListAuthorizedDomainsResponse.fromJson(core.Map json_)
    : this(
        domains:
            (json_['domains'] as core.List?)
                ?.map(
                  (value) => AuthorizedDomain.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domains != null) 'domains': domains!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for DomainMappings.ListDomainMappings.
class ListDomainMappingsResponse {
  /// The domain mappings for the application.
  core.List<DomainMapping>? domainMappings;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListDomainMappingsResponse({this.domainMappings, this.nextPageToken});

  ListDomainMappingsResponse.fromJson(core.Map json_)
    : this(
        domainMappings:
            (json_['domainMappings'] as core.List?)
                ?.map(
                  (value) => DomainMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domainMappings != null) 'domainMappings': domainMappings!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location01;

/// A certificate managed by App Engine.
class ManagedCertificate {
  /// Time at which the certificate was last renewed.
  ///
  /// The renewal process is fully managed. Certificate renewal will
  /// automatically occur before the certificate expires. Renewal errors can be
  /// tracked via ManagementStatus.@OutputOnly
  core.String? lastRenewalTime;

  /// Status of certificate management.
  ///
  /// Refers to the most recent certificate acquisition or renewal
  /// attempt.@OutputOnly
  /// Possible string values are:
  /// - "UNSPECIFIED_STATUS"
  /// - "OK" : Certificate was successfully obtained and inserted into the
  /// serving system.
  /// - "PENDING" : Certificate is under active attempts to acquire or renew.
  /// - "FAILED_RETRYING_INTERNAL" : Most recent renewal failed due to a system
  /// failure and will be retried. System failure is likely transient, and
  /// subsequent renewal attempts may succeed. The last successfully provisioned
  /// certificate may still be serving.
  /// - "FAILED_RETRYING_NOT_VISIBLE" : Most recent renewal failed due to an
  /// invalid DNS setup and will be retried. Renewal attempts will continue to
  /// fail until the certificate domain's DNS configuration is fixed. The last
  /// successfully provisioned certificate may still be serving.
  /// - "FAILED_PERMANENTLY_NOT_VISIBLE" : All renewal attempts have been
  /// exhausted. Most recent renewal failed due to an invalid DNS setup and will
  /// not be retried. The last successfully provisioned certificate may still be
  /// serving.
  /// - "FAILED_RETRYING_CAA_FORBIDDEN" : Most recent renewal failed due to an
  /// explicit CAA record that does not include one of the in-use CAs (Google CA
  /// and Let's Encrypt). Renewals will continue to fail until the CAA is
  /// reconfigured. The last successfully provisioned certificate may still be
  /// serving.
  /// - "FAILED_RETRYING_CAA_CHECKING" : Most recent renewal failed due to a CAA
  /// retrieval failure. This means that the domain's DNS provider does not
  /// properly handle CAA records, failing requests for CAA records when no CAA
  /// records are defined. Renewals will continue to fail until the DNS provider
  /// is changed or a CAA record is added for the given domain. The last
  /// successfully provisioned certificate may still be serving.
  core.String? status;

  ManagedCertificate({this.lastRenewalTime, this.status});

  ManagedCertificate.fromJson(core.Map json_)
    : this(
        lastRenewalTime: json_['lastRenewalTime'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lastRenewalTime != null) 'lastRenewalTime': lastRenewalTime!,
    if (status != null) 'status': status!,
  };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is false, it means the operation is still in progress.
  ///
  /// If true, the operation is completed, and either error or response is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the name should be a resource name
  /// ending with operations/{unique_id}.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as Delete, the
  /// response is google.protobuf.Empty. If the original method is standard
  /// Get/Create/Update, the response should be the resource. For other methods,
  /// the response should have the type XxxResponse, where Xxx is the original
  /// method name. For example, if the original method name is TakeSnapshot(),
  /// the inferred response type is TakeSnapshotResponse.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
                ? json_['response'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (done != null) 'done': done!,
    if (error != null) 'error': error!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (response != null) 'response': response!,
  };
}

/// A DNS resource record.
typedef ResourceRecord = $ResourceRecord;

/// SSL configuration for a DomainMapping resource.
class SslSettings {
  /// ID of the AuthorizedCertificate resource configuring SSL for the
  /// application.
  ///
  /// Clearing this field will remove SSL support.By default, a managed
  /// certificate is automatically created for every domain mapping. To omit SSL
  /// support or to configure SSL manually, specify no_managed_certificate on a
  /// CREATE or UPDATE request. You must be authorized to administer the
  /// AuthorizedCertificate resource to manually map it to a DomainMapping
  /// resource. Example: 12345.
  core.String? certificateId;

  /// Whether the mapped certificate is an App Engine managed certificate.
  ///
  /// Managed certificates are created by default with a domain mapping. To opt
  /// out, specify no_managed_certificate on a CREATE or UPDATE
  /// request.@OutputOnly
  core.bool? isManagedCertificate;

  SslSettings({this.certificateId, this.isManagedCertificate});

  SslSettings.fromJson(core.Map json_)
    : this(
        certificateId: json_['certificateId'] as core.String?,
        isManagedCertificate: json_['isManagedCertificate'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificateId != null) 'certificateId': certificateId!,
    if (isManagedCertificate != null)
      'isManagedCertificate': isManagedCertificate!,
  };
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;
