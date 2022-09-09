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

/// App Engine Admin API - v1
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
///   - [AppsFirewallResource]
///     - [AppsFirewallIngressRulesResource]
///   - [AppsLocationsResource]
///   - [AppsOperationsResource]
///   - [AppsServicesResource]
///     - [AppsServicesVersionsResource]
///       - [AppsServicesVersionsInstancesResource]
library appengine.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
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

  AppengineApi(http.Client client,
      {core.String rootUrl = 'https://appengine.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AppsResource {
  final commons.ApiRequester _requester;

  AppsAuthorizedCertificatesResource get authorizedCertificates =>
      AppsAuthorizedCertificatesResource(_requester);
  AppsAuthorizedDomainsResource get authorizedDomains =>
      AppsAuthorizedDomainsResource(_requester);
  AppsDomainMappingsResource get domainMappings =>
      AppsDomainMappingsResource(_requester);
  AppsFirewallResource get firewall => AppsFirewallResource(_requester);
  AppsLocationsResource get locations => AppsLocationsResource(_requester);
  AppsOperationsResource get operations => AppsOperationsResource(_requester);
  AppsServicesResource get services => AppsServicesResource(_requester);

  AppsResource(commons.ApiRequester client) : _requester = client;

  /// Creates an App Engine application for a Google Cloud Platform project.
  ///
  /// Required fields: id - The ID of the target Cloud Platform project.
  /// location - The region (https://cloud.google.com/appengine/docs/locations)
  /// where you want the App Engine application located.For more information
  /// about App Engine applications, see Managing Projects, Applications, and
  /// Billing
  /// (https://cloud.google.com/appengine/docs/standard/python/console/).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    Application request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/apps';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about an application.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Application resource to get.
  /// Example: apps/myapp.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Application].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Application> get(
    core.String appsId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' + commons.escapeVariable('$appsId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Application.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified Application resource.
  ///
  /// You can update the following fields: auth_domain - Google authentication
  /// domain for controlling user access to the application.
  /// default_cookie_expiration - Cookie expiration policy for the application.
  /// iap - Identity-Aware Proxy properties for the application.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Application resource to update.
  /// Example: apps/myapp.
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
    Application request,
    core.String appsId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' + commons.escapeVariable('$appsId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Recreates the required App Engine features for the specified App Engine
  /// application, for example a Cloud Storage bucket or App Engine service
  /// account.
  ///
  /// Use this method if you receive an error message about a missing feature,
  /// for example, Error retrieving the App Engine service account. If you have
  /// deleted your App Engine service account, this will not be able to recreate
  /// it. Instead, you should attempt to use the IAM undelete API if possible at
  /// https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts/undelete?apix_params=%7B"name"%3A"projects%2F-%2FserviceAccounts%2Funique_id"%2C"resource"%3A%7B%7D%7D
  /// . If the deletion was recent, the numeric ID can be found in the Cloud
  /// Console Activity Log.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the application to repair. Example:
  /// apps/myapp
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
  async.Future<Operation> repair(
    RepairApplicationRequest request,
    core.String appsId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' + commons.escapeVariable('$appsId') + ':repair';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
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

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/authorizedCertificates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuthorizedCertificate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/apps/' +
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

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/authorizedCertificates/' +
        commons.escapeVariable('$authorizedCertificatesId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AuthorizedCertificate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/authorizedCertificates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizedCertificatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/apps/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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
        'v1/apps/' + commons.escapeVariable('$appsId') + '/authorizedDomains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizedDomainsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? overrideStrategy,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (overrideStrategy != null) 'overrideStrategy': [overrideStrategy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/apps/' + commons.escapeVariable('$appsId') + '/domainMappings';

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

    final url_ = 'v1/apps/' +
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

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/domainMappings/' +
        commons.escapeVariable('$domainMappingsId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DomainMapping.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
        'v1/apps/' + commons.escapeVariable('$appsId') + '/domainMappings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDomainMappingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
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

class AppsFirewallResource {
  final commons.ApiRequester _requester;

  AppsFirewallIngressRulesResource get ingressRules =>
      AppsFirewallIngressRulesResource(_requester);

  AppsFirewallResource(commons.ApiRequester client) : _requester = client;
}

class AppsFirewallIngressRulesResource {
  final commons.ApiRequester _requester;

  AppsFirewallIngressRulesResource(commons.ApiRequester client)
      : _requester = client;

  /// Replaces the entire firewall ruleset in one bulk operation.
  ///
  /// This overrides and replaces the rules of an existing firewall with the new
  /// rules.If the final rule does not match traffic with the '*' wildcard IP
  /// range, then an "allow all" rule is explicitly added to the end of the
  /// list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Firewall collection to set.
  /// Example: apps/myapp/firewall/ingressRules.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateIngressRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateIngressRulesResponse> batchUpdate(
    BatchUpdateIngressRulesRequest request,
    core.String appsId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/firewall/ingressRules:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateIngressRulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a firewall rule for the application.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Firewall collection in
  /// which to create a new rule. Example: apps/myapp/firewall/ingressRules.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirewallRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirewallRule> create(
    FirewallRule request,
    core.String appsId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/firewall/ingressRules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FirewallRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified firewall rule.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Firewall resource to delete.
  /// Example: apps/myapp/firewall/ingressRules/100.
  ///
  /// [ingressRulesId] - Part of `name`. See documentation of `appsId`.
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
    core.String ingressRulesId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/firewall/ingressRules/' +
        commons.escapeVariable('$ingressRulesId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified firewall rule.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Firewall resource to retrieve.
  /// Example: apps/myapp/firewall/ingressRules/100.
  ///
  /// [ingressRulesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirewallRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirewallRule> get(
    core.String appsId,
    core.String ingressRulesId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/firewall/ingressRules/' +
        commons.escapeVariable('$ingressRulesId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FirewallRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the firewall rules of an application.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the Firewall collection to retrieve.
  /// Example: apps/myapp/firewall/ingressRules.
  ///
  /// [matchingAddress] - A valid IP Address. If set, only rules matching this
  /// address will be returned. The first returned rule will be the rule that
  /// fires on requests from this IP.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListIngressRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListIngressRulesResponse> list(
    core.String appsId, {
    core.String? matchingAddress,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (matchingAddress != null) 'matchingAddress': [matchingAddress],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/firewall/ingressRules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListIngressRulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified firewall rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the Firewall resource to update.
  /// Example: apps/myapp/firewall/ingressRules/100.
  ///
  /// [ingressRulesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirewallRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirewallRule> patch(
    FirewallRule request,
    core.String appsId,
    core.String ingressRulesId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/firewall/ingressRules/' +
        commons.escapeVariable('$ingressRulesId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return FirewallRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/apps/' +
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

    final url_ = 'v1/apps/' + commons.escapeVariable('$appsId') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/apps/' +
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
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE:
  /// the name binding allows API services to override the binding to use
  /// different resource name schemes, such as users / * /operations. To
  /// override the binding, API services can add a binding such as
  /// "/v1/{name=users / * }/operations" to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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

    final url_ = 'v1/apps/' + commons.escapeVariable('$appsId') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AppsServicesResource {
  final commons.ApiRequester _requester;

  AppsServicesVersionsResource get versions =>
      AppsServicesVersionsResource(_requester);

  AppsServicesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the specified service and all enclosed versions.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
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
    core.String servicesId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the current configuration of the specified service.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Service> get(
    core.String appsId,
    core.String servicesId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the services in the application.
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
  /// Completes with a [ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicesResponse> list(
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

    final url_ = 'v1/apps/' + commons.escapeVariable('$appsId') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the configuration of the specified service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to update. Example:
  /// apps/myapp/services/default.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [migrateTraffic] - Set to true to gradually shift traffic to one or more
  /// versions that you specify. By default, traffic is shifted immediately. For
  /// gradual traffic migration, the target versions must be located within
  /// instances that are configured for both warmup requests
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#InboundServiceType)
  /// and automatic scaling
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#AutomaticScaling).
  /// You must specify the shardBy
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services#ShardBy)
  /// field in the Service resource. Gradual traffic migration is not supported
  /// in the App Engine flexible environment. For examples, see Migrating and
  /// Splitting Traffic
  /// (https://cloud.google.com/appengine/docs/admin-api/migrating-splitting-traffic).
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
    Service request,
    core.String appsId,
    core.String servicesId, {
    core.bool? migrateTraffic,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (migrateTraffic != null) 'migrateTraffic': ['${migrateTraffic}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AppsServicesVersionsResource {
  final commons.ApiRequester _requester;

  AppsServicesVersionsInstancesResource get instances =>
      AppsServicesVersionsInstancesResource(_requester);

  AppsServicesVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deploys code and resource files to a new version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent resource to create this
  /// version under. Example: apps/myapp/services/default.
  ///
  /// [servicesId] - Part of `parent`. See documentation of `appsId`.
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
    Version request,
    core.String appsId,
    core.String servicesId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId') +
        '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing Version resource.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default/versions/v1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
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
    core.String servicesId,
    core.String versionsId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId') +
        '/versions/' +
        commons.escapeVariable('$versionsId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified Version resource.
  ///
  /// By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW
  /// parameter to get the full resource.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default/versions/v1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [view] - Controls the set of fields returned in the Get response.
  /// Possible string values are:
  /// - "BASIC" : Basic version information including scaling and inbound
  /// services, but not detailed deployment information.
  /// - "FULL" : The information from BASIC, plus detailed information about the
  /// deployment. This format is required when creating resources, but is not
  /// returned in Get or List by default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> get(
    core.String appsId,
    core.String servicesId,
    core.String versionsId, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId') +
        '/versions/' +
        commons.escapeVariable('$versionsId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Version.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the versions of a service.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Service resource. Example:
  /// apps/myapp/services/default.
  ///
  /// [servicesId] - Part of `parent`. See documentation of `appsId`.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [view] - Controls the set of fields returned in the List response.
  /// Possible string values are:
  /// - "BASIC" : Basic version information including scaling and inbound
  /// services, but not detailed deployment information.
  /// - "FULL" : The information from BASIC, plus detailed information about the
  /// deployment. This format is required when creating resources, but is not
  /// returned in Get or List by default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
    core.String appsId,
    core.String servicesId, {
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

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId') +
        '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified Version resource.
  ///
  /// You can specify the following fields depending on the App Engine
  /// environment and type of scaling that the version resource uses:Standard
  /// environment instance_class
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.instance_class)automatic
  /// scaling in the standard environment: automatic_scaling.min_idle_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling)
  /// automatic_scaling.max_idle_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling)
  /// automaticScaling.standard_scheduler_settings.max_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings)
  /// automaticScaling.standard_scheduler_settings.min_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings)
  /// automaticScaling.standard_scheduler_settings.target_cpu_utilization
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings)
  /// automaticScaling.standard_scheduler_settings.target_throughput_utilization
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings)basic
  /// scaling or manual scaling in the standard environment: serving_status
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.serving_status)
  /// manual_scaling.instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#manualscaling)Flexible
  /// environment serving_status
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.serving_status)automatic
  /// scaling in the flexible environment: automatic_scaling.min_total_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling)
  /// automatic_scaling.max_total_instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling)
  /// automatic_scaling.cool_down_period_sec
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling)
  /// automatic_scaling.cpu_utilization.target_utilization
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling)manual
  /// scaling in the flexible environment: manual_scaling.instances
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#manualscaling)
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource to update. Example:
  /// apps/myapp/services/default/versions/1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
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
    Version request,
    core.String appsId,
    core.String servicesId,
    core.String versionsId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId') +
        '/versions/' +
        commons.escapeVariable('$versionsId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AppsServicesVersionsInstancesResource {
  final commons.ApiRequester _requester;

  AppsServicesVersionsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Enables debugging on a VM instance.
  ///
  /// This allows you to use the SSH command to connect to the virtual machine
  /// where the instance lives. While in "debug mode", the instance continues to
  /// serve live traffic. You should delete the instance when you are done
  /// debugging and then allow the system to take over and determine if another
  /// instance should be started.Only applicable for instances in App Engine
  /// flexible environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default/versions/v1/instances/instance-1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [instancesId] - Part of `name`. See documentation of `appsId`.
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
  async.Future<Operation> debug(
    DebugInstanceRequest request,
    core.String appsId,
    core.String servicesId,
    core.String versionsId,
    core.String instancesId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId') +
        '/versions/' +
        commons.escapeVariable('$versionsId') +
        '/instances/' +
        commons.escapeVariable('$instancesId') +
        ':debug';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops a running instance.The instance might be automatically recreated
  /// based on the scaling settings of the version.
  ///
  /// For more information, see "How Instances are Managed" (standard
  /// environment
  /// (https://cloud.google.com/appengine/docs/standard/python/how-instances-are-managed)
  /// | flexible environment
  /// (https://cloud.google.com/appengine/docs/flexible/python/how-instances-are-managed)).To
  /// ensure that instances are not re-created and avoid getting billed, you can
  /// stop all instances within the target version by changing the serving
  /// status of the version to STOPPED with the apps.services.versions.patch
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions/patch)
  /// method.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default/versions/v1/instances/instance-1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [instancesId] - Part of `name`. See documentation of `appsId`.
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
    core.String servicesId,
    core.String versionsId,
    core.String instancesId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId') +
        '/versions/' +
        commons.escapeVariable('$versionsId') +
        '/instances/' +
        commons.escapeVariable('$instancesId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets instance information.
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `name`. Name of the resource requested. Example:
  /// apps/myapp/services/default/versions/v1/instances/instance-1.
  ///
  /// [servicesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [instancesId] - Part of `name`. See documentation of `appsId`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Instance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Instance> get(
    core.String appsId,
    core.String servicesId,
    core.String versionsId,
    core.String instancesId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId') +
        '/versions/' +
        commons.escapeVariable('$versionsId') +
        '/instances/' +
        commons.escapeVariable('$instancesId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the instances of a version.Tip: To aggregate details about instances
  /// over time, see the Stackdriver Monitoring API
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list).
  ///
  /// Request parameters:
  ///
  /// [appsId] - Part of `parent`. Name of the parent Version resource. Example:
  /// apps/myapp/services/default/versions/v1.
  ///
  /// [servicesId] - Part of `parent`. See documentation of `appsId`.
  ///
  /// [versionsId] - Part of `parent`. See documentation of `appsId`.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstancesResponse> list(
    core.String appsId,
    core.String servicesId,
    core.String versionsId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/apps/' +
        commons.escapeVariable('$appsId') +
        '/services/' +
        commons.escapeVariable('$servicesId') +
        '/versions/' +
        commons.escapeVariable('$versionsId') +
        '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration
/// for API handlers.
class ApiConfigHandler {
  /// Action to take when users access resources that require authentication.
  ///
  /// Defaults to redirect.
  /// Possible string values are:
  /// - "AUTH_FAIL_ACTION_UNSPECIFIED" : Not specified.
  /// AUTH_FAIL_ACTION_REDIRECT is assumed.
  /// - "AUTH_FAIL_ACTION_REDIRECT" : Redirects user to "accounts.google.com".
  /// The user is redirected back to the application URL after signing in or
  /// creating an account.
  /// - "AUTH_FAIL_ACTION_UNAUTHORIZED" : Rejects request with a 401 HTTP status
  /// code and an error message.
  core.String? authFailAction;

  /// Level of login required to access this resource.
  ///
  /// Defaults to optional.
  /// Possible string values are:
  /// - "LOGIN_UNSPECIFIED" : Not specified. LOGIN_OPTIONAL is assumed.
  /// - "LOGIN_OPTIONAL" : Does not require that the user is signed in.
  /// - "LOGIN_ADMIN" : If the user is not signed in, the auth_fail_action is
  /// taken. In addition, if the user is not an administrator for the
  /// application, they are given an error message regardless of
  /// auth_fail_action. If the user is an administrator, the handler proceeds.
  /// - "LOGIN_REQUIRED" : If the user has signed in, the handler proceeds
  /// normally. Otherwise, the auth_fail_action is taken.
  core.String? login;

  /// Path to the script from the application root directory.
  core.String? script;

  /// Security (HTTPS) enforcement for this URL.
  /// Possible string values are:
  /// - "SECURE_UNSPECIFIED" : Not specified.
  /// - "SECURE_DEFAULT" : Both HTTP and HTTPS requests with URLs that match the
  /// handler succeed without redirects. The application can examine the request
  /// to determine which protocol was used, and respond accordingly.
  /// - "SECURE_NEVER" : Requests for a URL that match this handler that use
  /// HTTPS are automatically redirected to the HTTP equivalent URL.
  /// - "SECURE_OPTIONAL" : Both HTTP and HTTPS requests with URLs that match
  /// the handler succeed without redirects. The application can examine the
  /// request to determine which protocol was used and respond accordingly.
  /// - "SECURE_ALWAYS" : Requests for a URL that match this handler that do not
  /// use HTTPS are automatically redirected to the HTTPS URL with the same
  /// path. Query parameters are reserved for the redirect.
  core.String? securityLevel;

  /// URL to serve the endpoint at.
  core.String? url;

  ApiConfigHandler({
    this.authFailAction,
    this.login,
    this.script,
    this.securityLevel,
    this.url,
  });

  ApiConfigHandler.fromJson(core.Map json_)
      : this(
          authFailAction: json_.containsKey('authFailAction')
              ? json_['authFailAction'] as core.String
              : null,
          login:
              json_.containsKey('login') ? json_['login'] as core.String : null,
          script: json_.containsKey('script')
              ? json_['script'] as core.String
              : null,
          securityLevel: json_.containsKey('securityLevel')
              ? json_['securityLevel'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authFailAction != null) 'authFailAction': authFailAction!,
        if (login != null) 'login': login!,
        if (script != null) 'script': script!,
        if (securityLevel != null) 'securityLevel': securityLevel!,
        if (url != null) 'url': url!,
      };
}

/// Uses Google Cloud Endpoints to handle requests.
typedef ApiEndpointHandler = $Handler;

/// An Application resource contains the top-level configuration of an App
/// Engine application.
class Application {
  /// Google Apps authentication domain that controls which users can access
  /// this application.Defaults to open access for any Google Account.
  core.String? authDomain;

  /// Google Cloud Storage bucket that can be used for storing files associated
  /// with this application.
  ///
  /// This bucket is associated with the application and can be used by the
  /// gcloud deployment commands.@OutputOnly
  core.String? codeBucket;

  /// The type of the Cloud Firestore or Cloud Datastore database associated
  /// with this application.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : Database type is unspecified.
  /// - "CLOUD_DATASTORE" : Cloud Datastore
  /// - "CLOUD_FIRESTORE" : Cloud Firestore Native
  /// - "CLOUD_DATASTORE_COMPATIBILITY" : Cloud Firestore in Datastore Mode
  core.String? databaseType;

  /// Google Cloud Storage bucket that can be used by this application to store
  /// content.@OutputOnly
  core.String? defaultBucket;

  /// Cookie expiration policy for this application.
  core.String? defaultCookieExpiration;

  /// Hostname used to reach this application, as resolved by App
  /// Engine.@OutputOnly
  core.String? defaultHostname;

  /// HTTP path dispatch rules for requests to the application that do not
  /// explicitly target a service or version.
  ///
  /// Rules are order-dependent. Up to 20 dispatch rules can be supported.
  core.List<UrlDispatchRule>? dispatchRules;

  /// The feature specific settings to be used in the application.
  FeatureSettings? featureSettings;

  /// The Google Container Registry domain used for storing managed build docker
  /// images for this application.
  core.String? gcrDomain;
  IdentityAwareProxy? iap;

  /// Identifier of the Application resource.
  ///
  /// This identifier is equivalent to the project ID of the Google Cloud
  /// Platform project where you want to deploy your application. Example:
  /// myapp.
  core.String? id;

  /// Location from which this application runs.
  ///
  /// Application instances run out of the data centers in the specified
  /// location, which is also where all of the application's end user content is
  /// stored.Defaults to us-central.View the list of supported locations
  /// (https://cloud.google.com/appengine/docs/locations).
  core.String? locationId;

  /// Full path to the Application resource in the API.
  ///
  /// Example: apps/myapp.@OutputOnly
  core.String? name;

  /// The service account associated with the application.
  ///
  /// This is the app-level default identity. If no identity provided during
  /// create version, Admin API will fallback to this one.
  core.String? serviceAccount;

  /// Serving status of this application.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Serving status is unspecified.
  /// - "SERVING" : Application is serving.
  /// - "USER_DISABLED" : Application has been disabled by the user.
  /// - "SYSTEM_DISABLED" : Application has been disabled by the system.
  core.String? servingStatus;

  Application({
    this.authDomain,
    this.codeBucket,
    this.databaseType,
    this.defaultBucket,
    this.defaultCookieExpiration,
    this.defaultHostname,
    this.dispatchRules,
    this.featureSettings,
    this.gcrDomain,
    this.iap,
    this.id,
    this.locationId,
    this.name,
    this.serviceAccount,
    this.servingStatus,
  });

  Application.fromJson(core.Map json_)
      : this(
          authDomain: json_.containsKey('authDomain')
              ? json_['authDomain'] as core.String
              : null,
          codeBucket: json_.containsKey('codeBucket')
              ? json_['codeBucket'] as core.String
              : null,
          databaseType: json_.containsKey('databaseType')
              ? json_['databaseType'] as core.String
              : null,
          defaultBucket: json_.containsKey('defaultBucket')
              ? json_['defaultBucket'] as core.String
              : null,
          defaultCookieExpiration: json_.containsKey('defaultCookieExpiration')
              ? json_['defaultCookieExpiration'] as core.String
              : null,
          defaultHostname: json_.containsKey('defaultHostname')
              ? json_['defaultHostname'] as core.String
              : null,
          dispatchRules: json_.containsKey('dispatchRules')
              ? (json_['dispatchRules'] as core.List)
                  .map((value) => UrlDispatchRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          featureSettings: json_.containsKey('featureSettings')
              ? FeatureSettings.fromJson(json_['featureSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gcrDomain: json_.containsKey('gcrDomain')
              ? json_['gcrDomain'] as core.String
              : null,
          iap: json_.containsKey('iap')
              ? IdentityAwareProxy.fromJson(
                  json_['iap'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          servingStatus: json_.containsKey('servingStatus')
              ? json_['servingStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authDomain != null) 'authDomain': authDomain!,
        if (codeBucket != null) 'codeBucket': codeBucket!,
        if (databaseType != null) 'databaseType': databaseType!,
        if (defaultBucket != null) 'defaultBucket': defaultBucket!,
        if (defaultCookieExpiration != null)
          'defaultCookieExpiration': defaultCookieExpiration!,
        if (defaultHostname != null) 'defaultHostname': defaultHostname!,
        if (dispatchRules != null) 'dispatchRules': dispatchRules!,
        if (featureSettings != null) 'featureSettings': featureSettings!,
        if (gcrDomain != null) 'gcrDomain': gcrDomain!,
        if (iap != null) 'iap': iap!,
        if (id != null) 'id': id!,
        if (locationId != null) 'locationId': locationId!,
        if (name != null) 'name': name!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (servingStatus != null) 'servingStatus': servingStatus!,
      };
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
          certificateRawData: json_.containsKey('certificateRawData')
              ? CertificateRawData.fromJson(json_['certificateRawData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          domainMappingsCount: json_.containsKey('domainMappingsCount')
              ? json_['domainMappingsCount'] as core.int
              : null,
          domainNames: json_.containsKey('domainNames')
              ? (json_['domainNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          managedCertificate: json_.containsKey('managedCertificate')
              ? ManagedCertificate.fromJson(json_['managedCertificate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          visibleDomainMappings: json_.containsKey('visibleDomainMappings')
              ? (json_['visibleDomainMappings'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateRawData != null)
          'certificateRawData': certificateRawData!,
        if (displayName != null) 'displayName': displayName!,
        if (domainMappingsCount != null)
          'domainMappingsCount': domainMappingsCount!,
        if (domainNames != null) 'domainNames': domainNames!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (id != null) 'id': id!,
        if (managedCertificate != null)
          'managedCertificate': managedCertificate!,
        if (name != null) 'name': name!,
        if (visibleDomainMappings != null)
          'visibleDomainMappings': visibleDomainMappings!,
      };
}

/// A domain that a user has been authorized to administer.
///
/// To authorize use of a domain, verify ownership via Webmaster Central
/// (https://www.google.com/webmasters/verification/home).
class AuthorizedDomain {
  /// Fully qualified domain name of the domain authorized for use.
  ///
  /// Example: example.com.
  core.String? id;

  /// Full path to the AuthorizedDomain resource in the API.
  ///
  /// Example: apps/myapp/authorizedDomains/example.com.@OutputOnly
  core.String? name;

  AuthorizedDomain({
    this.id,
    this.name,
  });

  AuthorizedDomain.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Automatic scaling is based on request rate, response latencies, and other
/// application metrics.
class AutomaticScaling {
  /// The time period that the Autoscaler
  /// (https://cloud.google.com/compute/docs/autoscaler/) should wait before it
  /// starts collecting information from a new instance.
  ///
  /// This prevents the autoscaler from collecting information when the instance
  /// is initializing, during which the collected usage would not be reliable.
  /// Only applicable in the App Engine flexible environment.
  core.String? coolDownPeriod;

  /// Target scaling by CPU usage.
  CpuUtilization? cpuUtilization;

  /// Target scaling by disk usage.
  DiskUtilization? diskUtilization;

  /// Number of concurrent requests an automatic scaling instance can accept
  /// before the scheduler spawns a new instance.Defaults to a runtime-specific
  /// value.
  core.int? maxConcurrentRequests;

  /// Maximum number of idle instances that should be maintained for this
  /// version.
  core.int? maxIdleInstances;

  /// Maximum amount of time that a request should wait in the pending queue
  /// before starting a new instance to handle it.
  core.String? maxPendingLatency;

  /// Maximum number of instances that should be started to handle requests for
  /// this version.
  core.int? maxTotalInstances;

  /// Minimum number of idle instances that should be maintained for this
  /// version.
  ///
  /// Only applicable for the default version of a service.
  core.int? minIdleInstances;

  /// Minimum amount of time a request should wait in the pending queue before
  /// starting a new instance to handle it.
  core.String? minPendingLatency;

  /// Minimum number of running instances that should be maintained for this
  /// version.
  core.int? minTotalInstances;

  /// Target scaling by network usage.
  NetworkUtilization? networkUtilization;

  /// Target scaling by request utilization.
  RequestUtilization? requestUtilization;

  /// Scheduler settings for standard environment.
  StandardSchedulerSettings? standardSchedulerSettings;

  AutomaticScaling({
    this.coolDownPeriod,
    this.cpuUtilization,
    this.diskUtilization,
    this.maxConcurrentRequests,
    this.maxIdleInstances,
    this.maxPendingLatency,
    this.maxTotalInstances,
    this.minIdleInstances,
    this.minPendingLatency,
    this.minTotalInstances,
    this.networkUtilization,
    this.requestUtilization,
    this.standardSchedulerSettings,
  });

  AutomaticScaling.fromJson(core.Map json_)
      : this(
          coolDownPeriod: json_.containsKey('coolDownPeriod')
              ? json_['coolDownPeriod'] as core.String
              : null,
          cpuUtilization: json_.containsKey('cpuUtilization')
              ? CpuUtilization.fromJson(json_['cpuUtilization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diskUtilization: json_.containsKey('diskUtilization')
              ? DiskUtilization.fromJson(json_['diskUtilization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maxConcurrentRequests: json_.containsKey('maxConcurrentRequests')
              ? json_['maxConcurrentRequests'] as core.int
              : null,
          maxIdleInstances: json_.containsKey('maxIdleInstances')
              ? json_['maxIdleInstances'] as core.int
              : null,
          maxPendingLatency: json_.containsKey('maxPendingLatency')
              ? json_['maxPendingLatency'] as core.String
              : null,
          maxTotalInstances: json_.containsKey('maxTotalInstances')
              ? json_['maxTotalInstances'] as core.int
              : null,
          minIdleInstances: json_.containsKey('minIdleInstances')
              ? json_['minIdleInstances'] as core.int
              : null,
          minPendingLatency: json_.containsKey('minPendingLatency')
              ? json_['minPendingLatency'] as core.String
              : null,
          minTotalInstances: json_.containsKey('minTotalInstances')
              ? json_['minTotalInstances'] as core.int
              : null,
          networkUtilization: json_.containsKey('networkUtilization')
              ? NetworkUtilization.fromJson(json_['networkUtilization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestUtilization: json_.containsKey('requestUtilization')
              ? RequestUtilization.fromJson(json_['requestUtilization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          standardSchedulerSettings:
              json_.containsKey('standardSchedulerSettings')
                  ? StandardSchedulerSettings.fromJson(
                      json_['standardSchedulerSettings']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coolDownPeriod != null) 'coolDownPeriod': coolDownPeriod!,
        if (cpuUtilization != null) 'cpuUtilization': cpuUtilization!,
        if (diskUtilization != null) 'diskUtilization': diskUtilization!,
        if (maxConcurrentRequests != null)
          'maxConcurrentRequests': maxConcurrentRequests!,
        if (maxIdleInstances != null) 'maxIdleInstances': maxIdleInstances!,
        if (maxPendingLatency != null) 'maxPendingLatency': maxPendingLatency!,
        if (maxTotalInstances != null) 'maxTotalInstances': maxTotalInstances!,
        if (minIdleInstances != null) 'minIdleInstances': minIdleInstances!,
        if (minPendingLatency != null) 'minPendingLatency': minPendingLatency!,
        if (minTotalInstances != null) 'minTotalInstances': minTotalInstances!,
        if (networkUtilization != null)
          'networkUtilization': networkUtilization!,
        if (requestUtilization != null)
          'requestUtilization': requestUtilization!,
        if (standardSchedulerSettings != null)
          'standardSchedulerSettings': standardSchedulerSettings!,
      };
}

/// A service with basic scaling will create an instance when the application
/// receives a request.
///
/// The instance will be turned down when the app becomes idle. Basic scaling is
/// ideal for work that is intermittent or driven by user activity.
class BasicScaling {
  /// Duration of time after the last request that an instance must wait before
  /// the instance is shut down.
  core.String? idleTimeout;

  /// Maximum number of instances to create for this version.
  core.int? maxInstances;

  BasicScaling({
    this.idleTimeout,
    this.maxInstances,
  });

  BasicScaling.fromJson(core.Map json_)
      : this(
          idleTimeout: json_.containsKey('idleTimeout')
              ? json_['idleTimeout'] as core.String
              : null,
          maxInstances: json_.containsKey('maxInstances')
              ? json_['maxInstances'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idleTimeout != null) 'idleTimeout': idleTimeout!,
        if (maxInstances != null) 'maxInstances': maxInstances!,
      };
}

/// Request message for Firewall.BatchUpdateIngressRules.
class BatchUpdateIngressRulesRequest {
  /// A list of FirewallRules to replace the existing set.
  core.List<FirewallRule>? ingressRules;

  BatchUpdateIngressRulesRequest({
    this.ingressRules,
  });

  BatchUpdateIngressRulesRequest.fromJson(core.Map json_)
      : this(
          ingressRules: json_.containsKey('ingressRules')
              ? (json_['ingressRules'] as core.List)
                  .map((value) => FirewallRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ingressRules != null) 'ingressRules': ingressRules!,
      };
}

/// Response message for Firewall.UpdateAllIngressRules.
class BatchUpdateIngressRulesResponse {
  /// The full list of ingress FirewallRules for this application.
  core.List<FirewallRule>? ingressRules;

  BatchUpdateIngressRulesResponse({
    this.ingressRules,
  });

  BatchUpdateIngressRulesResponse.fromJson(core.Map json_)
      : this(
          ingressRules: json_.containsKey('ingressRules')
              ? (json_['ingressRules'] as core.List)
                  .map((value) => FirewallRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ingressRules != null) 'ingressRules': ingressRules!,
      };
}

/// An SSL certificate obtained from a certificate authority.
class CertificateRawData {
  /// Unencrypted PEM encoded RSA private key.
  ///
  /// This field is set once on certificate creation and then encrypted. The key
  /// size must be 2048 bits or fewer. Must include the header and footer.
  /// Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY-----
  /// @InputOnly
  core.String? privateKey;

  /// PEM encoded x.509 public key certificate.
  ///
  /// This field is set once on certificate creation. Must include the header
  /// and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
  core.String? publicCertificate;

  CertificateRawData({
    this.privateKey,
    this.publicCertificate,
  });

  CertificateRawData.fromJson(core.Map json_)
      : this(
          privateKey: json_.containsKey('privateKey')
              ? json_['privateKey'] as core.String
              : null,
          publicCertificate: json_.containsKey('publicCertificate')
              ? json_['publicCertificate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privateKey != null) 'privateKey': privateKey!,
        if (publicCertificate != null) 'publicCertificate': publicCertificate!,
      };
}

/// Options for the build operations performed as a part of the version
/// deployment.
///
/// Only applicable for App Engine flexible environment when creating a version
/// using source code directly.
class CloudBuildOptions {
  /// Path to the yaml file used in deployment, used to determine runtime
  /// configuration details.Required for flexible environment builds.See
  /// https://cloud.google.com/appengine/docs/standard/python/config/appref for
  /// more details.
  core.String? appYamlPath;

  /// The Cloud Build timeout used as part of any dependent builds performed by
  /// version creation.
  ///
  /// Defaults to 10 minutes.
  core.String? cloudBuildTimeout;

  CloudBuildOptions({
    this.appYamlPath,
    this.cloudBuildTimeout,
  });

  CloudBuildOptions.fromJson(core.Map json_)
      : this(
          appYamlPath: json_.containsKey('appYamlPath')
              ? json_['appYamlPath'] as core.String
              : null,
          cloudBuildTimeout: json_.containsKey('cloudBuildTimeout')
              ? json_['cloudBuildTimeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appYamlPath != null) 'appYamlPath': appYamlPath!,
        if (cloudBuildTimeout != null) 'cloudBuildTimeout': cloudBuildTimeout!,
      };
}

/// Docker image that is used to create a container and start a VM instance for
/// the version that you deploy.
///
/// Only applicable for instances running in the App Engine flexible
/// environment.
class ContainerInfo {
  /// URI to the hosted container image in Google Container Registry.
  ///
  /// The URI must be fully qualified and include a tag or digest. Examples:
  /// "gcr.io/my-project/image:tag" or "gcr.io/my-project/image@digest"
  core.String? image;

  ContainerInfo({
    this.image,
  });

  ContainerInfo.fromJson(core.Map json_)
      : this(
          image:
              json_.containsKey('image') ? json_['image'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (image != null) 'image': image!,
      };
}

/// Target scaling by CPU usage.
class CpuUtilization {
  /// Period of time over which CPU utilization is calculated.
  core.String? aggregationWindowLength;

  /// Target CPU utilization ratio to maintain when scaling.
  ///
  /// Must be between 0 and 1.
  core.double? targetUtilization;

  CpuUtilization({
    this.aggregationWindowLength,
    this.targetUtilization,
  });

  CpuUtilization.fromJson(core.Map json_)
      : this(
          aggregationWindowLength: json_.containsKey('aggregationWindowLength')
              ? json_['aggregationWindowLength'] as core.String
              : null,
          targetUtilization: json_.containsKey('targetUtilization')
              ? (json_['targetUtilization'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregationWindowLength != null)
          'aggregationWindowLength': aggregationWindowLength!,
        if (targetUtilization != null) 'targetUtilization': targetUtilization!,
      };
}

/// Request message for Instances.DebugInstance.
class DebugInstanceRequest {
  /// Public SSH key to add to the instance.
  ///
  /// Examples: \[USERNAME\]:ssh-rsa \[KEY_VALUE\] \[USERNAME\]
  /// \[USERNAME\]:ssh-rsa \[KEY_VALUE\] google-ssh
  /// {"userName":"\[USERNAME\]","expireOn":"\[EXPIRE_TIME\]"}For more
  /// information, see Adding and Removing SSH Keys
  /// (https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys).
  core.String? sshKey;

  DebugInstanceRequest({
    this.sshKey,
  });

  DebugInstanceRequest.fromJson(core.Map json_)
      : this(
          sshKey: json_.containsKey('sshKey')
              ? json_['sshKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sshKey != null) 'sshKey': sshKey!,
      };
}

/// Code and application artifacts used to deploy a version to App Engine.
class Deployment {
  /// Options for any Google Cloud Build builds created as a part of this
  /// deployment.These options will only be used if a new build is created, such
  /// as when deploying to the App Engine flexible environment using files or
  /// zip.
  CloudBuildOptions? cloudBuildOptions;

  /// The Docker image for the container that runs the version.
  ///
  /// Only applicable for instances running in the App Engine flexible
  /// environment.
  ContainerInfo? container;

  /// Manifest of the files stored in Google Cloud Storage that are included as
  /// part of this version.
  ///
  /// All files must be readable using the credentials supplied with this call.
  core.Map<core.String, FileInfo>? files;

  /// The zip file for this deployment, if this is a zip deployment.
  ZipInfo? zip;

  Deployment({
    this.cloudBuildOptions,
    this.container,
    this.files,
    this.zip,
  });

  Deployment.fromJson(core.Map json_)
      : this(
          cloudBuildOptions: json_.containsKey('cloudBuildOptions')
              ? CloudBuildOptions.fromJson(json_['cloudBuildOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          container: json_.containsKey('container')
              ? ContainerInfo.fromJson(
                  json_['container'] as core.Map<core.String, core.dynamic>)
              : null,
          files: json_.containsKey('files')
              ? (json_['files'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    FileInfo.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          zip: json_.containsKey('zip')
              ? ZipInfo.fromJson(
                  json_['zip'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudBuildOptions != null) 'cloudBuildOptions': cloudBuildOptions!,
        if (container != null) 'container': container!,
        if (files != null) 'files': files!,
        if (zip != null) 'zip': zip!,
      };
}

/// Target scaling by disk usage.
///
/// Only applicable in the App Engine flexible environment.
class DiskUtilization {
  /// Target bytes read per second.
  core.int? targetReadBytesPerSecond;

  /// Target ops read per seconds.
  core.int? targetReadOpsPerSecond;

  /// Target bytes written per second.
  core.int? targetWriteBytesPerSecond;

  /// Target ops written per second.
  core.int? targetWriteOpsPerSecond;

  DiskUtilization({
    this.targetReadBytesPerSecond,
    this.targetReadOpsPerSecond,
    this.targetWriteBytesPerSecond,
    this.targetWriteOpsPerSecond,
  });

  DiskUtilization.fromJson(core.Map json_)
      : this(
          targetReadBytesPerSecond:
              json_.containsKey('targetReadBytesPerSecond')
                  ? json_['targetReadBytesPerSecond'] as core.int
                  : null,
          targetReadOpsPerSecond: json_.containsKey('targetReadOpsPerSecond')
              ? json_['targetReadOpsPerSecond'] as core.int
              : null,
          targetWriteBytesPerSecond:
              json_.containsKey('targetWriteBytesPerSecond')
                  ? json_['targetWriteBytesPerSecond'] as core.int
                  : null,
          targetWriteOpsPerSecond: json_.containsKey('targetWriteOpsPerSecond')
              ? json_['targetWriteOpsPerSecond'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetReadBytesPerSecond != null)
          'targetReadBytesPerSecond': targetReadBytesPerSecond!,
        if (targetReadOpsPerSecond != null)
          'targetReadOpsPerSecond': targetReadOpsPerSecond!,
        if (targetWriteBytesPerSecond != null)
          'targetWriteBytesPerSecond': targetWriteBytesPerSecond!,
        if (targetWriteOpsPerSecond != null)
          'targetWriteOpsPerSecond': targetWriteOpsPerSecond!,
      };
}

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

  DomainMapping({
    this.id,
    this.name,
    this.resourceRecords,
    this.sslSettings,
  });

  DomainMapping.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resourceRecords: json_.containsKey('resourceRecords')
              ? (json_['resourceRecords'] as core.List)
                  .map((value) => ResourceRecord.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sslSettings: json_.containsKey('sslSettings')
              ? SslSettings.fromJson(
                  json_['sslSettings'] as core.Map<core.String, core.dynamic>)
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

/// Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration.
///
/// The Endpoints API Service provides tooling for serving Open API and gRPC
/// endpoints via an NGINX proxy. Only valid for App Engine Flexible environment
/// deployments.The fields here refer to the name and configuration ID of a
/// "service" resource in the Service Management API
/// (https://cloud.google.com/service-management/overview).
class EndpointsApiService {
  /// Endpoints service configuration ID as specified by the Service Management
  /// API.
  ///
  /// For example "2016-09-19r1".By default, the rollout strategy for Endpoints
  /// is RolloutStrategy.FIXED. This means that Endpoints starts up with a
  /// particular configuration ID. When a new configuration is rolled out,
  /// Endpoints must be given the new configuration ID. The config_id field is
  /// used to give the configuration ID and is required in this case.Endpoints
  /// also has a rollout strategy called RolloutStrategy.MANAGED. When using
  /// this, Endpoints fetches the latest configuration and does not need the
  /// configuration ID. In this case, config_id must be omitted.
  core.String? configId;

  /// Enable or disable trace sampling.
  ///
  /// By default, this is set to false for enabled.
  core.bool? disableTraceSampling;

  /// Endpoints service name which is the name of the "service" resource in the
  /// Service Management API.
  ///
  /// For example "myapi.endpoints.myproject.cloud.goog"
  core.String? name;

  /// Endpoints rollout strategy.
  ///
  /// If FIXED, config_id must be specified. If MANAGED, config_id must be
  /// omitted.
  /// Possible string values are:
  /// - "UNSPECIFIED_ROLLOUT_STRATEGY" : Not specified. Defaults to FIXED.
  /// - "FIXED" : Endpoints service configuration ID will be fixed to the
  /// configuration ID specified by config_id.
  /// - "MANAGED" : Endpoints service configuration ID will be updated with each
  /// rollout.
  core.String? rolloutStrategy;

  EndpointsApiService({
    this.configId,
    this.disableTraceSampling,
    this.name,
    this.rolloutStrategy,
  });

  EndpointsApiService.fromJson(core.Map json_)
      : this(
          configId: json_.containsKey('configId')
              ? json_['configId'] as core.String
              : null,
          disableTraceSampling: json_.containsKey('disableTraceSampling')
              ? json_['disableTraceSampling'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rolloutStrategy: json_.containsKey('rolloutStrategy')
              ? json_['rolloutStrategy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configId != null) 'configId': configId!,
        if (disableTraceSampling != null)
          'disableTraceSampling': disableTraceSampling!,
        if (name != null) 'name': name!,
        if (rolloutStrategy != null) 'rolloutStrategy': rolloutStrategy!,
      };
}

/// The entrypoint for the application.
class Entrypoint {
  /// The format should be a shell command that can be fed to bash -c.
  core.String? shell;

  Entrypoint({
    this.shell,
  });

  Entrypoint.fromJson(core.Map json_)
      : this(
          shell:
              json_.containsKey('shell') ? json_['shell'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shell != null) 'shell': shell!,
      };
}

/// Custom static error page to be served when an error occurs.
class ErrorHandler {
  /// Error condition this handler applies to.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : Not specified. ERROR_CODE_DEFAULT is assumed.
  /// - "ERROR_CODE_DEFAULT" : All other error types.
  /// - "ERROR_CODE_OVER_QUOTA" : Application has exceeded a resource quota.
  /// - "ERROR_CODE_DOS_API_DENIAL" : Client blocked by the application's Denial
  /// of Service protection configuration.
  /// - "ERROR_CODE_TIMEOUT" : Deadline reached before the application responds.
  core.String? errorCode;

  /// MIME type of file.
  ///
  /// Defaults to text/html.
  core.String? mimeType;

  /// Static file content to be served for this error.
  core.String? staticFile;

  ErrorHandler({
    this.errorCode,
    this.mimeType,
    this.staticFile,
  });

  ErrorHandler.fromJson(core.Map json_)
      : this(
          errorCode: json_.containsKey('errorCode')
              ? json_['errorCode'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          staticFile: json_.containsKey('staticFile')
              ? json_['staticFile'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorCode != null) 'errorCode': errorCode!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (staticFile != null) 'staticFile': staticFile!,
      };
}

/// The feature specific settings to be used in the application.
///
/// These define behaviors that are user configurable.
class FeatureSettings {
  /// Boolean value indicating if split health checks should be used instead of
  /// the legacy health checks.
  ///
  /// At an app.yaml level, this means defaulting to 'readiness_check' and
  /// 'liveness_check' values instead of 'health_check' ones. Once the legacy
  /// 'health_check' behavior is deprecated, and this value is always true, this
  /// setting can be removed.
  core.bool? splitHealthChecks;

  /// If true, use Container-Optimized OS
  /// (https://cloud.google.com/container-optimized-os/) base image for VMs,
  /// rather than a base Debian image.
  core.bool? useContainerOptimizedOs;

  FeatureSettings({
    this.splitHealthChecks,
    this.useContainerOptimizedOs,
  });

  FeatureSettings.fromJson(core.Map json_)
      : this(
          splitHealthChecks: json_.containsKey('splitHealthChecks')
              ? json_['splitHealthChecks'] as core.bool
              : null,
          useContainerOptimizedOs: json_.containsKey('useContainerOptimizedOs')
              ? json_['useContainerOptimizedOs'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (splitHealthChecks != null) 'splitHealthChecks': splitHealthChecks!,
        if (useContainerOptimizedOs != null)
          'useContainerOptimizedOs': useContainerOptimizedOs!,
      };
}

/// Single source file that is part of the version to be deployed.
///
/// Each source file that is deployed must be specified separately.
class FileInfo {
  /// The MIME type of the file.Defaults to the value from Google Cloud Storage.
  core.String? mimeType;

  /// The SHA1 hash of the file, in hex.
  core.String? sha1Sum;

  /// URL source to use to fetch this file.
  ///
  /// Must be a URL to a resource in Google Cloud Storage in the form
  /// 'http(s)://storage.googleapis.com//'.
  core.String? sourceUrl;

  FileInfo({
    this.mimeType,
    this.sha1Sum,
    this.sourceUrl,
  });

  FileInfo.fromJson(core.Map json_)
      : this(
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          sha1Sum: json_.containsKey('sha1Sum')
              ? json_['sha1Sum'] as core.String
              : null,
          sourceUrl: json_.containsKey('sourceUrl')
              ? json_['sourceUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mimeType != null) 'mimeType': mimeType!,
        if (sha1Sum != null) 'sha1Sum': sha1Sum!,
        if (sourceUrl != null) 'sourceUrl': sourceUrl!,
      };
}

/// A single firewall rule that is evaluated against incoming traffic and
/// provides an action to take on matched requests.
class FirewallRule {
  /// The action to take on matched requests.
  /// Possible string values are:
  /// - "UNSPECIFIED_ACTION"
  /// - "ALLOW" : Matching requests are allowed.
  /// - "DENY" : Matching requests are denied.
  core.String? action;

  /// An optional string description of this rule.
  ///
  /// This field has a maximum length of 400 characters.
  core.String? description;

  /// A positive integer between 1, Int32.MaxValue-1 that defines the order of
  /// rule evaluation.
  ///
  /// Rules with the lowest priority are evaluated first.A default rule at
  /// priority Int32.MaxValue matches all IPv4 and IPv6 traffic when no previous
  /// rule matches. Only the action of this rule can be modified by the user.
  core.int? priority;

  /// IP address or range, defined using CIDR notation, of requests that this
  /// rule applies to.
  ///
  /// You can use the wildcard character "*" to match all IPs equivalent to
  /// "0/0" and "::/0" together. Examples: 192.168.1.1 or 192.168.0.0/16 or
  /// 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. Truncation will
  /// be silently performed on addresses which are not properly truncated. For
  /// example, 1.2.3.4/24 is accepted as the same address as 1.2.3.0/24.
  /// Similarly, for IPv6, 2001:db8::1/32 is accepted as the same address as
  /// 2001:db8::/32.
  core.String? sourceRange;

  FirewallRule({
    this.action,
    this.description,
    this.priority,
    this.sourceRange,
  });

  FirewallRule.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.int
              : null,
          sourceRange: json_.containsKey('sourceRange')
              ? json_['sourceRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (description != null) 'description': description!,
        if (priority != null) 'priority': priority!,
        if (sourceRange != null) 'sourceRange': sourceRange!,
      };
}

/// Health checking configuration for VM instances.
///
/// Unhealthy instances are killed and replaced with new instances. Only
/// applicable for instances in App Engine flexible environment.
class HealthCheck {
  /// Interval between health checks.
  core.String? checkInterval;

  /// Whether to explicitly disable health checks for this instance.
  core.bool? disableHealthCheck;

  /// Number of consecutive successful health checks required before receiving
  /// traffic.
  core.int? healthyThreshold;

  /// Host header to send when performing an HTTP health check.
  ///
  /// Example: "myapp.appspot.com"
  core.String? host;

  /// Number of consecutive failed health checks required before an instance is
  /// restarted.
  core.int? restartThreshold;

  /// Time before the health check is considered failed.
  core.String? timeout;

  /// Number of consecutive failed health checks required before removing
  /// traffic.
  core.int? unhealthyThreshold;

  HealthCheck({
    this.checkInterval,
    this.disableHealthCheck,
    this.healthyThreshold,
    this.host,
    this.restartThreshold,
    this.timeout,
    this.unhealthyThreshold,
  });

  HealthCheck.fromJson(core.Map json_)
      : this(
          checkInterval: json_.containsKey('checkInterval')
              ? json_['checkInterval'] as core.String
              : null,
          disableHealthCheck: json_.containsKey('disableHealthCheck')
              ? json_['disableHealthCheck'] as core.bool
              : null,
          healthyThreshold: json_.containsKey('healthyThreshold')
              ? json_['healthyThreshold'] as core.int
              : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          restartThreshold: json_.containsKey('restartThreshold')
              ? json_['restartThreshold'] as core.int
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
          unhealthyThreshold: json_.containsKey('unhealthyThreshold')
              ? json_['unhealthyThreshold'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checkInterval != null) 'checkInterval': checkInterval!,
        if (disableHealthCheck != null)
          'disableHealthCheck': disableHealthCheck!,
        if (healthyThreshold != null) 'healthyThreshold': healthyThreshold!,
        if (host != null) 'host': host!,
        if (restartThreshold != null) 'restartThreshold': restartThreshold!,
        if (timeout != null) 'timeout': timeout!,
        if (unhealthyThreshold != null)
          'unhealthyThreshold': unhealthyThreshold!,
      };
}

/// Identity-Aware Proxy
class IdentityAwareProxy {
  /// Whether the serving infrastructure will authenticate and authorize all
  /// incoming requests.If true, the oauth2_client_id and oauth2_client_secret
  /// fields must be non-empty.
  core.bool? enabled;

  /// OAuth2 client ID to use for the authentication flow.
  core.String? oauth2ClientId;

  /// OAuth2 client secret to use for the authentication flow.For security
  /// reasons, this value cannot be retrieved via the API.
  ///
  /// Instead, the SHA-256 hash of the value is returned in the
  /// oauth2_client_secret_sha256 field.@InputOnly
  core.String? oauth2ClientSecret;

  /// Hex-encoded SHA-256 hash of the client secret.@OutputOnly
  core.String? oauth2ClientSecretSha256;

  IdentityAwareProxy({
    this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientSecret,
    this.oauth2ClientSecretSha256,
  });

  IdentityAwareProxy.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          oauth2ClientId: json_.containsKey('oauth2ClientId')
              ? json_['oauth2ClientId'] as core.String
              : null,
          oauth2ClientSecret: json_.containsKey('oauth2ClientSecret')
              ? json_['oauth2ClientSecret'] as core.String
              : null,
          oauth2ClientSecretSha256:
              json_.containsKey('oauth2ClientSecretSha256')
                  ? json_['oauth2ClientSecretSha256'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (oauth2ClientId != null) 'oauth2ClientId': oauth2ClientId!,
        if (oauth2ClientSecret != null)
          'oauth2ClientSecret': oauth2ClientSecret!,
        if (oauth2ClientSecretSha256 != null)
          'oauth2ClientSecretSha256': oauth2ClientSecretSha256!,
      };
}

/// An Instance resource is the computing unit that App Engine uses to
/// automatically scale an application.
class Instance {
  /// App Engine release this instance is running on.
  ///
  /// Output only.
  core.String? appEngineRelease;

  /// Availability of the instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "RESIDENT"
  /// - "DYNAMIC"
  core.String? availability;

  /// Average latency (ms) over the last minute.
  ///
  /// Output only.
  core.int? averageLatency;

  /// Number of errors since this instance was started.
  ///
  /// Output only.
  core.int? errors;

  /// Relative name of the instance within the version.
  ///
  /// Example: instance-1.
  ///
  /// Output only.
  core.String? id;

  /// Total memory in use (bytes).
  ///
  /// Output only.
  core.String? memoryUsage;

  /// Full path to the Instance resource in the API.
  ///
  /// Example: apps/myapp/services/default/versions/v1/instances/instance-1.
  ///
  /// Output only.
  core.String? name;

  /// Average queries per second (QPS) over the last minute.
  ///
  /// Output only.
  core.double? qps;

  /// Number of requests since this instance was started.
  ///
  /// Output only.
  core.int? requests;

  /// Time that this instance was started.@OutputOnly
  ///
  /// Output only.
  core.String? startTime;

  /// Whether this instance is in debug mode.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.bool? vmDebugEnabled;

  /// Virtual machine ID of this instance.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.String? vmId;

  /// The IP address of this instance.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.String? vmIp;

  /// The liveness health check of this instance.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LIVENESS_STATE_UNSPECIFIED" : There is no liveness health check for the
  /// instance. Only applicable for instances in App Engine standard
  /// environment.
  /// - "UNKNOWN" : The health checking system is aware of the instance but its
  /// health is not known at the moment.
  /// - "HEALTHY" : The instance is reachable i.e. a connection to the
  /// application health checking endpoint can be established, and conforms to
  /// the requirements defined by the health check.
  /// - "UNHEALTHY" : The instance is reachable, but does not conform to the
  /// requirements defined by the health check.
  /// - "DRAINING" : The instance is being drained. The existing connections to
  /// the instance have time to complete, but the new ones are being refused.
  /// - "TIMEOUT" : The instance is unreachable i.e. a connection to the
  /// application health checking endpoint cannot be established, or the server
  /// does not respond within the specified timeout.
  core.String? vmLiveness;

  /// Name of the virtual machine where this instance lives.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.String? vmName;

  /// Status of the virtual machine where this instance lives.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.String? vmStatus;

  /// Zone where the virtual machine is located.
  ///
  /// Only applicable for instances in App Engine flexible environment.
  ///
  /// Output only.
  core.String? vmZoneName;

  Instance({
    this.appEngineRelease,
    this.availability,
    this.averageLatency,
    this.errors,
    this.id,
    this.memoryUsage,
    this.name,
    this.qps,
    this.requests,
    this.startTime,
    this.vmDebugEnabled,
    this.vmId,
    this.vmIp,
    this.vmLiveness,
    this.vmName,
    this.vmStatus,
    this.vmZoneName,
  });

  Instance.fromJson(core.Map json_)
      : this(
          appEngineRelease: json_.containsKey('appEngineRelease')
              ? json_['appEngineRelease'] as core.String
              : null,
          availability: json_.containsKey('availability')
              ? json_['availability'] as core.String
              : null,
          averageLatency: json_.containsKey('averageLatency')
              ? json_['averageLatency'] as core.int
              : null,
          errors:
              json_.containsKey('errors') ? json_['errors'] as core.int : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          memoryUsage: json_.containsKey('memoryUsage')
              ? json_['memoryUsage'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          qps: json_.containsKey('qps')
              ? (json_['qps'] as core.num).toDouble()
              : null,
          requests: json_.containsKey('requests')
              ? json_['requests'] as core.int
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          vmDebugEnabled: json_.containsKey('vmDebugEnabled')
              ? json_['vmDebugEnabled'] as core.bool
              : null,
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
          vmIp: json_.containsKey('vmIp') ? json_['vmIp'] as core.String : null,
          vmLiveness: json_.containsKey('vmLiveness')
              ? json_['vmLiveness'] as core.String
              : null,
          vmName: json_.containsKey('vmName')
              ? json_['vmName'] as core.String
              : null,
          vmStatus: json_.containsKey('vmStatus')
              ? json_['vmStatus'] as core.String
              : null,
          vmZoneName: json_.containsKey('vmZoneName')
              ? json_['vmZoneName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appEngineRelease != null) 'appEngineRelease': appEngineRelease!,
        if (availability != null) 'availability': availability!,
        if (averageLatency != null) 'averageLatency': averageLatency!,
        if (errors != null) 'errors': errors!,
        if (id != null) 'id': id!,
        if (memoryUsage != null) 'memoryUsage': memoryUsage!,
        if (name != null) 'name': name!,
        if (qps != null) 'qps': qps!,
        if (requests != null) 'requests': requests!,
        if (startTime != null) 'startTime': startTime!,
        if (vmDebugEnabled != null) 'vmDebugEnabled': vmDebugEnabled!,
        if (vmId != null) 'vmId': vmId!,
        if (vmIp != null) 'vmIp': vmIp!,
        if (vmLiveness != null) 'vmLiveness': vmLiveness!,
        if (vmName != null) 'vmName': vmName!,
        if (vmStatus != null) 'vmStatus': vmStatus!,
        if (vmZoneName != null) 'vmZoneName': vmZoneName!,
      };
}

/// Third-party Python runtime library that is required by the application.
class Library {
  /// Name of the library.
  ///
  /// Example: "django".
  core.String? name;

  /// Version of the library to select, or "latest".
  core.String? version;

  Library({
    this.name,
    this.version,
  });

  Library.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
}

/// Response message for AuthorizedCertificates.ListAuthorizedCertificates.
class ListAuthorizedCertificatesResponse {
  /// The SSL certificates the user is authorized to administer.
  core.List<AuthorizedCertificate>? certificates;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListAuthorizedCertificatesResponse({
    this.certificates,
    this.nextPageToken,
  });

  ListAuthorizedCertificatesResponse.fromJson(core.Map json_)
      : this(
          certificates: json_.containsKey('certificates')
              ? (json_['certificates'] as core.List)
                  .map((value) => AuthorizedCertificate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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

  ListAuthorizedDomainsResponse({
    this.domains,
    this.nextPageToken,
  });

  ListAuthorizedDomainsResponse.fromJson(core.Map json_)
      : this(
          domains: json_.containsKey('domains')
              ? (json_['domains'] as core.List)
                  .map((value) => AuthorizedDomain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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

  ListDomainMappingsResponse({
    this.domainMappings,
    this.nextPageToken,
  });

  ListDomainMappingsResponse.fromJson(core.Map json_)
      : this(
          domainMappings: json_.containsKey('domainMappings')
              ? (json_['domainMappings'] as core.List)
                  .map((value) => DomainMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainMappings != null) 'domainMappings': domainMappings!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for Firewall.ListIngressRules.
class ListIngressRulesResponse {
  /// The ingress FirewallRules for this application.
  core.List<FirewallRule>? ingressRules;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListIngressRulesResponse({
    this.ingressRules,
    this.nextPageToken,
  });

  ListIngressRulesResponse.fromJson(core.Map json_)
      : this(
          ingressRules: json_.containsKey('ingressRules')
              ? (json_['ingressRules'] as core.List)
                  .map((value) => FirewallRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ingressRules != null) 'ingressRules': ingressRules!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for Instances.ListInstances.
class ListInstancesResponse {
  /// The instances belonging to the requested version.
  core.List<Instance>? instances;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListInstancesResponse({
    this.instances,
    this.nextPageToken,
  });

  ListInstancesResponse.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => Instance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Response message for Services.ListServices.
class ListServicesResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// The services belonging to the requested application.
  core.List<Service>? services;

  ListServicesResponse({
    this.nextPageToken,
    this.services,
  });

  ListServicesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          services: json_.containsKey('services')
              ? (json_['services'] as core.List)
                  .map((value) => Service.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (services != null) 'services': services!,
      };
}

/// Response message for Versions.ListVersions.
class ListVersionsResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// The versions belonging to the requested service.
  core.List<Version>? versions;

  ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  ListVersionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          versions: json_.containsKey('versions')
              ? (json_['versions'] as core.List)
                  .map((value) => Version.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (versions != null) 'versions': versions!,
      };
}

/// Health checking configuration for VM instances.
///
/// Unhealthy instances are killed and replaced with new instances.
class LivenessCheck {
  /// Interval between health checks.
  core.String? checkInterval;

  /// Number of consecutive failed checks required before considering the VM
  /// unhealthy.
  core.int? failureThreshold;

  /// Host header to send when performing a HTTP Liveness check.
  ///
  /// Example: "myapp.appspot.com"
  core.String? host;

  /// The initial delay before starting to execute the checks.
  core.String? initialDelay;

  /// The request path.
  core.String? path;

  /// Number of consecutive successful checks required before considering the VM
  /// healthy.
  core.int? successThreshold;

  /// Time before the check is considered failed.
  core.String? timeout;

  LivenessCheck({
    this.checkInterval,
    this.failureThreshold,
    this.host,
    this.initialDelay,
    this.path,
    this.successThreshold,
    this.timeout,
  });

  LivenessCheck.fromJson(core.Map json_)
      : this(
          checkInterval: json_.containsKey('checkInterval')
              ? json_['checkInterval'] as core.String
              : null,
          failureThreshold: json_.containsKey('failureThreshold')
              ? json_['failureThreshold'] as core.int
              : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          initialDelay: json_.containsKey('initialDelay')
              ? json_['initialDelay'] as core.String
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          successThreshold: json_.containsKey('successThreshold')
              ? json_['successThreshold'] as core.int
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checkInterval != null) 'checkInterval': checkInterval!,
        if (failureThreshold != null) 'failureThreshold': failureThreshold!,
        if (host != null) 'host': host!,
        if (initialDelay != null) 'initialDelay': initialDelay!,
        if (path != null) 'path': path!,
        if (successThreshold != null) 'successThreshold': successThreshold!,
        if (timeout != null) 'timeout': timeout!,
      };
}

/// A resource that represents Google Cloud Platform location.
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
  /// - "MANAGEMENT_STATUS_UNSPECIFIED"
  /// - "OK" : Certificate was successfully obtained and inserted into the
  /// serving system.
  /// - "PENDING" : Certificate is under active attempts to acquire or renew.
  /// - "FAILED_RETRYING_NOT_VISIBLE" : Most recent renewal failed due to an
  /// invalid DNS setup and will be retried. Renewal attempts will continue to
  /// fail until the certificate domain's DNS configuration is fixed. The last
  /// successfully provisioned certificate may still be serving.
  /// - "FAILED_PERMANENT" : All renewal attempts have been exhausted, likely
  /// due to an invalid DNS setup.
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

  ManagedCertificate({
    this.lastRenewalTime,
    this.status,
  });

  ManagedCertificate.fromJson(core.Map json_)
      : this(
          lastRenewalTime: json_.containsKey('lastRenewalTime')
              ? json_['lastRenewalTime'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastRenewalTime != null) 'lastRenewalTime': lastRenewalTime!,
        if (status != null) 'status': status!,
      };
}

/// A service with manual scaling runs continuously, allowing you to perform
/// complex initialization and rely on the state of its memory over time.
class ManualScaling {
  /// Number of instances to assign to the service at the start.
  ///
  /// This number can later be altered by using the Modules API
  /// (https://cloud.google.com/appengine/docs/python/modules/functions)
  /// set_num_instances() function.
  core.int? instances;

  ManualScaling({
    this.instances,
  });

  ManualScaling.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? json_['instances'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
      };
}

/// Extra network settings.
///
/// Only applicable in the App Engine flexible environment.
class Network {
  /// List of ports, or port pairs, to forward from the virtual machine to the
  /// application container.
  ///
  /// Only applicable in the App Engine flexible environment.
  core.List<core.String>? forwardedPorts;

  /// The IP mode for instances.
  ///
  /// Only applicable in the App Engine flexible environment.
  /// Possible string values are:
  /// - "INSTANCE_IP_MODE_UNSPECIFIED" : Unspecified is treated as EXTERNAL.
  /// - "EXTERNAL" : Instances are created with both internal and external IP
  /// addresses.
  /// - "INTERNAL" : Instances are created with internal IP addresses only.
  core.String? instanceIpMode;

  /// Tag to apply to the instance during creation.
  ///
  /// Only applicable in the App Engine flexible environment.
  core.String? instanceTag;

  /// Google Compute Engine network where the virtual machines are created.
  ///
  /// Specify the short name, not the resource path.Defaults to default.
  core.String? name;

  /// Enable session affinity.
  ///
  /// Only applicable in the App Engine flexible environment.
  core.bool? sessionAffinity;

  /// Google Cloud Platform sub-network where the virtual machines are created.
  ///
  /// Specify the short name, not the resource path.If a subnetwork name is
  /// specified, a network name will also be required unless it is for the
  /// default network. If the network that the instance is being created in is a
  /// Legacy network, then the IP address is allocated from the IPv4Range. If
  /// the network that the instance is being created in is an auto Subnet Mode
  /// Network, then only network name should be specified (not the
  /// subnetwork_name) and the IP address is created from the IPCidrRange of the
  /// subnetwork that exists in that zone for that network. If the network that
  /// the instance is being created in is a custom Subnet Mode Network, then the
  /// subnetwork_name must be specified and the IP address is created from the
  /// IPCidrRange of the subnetwork.If specified, the subnetwork must exist in
  /// the same region as the App Engine flexible environment application.
  core.String? subnetworkName;

  Network({
    this.forwardedPorts,
    this.instanceIpMode,
    this.instanceTag,
    this.name,
    this.sessionAffinity,
    this.subnetworkName,
  });

  Network.fromJson(core.Map json_)
      : this(
          forwardedPorts: json_.containsKey('forwardedPorts')
              ? (json_['forwardedPorts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instanceIpMode: json_.containsKey('instanceIpMode')
              ? json_['instanceIpMode'] as core.String
              : null,
          instanceTag: json_.containsKey('instanceTag')
              ? json_['instanceTag'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sessionAffinity: json_.containsKey('sessionAffinity')
              ? json_['sessionAffinity'] as core.bool
              : null,
          subnetworkName: json_.containsKey('subnetworkName')
              ? json_['subnetworkName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (forwardedPorts != null) 'forwardedPorts': forwardedPorts!,
        if (instanceIpMode != null) 'instanceIpMode': instanceIpMode!,
        if (instanceTag != null) 'instanceTag': instanceTag!,
        if (name != null) 'name': name!,
        if (sessionAffinity != null) 'sessionAffinity': sessionAffinity!,
        if (subnetworkName != null) 'subnetworkName': subnetworkName!,
      };
}

/// A NetworkSettings resource is a container for ingress settings for a version
/// or service.
class NetworkSettings {
  /// The ingress settings for version or service.
  /// Possible string values are:
  /// - "INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED" : Unspecified
  /// - "INGRESS_TRAFFIC_ALLOWED_ALL" : Allow HTTP traffic from public and
  /// private sources.
  /// - "INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY" : Allow HTTP traffic from only
  /// private VPC sources.
  /// - "INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB" : Allow HTTP traffic from
  /// private VPC sources and through load balancers.
  core.String? ingressTrafficAllowed;

  NetworkSettings({
    this.ingressTrafficAllowed,
  });

  NetworkSettings.fromJson(core.Map json_)
      : this(
          ingressTrafficAllowed: json_.containsKey('ingressTrafficAllowed')
              ? json_['ingressTrafficAllowed'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ingressTrafficAllowed != null)
          'ingressTrafficAllowed': ingressTrafficAllowed!,
      };
}

/// Target scaling by network usage.
///
/// Only applicable in the App Engine flexible environment.
class NetworkUtilization {
  /// Target bytes received per second.
  core.int? targetReceivedBytesPerSecond;

  /// Target packets received per second.
  core.int? targetReceivedPacketsPerSecond;

  /// Target bytes sent per second.
  core.int? targetSentBytesPerSecond;

  /// Target packets sent per second.
  core.int? targetSentPacketsPerSecond;

  NetworkUtilization({
    this.targetReceivedBytesPerSecond,
    this.targetReceivedPacketsPerSecond,
    this.targetSentBytesPerSecond,
    this.targetSentPacketsPerSecond,
  });

  NetworkUtilization.fromJson(core.Map json_)
      : this(
          targetReceivedBytesPerSecond:
              json_.containsKey('targetReceivedBytesPerSecond')
                  ? json_['targetReceivedBytesPerSecond'] as core.int
                  : null,
          targetReceivedPacketsPerSecond:
              json_.containsKey('targetReceivedPacketsPerSecond')
                  ? json_['targetReceivedPacketsPerSecond'] as core.int
                  : null,
          targetSentBytesPerSecond:
              json_.containsKey('targetSentBytesPerSecond')
                  ? json_['targetSentBytesPerSecond'] as core.int
                  : null,
          targetSentPacketsPerSecond:
              json_.containsKey('targetSentPacketsPerSecond')
                  ? json_['targetSentPacketsPerSecond'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetReceivedBytesPerSecond != null)
          'targetReceivedBytesPerSecond': targetReceivedBytesPerSecond!,
        if (targetReceivedPacketsPerSecond != null)
          'targetReceivedPacketsPerSecond': targetReceivedPacketsPerSecond!,
        if (targetSentBytesPerSecond != null)
          'targetSentBytesPerSecond': targetSentBytesPerSecond!,
        if (targetSentPacketsPerSecond != null)
          'targetSentPacketsPerSecond': targetSentPacketsPerSecond!,
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

  /// The normal response of the operation in case of success.
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
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

/// Readiness checking configuration for VM instances.
///
/// Unhealthy instances are removed from traffic rotation.
class ReadinessCheck {
  /// A maximum time limit on application initialization, measured from moment
  /// the application successfully replies to a healthcheck until it is ready to
  /// serve traffic.
  core.String? appStartTimeout;

  /// Interval between health checks.
  core.String? checkInterval;

  /// Number of consecutive failed checks required before removing traffic.
  core.int? failureThreshold;

  /// Host header to send when performing a HTTP Readiness check.
  ///
  /// Example: "myapp.appspot.com"
  core.String? host;

  /// The request path.
  core.String? path;

  /// Number of consecutive successful checks required before receiving traffic.
  core.int? successThreshold;

  /// Time before the check is considered failed.
  core.String? timeout;

  ReadinessCheck({
    this.appStartTimeout,
    this.checkInterval,
    this.failureThreshold,
    this.host,
    this.path,
    this.successThreshold,
    this.timeout,
  });

  ReadinessCheck.fromJson(core.Map json_)
      : this(
          appStartTimeout: json_.containsKey('appStartTimeout')
              ? json_['appStartTimeout'] as core.String
              : null,
          checkInterval: json_.containsKey('checkInterval')
              ? json_['checkInterval'] as core.String
              : null,
          failureThreshold: json_.containsKey('failureThreshold')
              ? json_['failureThreshold'] as core.int
              : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          successThreshold: json_.containsKey('successThreshold')
              ? json_['successThreshold'] as core.int
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appStartTimeout != null) 'appStartTimeout': appStartTimeout!,
        if (checkInterval != null) 'checkInterval': checkInterval!,
        if (failureThreshold != null) 'failureThreshold': failureThreshold!,
        if (host != null) 'host': host!,
        if (path != null) 'path': path!,
        if (successThreshold != null) 'successThreshold': successThreshold!,
        if (timeout != null) 'timeout': timeout!,
      };
}

/// Request message for 'Applications.RepairApplication'.
typedef RepairApplicationRequest = $Empty;

/// Target scaling by request utilization.
///
/// Only applicable in the App Engine flexible environment.
class RequestUtilization {
  /// Target number of concurrent requests.
  core.int? targetConcurrentRequests;

  /// Target requests per second.
  core.int? targetRequestCountPerSecond;

  RequestUtilization({
    this.targetConcurrentRequests,
    this.targetRequestCountPerSecond,
  });

  RequestUtilization.fromJson(core.Map json_)
      : this(
          targetConcurrentRequests:
              json_.containsKey('targetConcurrentRequests')
                  ? json_['targetConcurrentRequests'] as core.int
                  : null,
          targetRequestCountPerSecond:
              json_.containsKey('targetRequestCountPerSecond')
                  ? json_['targetRequestCountPerSecond'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetConcurrentRequests != null)
          'targetConcurrentRequests': targetConcurrentRequests!,
        if (targetRequestCountPerSecond != null)
          'targetRequestCountPerSecond': targetRequestCountPerSecond!,
      };
}

/// A DNS resource record.
class ResourceRecord {
  /// Relative name of the object affected by this record.
  ///
  /// Only applicable for CNAME records. Example: 'www'.
  core.String? name;

  /// Data for this record.
  ///
  /// Values vary by record type, as defined in RFC 1035 (section 5) and RFC
  /// 1034 (section 3.6.1).
  core.String? rrdata;

  /// Resource record type.
  ///
  /// Example: AAAA.
  /// Possible string values are:
  /// - "RECORD_TYPE_UNSPECIFIED" : An unknown resource record.
  /// - "A" : An A resource record. Data is an IPv4 address.
  /// - "AAAA" : An AAAA resource record. Data is an IPv6 address.
  /// - "CNAME" : A CNAME resource record. Data is a domain name to be aliased.
  core.String? type;

  ResourceRecord({
    this.name,
    this.rrdata,
    this.type,
  });

  ResourceRecord.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rrdata: json_.containsKey('rrdata')
              ? json_['rrdata'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (rrdata != null) 'rrdata': rrdata!,
        if (type != null) 'type': type!,
      };
}

/// Machine resources for a version.
class Resources {
  /// Number of CPU cores needed.
  core.double? cpu;

  /// Disk size (GB) needed.
  core.double? diskGb;

  /// The name of the encryption key that is stored in Google Cloud KMS.
  ///
  /// Only should be used by Cloud Composer to encrypt the vm disk
  core.String? kmsKeyReference;

  /// Memory (GB) needed.
  core.double? memoryGb;

  /// User specified volumes.
  core.List<Volume>? volumes;

  Resources({
    this.cpu,
    this.diskGb,
    this.kmsKeyReference,
    this.memoryGb,
    this.volumes,
  });

  Resources.fromJson(core.Map json_)
      : this(
          cpu: json_.containsKey('cpu')
              ? (json_['cpu'] as core.num).toDouble()
              : null,
          diskGb: json_.containsKey('diskGb')
              ? (json_['diskGb'] as core.num).toDouble()
              : null,
          kmsKeyReference: json_.containsKey('kmsKeyReference')
              ? json_['kmsKeyReference'] as core.String
              : null,
          memoryGb: json_.containsKey('memoryGb')
              ? (json_['memoryGb'] as core.num).toDouble()
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpu != null) 'cpu': cpu!,
        if (diskGb != null) 'diskGb': diskGb!,
        if (kmsKeyReference != null) 'kmsKeyReference': kmsKeyReference!,
        if (memoryGb != null) 'memoryGb': memoryGb!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// Executes a script to handle the request that matches the URL pattern.
typedef ScriptHandler = $Handler;

/// A Service resource is a logical component of an application that can share
/// state and communicate in a secure fashion with other services.
///
/// For example, an application that handles customer requests might include
/// separate services to handle tasks such as backend data analysis or API
/// requests from mobile devices. Each service has a collection of versions that
/// define a specific set of code used to implement the functionality of that
/// service.
class Service {
  /// Relative name of the service within the application.
  ///
  /// Example: default.@OutputOnly
  core.String? id;

  /// A set of labels to apply to this service.
  ///
  /// Labels are key/value pairs that describe the service and all resources
  /// that belong to it (e.g., versions). The labels can be used to search and
  /// group resources, and are propagated to the usage and billing reports,
  /// enabling fine-grain analysis of costs. An example of using labels is to
  /// tag resources belonging to different environments (e.g., "env=prod",
  /// "env=qa"). Label keys and values can be no longer than 63 characters and
  /// can only contain lowercase letters, numeric characters, underscores,
  /// dashes, and international characters. Label keys must start with a
  /// lowercase letter or an international character. Each service can have at
  /// most 32 labels.
  core.Map<core.String, core.String>? labels;

  /// Full path to the Service resource in the API.
  ///
  /// Example: apps/myapp/services/default.@OutputOnly
  core.String? name;

  /// Ingress settings for this service.
  ///
  /// Will apply to all versions.
  NetworkSettings? networkSettings;

  /// Mapping that defines fractional HTTP traffic diversion to different
  /// versions within the service.
  TrafficSplit? split;

  Service({
    this.id,
    this.labels,
    this.name,
    this.networkSettings,
    this.split,
  });

  Service.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkSettings: json_.containsKey('networkSettings')
              ? NetworkSettings.fromJson(json_['networkSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          split: json_.containsKey('split')
              ? TrafficSplit.fromJson(
                  json_['split'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (networkSettings != null) 'networkSettings': networkSettings!,
        if (split != null) 'split': split!,
      };
}

/// SSL configuration for a DomainMapping resource.
class SslSettings {
  /// ID of the AuthorizedCertificate resource configuring SSL for the
  /// application.
  ///
  /// Clearing this field will remove SSL support.By default, a managed
  /// certificate is automatically created for every domain mapping. To omit SSL
  /// support or to configure SSL manually, specify SslManagementType.MANUAL on
  /// a CREATE or UPDATE request. You must be authorized to administer the
  /// AuthorizedCertificate resource to manually map it to a DomainMapping
  /// resource. Example: 12345.
  core.String? certificateId;

  /// ID of the managed AuthorizedCertificate resource currently being
  /// provisioned, if applicable.
  ///
  /// Until the new managed certificate has been successfully provisioned, the
  /// previous SSL state will be preserved. Once the provisioning process
  /// completes, the certificate_id field will reflect the new managed
  /// certificate and this field will be left empty. To remove SSL support while
  /// there is still a pending managed certificate, clear the certificate_id
  /// field with an UpdateDomainMappingRequest.@OutputOnly
  core.String? pendingManagedCertificateId;

  /// SSL management type for this domain.
  ///
  /// If AUTOMATIC, a managed certificate is automatically provisioned. If
  /// MANUAL, certificate_id must be manually specified in order to configure
  /// SSL for this domain.
  /// Possible string values are:
  /// - "SSL_MANAGEMENT_TYPE_UNSPECIFIED" : Defaults to AUTOMATIC.
  /// - "AUTOMATIC" : SSL support for this domain is configured automatically.
  /// The mapped SSL certificate will be automatically renewed.
  /// - "MANUAL" : SSL support for this domain is configured manually by the
  /// user. Either the domain has no SSL support or a user-obtained SSL
  /// certificate has been explictly mapped to this domain.
  core.String? sslManagementType;

  SslSettings({
    this.certificateId,
    this.pendingManagedCertificateId,
    this.sslManagementType,
  });

  SslSettings.fromJson(core.Map json_)
      : this(
          certificateId: json_.containsKey('certificateId')
              ? json_['certificateId'] as core.String
              : null,
          pendingManagedCertificateId:
              json_.containsKey('pendingManagedCertificateId')
                  ? json_['pendingManagedCertificateId'] as core.String
                  : null,
          sslManagementType: json_.containsKey('sslManagementType')
              ? json_['sslManagementType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateId != null) 'certificateId': certificateId!,
        if (pendingManagedCertificateId != null)
          'pendingManagedCertificateId': pendingManagedCertificateId!,
        if (sslManagementType != null) 'sslManagementType': sslManagementType!,
      };
}

/// Scheduler settings for standard environment.
class StandardSchedulerSettings {
  /// Maximum number of instances to run for this version.
  ///
  /// Set to zero to disable max_instances configuration.
  core.int? maxInstances;

  /// Minimum number of instances to run for this version.
  ///
  /// Set to zero to disable min_instances configuration.
  core.int? minInstances;

  /// Target CPU utilization ratio to maintain when scaling.
  core.double? targetCpuUtilization;

  /// Target throughput utilization ratio to maintain when scaling
  core.double? targetThroughputUtilization;

  StandardSchedulerSettings({
    this.maxInstances,
    this.minInstances,
    this.targetCpuUtilization,
    this.targetThroughputUtilization,
  });

  StandardSchedulerSettings.fromJson(core.Map json_)
      : this(
          maxInstances: json_.containsKey('maxInstances')
              ? json_['maxInstances'] as core.int
              : null,
          minInstances: json_.containsKey('minInstances')
              ? json_['minInstances'] as core.int
              : null,
          targetCpuUtilization: json_.containsKey('targetCpuUtilization')
              ? (json_['targetCpuUtilization'] as core.num).toDouble()
              : null,
          targetThroughputUtilization: json_
                  .containsKey('targetThroughputUtilization')
              ? (json_['targetThroughputUtilization'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxInstances != null) 'maxInstances': maxInstances!,
        if (minInstances != null) 'minInstances': minInstances!,
        if (targetCpuUtilization != null)
          'targetCpuUtilization': targetCpuUtilization!,
        if (targetThroughputUtilization != null)
          'targetThroughputUtilization': targetThroughputUtilization!,
      };
}

/// Files served directly to the user for a given URL, such as images, CSS
/// stylesheets, or JavaScript source files.
///
/// Static file handlers describe which files in the application directory are
/// static files, and which URLs serve them.
class StaticFilesHandler {
  /// Whether files should also be uploaded as code data.
  ///
  /// By default, files declared in static file handlers are uploaded as static
  /// data and are only served to end users; they cannot be read by the
  /// application. If enabled, uploads are charged against both your code and
  /// static data storage resource quotas.
  core.bool? applicationReadable;

  /// Time a static file served by this handler should be cached by web proxies
  /// and browsers.
  core.String? expiration;

  /// HTTP headers to use for all responses from these URLs.
  core.Map<core.String, core.String>? httpHeaders;

  /// MIME type used to serve all files served by this handler.Defaults to
  /// file-specific MIME types, which are derived from each file's filename
  /// extension.
  core.String? mimeType;

  /// Path to the static files matched by the URL pattern, from the application
  /// root directory.
  ///
  /// The path can refer to text matched in groupings in the URL pattern.
  core.String? path;

  /// Whether this handler should match the request if the file referenced by
  /// the handler does not exist.
  core.bool? requireMatchingFile;

  /// Regular expression that matches the file paths for all files that should
  /// be referenced by this handler.
  core.String? uploadPathRegex;

  StaticFilesHandler({
    this.applicationReadable,
    this.expiration,
    this.httpHeaders,
    this.mimeType,
    this.path,
    this.requireMatchingFile,
    this.uploadPathRegex,
  });

  StaticFilesHandler.fromJson(core.Map json_)
      : this(
          applicationReadable: json_.containsKey('applicationReadable')
              ? json_['applicationReadable'] as core.bool
              : null,
          expiration: json_.containsKey('expiration')
              ? json_['expiration'] as core.String
              : null,
          httpHeaders: json_.containsKey('httpHeaders')
              ? (json_['httpHeaders'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          requireMatchingFile: json_.containsKey('requireMatchingFile')
              ? json_['requireMatchingFile'] as core.bool
              : null,
          uploadPathRegex: json_.containsKey('uploadPathRegex')
              ? json_['uploadPathRegex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationReadable != null)
          'applicationReadable': applicationReadable!,
        if (expiration != null) 'expiration': expiration!,
        if (httpHeaders != null) 'httpHeaders': httpHeaders!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (path != null) 'path': path!,
        if (requireMatchingFile != null)
          'requireMatchingFile': requireMatchingFile!,
        if (uploadPathRegex != null) 'uploadPathRegex': uploadPathRegex!,
      };
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Traffic routing configuration for versions within a single service.
///
/// Traffic splits define how traffic directed to the service is assigned to
/// versions.
class TrafficSplit {
  /// Mapping from version IDs within the service to fractional (0.000, 1\]
  /// allocations of traffic for that version.
  ///
  /// Each version can be specified only once, but some versions in the service
  /// may not have any traffic allocation. Services that have traffic allocated
  /// cannot be deleted until either the service is deleted or their traffic
  /// allocation is removed. Allocations must sum to 1. Up to two decimal place
  /// precision is supported for IP-based splits and up to three decimal places
  /// is supported for cookie-based splits.
  core.Map<core.String, core.double>? allocations;

  /// Mechanism used to determine which version a request is sent to.
  ///
  /// The traffic selection algorithm will be stable for either type until
  /// allocations are changed.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Diversion method unspecified.
  /// - "COOKIE" : Diversion based on a specially named cookie, "GOOGAPPUID."
  /// The cookie must be set by the application itself or no diversion will
  /// occur.
  /// - "IP" : Diversion based on applying the modulus operation to a
  /// fingerprint of the IP address.
  /// - "RANDOM" : Diversion based on weighted random assignment. An incoming
  /// request is randomly routed to a version in the traffic split, with
  /// probability proportional to the version's traffic share.
  core.String? shardBy;

  TrafficSplit({
    this.allocations,
    this.shardBy,
  });

  TrafficSplit.fromJson(core.Map json_)
      : this(
          allocations: json_.containsKey('allocations')
              ? (json_['allocations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    (item as core.num).toDouble(),
                  ),
                )
              : null,
          shardBy: json_.containsKey('shardBy')
              ? json_['shardBy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocations != null) 'allocations': allocations!,
        if (shardBy != null) 'shardBy': shardBy!,
      };
}

/// Rules to match an HTTP request and dispatch that request to a service.
class UrlDispatchRule {
  /// Domain name to match against.
  ///
  /// The wildcard "*" is supported if specified before a period: "*.".Defaults
  /// to matching all domains: "*".
  core.String? domain;

  /// Pathname within the host.
  ///
  /// Must start with a "/". A single "*" can be included at the end of the
  /// path.The sum of the lengths of the domain and path may not exceed 100
  /// characters.
  core.String? path;

  /// Resource ID of a service in this application that should serve the matched
  /// request.
  ///
  /// The service must already exist. Example: default.
  core.String? service;

  UrlDispatchRule({
    this.domain,
    this.path,
    this.service,
  });

  UrlDispatchRule.fromJson(core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (path != null) 'path': path!,
        if (service != null) 'service': service!,
      };
}

/// URL pattern and description of how the URL should be handled.
///
/// App Engine can handle URLs by executing application code or by serving
/// static files uploaded with the version, such as images, CSS, or JavaScript.
class UrlMap {
  /// Uses API Endpoints to handle requests.
  ApiEndpointHandler? apiEndpoint;

  /// Action to take when users access resources that require authentication.
  ///
  /// Defaults to redirect.
  /// Possible string values are:
  /// - "AUTH_FAIL_ACTION_UNSPECIFIED" : Not specified.
  /// AUTH_FAIL_ACTION_REDIRECT is assumed.
  /// - "AUTH_FAIL_ACTION_REDIRECT" : Redirects user to "accounts.google.com".
  /// The user is redirected back to the application URL after signing in or
  /// creating an account.
  /// - "AUTH_FAIL_ACTION_UNAUTHORIZED" : Rejects request with a 401 HTTP status
  /// code and an error message.
  core.String? authFailAction;

  /// Level of login required to access this resource.
  ///
  /// Not supported for Node.js in the App Engine standard environment.
  /// Possible string values are:
  /// - "LOGIN_UNSPECIFIED" : Not specified. LOGIN_OPTIONAL is assumed.
  /// - "LOGIN_OPTIONAL" : Does not require that the user is signed in.
  /// - "LOGIN_ADMIN" : If the user is not signed in, the auth_fail_action is
  /// taken. In addition, if the user is not an administrator for the
  /// application, they are given an error message regardless of
  /// auth_fail_action. If the user is an administrator, the handler proceeds.
  /// - "LOGIN_REQUIRED" : If the user has signed in, the handler proceeds
  /// normally. Otherwise, the auth_fail_action is taken.
  core.String? login;

  /// 30x code to use when performing redirects for the secure field.
  ///
  /// Defaults to 302.
  /// Possible string values are:
  /// - "REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED" : Not specified. 302 is
  /// assumed.
  /// - "REDIRECT_HTTP_RESPONSE_CODE_301" : 301 Moved Permanently code.
  /// - "REDIRECT_HTTP_RESPONSE_CODE_302" : 302 Moved Temporarily code.
  /// - "REDIRECT_HTTP_RESPONSE_CODE_303" : 303 See Other code.
  /// - "REDIRECT_HTTP_RESPONSE_CODE_307" : 307 Temporary Redirect code.
  core.String? redirectHttpResponseCode;

  /// Executes a script to handle the requests that match this URL pattern.
  ///
  /// Only the auto value is supported for Node.js in the App Engine standard
  /// environment, for example "script": "auto".
  ScriptHandler? script;

  /// Security (HTTPS) enforcement for this URL.
  /// Possible string values are:
  /// - "SECURE_UNSPECIFIED" : Not specified.
  /// - "SECURE_DEFAULT" : Both HTTP and HTTPS requests with URLs that match the
  /// handler succeed without redirects. The application can examine the request
  /// to determine which protocol was used, and respond accordingly.
  /// - "SECURE_NEVER" : Requests for a URL that match this handler that use
  /// HTTPS are automatically redirected to the HTTP equivalent URL.
  /// - "SECURE_OPTIONAL" : Both HTTP and HTTPS requests with URLs that match
  /// the handler succeed without redirects. The application can examine the
  /// request to determine which protocol was used and respond accordingly.
  /// - "SECURE_ALWAYS" : Requests for a URL that match this handler that do not
  /// use HTTPS are automatically redirected to the HTTPS URL with the same
  /// path. Query parameters are reserved for the redirect.
  core.String? securityLevel;

  /// Returns the contents of a file, such as an image, as the response.
  StaticFilesHandler? staticFiles;

  /// URL prefix.
  ///
  /// Uses regular expression syntax, which means regexp special characters must
  /// be escaped, but should not contain groupings. All URLs that begin with
  /// this prefix are handled by this handler, using the portion of the URL
  /// after the prefix as part of the file path.
  core.String? urlRegex;

  UrlMap({
    this.apiEndpoint,
    this.authFailAction,
    this.login,
    this.redirectHttpResponseCode,
    this.script,
    this.securityLevel,
    this.staticFiles,
    this.urlRegex,
  });

  UrlMap.fromJson(core.Map json_)
      : this(
          apiEndpoint: json_.containsKey('apiEndpoint')
              ? ApiEndpointHandler.fromJson(
                  json_['apiEndpoint'] as core.Map<core.String, core.dynamic>)
              : null,
          authFailAction: json_.containsKey('authFailAction')
              ? json_['authFailAction'] as core.String
              : null,
          login:
              json_.containsKey('login') ? json_['login'] as core.String : null,
          redirectHttpResponseCode:
              json_.containsKey('redirectHttpResponseCode')
                  ? json_['redirectHttpResponseCode'] as core.String
                  : null,
          script: json_.containsKey('script')
              ? ScriptHandler.fromJson(
                  json_['script'] as core.Map<core.String, core.dynamic>)
              : null,
          securityLevel: json_.containsKey('securityLevel')
              ? json_['securityLevel'] as core.String
              : null,
          staticFiles: json_.containsKey('staticFiles')
              ? StaticFilesHandler.fromJson(
                  json_['staticFiles'] as core.Map<core.String, core.dynamic>)
              : null,
          urlRegex: json_.containsKey('urlRegex')
              ? json_['urlRegex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiEndpoint != null) 'apiEndpoint': apiEndpoint!,
        if (authFailAction != null) 'authFailAction': authFailAction!,
        if (login != null) 'login': login!,
        if (redirectHttpResponseCode != null)
          'redirectHttpResponseCode': redirectHttpResponseCode!,
        if (script != null) 'script': script!,
        if (securityLevel != null) 'securityLevel': securityLevel!,
        if (staticFiles != null) 'staticFiles': staticFiles!,
        if (urlRegex != null) 'urlRegex': urlRegex!,
      };
}

/// A Version resource is a specific set of source code and configuration files
/// that are deployed into a service.
class Version {
  /// Serving configuration for Google Cloud Endpoints
  /// (https://cloud.google.com/endpoints).Only returned in GET requests if
  /// view=FULL is set.
  ApiConfigHandler? apiConfig;

  /// Allows App Engine second generation runtimes to access the legacy bundled
  /// services.
  core.bool? appEngineApis;

  /// Automatic scaling is based on request rate, response latencies, and other
  /// application metrics.
  ///
  /// Instances are dynamically created and destroyed as needed in order to
  /// handle traffic.
  AutomaticScaling? automaticScaling;

  /// A service with basic scaling will create an instance when the application
  /// receives a request.
  ///
  /// The instance will be turned down when the app becomes idle. Basic scaling
  /// is ideal for work that is intermittent or driven by user activity.
  BasicScaling? basicScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime
  /// features.
  core.Map<core.String, core.String>? betaSettings;

  /// Environment variables available to the build environment.Only returned in
  /// GET requests if view=FULL is set.
  core.Map<core.String, core.String>? buildEnvVariables;

  /// Time that this version was created.@OutputOnly
  core.String? createTime;

  /// Email address of the user who created this version.@OutputOnly
  core.String? createdBy;

  /// Duration that static files should be cached by web proxies and browsers.
  ///
  /// Only applicable if the corresponding StaticFilesHandler
  /// (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StaticFilesHandler)
  /// does not specify its own expiration time.Only returned in GET requests if
  /// view=FULL is set.
  core.String? defaultExpiration;

  /// Code and application artifacts that make up this version.Only returned in
  /// GET requests if view=FULL is set.
  Deployment? deployment;

  /// Total size in bytes of all the files that are included in this version and
  /// currently hosted on the App Engine disk.@OutputOnly
  core.String? diskUsageBytes;

  /// Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud
  /// Endpoints Extensible Service Proxy will be provided to serve the API
  /// implemented by the app.
  EndpointsApiService? endpointsApiService;

  /// The entrypoint for the application.
  Entrypoint? entrypoint;

  /// App Engine execution environment for this version.Defaults to standard.
  core.String? env;

  /// Environment variables available to the application.Only returned in GET
  /// requests if view=FULL is set.
  core.Map<core.String, core.String>? envVariables;

  /// Custom static error pages.
  ///
  /// Limited to 10KB per page.Only returned in GET requests if view=FULL is
  /// set.
  core.List<ErrorHandler>? errorHandlers;

  /// An ordered list of URL-matching patterns that should be applied to
  /// incoming requests.
  ///
  /// The first matching URL handles the request and other request handlers are
  /// not attempted.Only returned in GET requests if view=FULL is set.
  core.List<UrlMap>? handlers;

  /// Configures health checking for instances.
  ///
  /// Unhealthy instances are stopped and replaced with new instances. Only
  /// applicable in the App Engine flexible environment.Only returned in GET
  /// requests if view=FULL is set.
  HealthCheck? healthCheck;

  /// Relative name of the version within the service.
  ///
  /// Example: v1. Version names can contain only lowercase letters, numbers, or
  /// hyphens. Reserved names: "default", "latest", and any name with the prefix
  /// "ah-".
  core.String? id;

  /// Before an application can receive email or XMPP messages, the application
  /// must be configured to enable the service.
  core.List<core.String>? inboundServices;

  /// Instance class that is used to run this version.
  ///
  /// Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or
  /// BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and
  /// B1 for ManualScaling or BasicScaling.
  core.String? instanceClass;

  /// Configuration for third-party Python runtime libraries that are required
  /// by the application.Only returned in GET requests if view=FULL is set.
  core.List<Library>? libraries;

  /// Configures liveness health checking for instances.
  ///
  /// Unhealthy instances are stopped and replaced with new instancesOnly
  /// returned in GET requests if view=FULL is set.
  LivenessCheck? livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform
  /// complex initialization and rely on the state of its memory over time.
  ///
  /// Manually scaled versions are sometimes referred to as "backends".
  ManualScaling? manualScaling;

  /// Full path to the Version resource in the API.
  ///
  /// Example: apps/myapp/services/default/versions/v1.@OutputOnly
  core.String? name;

  /// Extra network settings.
  ///
  /// Only applicable in the App Engine flexible environment.
  Network? network;

  /// Files that match this pattern will not be built into this version.
  ///
  /// Only applicable for Go runtimes.Only returned in GET requests if view=FULL
  /// is set.
  core.String? nobuildFilesRegex;

  /// Configures readiness health checking for instances.
  ///
  /// Unhealthy instances are not put into the backend traffic rotation.Only
  /// returned in GET requests if view=FULL is set.
  ReadinessCheck? readinessCheck;

  /// Machine resources for this version.
  ///
  /// Only applicable in the App Engine flexible environment.
  Resources? resources;

  /// Desired runtime.
  ///
  /// Example: python27.
  core.String? runtime;

  /// The version of the API in the given runtime environment.
  ///
  /// Please see the app.yaml reference for valid values at
  /// https://cloud.google.com/appengine/docs/standard//config/appref
  core.String? runtimeApiVersion;

  /// The channel of the runtime to use.
  ///
  /// Only available for some runtimes. Defaults to the default channel.
  core.String? runtimeChannel;

  /// The path or name of the app's main executable.
  core.String? runtimeMainExecutablePath;

  /// The identity that the deployed version will run as.
  ///
  /// Admin API will use the App Engine Appspot service account as default if
  /// this field is neither provided in app.yaml file nor through CLI flag.
  core.String? serviceAccount;

  /// Current serving status of this version.
  ///
  /// Only the versions with a SERVING status create instances and can be
  /// billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to
  /// SERVING.
  /// Possible string values are:
  /// - "SERVING_STATUS_UNSPECIFIED" : Not specified.
  /// - "SERVING" : Currently serving. Instances are created according to the
  /// scaling settings of the version.
  /// - "STOPPED" : Disabled. No instances will be created and the scaling
  /// settings are ignored until the state of the version changes to SERVING.
  core.String? servingStatus;

  /// Whether multiple requests can be dispatched to this version at once.
  core.bool? threadsafe;

  /// Serving URL for this version.
  ///
  /// Example:
  /// "https://myversion-dot-myservice-dot-myapp.appspot.com"@OutputOnly
  core.String? versionUrl;

  /// Whether to deploy this version in a container on a virtual machine.
  core.bool? vm;

  /// Enables VPC connectivity for standard apps.
  VpcAccessConnector? vpcAccessConnector;

  /// The Google Compute Engine zones that are supported by this version in the
  /// App Engine flexible environment.
  ///
  /// Deprecated.
  core.List<core.String>? zones;

  Version({
    this.apiConfig,
    this.appEngineApis,
    this.automaticScaling,
    this.basicScaling,
    this.betaSettings,
    this.buildEnvVariables,
    this.createTime,
    this.createdBy,
    this.defaultExpiration,
    this.deployment,
    this.diskUsageBytes,
    this.endpointsApiService,
    this.entrypoint,
    this.env,
    this.envVariables,
    this.errorHandlers,
    this.handlers,
    this.healthCheck,
    this.id,
    this.inboundServices,
    this.instanceClass,
    this.libraries,
    this.livenessCheck,
    this.manualScaling,
    this.name,
    this.network,
    this.nobuildFilesRegex,
    this.readinessCheck,
    this.resources,
    this.runtime,
    this.runtimeApiVersion,
    this.runtimeChannel,
    this.runtimeMainExecutablePath,
    this.serviceAccount,
    this.servingStatus,
    this.threadsafe,
    this.versionUrl,
    this.vm,
    this.vpcAccessConnector,
    this.zones,
  });

  Version.fromJson(core.Map json_)
      : this(
          apiConfig: json_.containsKey('apiConfig')
              ? ApiConfigHandler.fromJson(
                  json_['apiConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          appEngineApis: json_.containsKey('appEngineApis')
              ? json_['appEngineApis'] as core.bool
              : null,
          automaticScaling: json_.containsKey('automaticScaling')
              ? AutomaticScaling.fromJson(json_['automaticScaling']
                  as core.Map<core.String, core.dynamic>)
              : null,
          basicScaling: json_.containsKey('basicScaling')
              ? BasicScaling.fromJson(
                  json_['basicScaling'] as core.Map<core.String, core.dynamic>)
              : null,
          betaSettings: json_.containsKey('betaSettings')
              ? (json_['betaSettings'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          buildEnvVariables: json_.containsKey('buildEnvVariables')
              ? (json_['buildEnvVariables']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          createdBy: json_.containsKey('createdBy')
              ? json_['createdBy'] as core.String
              : null,
          defaultExpiration: json_.containsKey('defaultExpiration')
              ? json_['defaultExpiration'] as core.String
              : null,
          deployment: json_.containsKey('deployment')
              ? Deployment.fromJson(
                  json_['deployment'] as core.Map<core.String, core.dynamic>)
              : null,
          diskUsageBytes: json_.containsKey('diskUsageBytes')
              ? json_['diskUsageBytes'] as core.String
              : null,
          endpointsApiService: json_.containsKey('endpointsApiService')
              ? EndpointsApiService.fromJson(json_['endpointsApiService']
                  as core.Map<core.String, core.dynamic>)
              : null,
          entrypoint: json_.containsKey('entrypoint')
              ? Entrypoint.fromJson(
                  json_['entrypoint'] as core.Map<core.String, core.dynamic>)
              : null,
          env: json_.containsKey('env') ? json_['env'] as core.String : null,
          envVariables: json_.containsKey('envVariables')
              ? (json_['envVariables'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          errorHandlers: json_.containsKey('errorHandlers')
              ? (json_['errorHandlers'] as core.List)
                  .map((value) => ErrorHandler.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          handlers: json_.containsKey('handlers')
              ? (json_['handlers'] as core.List)
                  .map((value) => UrlMap.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          healthCheck: json_.containsKey('healthCheck')
              ? HealthCheck.fromJson(
                  json_['healthCheck'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          inboundServices: json_.containsKey('inboundServices')
              ? (json_['inboundServices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instanceClass: json_.containsKey('instanceClass')
              ? json_['instanceClass'] as core.String
              : null,
          libraries: json_.containsKey('libraries')
              ? (json_['libraries'] as core.List)
                  .map((value) => Library.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          livenessCheck: json_.containsKey('livenessCheck')
              ? LivenessCheck.fromJson(
                  json_['livenessCheck'] as core.Map<core.String, core.dynamic>)
              : null,
          manualScaling: json_.containsKey('manualScaling')
              ? ManualScaling.fromJson(
                  json_['manualScaling'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? Network.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>)
              : null,
          nobuildFilesRegex: json_.containsKey('nobuildFilesRegex')
              ? json_['nobuildFilesRegex'] as core.String
              : null,
          readinessCheck: json_.containsKey('readinessCheck')
              ? ReadinessCheck.fromJson(json_['readinessCheck']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resources: json_.containsKey('resources')
              ? Resources.fromJson(
                  json_['resources'] as core.Map<core.String, core.dynamic>)
              : null,
          runtime: json_.containsKey('runtime')
              ? json_['runtime'] as core.String
              : null,
          runtimeApiVersion: json_.containsKey('runtimeApiVersion')
              ? json_['runtimeApiVersion'] as core.String
              : null,
          runtimeChannel: json_.containsKey('runtimeChannel')
              ? json_['runtimeChannel'] as core.String
              : null,
          runtimeMainExecutablePath:
              json_.containsKey('runtimeMainExecutablePath')
                  ? json_['runtimeMainExecutablePath'] as core.String
                  : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          servingStatus: json_.containsKey('servingStatus')
              ? json_['servingStatus'] as core.String
              : null,
          threadsafe: json_.containsKey('threadsafe')
              ? json_['threadsafe'] as core.bool
              : null,
          versionUrl: json_.containsKey('versionUrl')
              ? json_['versionUrl'] as core.String
              : null,
          vm: json_.containsKey('vm') ? json_['vm'] as core.bool : null,
          vpcAccessConnector: json_.containsKey('vpcAccessConnector')
              ? VpcAccessConnector.fromJson(json_['vpcAccessConnector']
                  as core.Map<core.String, core.dynamic>)
              : null,
          zones: json_.containsKey('zones')
              ? (json_['zones'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiConfig != null) 'apiConfig': apiConfig!,
        if (appEngineApis != null) 'appEngineApis': appEngineApis!,
        if (automaticScaling != null) 'automaticScaling': automaticScaling!,
        if (basicScaling != null) 'basicScaling': basicScaling!,
        if (betaSettings != null) 'betaSettings': betaSettings!,
        if (buildEnvVariables != null) 'buildEnvVariables': buildEnvVariables!,
        if (createTime != null) 'createTime': createTime!,
        if (createdBy != null) 'createdBy': createdBy!,
        if (defaultExpiration != null) 'defaultExpiration': defaultExpiration!,
        if (deployment != null) 'deployment': deployment!,
        if (diskUsageBytes != null) 'diskUsageBytes': diskUsageBytes!,
        if (endpointsApiService != null)
          'endpointsApiService': endpointsApiService!,
        if (entrypoint != null) 'entrypoint': entrypoint!,
        if (env != null) 'env': env!,
        if (envVariables != null) 'envVariables': envVariables!,
        if (errorHandlers != null) 'errorHandlers': errorHandlers!,
        if (handlers != null) 'handlers': handlers!,
        if (healthCheck != null) 'healthCheck': healthCheck!,
        if (id != null) 'id': id!,
        if (inboundServices != null) 'inboundServices': inboundServices!,
        if (instanceClass != null) 'instanceClass': instanceClass!,
        if (libraries != null) 'libraries': libraries!,
        if (livenessCheck != null) 'livenessCheck': livenessCheck!,
        if (manualScaling != null) 'manualScaling': manualScaling!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (nobuildFilesRegex != null) 'nobuildFilesRegex': nobuildFilesRegex!,
        if (readinessCheck != null) 'readinessCheck': readinessCheck!,
        if (resources != null) 'resources': resources!,
        if (runtime != null) 'runtime': runtime!,
        if (runtimeApiVersion != null) 'runtimeApiVersion': runtimeApiVersion!,
        if (runtimeChannel != null) 'runtimeChannel': runtimeChannel!,
        if (runtimeMainExecutablePath != null)
          'runtimeMainExecutablePath': runtimeMainExecutablePath!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (servingStatus != null) 'servingStatus': servingStatus!,
        if (threadsafe != null) 'threadsafe': threadsafe!,
        if (versionUrl != null) 'versionUrl': versionUrl!,
        if (vm != null) 'vm': vm!,
        if (vpcAccessConnector != null)
          'vpcAccessConnector': vpcAccessConnector!,
        if (zones != null) 'zones': zones!,
      };
}

/// Volumes mounted within the app container.
///
/// Only applicable in the App Engine flexible environment.
class Volume {
  /// Unique name for the volume.
  core.String? name;

  /// Volume size in gigabytes.
  core.double? sizeGb;

  /// Underlying volume type, e.g. 'tmpfs'.
  core.String? volumeType;

  Volume({
    this.name,
    this.sizeGb,
    this.volumeType,
  });

  Volume.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sizeGb: json_.containsKey('sizeGb')
              ? (json_['sizeGb'] as core.num).toDouble()
              : null,
          volumeType: json_.containsKey('volumeType')
              ? json_['volumeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
        if (volumeType != null) 'volumeType': volumeType!,
      };
}

/// VPC access connector specification.
class VpcAccessConnector {
  /// The egress setting for the connector, controlling what traffic is diverted
  /// through it.
  /// Possible string values are:
  /// - "EGRESS_SETTING_UNSPECIFIED"
  /// - "ALL_TRAFFIC" : Force the use of VPC Access for all egress traffic from
  /// the function.
  /// - "PRIVATE_IP_RANGES" : Use the VPC Access Connector for private IP space
  /// from RFC1918.
  core.String? egressSetting;

  /// Full Serverless VPC Access Connector name e.g.
  /// /projects/my-project/locations/us-central1/connectors/c1.
  core.String? name;

  VpcAccessConnector({
    this.egressSetting,
    this.name,
  });

  VpcAccessConnector.fromJson(core.Map json_)
      : this(
          egressSetting: json_.containsKey('egressSetting')
              ? json_['egressSetting'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (egressSetting != null) 'egressSetting': egressSetting!,
        if (name != null) 'name': name!,
      };
}

/// The zip file information for a zip deployment.
class ZipInfo {
  /// An estimate of the number of files in a zip for a zip deployment.
  ///
  /// If set, must be greater than or equal to the actual number of files. Used
  /// for optimizing performance; if not provided, deployment may be slow.
  core.int? filesCount;

  /// URL of the zip file to deploy from.
  ///
  /// Must be a URL to a resource in Google Cloud Storage in the form
  /// 'http(s)://storage.googleapis.com//'.
  core.String? sourceUrl;

  ZipInfo({
    this.filesCount,
    this.sourceUrl,
  });

  ZipInfo.fromJson(core.Map json_)
      : this(
          filesCount: json_.containsKey('filesCount')
              ? json_['filesCount'] as core.int
              : null,
          sourceUrl: json_.containsKey('sourceUrl')
              ? json_['sourceUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filesCount != null) 'filesCount': filesCount!,
        if (sourceUrl != null) 'sourceUrl': sourceUrl!,
      };
}
