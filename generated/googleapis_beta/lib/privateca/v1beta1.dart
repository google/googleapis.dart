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
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

/// Certificate Authority API - v1beta1
///
/// The Certificate Authority Service API is a highly-available, scalable
/// service that enables you to simplify and automate the management of private
/// certificate authorities (CAs) while staying in control of your private
/// keys."
///
/// For more information, see <https://cloud.google.com/>
///
/// Create an instance of [CertificateAuthorityServiceApi] to access these
/// resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCertificateAuthoritiesResource]
/// -
/// [ProjectsLocationsCertificateAuthoritiesCertificateRevocationListsResource]
///       - [ProjectsLocationsCertificateAuthoritiesCertificatesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsReusableConfigsResource]
library privateca.v1beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Certificate Authority Service API is a highly-available, scalable
/// service that enables you to simplify and automate the management of private
/// certificate authorities (CAs) while staying in control of your private
/// keys."
class CertificateAuthorityServiceApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CertificateAuthorityServiceApi(http.Client client,
      {core.String rootUrl = 'https://privateca.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCertificateAuthoritiesResource get certificateAuthorities =>
      ProjectsLocationsCertificateAuthoritiesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsReusableConfigsResource get reusableConfigs =>
      ProjectsLocationsReusableConfigsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCertificateAuthoritiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCertificateAuthoritiesCertificateRevocationListsResource
      get certificateRevocationLists =>
          ProjectsLocationsCertificateAuthoritiesCertificateRevocationListsResource(
              _requester);
  ProjectsLocationsCertificateAuthoritiesCertificatesResource
      get certificates =>
          ProjectsLocationsCertificateAuthoritiesCertificatesResource(
              _requester);

  ProjectsLocationsCertificateAuthoritiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Activate a CertificateAuthority that is in state PENDING_ACTIVATION and is
  /// of type SUBORDINATE.
  ///
  /// After the parent Certificate Authority signs a certificate signing request
  /// from FetchCertificateAuthorityCsr, this method can complete the activation
  /// process.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /certificateAuthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
  async.Future<Operation> activate(
    ActivateCertificateAuthorityRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':activate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new CertificateAuthority in a given Project and Location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// CertificateAuthorities, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [certificateAuthorityId] - Required. It must be unique within a location
  /// and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  ///
  /// [requestId] - Optional. An ID to identify requests. Specify a unique
  /// request ID so that if you must retry your request, the server will know to
  /// ignore the request if it has already been completed. The server will
  /// guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and t he
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    CertificateAuthority request,
    core.String parent, {
    core.String certificateAuthorityId,
    core.String requestId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (certificateAuthorityId != null)
        'certificateAuthorityId': [certificateAuthorityId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/certificateAuthorities';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Disable a CertificateAuthority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /certificateAuthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
  async.Future<Operation> disable(
    DisableCertificateAuthorityRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':disable';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Enable a CertificateAuthority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /certificateAuthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
  async.Future<Operation> enable(
    EnableCertificateAuthorityRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':enable';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Fetch a certificate signing request (CSR) from a CertificateAuthority that
  /// is in state PENDING_ACTIVATION and is of type SUBORDINATE.
  ///
  /// The CSR must then be signed by the desired parent Certificate Authority,
  /// which could be another CertificateAuthority resource, or could be an
  /// on-prem certificate authority. See also ActivateCertificateAuthority.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /certificateAuthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchCertificateAuthorityCsrResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchCertificateAuthorityCsrResponse> fetch(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':fetch';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return FetchCertificateAuthorityCsrResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a CertificateAuthority.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CertificateAuthority to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CertificateAuthority].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CertificateAuthority> get(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CertificateAuthority.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists CertificateAuthorities.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// CertificateAuthorities, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response.
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted.
  ///
  /// [pageSize] - Optional. Limit on the number of CertificateAuthorities to
  /// include in the response. Further CertificateAuthorities can subsequently
  /// be obtained by including the
  /// ListCertificateAuthoritiesResponse.next_page_token in a subsequent
  /// request. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Pagination token, returned earlier via
  /// ListCertificateAuthoritiesResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCertificateAuthoritiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCertificateAuthoritiesResponse> list(
    core.String parent, {
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/certificateAuthorities';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCertificateAuthoritiesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a CertificateAuthority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this CertificateAuthority in
  /// the format `projects / * /locations / * /certificateAuthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An ID to identify requests. Specify a unique
  /// request ID so that if you must retry your request, the server will know to
  /// ignore the request if it has already been completed. The server will
  /// guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and t he
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. A list of fields to be updated in this request.
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
    CertificateAuthority request,
    core.String name, {
    core.String requestId,
    core.String updateMask,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Restore a CertificateAuthority that is scheduled for deletion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /certificateAuthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
  async.Future<Operation> restore(
    RestoreCertificateAuthorityRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':restore';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Schedule a CertificateAuthority for deletion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /certificateAuthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
  async.Future<Operation> scheduleDelete(
    ScheduleDeleteCertificateAuthorityRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':scheduleDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCertificateAuthoritiesCertificateRevocationListsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCertificateAuthoritiesCertificateRevocationListsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Returns a CertificateRevocationList.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CertificateRevocationList to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+/certificateRevocationLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CertificateRevocationList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CertificateRevocationList> get(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CertificateRevocationList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+/certificateRevocationLists/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists CertificateRevocationLists.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// CertificateRevocationLists, in the format `projects / * /locations / *
  /// /certificateauthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response.
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted.
  ///
  /// [pageSize] - Optional. Limit on the number of CertificateRevocationLists
  /// to include in the response. Further CertificateRevocationLists can
  /// subsequently be obtained by including the
  /// ListCertificateRevocationListsResponse.next_page_token in a subsequent
  /// request. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Pagination token, returned earlier via
  /// ListCertificateRevocationListsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCertificateRevocationListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCertificateRevocationListsResponse> list(
    core.String parent, {
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/certificateRevocationLists';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCertificateRevocationListsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a CertificateRevocationList.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path for this CertificateRevocationList
  /// in the format `projects / * /locations / * /certificateAuthorities / * /
  /// certificateRevocationLists / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+/certificateRevocationLists/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An ID to identify requests. Specify a unique
  /// request ID so that if you must retry your request, the server will know to
  /// ignore the request if it has already been completed. The server will
  /// guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and t he
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. A list of fields to be updated in this request.
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
    CertificateRevocationList request,
    core.String name, {
    core.String requestId,
    core.String updateMask,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+/certificateRevocationLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+/certificateRevocationLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCertificateAuthoritiesCertificatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCertificateAuthoritiesCertificatesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Create a new Certificate in a given Project, Location from a particular
  /// CertificateAuthority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location and
  /// CertificateAuthority associated with the Certificate, in the format
  /// `projects / * /locations / * /certificateAuthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
  ///
  /// [certificateId] - Optional. It must be unique within a location and match
  /// the regular expression `[a-zA-Z0-9_-]{1,63}`. This field is required when
  /// using a CertificateAuthority in the Enterprise CertificateAuthority.Tier,
  /// but is optional and its value is ignored otherwise.
  ///
  /// [requestId] - Optional. An ID to identify requests. Specify a unique
  /// request ID so that if you must retry your request, the server will know to
  /// ignore the request if it has already been completed. The server will
  /// guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and t he
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Certificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Certificate> create(
    Certificate request,
    core.String parent, {
    core.String certificateId,
    core.String requestId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (certificateId != null) 'certificateId': [certificateId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/certificates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Certificate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a Certificate.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Certificate to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Certificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Certificate> get(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Certificate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Certificates.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// Certificates, in the format `projects / * /locations / *
  /// /certificateauthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response. For details on supported filters and syntax, see
  /// [Certificates Filtering documentation](https://cloud.google.com/certificate-authority-service/docs/sorting-filtering-certificates#filtering_support).
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted. For
  /// details on supported fields and syntax, see
  /// [Certificates Sorting documentation](https://cloud.google.com/certificate-authority-service/docs/sorting-filtering-certificates#sorting_support).
  ///
  /// [pageSize] - Optional. Limit on the number of Certificates to include in
  /// the response. Further Certificates can subsequently be obtained by
  /// including the ListCertificatesResponse.next_page_token in a subsequent
  /// request. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Pagination token, returned earlier via
  /// ListCertificatesResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCertificatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCertificatesResponse> list(
    core.String parent, {
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/certificates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCertificatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a Certificate.
  ///
  /// Currently, the only field you can update is the labels field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource path for this Certificate in the format
  /// `projects / * /locations / * /certificateAuthorities / * /certificates / *
  /// `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An ID to identify requests. Specify a unique
  /// request ID so that if you must retry your request, the server will know to
  /// ignore the request if it has already been completed. The server will
  /// guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and t he
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. A list of fields to be updated in this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Certificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Certificate> patch(
    Certificate request,
    core.String name, {
    core.String requestId,
    core.String updateMask,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Certificate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Revoke a Certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this Certificate in the format
  /// `projects / * /locations / * /certificateAuthorities / * /certificates / *
  /// `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateAuthorities/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Certificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Certificate> revoke(
    RevokeCertificateRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':revoke';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Certificate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsReusableConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsReusableConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns a ReusableConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ReusableConfigs to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reusableConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReusableConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReusableConfig> get(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ReusableConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reusableConfigs/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists ReusableConfigs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// ReusableConfigs, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response.
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted.
  ///
  /// [pageSize] - Optional. Limit on the number of ReusableConfigs to include
  /// in the response. Further ReusableConfigs can subsequently be obtained by
  /// including the ListReusableConfigsResponse.next_page_token in a subsequent
  /// request. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Pagination token, returned earlier via
  /// ListReusableConfigsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReusableConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReusableConfigsResponse> list(
    core.String parent, {
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/reusableConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListReusableConfigsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reusableConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reusableConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// URLs where a CertificateAuthority will publish content.
class AccessUrls {
  /// The URL where this CertificateAuthority's CA certificate is published.
  ///
  /// This will only be set for CAs that have been activated.
  core.String caCertificateAccessUrl;

  /// The URL where this CertificateAuthority's CRLs are published.
  ///
  /// This will only be set for CAs that have been activated.
  core.String crlAccessUrl;

  AccessUrls();

  AccessUrls.fromJson(core.Map _json) {
    if (_json.containsKey('caCertificateAccessUrl')) {
      caCertificateAccessUrl = _json['caCertificateAccessUrl'] as core.String;
    }
    if (_json.containsKey('crlAccessUrl')) {
      crlAccessUrl = _json['crlAccessUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (caCertificateAccessUrl != null)
          'caCertificateAccessUrl': caCertificateAccessUrl,
        if (crlAccessUrl != null) 'crlAccessUrl': crlAccessUrl,
      };
}

/// Request message for
/// CertificateAuthorityService.ActivateCertificateAuthority.
class ActivateCertificateAuthorityRequest {
  /// The signed CA certificate issued from
  /// FetchCertificateAuthorityCsrResponse.pem_csr.
  ///
  /// Required.
  core.String pemCaCertificate;

  /// An ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String requestId;

  /// Must include information about the issuer of 'pem_ca_certificate', and any
  /// further issuers until the self-signed CA.
  ///
  /// Required.
  SubordinateConfig subordinateConfig;

  ActivateCertificateAuthorityRequest();

  ActivateCertificateAuthorityRequest.fromJson(core.Map _json) {
    if (_json.containsKey('pemCaCertificate')) {
      pemCaCertificate = _json['pemCaCertificate'] as core.String;
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
    if (_json.containsKey('subordinateConfig')) {
      subordinateConfig = SubordinateConfig.fromJson(
          _json['subordinateConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (pemCaCertificate != null) 'pemCaCertificate': pemCaCertificate,
        if (requestId != null) 'requestId': requestId,
        if (subordinateConfig != null)
          'subordinateConfig': subordinateConfig.toJson(),
      };
}

class AllowedConfigList {
  /// All Certificates issued by the CertificateAuthority must match at least
  /// one listed ReusableConfigWrapper.
  ///
  /// If a ReusableConfigWrapper has an empty field, any value will be allowed
  /// for that field.
  ///
  /// Required.
  core.List<ReusableConfigWrapper> allowedConfigValues;

  AllowedConfigList();

  AllowedConfigList.fromJson(core.Map _json) {
    if (_json.containsKey('allowedConfigValues')) {
      allowedConfigValues = (_json['allowedConfigValues'] as core.List)
          .map<ReusableConfigWrapper>((value) => ReusableConfigWrapper.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (allowedConfigValues != null)
          'allowedConfigValues':
              allowedConfigValues.map((value) => value.toJson()).toList(),
      };
}

/// AllowedSubjectAltNames specifies the allowed values for SubjectAltNames by
/// the CertificateAuthority when issuing Certificates.
class AllowedSubjectAltNames {
  /// Specifies if to allow custom X509Extension values.
  ///
  /// Optional.
  core.bool allowCustomSans;

  /// Specifies if glob patterns used for allowed_dns_names allow wildcard
  /// certificates.
  ///
  /// If this is set, certificate requests with wildcard domains will be
  /// permitted to match a glob pattern specified in allowed_dns_names.
  /// Otherwise, certificate requests with wildcard domains will be permitted
  /// only if allowed_dns_names contains a literal wildcard.
  ///
  /// Optional.
  core.bool allowGlobbingDnsWildcards;

  /// Contains valid, fully-qualified host names.
  ///
  /// Glob patterns are also supported. To allow an explicit wildcard
  /// certificate, escape with backlash (i.e. "\*"). E.g. for globbed entries:
  /// '*bar.com' will allow 'foo.bar.com', but not '*.bar.com', unless the
  /// allow_globbing_dns_wildcards field is set. E.g. for wildcard entries:
  /// '\*.bar.com' will allow '*.bar.com', but not 'foo.bar.com'.
  ///
  /// Optional.
  core.List<core.String> allowedDnsNames;

  /// Contains valid RFC 2822 E-mail addresses.
  ///
  /// Glob patterns are also supported.
  ///
  /// Optional.
  core.List<core.String> allowedEmailAddresses;

  /// Contains valid 32-bit IPv4 addresses and subnet ranges or RFC 4291 IPv6
  /// addresses and subnet ranges.
  ///
  /// Subnet ranges are specified using the '/' notation (e.g. 10.0.0.0/8,
  /// 2001:700:300:1800::/64). Glob patterns are supported only for ip address
  /// entries (i.e. not for subnet ranges).
  ///
  /// Optional.
  core.List<core.String> allowedIps;

  /// Contains valid RFC 3986 URIs.
  ///
  /// Glob patterns are also supported. To match across path seperators (i.e.
  /// '/') use the double star glob pattern (i.e. '**').
  ///
  /// Optional.
  core.List<core.String> allowedUris;

  AllowedSubjectAltNames();

  AllowedSubjectAltNames.fromJson(core.Map _json) {
    if (_json.containsKey('allowCustomSans')) {
      allowCustomSans = _json['allowCustomSans'] as core.bool;
    }
    if (_json.containsKey('allowGlobbingDnsWildcards')) {
      allowGlobbingDnsWildcards =
          _json['allowGlobbingDnsWildcards'] as core.bool;
    }
    if (_json.containsKey('allowedDnsNames')) {
      allowedDnsNames = (_json['allowedDnsNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('allowedEmailAddresses')) {
      allowedEmailAddresses = (_json['allowedEmailAddresses'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('allowedIps')) {
      allowedIps = (_json['allowedIps'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('allowedUris')) {
      allowedUris = (_json['allowedUris'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (allowCustomSans != null) 'allowCustomSans': allowCustomSans,
        if (allowGlobbingDnsWildcards != null)
          'allowGlobbingDnsWildcards': allowGlobbingDnsWildcards,
        if (allowedDnsNames != null) 'allowedDnsNames': allowedDnsNames,
        if (allowedEmailAddresses != null)
          'allowedEmailAddresses': allowedEmailAddresses,
        if (allowedIps != null) 'allowedIps': allowedIps,
        if (allowedUris != null) 'allowedUris': allowedUris,
      };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey('auditLogConfigs')) {
      auditLogConfigs = (_json['auditLogConfigs'] as core.List)
          .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (auditLogConfigs != null)
          'auditLogConfigs':
              auditLogConfigs.map((value) => value.toJson()).toList(),
        if (service != null) 'service': service,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  ///
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey('exemptedMembers')) {
      exemptedMembers = (_json['exemptedMembers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (exemptedMembers != null) 'exemptedMembers': exemptedMembers,
        if (logType != null) 'logType': logType,
      };
}

/// Message for reporting billing requests through Eventstream.
class BillingView {
  /// Billing requests to be reported for cloud.eventstream.v2.ResourceEvent
  /// Each request contains billing operations to be reported under a service
  /// name.
  ///
  /// See go/billing-view-construction for documentation on constructing billing
  /// view report requests.
  core.List<GoogleApiServicecontrolV1ReportRequest> reportRequests;

  BillingView();

  BillingView.fromJson(core.Map _json) {
    if (_json.containsKey('reportRequests')) {
      reportRequests = (_json['reportRequests'] as core.List)
          .map<GoogleApiServicecontrolV1ReportRequest>((value) =>
              GoogleApiServicecontrolV1ReportRequest.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (reportRequests != null)
          'reportRequests':
              reportRequests.map((value) => value.toJson()).toList(),
      };
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (condition != null) 'condition': condition.toJson(),
        if (members != null) 'members': members,
        if (role != null) 'role': role,
      };
}

/// Describes values that are relevant in a CA certificate.
class CaOptions {
  /// Refers to the "CA" X.509 extension, which is a boolean value.
  ///
  /// When this value is missing, the extension will be omitted from the CA
  /// certificate.
  ///
  /// Optional.
  core.bool isCa;

  /// Refers to the path length restriction X.509 extension.
  ///
  /// For a CA certificate, this value describes the depth of subordinate CA
  /// certificates that are allowed. If this value is less than 0, the request
  /// will fail. If this value is missing, the max path length will be omitted
  /// from the CA certificate.
  ///
  /// Optional.
  core.int maxIssuerPathLength;

  CaOptions();

  CaOptions.fromJson(core.Map _json) {
    if (_json.containsKey('isCa')) {
      isCa = _json['isCa'] as core.bool;
    }
    if (_json.containsKey('maxIssuerPathLength')) {
      maxIssuerPathLength = _json['maxIssuerPathLength'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (isCa != null) 'isCa': isCa,
        if (maxIssuerPathLength != null)
          'maxIssuerPathLength': maxIssuerPathLength,
      };
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// A Certificate corresponds to a signed X.509 certificate issued by a
/// CertificateAuthority.
class Certificate {
  /// A structured description of the issued X.509 certificate.
  ///
  /// Output only.
  CertificateDescription certificateDescription;

  /// A description of the certificate and key that does not require X.509 or
  /// ASN.1.
  ///
  /// Immutable.
  CertificateConfig config;

  /// The time at which this Certificate was created.
  ///
  /// Output only.
  core.String createTime;

  /// Labels with user-defined metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String> labels;

  /// The desired lifetime of a certificate.
  ///
  /// Used to create the "not_before_time" and "not_after_time" fields inside an
  /// X.509 certificate. Note that the lifetime may be truncated if it would
  /// extend past the life of any certificate authority in the issuing chain.
  ///
  /// Required. Immutable.
  core.String lifetime;

  /// The resource path for this Certificate in the format `projects / *
  /// /locations / * /certificateAuthorities / * /certificates / * `.
  ///
  /// Output only.
  core.String name;

  /// The pem-encoded, signed X.509 certificate.
  ///
  /// Output only.
  core.String pemCertificate;

  /// The chain that may be used to verify the X.509 certificate.
  ///
  /// Expected to be in issuer-to-root order according to RFC 5246.
  ///
  /// Output only.
  core.List<core.String> pemCertificateChain;

  /// A pem-encoded X.509 certificate signing request (CSR).
  ///
  /// Immutable.
  core.String pemCsr;

  /// Details regarding the revocation of this Certificate.
  ///
  /// This Certificate is considered revoked if and only if this field is
  /// present.
  ///
  /// Output only.
  RevocationDetails revocationDetails;

  /// The time at which this Certificate was updated.
  ///
  /// Output only.
  core.String updateTime;

  Certificate();

  Certificate.fromJson(core.Map _json) {
    if (_json.containsKey('certificateDescription')) {
      certificateDescription = CertificateDescription.fromJson(
          _json['certificateDescription']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('config')) {
      config = CertificateConfig.fromJson(
          _json['config'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('lifetime')) {
      lifetime = _json['lifetime'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('pemCertificate')) {
      pemCertificate = _json['pemCertificate'] as core.String;
    }
    if (_json.containsKey('pemCertificateChain')) {
      pemCertificateChain = (_json['pemCertificateChain'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('pemCsr')) {
      pemCsr = _json['pemCsr'] as core.String;
    }
    if (_json.containsKey('revocationDetails')) {
      revocationDetails = RevocationDetails.fromJson(
          _json['revocationDetails'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (certificateDescription != null)
          'certificateDescription': certificateDescription.toJson(),
        if (config != null) 'config': config.toJson(),
        if (createTime != null) 'createTime': createTime,
        if (labels != null) 'labels': labels,
        if (lifetime != null) 'lifetime': lifetime,
        if (name != null) 'name': name,
        if (pemCertificate != null) 'pemCertificate': pemCertificate,
        if (pemCertificateChain != null)
          'pemCertificateChain': pemCertificateChain,
        if (pemCsr != null) 'pemCsr': pemCsr,
        if (revocationDetails != null)
          'revocationDetails': revocationDetails.toJson(),
        if (updateTime != null) 'updateTime': updateTime,
      };
}

/// A CertificateAuthority represents an individual Certificate Authority.
///
/// A CertificateAuthority can be used to create Certificates.
class CertificateAuthority {
  /// URLs for accessing content published by this CA, such as the CA
  /// certificate and CRLs.
  ///
  /// Output only.
  AccessUrls accessUrls;

  /// A structured description of this CertificateAuthority's CA certificate and
  /// its issuers.
  ///
  /// Ordered as self-to-root.
  ///
  /// Output only.
  core.List<CertificateDescription> caCertificateDescriptions;

  /// The CertificateAuthorityPolicy to enforce when issuing Certificates from
  /// this CertificateAuthority.
  ///
  /// Optional.
  CertificateAuthorityPolicy certificatePolicy;

  /// The config used to create a self-signed X.509 certificate or CSR.
  ///
  /// Required. Immutable.
  CertificateConfig config;

  /// The time at which this CertificateAuthority was created.
  ///
  /// Output only.
  core.String createTime;

  /// The time at which this CertificateAuthority will be deleted, if scheduled
  /// for deletion.
  ///
  /// Output only.
  core.String deleteTime;

  /// The name of a Cloud Storage bucket where this CertificateAuthority will
  /// publish content, such as the CA certificate and CRLs.
  ///
  /// This must be a bucket name, without any prefixes (such as `gs://`) or
  /// suffixes (such as `.googleapis.com`). For example, to use a bucket named
  /// `my-bucket`, you would simply specify `my-bucket`. If not specified, a
  /// managed bucket will be created.
  ///
  /// Immutable.
  core.String gcsBucket;

  /// The IssuingOptions to follow when issuing Certificates from this
  /// CertificateAuthority.
  ///
  /// Optional.
  IssuingOptions issuingOptions;

  /// Used when issuing certificates for this CertificateAuthority.
  ///
  /// If this CertificateAuthority is a self-signed CertificateAuthority, this
  /// key is also used to sign the self-signed CA certificate. Otherwise, it is
  /// used to sign a CSR.
  ///
  /// Required. Immutable.
  KeyVersionSpec keySpec;

  /// Labels with user-defined metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String> labels;

  /// The desired lifetime of the CA certificate.
  ///
  /// Used to create the "not_before_time" and "not_after_time" fields inside an
  /// X.509 certificate.
  ///
  /// Required.
  core.String lifetime;

  /// The resource name for this CertificateAuthority in the format `projects /
  /// * /locations / * /certificateAuthorities / * `.
  ///
  /// Output only.
  core.String name;

  /// This CertificateAuthority's certificate chain, including the current
  /// CertificateAuthority's certificate.
  ///
  /// Ordered such that the root issuer is the final element (consistent with
  /// RFC 5246). For a self-signed CA, this will only list the current
  /// CertificateAuthority's certificate.
  ///
  /// Output only.
  core.List<core.String> pemCaCertificates;

  /// The State for this CertificateAuthority.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "ENABLED" : Certificates can be issued from this CA. CRLs will be
  /// generated for this CA.
  /// - "DISABLED" : Certificates cannot be issued from this CA. CRLs will still
  /// be generated.
  /// - "PENDING_ACTIVATION" : Certificates cannot be issued from this CA. CRLs
  /// will not be generated.
  /// - "PENDING_DELETION" : Certificates cannot be issued from this CA. CRLs
  /// will not be generated.
  core.String state;

  /// If this is a subordinate CertificateAuthority, this field will be set with
  /// the subordinate configuration, which describes its issuers.
  ///
  /// This may be updated, but this CertificateAuthority must continue to
  /// validate.
  ///
  /// Optional.
  SubordinateConfig subordinateConfig;

  /// The Tier of this CertificateAuthority.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not specified.
  /// - "ENTERPRISE" : Enterprise tier.
  /// - "DEVOPS" : DevOps tier.
  core.String tier;

  /// The Type of this CertificateAuthority.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified.
  /// - "SELF_SIGNED" : Self-signed CA.
  /// - "SUBORDINATE" : Subordinate CA. Could be issued by a Private CA
  /// CertificateAuthority or an unmanaged CA.
  core.String type;

  /// The time at which this CertificateAuthority was updated.
  ///
  /// Output only.
  core.String updateTime;

  CertificateAuthority();

  CertificateAuthority.fromJson(core.Map _json) {
    if (_json.containsKey('accessUrls')) {
      accessUrls = AccessUrls.fromJson(
          _json['accessUrls'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('caCertificateDescriptions')) {
      caCertificateDescriptions =
          (_json['caCertificateDescriptions'] as core.List)
              .map<CertificateDescription>((value) =>
                  CertificateDescription.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList();
    }
    if (_json.containsKey('certificatePolicy')) {
      certificatePolicy = CertificateAuthorityPolicy.fromJson(
          _json['certificatePolicy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('config')) {
      config = CertificateConfig.fromJson(
          _json['config'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('deleteTime')) {
      deleteTime = _json['deleteTime'] as core.String;
    }
    if (_json.containsKey('gcsBucket')) {
      gcsBucket = _json['gcsBucket'] as core.String;
    }
    if (_json.containsKey('issuingOptions')) {
      issuingOptions = IssuingOptions.fromJson(
          _json['issuingOptions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('keySpec')) {
      keySpec = KeyVersionSpec.fromJson(
          _json['keySpec'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('lifetime')) {
      lifetime = _json['lifetime'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('pemCaCertificates')) {
      pemCaCertificates = (_json['pemCaCertificates'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('subordinateConfig')) {
      subordinateConfig = SubordinateConfig.fromJson(
          _json['subordinateConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (accessUrls != null) 'accessUrls': accessUrls.toJson(),
        if (caCertificateDescriptions != null)
          'caCertificateDescriptions':
              caCertificateDescriptions.map((value) => value.toJson()).toList(),
        if (certificatePolicy != null)
          'certificatePolicy': certificatePolicy.toJson(),
        if (config != null) 'config': config.toJson(),
        if (createTime != null) 'createTime': createTime,
        if (deleteTime != null) 'deleteTime': deleteTime,
        if (gcsBucket != null) 'gcsBucket': gcsBucket,
        if (issuingOptions != null) 'issuingOptions': issuingOptions.toJson(),
        if (keySpec != null) 'keySpec': keySpec.toJson(),
        if (labels != null) 'labels': labels,
        if (lifetime != null) 'lifetime': lifetime,
        if (name != null) 'name': name,
        if (pemCaCertificates != null) 'pemCaCertificates': pemCaCertificates,
        if (state != null) 'state': state,
        if (subordinateConfig != null)
          'subordinateConfig': subordinateConfig.toJson(),
        if (tier != null) 'tier': tier,
        if (type != null) 'type': type,
        if (updateTime != null) 'updateTime': updateTime,
      };
}

/// The issuing policy for a CertificateAuthority.
///
/// Certificates will not be successfully issued from this CertificateAuthority
/// if they violate the policy.
class CertificateAuthorityPolicy {
  /// If any value is specified here, then all Certificates issued by the
  /// CertificateAuthority must match at least one listed value.
  ///
  /// If no value is specified, all values will be allowed for this fied. Glob
  /// patterns are also supported.
  ///
  /// Optional.
  core.List<core.String> allowedCommonNames;

  /// All Certificates issued by the CertificateAuthority must match at least
  /// one listed ReusableConfigWrapper in the list.
  ///
  /// Optional.
  AllowedConfigList allowedConfigList;

  /// If specified, then only methods allowed in the IssuanceModes may be used
  /// to issue Certificates.
  ///
  /// Optional.
  IssuanceModes allowedIssuanceModes;

  /// If any Subject is specified here, then all Certificates issued by the
  /// CertificateAuthority must match at least one listed Subject.
  ///
  /// If a Subject has an empty field, any value will be allowed for that field.
  ///
  /// Optional.
  core.List<Subject> allowedLocationsAndOrganizations;

  /// If a AllowedSubjectAltNames is specified here, then all Certificates
  /// issued by the CertificateAuthority must match AllowedSubjectAltNames.
  ///
  /// If no value or an empty value is specified, any value will be allowed for
  /// the SubjectAltNames field.
  ///
  /// Optional.
  AllowedSubjectAltNames allowedSans;

  /// The maximum lifetime allowed by the CertificateAuthority.
  ///
  /// Note that if the any part if the issuing chain expires before a
  /// Certificate's requested maximum_lifetime, the effective lifetime will be
  /// explicitly truncated.
  ///
  /// Optional.
  core.String maximumLifetime;

  /// All Certificates issued by the CertificateAuthority will use the provided
  /// configuration values, overwriting any requested configuration values.
  ///
  /// Optional.
  ReusableConfigWrapper overwriteConfigValues;

  CertificateAuthorityPolicy();

  CertificateAuthorityPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('allowedCommonNames')) {
      allowedCommonNames = (_json['allowedCommonNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('allowedConfigList')) {
      allowedConfigList = AllowedConfigList.fromJson(
          _json['allowedConfigList'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('allowedIssuanceModes')) {
      allowedIssuanceModes = IssuanceModes.fromJson(
          _json['allowedIssuanceModes'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('allowedLocationsAndOrganizations')) {
      allowedLocationsAndOrganizations =
          (_json['allowedLocationsAndOrganizations'] as core.List)
              .map<Subject>((value) => Subject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList();
    }
    if (_json.containsKey('allowedSans')) {
      allowedSans = AllowedSubjectAltNames.fromJson(
          _json['allowedSans'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('maximumLifetime')) {
      maximumLifetime = _json['maximumLifetime'] as core.String;
    }
    if (_json.containsKey('overwriteConfigValues')) {
      overwriteConfigValues = ReusableConfigWrapper.fromJson(
          _json['overwriteConfigValues']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (allowedCommonNames != null)
          'allowedCommonNames': allowedCommonNames,
        if (allowedConfigList != null)
          'allowedConfigList': allowedConfigList.toJson(),
        if (allowedIssuanceModes != null)
          'allowedIssuanceModes': allowedIssuanceModes.toJson(),
        if (allowedLocationsAndOrganizations != null)
          'allowedLocationsAndOrganizations': allowedLocationsAndOrganizations
              .map((value) => value.toJson())
              .toList(),
        if (allowedSans != null) 'allowedSans': allowedSans.toJson(),
        if (maximumLifetime != null) 'maximumLifetime': maximumLifetime,
        if (overwriteConfigValues != null)
          'overwriteConfigValues': overwriteConfigValues.toJson(),
      };
}

/// A CertificateConfig describes an X.509 certificate or CSR that is to be
/// created, as an alternative to using ASN.1.
class CertificateConfig {
  /// The public key that corresponds to this config.
  ///
  /// This is, for example, used when issuing Certificates, but not when
  /// creating a self-signed CertificateAuthority or CertificateAuthority CSR.
  ///
  /// Optional.
  PublicKey publicKey;

  /// Describes how some of the technical fields in a certificate should be
  /// populated.
  ///
  /// Required.
  ReusableConfigWrapper reusableConfig;

  /// Specifies some of the values in a certificate that are related to the
  /// subject.
  ///
  /// Required.
  SubjectConfig subjectConfig;

  CertificateConfig();

  CertificateConfig.fromJson(core.Map _json) {
    if (_json.containsKey('publicKey')) {
      publicKey = PublicKey.fromJson(
          _json['publicKey'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('reusableConfig')) {
      reusableConfig = ReusableConfigWrapper.fromJson(
          _json['reusableConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('subjectConfig')) {
      subjectConfig = SubjectConfig.fromJson(
          _json['subjectConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (publicKey != null) 'publicKey': publicKey.toJson(),
        if (reusableConfig != null) 'reusableConfig': reusableConfig.toJson(),
        if (subjectConfig != null) 'subjectConfig': subjectConfig.toJson(),
      };
}

/// A CertificateDescription describes an X.509 certificate or CSR that has been
/// issued, as an alternative to using ASN.1 / X.509.
class CertificateDescription {
  /// Describes lists of issuer CA certificate URLs that appear in the
  /// "Authority Information Access" extension in the certificate.
  core.List<core.String> aiaIssuingCertificateUrls;

  /// Identifies the subject_key_id of the parent certificate, per
  /// https://tools.ietf.org/html/rfc5280#section-4.2.1.1
  KeyId authorityKeyId;

  /// The hash of the x.509 certificate.
  CertificateFingerprint certFingerprint;

  /// Describes some of the technical fields in a certificate.
  ReusableConfigValues configValues;

  /// Describes a list of locations to obtain CRL information, i.e. the
  /// DistributionPoint.fullName described by
  /// https://tools.ietf.org/html/rfc5280#section-4.2.1.13
  core.List<core.String> crlDistributionPoints;

  /// The public key that corresponds to an issued certificate.
  PublicKey publicKey;

  /// Describes some of the values in a certificate that are related to the
  /// subject and lifetime.
  SubjectDescription subjectDescription;

  /// Provides a means of identifiying certificates that contain a particular
  /// public key, per https://tools.ietf.org/html/rfc5280#section-4.2.1.2.
  KeyId subjectKeyId;

  CertificateDescription();

  CertificateDescription.fromJson(core.Map _json) {
    if (_json.containsKey('aiaIssuingCertificateUrls')) {
      aiaIssuingCertificateUrls =
          (_json['aiaIssuingCertificateUrls'] as core.List)
              .map<core.String>((value) => value as core.String)
              .toList();
    }
    if (_json.containsKey('authorityKeyId')) {
      authorityKeyId = KeyId.fromJson(
          _json['authorityKeyId'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('certFingerprint')) {
      certFingerprint = CertificateFingerprint.fromJson(
          _json['certFingerprint'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('configValues')) {
      configValues = ReusableConfigValues.fromJson(
          _json['configValues'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('crlDistributionPoints')) {
      crlDistributionPoints = (_json['crlDistributionPoints'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('publicKey')) {
      publicKey = PublicKey.fromJson(
          _json['publicKey'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('subjectDescription')) {
      subjectDescription = SubjectDescription.fromJson(
          _json['subjectDescription'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('subjectKeyId')) {
      subjectKeyId = KeyId.fromJson(
          _json['subjectKeyId'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (aiaIssuingCertificateUrls != null)
          'aiaIssuingCertificateUrls': aiaIssuingCertificateUrls,
        if (authorityKeyId != null) 'authorityKeyId': authorityKeyId.toJson(),
        if (certFingerprint != null)
          'certFingerprint': certFingerprint.toJson(),
        if (configValues != null) 'configValues': configValues.toJson(),
        if (crlDistributionPoints != null)
          'crlDistributionPoints': crlDistributionPoints,
        if (publicKey != null) 'publicKey': publicKey.toJson(),
        if (subjectDescription != null)
          'subjectDescription': subjectDescription.toJson(),
        if (subjectKeyId != null) 'subjectKeyId': subjectKeyId.toJson(),
      };
}

/// A group of fingerprints for the x509 certificate.
class CertificateFingerprint {
  /// The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
  core.String sha256Hash;

  CertificateFingerprint();

  CertificateFingerprint.fromJson(core.Map _json) {
    if (_json.containsKey('sha256Hash')) {
      sha256Hash = _json['sha256Hash'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (sha256Hash != null) 'sha256Hash': sha256Hash,
      };
}

/// A CertificateRevocationList corresponds to a signed X.509 certificate
/// Revocation List (CRL).
///
/// A CRL contains the serial numbers of certificates that should no longer be
/// trusted.
class CertificateRevocationList {
  /// The location where 'pem_crl' can be accessed.
  ///
  /// Output only.
  core.String accessUrl;

  /// The time at which this CertificateRevocationList was created.
  ///
  /// Output only.
  core.String createTime;

  /// Labels with user-defined metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String> labels;

  /// The resource path for this CertificateRevocationList in the format
  /// `projects / * /locations / * /certificateAuthorities / * /
  /// certificateRevocationLists / * `.
  ///
  /// Output only.
  core.String name;

  /// The PEM-encoded X.509 CRL.
  ///
  /// Output only.
  core.String pemCrl;

  /// The revoked serial numbers that appear in pem_crl.
  ///
  /// Output only.
  core.List<RevokedCertificate> revokedCertificates;

  /// The CRL sequence number that appears in pem_crl.
  ///
  /// Output only.
  core.String sequenceNumber;

  /// The State for this CertificateRevocationList.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "ACTIVE" : The CertificateRevocationList is up to date.
  /// - "SUPERSEDED" : The CertificateRevocationList is no longer current.
  core.String state;

  /// The time at which this CertificateRevocationList was updated.
  ///
  /// Output only.
  core.String updateTime;

  CertificateRevocationList();

  CertificateRevocationList.fromJson(core.Map _json) {
    if (_json.containsKey('accessUrl')) {
      accessUrl = _json['accessUrl'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('pemCrl')) {
      pemCrl = _json['pemCrl'] as core.String;
    }
    if (_json.containsKey('revokedCertificates')) {
      revokedCertificates = (_json['revokedCertificates'] as core.List)
          .map<RevokedCertificate>((value) => RevokedCertificate.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('sequenceNumber')) {
      sequenceNumber = _json['sequenceNumber'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (accessUrl != null) 'accessUrl': accessUrl,
        if (createTime != null) 'createTime': createTime,
        if (labels != null) 'labels': labels,
        if (name != null) 'name': name,
        if (pemCrl != null) 'pemCrl': pemCrl,
        if (revokedCertificates != null)
          'revokedCertificates':
              revokedCertificates.map((value) => value.toJson()).toList(),
        if (sequenceNumber != null) 'sequenceNumber': sequenceNumber,
        if (state != null) 'state': state,
        if (updateTime != null) 'updateTime': updateTime,
      };
}

/// Request message for CertificateAuthorityService.DisableCertificateAuthority.
class DisableCertificateAuthorityRequest {
  /// An ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String requestId;

  DisableCertificateAuthorityRequest();

  DisableCertificateAuthorityRequest.fromJson(core.Map _json) {
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (requestId != null) 'requestId': requestId,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// Request message for CertificateAuthorityService.EnableCertificateAuthority.
class EnableCertificateAuthorityRequest {
  /// An ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String requestId;

  EnableCertificateAuthorityRequest();

  EnableCertificateAuthorityRequest.fromJson(core.Map _json) {
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (requestId != null) 'requestId': requestId,
      };
}

/// Exemplars are example points that may be used to annotate aggregated
/// distribution values.
///
/// They are metadata that gives information about a particular value added to a
/// Distribution bucket, such as a trace ID that was active when a value was
/// added. They may contain further information, such as a example values and
/// timestamps, origin, etc.
class Exemplar {
  /// Contextual information about the example value.
  ///
  /// Examples are: Trace: type.googleapis.com/google.monitoring.v3.SpanContext
  /// Literal string: type.googleapis.com/google.protobuf.StringValue Labels
  /// dropped during aggregation:
  /// type.googleapis.com/google.monitoring.v3.DroppedLabels There may be only a
  /// single attachment of any given message type in a single exemplar, and this
  /// is enforced by the system.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> attachments;

  /// The observation (sampling) time of the above value.
  core.String timestamp;

  /// Value of the exemplar point.
  ///
  /// This value determines to which bucket the exemplar belongs.
  core.double value;

  Exemplar();

  Exemplar.fromJson(core.Map _json) {
    if (_json.containsKey('attachments')) {
      attachments = (_json['attachments'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('timestamp')) {
      timestamp = _json['timestamp'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = (_json['value'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (attachments != null) 'attachments': attachments,
        if (timestamp != null) 'timestamp': timestamp,
        if (value != null) 'value': value,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
class Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (description != null) 'description': description,
        if (expression != null) 'expression': expression,
        if (location != null) 'location': location,
        if (title != null) 'title': title,
      };
}

/// KeyUsage.ExtendedKeyUsageOptions has fields that correspond to certain
/// common OIDs that could be specified as an extended key usage value.
class ExtendedKeyUsageOptions {
  /// Corresponds to OID 1.3.6.1.5.5.7.3.2.
  ///
  /// Officially described as "TLS WWW client authentication", though regularly
  /// used for non-WWW TLS.
  core.bool clientAuth;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.3.
  ///
  /// Officially described as "Signing of downloadable executable code client
  /// authentication".
  core.bool codeSigning;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.4.
  ///
  /// Officially described as "Email protection".
  core.bool emailProtection;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.9.
  ///
  /// Officially described as "Signing OCSP responses".
  core.bool ocspSigning;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.1.
  ///
  /// Officially described as "TLS WWW server authentication", though regularly
  /// used for non-WWW TLS.
  core.bool serverAuth;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.8.
  ///
  /// Officially described as "Binding the hash of an object to a time".
  core.bool timeStamping;

  ExtendedKeyUsageOptions();

  ExtendedKeyUsageOptions.fromJson(core.Map _json) {
    if (_json.containsKey('clientAuth')) {
      clientAuth = _json['clientAuth'] as core.bool;
    }
    if (_json.containsKey('codeSigning')) {
      codeSigning = _json['codeSigning'] as core.bool;
    }
    if (_json.containsKey('emailProtection')) {
      emailProtection = _json['emailProtection'] as core.bool;
    }
    if (_json.containsKey('ocspSigning')) {
      ocspSigning = _json['ocspSigning'] as core.bool;
    }
    if (_json.containsKey('serverAuth')) {
      serverAuth = _json['serverAuth'] as core.bool;
    }
    if (_json.containsKey('timeStamping')) {
      timeStamping = _json['timeStamping'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (clientAuth != null) 'clientAuth': clientAuth,
        if (codeSigning != null) 'codeSigning': codeSigning,
        if (emailProtection != null) 'emailProtection': emailProtection,
        if (ocspSigning != null) 'ocspSigning': ocspSigning,
        if (serverAuth != null) 'serverAuth': serverAuth,
        if (timeStamping != null) 'timeStamping': timeStamping,
      };
}

/// Response message for
/// CertificateAuthorityService.FetchCertificateAuthorityCsr.
class FetchCertificateAuthorityCsrResponse {
  /// The PEM-encoded signed certificate signing request (CSR).
  ///
  /// Output only.
  core.String pemCsr;

  FetchCertificateAuthorityCsrResponse();

  FetchCertificateAuthorityCsrResponse.fromJson(core.Map _json) {
    if (_json.containsKey('pemCsr')) {
      pemCsr = _json['pemCsr'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (pemCsr != null) 'pemCsr': pemCsr,
      };
}

/// The allowed types for \[VALUE\] in a `[KEY]:[VALUE]` attribute.
class GoogleApiServicecontrolV1AttributeValue {
  /// A Boolean value represented by `true` or `false`.
  core.bool boolValue;

  /// A 64-bit signed integer.
  core.String intValue;

  /// A string up to 256 bytes long.
  GoogleApiServicecontrolV1TruncatableString stringValue;

  GoogleApiServicecontrolV1AttributeValue();

  GoogleApiServicecontrolV1AttributeValue.fromJson(core.Map _json) {
    if (_json.containsKey('boolValue')) {
      boolValue = _json['boolValue'] as core.bool;
    }
    if (_json.containsKey('intValue')) {
      intValue = _json['intValue'] as core.String;
    }
    if (_json.containsKey('stringValue')) {
      stringValue = GoogleApiServicecontrolV1TruncatableString.fromJson(
          _json['stringValue'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (boolValue != null) 'boolValue': boolValue,
        if (intValue != null) 'intValue': intValue,
        if (stringValue != null) 'stringValue': stringValue.toJson(),
      };
}

/// A set of attributes, each in the format `[KEY]:[VALUE]`.
class GoogleApiServicecontrolV1Attributes {
  /// The set of attributes.
  ///
  /// Each attribute's key can be up to 128 bytes long. The value can be a
  /// string up to 256 bytes, a signed 64-bit integer, or the Boolean values
  /// `true` and `false`. For example: "/instance_id": "my-instance"
  /// "/http/user_agent": "" "/http/request_bytes": 300 "abc.com/myattribute":
  /// true
  core.Map<core.String, GoogleApiServicecontrolV1AttributeValue> attributeMap;

  /// The number of attributes that were discarded.
  ///
  /// Attributes can be discarded because their keys are too long or because
  /// there are too many attributes. If this value is 0 then all attributes are
  /// valid.
  core.int droppedAttributesCount;

  GoogleApiServicecontrolV1Attributes();

  GoogleApiServicecontrolV1Attributes.fromJson(core.Map _json) {
    if (_json.containsKey('attributeMap')) {
      attributeMap =
          (_json['attributeMap'] as core.Map).cast<core.String, core.Map>().map(
                (key, item) => core.MapEntry(
                  key,
                  GoogleApiServicecontrolV1AttributeValue.fromJson(
                      item as core.Map<core.String, core.dynamic>),
                ),
              );
    }
    if (_json.containsKey('droppedAttributesCount')) {
      droppedAttributesCount = _json['droppedAttributesCount'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (attributeMap != null)
          'attributeMap': attributeMap
              .map((key, item) => core.MapEntry(key, item.toJson())),
        if (droppedAttributesCount != null)
          'droppedAttributesCount': droppedAttributesCount,
      };
}

/// Distribution represents a frequency distribution of double-valued sample
/// points.
///
/// It contains the size of the population of sample points plus additional
/// optional information: - the arithmetic mean of the samples - the minimum and
/// maximum of the samples - the sum-squared-deviation of the samples, used to
/// compute variance - a histogram of the values of the sample points
class GoogleApiServicecontrolV1Distribution {
  /// The number of samples in each histogram bucket.
  ///
  /// \`bucket_counts\` are optional. If present, they must sum to the \`count\`
  /// value. The buckets are defined below in \`bucket_option\`. There are N
  /// buckets. \`bucket_counts\[0\]\` is the number of samples in the underflow
  /// bucket. \`bucket_counts\[1\]\` to \`bucket_counts\[N-1\]\` are the numbers
  /// of samples in each of the finite buckets. And \`bucket_counts\[N\] is the
  /// number of samples in the overflow bucket. See the comments of
  /// \`bucket_option\` below for more details. Any suffix of trailing zeros may
  /// be omitted.
  core.List<core.String> bucketCounts;

  /// The total number of samples in the distribution.
  ///
  /// Must be >= 0.
  core.String count;

  /// Example points.
  ///
  /// Must be in increasing order of `value` field.
  core.List<Exemplar> exemplars;

  /// Buckets with arbitrary user-provided width.
  GoogleApiServicecontrolV1ExplicitBuckets explicitBuckets;

  /// Buckets with exponentially growing width.
  GoogleApiServicecontrolV1ExponentialBuckets exponentialBuckets;

  /// Buckets with constant width.
  GoogleApiServicecontrolV1LinearBuckets linearBuckets;

  /// The maximum of the population of values.
  ///
  /// Ignored if `count` is zero.
  core.double maximum;

  /// The arithmetic mean of the samples in the distribution.
  ///
  /// If `count` is zero then this field must be zero.
  core.double mean;

  /// The minimum of the population of values.
  ///
  /// Ignored if `count` is zero.
  core.double minimum;

  /// The sum of squared deviations from the mean: Sum\[i=1..count\]((x_i -
  /// mean)^2) where each x_i is a sample values.
  ///
  /// If `count` is zero then this field must be zero, otherwise validation of
  /// the request fails.
  core.double sumOfSquaredDeviation;

  GoogleApiServicecontrolV1Distribution();

  GoogleApiServicecontrolV1Distribution.fromJson(core.Map _json) {
    if (_json.containsKey('bucketCounts')) {
      bucketCounts = (_json['bucketCounts'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('count')) {
      count = _json['count'] as core.String;
    }
    if (_json.containsKey('exemplars')) {
      exemplars = (_json['exemplars'] as core.List)
          .map<Exemplar>((value) =>
              Exemplar.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('explicitBuckets')) {
      explicitBuckets = GoogleApiServicecontrolV1ExplicitBuckets.fromJson(
          _json['explicitBuckets'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('exponentialBuckets')) {
      exponentialBuckets = GoogleApiServicecontrolV1ExponentialBuckets.fromJson(
          _json['exponentialBuckets'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('linearBuckets')) {
      linearBuckets = GoogleApiServicecontrolV1LinearBuckets.fromJson(
          _json['linearBuckets'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('maximum')) {
      maximum = (_json['maximum'] as core.num).toDouble();
    }
    if (_json.containsKey('mean')) {
      mean = (_json['mean'] as core.num).toDouble();
    }
    if (_json.containsKey('minimum')) {
      minimum = (_json['minimum'] as core.num).toDouble();
    }
    if (_json.containsKey('sumOfSquaredDeviation')) {
      sumOfSquaredDeviation =
          (_json['sumOfSquaredDeviation'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (bucketCounts != null) 'bucketCounts': bucketCounts,
        if (count != null) 'count': count,
        if (exemplars != null)
          'exemplars': exemplars.map((value) => value.toJson()).toList(),
        if (explicitBuckets != null)
          'explicitBuckets': explicitBuckets.toJson(),
        if (exponentialBuckets != null)
          'exponentialBuckets': exponentialBuckets.toJson(),
        if (linearBuckets != null) 'linearBuckets': linearBuckets.toJson(),
        if (maximum != null) 'maximum': maximum,
        if (mean != null) 'mean': mean,
        if (minimum != null) 'minimum': minimum,
        if (sumOfSquaredDeviation != null)
          'sumOfSquaredDeviation': sumOfSquaredDeviation,
      };
}

/// Describing buckets with arbitrary user-provided width.
class GoogleApiServicecontrolV1ExplicitBuckets {
  /// 'bound' is a list of strictly increasing boundaries between buckets.
  ///
  /// Note that a list of length N-1 defines N buckets because of fenceposting.
  /// See comments on `bucket_options` for details. The i'th finite bucket
  /// covers the interval \[bound\[i-1\], bound\[i\]) where i ranges from 1 to
  /// bound_size() - 1. Note that there are no finite buckets at all if 'bound'
  /// only contains a single element; in that special case the single bound
  /// defines the boundary between the underflow and overflow buckets. bucket
  /// number lower bound upper bound i == 0 (underflow) -inf bound\[i\] 0 < i <
  /// bound_size() bound\[i-1\] bound\[i\] i == bound_size() (overflow)
  /// bound\[i-1\] +inf
  core.List<core.double> bounds;

  GoogleApiServicecontrolV1ExplicitBuckets();

  GoogleApiServicecontrolV1ExplicitBuckets.fromJson(core.Map _json) {
    if (_json.containsKey('bounds')) {
      bounds = (_json['bounds'] as core.List)
          .map<core.double>((value) => (value as core.num).toDouble())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (bounds != null) 'bounds': bounds,
      };
}

/// Describing buckets with exponentially growing width.
class GoogleApiServicecontrolV1ExponentialBuckets {
  /// The i'th exponential bucket covers the interval \[scale *
  /// growth_factor^(i-1), scale * growth_factor^i) where i ranges from 1 to
  /// num_finite_buckets inclusive.
  ///
  /// Must be larger than 1.0.
  core.double growthFactor;

  /// The number of finite buckets.
  ///
  /// With the underflow and overflow buckets, the total number of buckets is
  /// `num_finite_buckets` + 2. See comments on `bucket_options` for details.
  core.int numFiniteBuckets;

  /// The i'th exponential bucket covers the interval \[scale *
  /// growth_factor^(i-1), scale * growth_factor^i) where i ranges from 1 to
  /// num_finite_buckets inclusive.
  ///
  /// Must be > 0.
  core.double scale;

  GoogleApiServicecontrolV1ExponentialBuckets();

  GoogleApiServicecontrolV1ExponentialBuckets.fromJson(core.Map _json) {
    if (_json.containsKey('growthFactor')) {
      growthFactor = (_json['growthFactor'] as core.num).toDouble();
    }
    if (_json.containsKey('numFiniteBuckets')) {
      numFiniteBuckets = _json['numFiniteBuckets'] as core.int;
    }
    if (_json.containsKey('scale')) {
      scale = (_json['scale'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (growthFactor != null) 'growthFactor': growthFactor,
        if (numFiniteBuckets != null) 'numFiniteBuckets': numFiniteBuckets,
        if (scale != null) 'scale': scale,
      };
}

/// A common proto for logging HTTP requests.
///
/// Only contains semantics defined by the HTTP specification. Product-specific
/// logging information MUST be defined in a separate message.
class GoogleApiServicecontrolV1HttpRequest {
  /// The number of HTTP response bytes inserted into cache.
  ///
  /// Set only when a cache fill was attempted.
  core.String cacheFillBytes;

  /// Whether or not an entity was served from cache (with or without
  /// validation).
  core.bool cacheHit;

  /// Whether or not a cache lookup was attempted.
  core.bool cacheLookup;

  /// Whether or not the response was validated with the origin server before
  /// being served from cache.
  ///
  /// This field is only meaningful if `cache_hit` is True.
  core.bool cacheValidatedWithOriginServer;

  /// The request processing latency on the server, from the time the request
  /// was received until the response was sent.
  core.String latency;

  /// Protocol used for the request.
  ///
  /// Examples: "HTTP/1.1", "HTTP/2", "websocket"
  core.String protocol;

  /// The referer URL of the request, as defined in
  /// [HTTP/1.1 Header Field Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
  core.String referer;

  /// The IP address (IPv4 or IPv6) of the client that issued the HTTP request.
  ///
  /// Examples: `"192.168.1.1"`, `"FE80::0202:B3FF:FE1E:8329"`.
  core.String remoteIp;

  /// The request method.
  ///
  /// Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`.
  core.String requestMethod;

  /// The size of the HTTP request message in bytes, including the request
  /// headers and the request body.
  core.String requestSize;

  /// The scheme (http, https), the host name, the path, and the query portion
  /// of the URL that was requested.
  ///
  /// Example: `"http://example.com/some/info?color=red"`.
  core.String requestUrl;

  /// The size of the HTTP response message sent back to the client, in bytes,
  /// including the response headers and the response body.
  core.String responseSize;

  /// The IP address (IPv4 or IPv6) of the origin server that the request was
  /// sent to.
  core.String serverIp;

  /// The response code indicating the status of the response.
  ///
  /// Examples: 200, 404.
  core.int status;

  /// The user agent sent by the client.
  ///
  /// Example: `"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET
  /// CLR 1.0.3705)"`.
  core.String userAgent;

  GoogleApiServicecontrolV1HttpRequest();

  GoogleApiServicecontrolV1HttpRequest.fromJson(core.Map _json) {
    if (_json.containsKey('cacheFillBytes')) {
      cacheFillBytes = _json['cacheFillBytes'] as core.String;
    }
    if (_json.containsKey('cacheHit')) {
      cacheHit = _json['cacheHit'] as core.bool;
    }
    if (_json.containsKey('cacheLookup')) {
      cacheLookup = _json['cacheLookup'] as core.bool;
    }
    if (_json.containsKey('cacheValidatedWithOriginServer')) {
      cacheValidatedWithOriginServer =
          _json['cacheValidatedWithOriginServer'] as core.bool;
    }
    if (_json.containsKey('latency')) {
      latency = _json['latency'] as core.String;
    }
    if (_json.containsKey('protocol')) {
      protocol = _json['protocol'] as core.String;
    }
    if (_json.containsKey('referer')) {
      referer = _json['referer'] as core.String;
    }
    if (_json.containsKey('remoteIp')) {
      remoteIp = _json['remoteIp'] as core.String;
    }
    if (_json.containsKey('requestMethod')) {
      requestMethod = _json['requestMethod'] as core.String;
    }
    if (_json.containsKey('requestSize')) {
      requestSize = _json['requestSize'] as core.String;
    }
    if (_json.containsKey('requestUrl')) {
      requestUrl = _json['requestUrl'] as core.String;
    }
    if (_json.containsKey('responseSize')) {
      responseSize = _json['responseSize'] as core.String;
    }
    if (_json.containsKey('serverIp')) {
      serverIp = _json['serverIp'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.int;
    }
    if (_json.containsKey('userAgent')) {
      userAgent = _json['userAgent'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (cacheFillBytes != null) 'cacheFillBytes': cacheFillBytes,
        if (cacheHit != null) 'cacheHit': cacheHit,
        if (cacheLookup != null) 'cacheLookup': cacheLookup,
        if (cacheValidatedWithOriginServer != null)
          'cacheValidatedWithOriginServer': cacheValidatedWithOriginServer,
        if (latency != null) 'latency': latency,
        if (protocol != null) 'protocol': protocol,
        if (referer != null) 'referer': referer,
        if (remoteIp != null) 'remoteIp': remoteIp,
        if (requestMethod != null) 'requestMethod': requestMethod,
        if (requestSize != null) 'requestSize': requestSize,
        if (requestUrl != null) 'requestUrl': requestUrl,
        if (responseSize != null) 'responseSize': responseSize,
        if (serverIp != null) 'serverIp': serverIp,
        if (status != null) 'status': status,
        if (userAgent != null) 'userAgent': userAgent,
      };
}

/// Describing buckets with constant width.
class GoogleApiServicecontrolV1LinearBuckets {
  /// The number of finite buckets.
  ///
  /// With the underflow and overflow buckets, the total number of buckets is
  /// `num_finite_buckets` + 2. See comments on `bucket_options` for details.
  core.int numFiniteBuckets;

  /// The i'th linear bucket covers the interval \[offset + (i-1) * width,
  /// offset + i * width) where i ranges from 1 to num_finite_buckets,
  /// inclusive.
  core.double offset;

  /// The i'th linear bucket covers the interval \[offset + (i-1) * width,
  /// offset + i * width) where i ranges from 1 to num_finite_buckets,
  /// inclusive.
  ///
  /// Must be strictly positive.
  core.double width;

  GoogleApiServicecontrolV1LinearBuckets();

  GoogleApiServicecontrolV1LinearBuckets.fromJson(core.Map _json) {
    if (_json.containsKey('numFiniteBuckets')) {
      numFiniteBuckets = _json['numFiniteBuckets'] as core.int;
    }
    if (_json.containsKey('offset')) {
      offset = (_json['offset'] as core.num).toDouble();
    }
    if (_json.containsKey('width')) {
      width = (_json['width'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (numFiniteBuckets != null) 'numFiniteBuckets': numFiniteBuckets,
        if (offset != null) 'offset': offset,
        if (width != null) 'width': width,
      };
}

/// An individual log entry.
class GoogleApiServicecontrolV1LogEntry {
  /// Information about the HTTP request associated with this log entry, if
  /// applicable.
  ///
  /// Optional.
  GoogleApiServicecontrolV1HttpRequest httpRequest;

  /// A unique ID for the log entry used for deduplication.
  ///
  /// If omitted, the implementation will generate one based on operation_id.
  core.String insertId;

  /// A set of user-defined (key, value) data that provides additional
  /// information about the log entry.
  core.Map<core.String, core.String> labels;

  /// The log to which this log entry belongs.
  ///
  /// Examples: `"syslog"`, `"book_log"`.
  ///
  /// Required.
  core.String name;

  /// Information about an operation associated with the log entry, if
  /// applicable.
  ///
  /// Optional.
  GoogleApiServicecontrolV1LogEntryOperation operation;

  /// The log entry payload, represented as a protocol buffer that is expressed
  /// as a JSON object.
  ///
  /// The only accepted type currently is AuditLog.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> protoPayload;

  /// The severity of the log entry.
  ///
  /// The default value is `LogSeverity.DEFAULT`.
  /// Possible string values are:
  /// - "DEFAULT" : (0) The log entry has no assigned severity level.
  /// - "DEBUG" : (100) Debug or trace information.
  /// - "INFO" : (200) Routine information, such as ongoing status or
  /// performance.
  /// - "NOTICE" : (300) Normal but significant events, such as start up, shut
  /// down, or a configuration change.
  /// - "WARNING" : (400) Warning events might cause problems.
  /// - "ERROR" : (500) Error events are likely to cause problems.
  /// - "CRITICAL" : (600) Critical events cause more severe problems or
  /// outages.
  /// - "ALERT" : (700) A person must take an action immediately.
  /// - "EMERGENCY" : (800) One or more systems are unusable.
  core.String severity;

  /// Source code location information associated with the log entry, if any.
  ///
  /// Optional.
  GoogleApiServicecontrolV1LogEntrySourceLocation sourceLocation;

  /// The log entry payload, represented as a structure that is expressed as a
  /// JSON object.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> structPayload;

  /// The log entry payload, represented as a Unicode string (UTF-8).
  core.String textPayload;

  /// The time the event described by the log entry occurred.
  ///
  /// If omitted, defaults to operation start time.
  core.String timestamp;

  /// Resource name of the trace associated with the log entry, if any.
  ///
  /// If this field contains a relative resource name, you can assume the name
  /// is relative to `//tracing.googleapis.com`. Example:
  /// `projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824`
  ///
  /// Optional.
  core.String trace;

  GoogleApiServicecontrolV1LogEntry();

  GoogleApiServicecontrolV1LogEntry.fromJson(core.Map _json) {
    if (_json.containsKey('httpRequest')) {
      httpRequest = GoogleApiServicecontrolV1HttpRequest.fromJson(
          _json['httpRequest'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('insertId')) {
      insertId = _json['insertId'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('operation')) {
      operation = GoogleApiServicecontrolV1LogEntryOperation.fromJson(
          _json['operation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('protoPayload')) {
      protoPayload = (_json['protoPayload'] as core.Map)
          .cast<core.String, core.Object>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.Object,
            ),
          );
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('sourceLocation')) {
      sourceLocation = GoogleApiServicecontrolV1LogEntrySourceLocation.fromJson(
          _json['sourceLocation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('structPayload')) {
      structPayload = (_json['structPayload'] as core.Map)
          .cast<core.String, core.Object>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.Object,
            ),
          );
    }
    if (_json.containsKey('textPayload')) {
      textPayload = _json['textPayload'] as core.String;
    }
    if (_json.containsKey('timestamp')) {
      timestamp = _json['timestamp'] as core.String;
    }
    if (_json.containsKey('trace')) {
      trace = _json['trace'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (httpRequest != null) 'httpRequest': httpRequest.toJson(),
        if (insertId != null) 'insertId': insertId,
        if (labels != null) 'labels': labels,
        if (name != null) 'name': name,
        if (operation != null) 'operation': operation.toJson(),
        if (protoPayload != null) 'protoPayload': protoPayload,
        if (severity != null) 'severity': severity,
        if (sourceLocation != null) 'sourceLocation': sourceLocation.toJson(),
        if (structPayload != null) 'structPayload': structPayload,
        if (textPayload != null) 'textPayload': textPayload,
        if (timestamp != null) 'timestamp': timestamp,
        if (trace != null) 'trace': trace,
      };
}

/// Additional information about a potentially long-running operation with which
/// a log entry is associated.
class GoogleApiServicecontrolV1LogEntryOperation {
  /// Set this to True if this is the first log entry in the operation.
  ///
  /// Optional.
  core.bool first;

  /// An arbitrary operation identifier.
  ///
  /// Log entries with the same identifier are assumed to be part of the same
  /// operation.
  ///
  /// Optional.
  core.String id;

  /// Set this to True if this is the last log entry in the operation.
  ///
  /// Optional.
  core.bool last;

  /// An arbitrary producer identifier.
  ///
  /// The combination of `id` and `producer` must be globally unique. Examples
  /// for `producer`: `"MyDivision.MyBigCompany.com"`,
  /// `"github.com/MyProject/MyApplication"`.
  ///
  /// Optional.
  core.String producer;

  GoogleApiServicecontrolV1LogEntryOperation();

  GoogleApiServicecontrolV1LogEntryOperation.fromJson(core.Map _json) {
    if (_json.containsKey('first')) {
      first = _json['first'] as core.bool;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('last')) {
      last = _json['last'] as core.bool;
    }
    if (_json.containsKey('producer')) {
      producer = _json['producer'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (first != null) 'first': first,
        if (id != null) 'id': id,
        if (last != null) 'last': last,
        if (producer != null) 'producer': producer,
      };
}

/// Additional information about the source code location that produced the log
/// entry.
class GoogleApiServicecontrolV1LogEntrySourceLocation {
  /// Source file name.
  ///
  /// Depending on the runtime environment, this might be a simple name or a
  /// fully-qualified name.
  ///
  /// Optional.
  core.String file;

  /// Human-readable name of the function or method being invoked, with optional
  /// context such as the class or package name.
  ///
  /// This information may be used in contexts such as the logs viewer, where a
  /// file and line number are less meaningful. The format can vary by language.
  /// For example: `qual.if.ied.Class.method` (Java), `dir/package.func` (Go),
  /// `function` (Python).
  ///
  /// Optional.
  core.String function;

  /// Line within the source file.
  ///
  /// 1-based; 0 indicates no line number available.
  ///
  /// Optional.
  core.String line;

  GoogleApiServicecontrolV1LogEntrySourceLocation();

  GoogleApiServicecontrolV1LogEntrySourceLocation.fromJson(core.Map _json) {
    if (_json.containsKey('file')) {
      file = _json['file'] as core.String;
    }
    if (_json.containsKey('function')) {
      function = _json['function'] as core.String;
    }
    if (_json.containsKey('line')) {
      line = _json['line'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (file != null) 'file': file,
        if (function != null) 'function': function,
        if (line != null) 'line': line,
      };
}

/// Represents a single metric value.
class GoogleApiServicecontrolV1MetricValue {
  /// A boolean value.
  core.bool boolValue;

  /// A distribution value.
  GoogleApiServicecontrolV1Distribution distributionValue;

  /// A double precision floating point value.
  core.double doubleValue;

  /// The end of the time period over which this metric value's measurement
  /// applies.
  ///
  /// If not specified, google.api.servicecontrol.v1.Operation.end_time will be
  /// used.
  core.String endTime;

  /// A signed 64-bit integer value.
  core.String int64Value;

  /// The labels describing the metric value.
  ///
  /// See comments on google.api.servicecontrol.v1.Operation.labels for the
  /// overriding relationship. Note that this map must not contain monitored
  /// resource labels.
  core.Map<core.String, core.String> labels;

  /// A money value.
  Money moneyValue;

  /// The start of the time period over which this metric value's measurement
  /// applies.
  ///
  /// The time period has different semantics for different metric types
  /// (cumulative, delta, and gauge). See the metric definition documentation in
  /// the service configuration for details. If not specified,
  /// google.api.servicecontrol.v1.Operation.start_time will be used.
  core.String startTime;

  /// A text string value.
  core.String stringValue;

  GoogleApiServicecontrolV1MetricValue();

  GoogleApiServicecontrolV1MetricValue.fromJson(core.Map _json) {
    if (_json.containsKey('boolValue')) {
      boolValue = _json['boolValue'] as core.bool;
    }
    if (_json.containsKey('distributionValue')) {
      distributionValue = GoogleApiServicecontrolV1Distribution.fromJson(
          _json['distributionValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('doubleValue')) {
      doubleValue = (_json['doubleValue'] as core.num).toDouble();
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('int64Value')) {
      int64Value = _json['int64Value'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('moneyValue')) {
      moneyValue = Money.fromJson(
          _json['moneyValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('stringValue')) {
      stringValue = _json['stringValue'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (boolValue != null) 'boolValue': boolValue,
        if (distributionValue != null)
          'distributionValue': distributionValue.toJson(),
        if (doubleValue != null) 'doubleValue': doubleValue,
        if (endTime != null) 'endTime': endTime,
        if (int64Value != null) 'int64Value': int64Value,
        if (labels != null) 'labels': labels,
        if (moneyValue != null) 'moneyValue': moneyValue.toJson(),
        if (startTime != null) 'startTime': startTime,
        if (stringValue != null) 'stringValue': stringValue,
      };
}

/// Represents a set of metric values in the same metric.
///
/// Each metric value in the set should have a unique combination of start time,
/// end time, and label values.
class GoogleApiServicecontrolV1MetricValueSet {
  /// The metric name defined in the service configuration.
  core.String metricName;

  /// The values in this metric.
  core.List<GoogleApiServicecontrolV1MetricValue> metricValues;

  GoogleApiServicecontrolV1MetricValueSet();

  GoogleApiServicecontrolV1MetricValueSet.fromJson(core.Map _json) {
    if (_json.containsKey('metricName')) {
      metricName = _json['metricName'] as core.String;
    }
    if (_json.containsKey('metricValues')) {
      metricValues = (_json['metricValues'] as core.List)
          .map<GoogleApiServicecontrolV1MetricValue>((value) =>
              GoogleApiServicecontrolV1MetricValue.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (metricName != null) 'metricName': metricName,
        if (metricValues != null)
          'metricValues': metricValues.map((value) => value.toJson()).toList(),
      };
}

/// Represents information regarding an operation.
class GoogleApiServicecontrolV1Operation {
  /// Identity of the consumer who is using the service.
  ///
  /// This field should be filled in for the operations initiated by a consumer,
  /// but not for service-initiated operations that are not related to a
  /// specific consumer. - This can be in one of the following formats: -
  /// project:PROJECT_ID, - project`_`number:PROJECT_NUMBER, -
  /// projects/PROJECT_ID or PROJECT_NUMBER, - folders/FOLDER_NUMBER, -
  /// organizations/ORGANIZATION_NUMBER, - api`_`key:API_KEY.
  core.String consumerId;

  /// End time of the operation.
  ///
  /// Required when the operation is used in ServiceController.Report, but
  /// optional when the operation is used in ServiceController.Check.
  core.String endTime;

  /// Unimplemented.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> extensions;

  /// DO NOT USE.
  ///
  /// This is an experimental field.
  /// Possible string values are:
  /// - "LOW" : Allows data caching, batching, and aggregation. It provides
  /// higher performance with higher data loss risk.
  /// - "HIGH" : Disables data aggregation to minimize data loss. It is for
  /// operations that contains significant monetary value or audit trail. This
  /// feature only applies to the client libraries.
  /// - "DEBUG" : Deprecated. Do not use. Disables data aggregation and enables
  /// additional validation logic. It should only be used during the onboarding
  /// process. It is only available to Google internal services, and the service
  /// must be approved by chemist-dev@google.com in order to use this level.
  core.String importance;

  /// Labels describing the operation.
  ///
  /// Only the following labels are allowed: - Labels describing monitored
  /// resources as defined in the service configuration. - Default labels of
  /// metric values. When specified, labels defined in the metric value override
  /// these default. - The following labels defined by Google Cloud Platform: -
  /// `cloud.googleapis.com/location` describing the location where the
  /// operation happened, - `servicecontrol.googleapis.com/user_agent`
  /// describing the user agent of the API request, -
  /// `servicecontrol.googleapis.com/service_agent` describing the service used
  /// to handle the API request (e.g. ESP), -
  /// `servicecontrol.googleapis.com/platform` describing the platform where the
  /// API is served, such as App Engine, Compute Engine, or Kubernetes Engine.
  core.Map<core.String, core.String> labels;

  /// Represents information to be logged.
  core.List<GoogleApiServicecontrolV1LogEntry> logEntries;

  /// Represents information about this operation.
  ///
  /// Each MetricValueSet corresponds to a metric defined in the service
  /// configuration. The data type used in the MetricValueSet must agree with
  /// the data type specified in the metric definition. Within a single
  /// operation, it is not allowed to have more than one MetricValue instances
  /// that have the same metric names and identical label value combinations. If
  /// a request has such duplicated MetricValue instances, the entire request is
  /// rejected with an invalid argument error.
  core.List<GoogleApiServicecontrolV1MetricValueSet> metricValueSets;

  /// Identity of the operation.
  ///
  /// This must be unique within the scope of the service that generated the
  /// operation. If the service calls Check() and Report() on the same
  /// operation, the two calls should carry the same id. UUID version 4 is
  /// recommended, though not required. In scenarios where an operation is
  /// computed from existing information and an idempotent id is desirable for
  /// deduplication purpose, UUID version 5 is recommended. See RFC 4122 for
  /// details.
  core.String operationId;

  /// Fully qualified name of the operation.
  ///
  /// Reserved for future use.
  core.String operationName;

  /// Represents the properties needed for quota check.
  ///
  /// Applicable only if this operation is for a quota check request. If this is
  /// not specified, no quota check will be performed.
  GoogleApiServicecontrolV1QuotaProperties quotaProperties;

  /// The resources that are involved in the operation.
  ///
  /// The maximum supported number of entries in this field is 100.
  core.List<GoogleApiServicecontrolV1ResourceInfo> resources;

  /// Start time of the operation.
  ///
  /// Required.
  core.String startTime;

  /// A list of Cloud Trace spans.
  ///
  /// The span names shall contain the id of the destination project which can
  /// be either the produce or the consumer project.
  ///
  /// Unimplemented.
  core.List<GoogleApiServicecontrolV1TraceSpan> traceSpans;

  /// Private Preview.
  ///
  /// This feature is only available for approved services. User defined labels
  /// for the resource that this operation is associated with.
  core.Map<core.String, core.String> userLabels;

  GoogleApiServicecontrolV1Operation();

  GoogleApiServicecontrolV1Operation.fromJson(core.Map _json) {
    if (_json.containsKey('consumerId')) {
      consumerId = _json['consumerId'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('extensions')) {
      extensions = (_json['extensions'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('importance')) {
      importance = _json['importance'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('logEntries')) {
      logEntries = (_json['logEntries'] as core.List)
          .map<GoogleApiServicecontrolV1LogEntry>((value) =>
              GoogleApiServicecontrolV1LogEntry.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('metricValueSets')) {
      metricValueSets = (_json['metricValueSets'] as core.List)
          .map<GoogleApiServicecontrolV1MetricValueSet>((value) =>
              GoogleApiServicecontrolV1MetricValueSet.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('operationId')) {
      operationId = _json['operationId'] as core.String;
    }
    if (_json.containsKey('operationName')) {
      operationName = _json['operationName'] as core.String;
    }
    if (_json.containsKey('quotaProperties')) {
      quotaProperties = GoogleApiServicecontrolV1QuotaProperties.fromJson(
          _json['quotaProperties'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List)
          .map<GoogleApiServicecontrolV1ResourceInfo>((value) =>
              GoogleApiServicecontrolV1ResourceInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('traceSpans')) {
      traceSpans = (_json['traceSpans'] as core.List)
          .map<GoogleApiServicecontrolV1TraceSpan>((value) =>
              GoogleApiServicecontrolV1TraceSpan.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('userLabels')) {
      userLabels = (_json['userLabels'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (consumerId != null) 'consumerId': consumerId,
        if (endTime != null) 'endTime': endTime,
        if (extensions != null) 'extensions': extensions,
        if (importance != null) 'importance': importance,
        if (labels != null) 'labels': labels,
        if (logEntries != null)
          'logEntries': logEntries.map((value) => value.toJson()).toList(),
        if (metricValueSets != null)
          'metricValueSets':
              metricValueSets.map((value) => value.toJson()).toList(),
        if (operationId != null) 'operationId': operationId,
        if (operationName != null) 'operationName': operationName,
        if (quotaProperties != null)
          'quotaProperties': quotaProperties.toJson(),
        if (resources != null)
          'resources': resources.map((value) => value.toJson()).toList(),
        if (startTime != null) 'startTime': startTime,
        if (traceSpans != null)
          'traceSpans': traceSpans.map((value) => value.toJson()).toList(),
        if (userLabels != null) 'userLabels': userLabels,
      };
}

/// Represents the properties needed for quota operations.
class GoogleApiServicecontrolV1QuotaProperties {
  /// Quota mode for this operation.
  /// Possible string values are:
  /// - "ACQUIRE" : Decreases available quota by the cost specified for the
  /// operation. If cost is higher than available quota, operation fails and
  /// returns error.
  /// - "ACQUIRE_BEST_EFFORT" : Decreases available quota by the cost specified
  /// for the operation. If cost is higher than available quota, operation does
  /// not fail and available quota goes down to zero but it returns error.
  /// - "CHECK" : Does not change any available quota. Only checks if there is
  /// enough quota. No lock is placed on the checked tokens neither.
  /// - "RELEASE" : Increases available quota by the operation cost specified
  /// for the operation.
  core.String quotaMode;

  GoogleApiServicecontrolV1QuotaProperties();

  GoogleApiServicecontrolV1QuotaProperties.fromJson(core.Map _json) {
    if (_json.containsKey('quotaMode')) {
      quotaMode = _json['quotaMode'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (quotaMode != null) 'quotaMode': quotaMode,
      };
}

/// Request message for the Report method.
class GoogleApiServicecontrolV1ReportRequest {
  /// Operations to be reported.
  ///
  /// Typically the service should report one operation per request. Putting
  /// multiple operations into a single request is allowed, but should be used
  /// only when multiple operations are natually available at the time of the
  /// report. There is no limit on the number of operations in the same
  /// ReportRequest, however the ReportRequest size should be no larger than
  /// 1MB. See ReportResponse.report_errors for partial failure behavior.
  core.List<GoogleApiServicecontrolV1Operation> operations;

  /// Specifies which version of service config should be used to process the
  /// request.
  ///
  /// If unspecified or no matching version can be found, the latest one will be
  /// used.
  core.String serviceConfigId;

  /// The service name as specified in its service configuration.
  ///
  /// For example, `"pubsub.googleapis.com"`. See
  /// [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service)
  /// for the definition of a service name.
  core.String serviceName;

  GoogleApiServicecontrolV1ReportRequest();

  GoogleApiServicecontrolV1ReportRequest.fromJson(core.Map _json) {
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<GoogleApiServicecontrolV1Operation>((value) =>
              GoogleApiServicecontrolV1Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('serviceConfigId')) {
      serviceConfigId = _json['serviceConfigId'] as core.String;
    }
    if (_json.containsKey('serviceName')) {
      serviceName = _json['serviceName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (operations != null)
          'operations': operations.map((value) => value.toJson()).toList(),
        if (serviceConfigId != null) 'serviceConfigId': serviceConfigId,
        if (serviceName != null) 'serviceName': serviceName,
      };
}

/// Describes a resource associated with this operation.
class GoogleApiServicecontrolV1ResourceInfo {
  /// The identifier of the parent of this resource instance.
  ///
  /// Must be in one of the following formats: - `projects/` - `folders/` -
  /// `organizations/`
  core.String resourceContainer;

  /// The location of the resource.
  ///
  /// If not empty, the resource will be checked against location policy. The
  /// value must be a valid zone, region or multiregion. For example:
  /// "europe-west4" or "northamerica-northeast1-a"
  core.String resourceLocation;

  /// Name of the resource.
  ///
  /// This is used for auditing purposes.
  core.String resourceName;

  GoogleApiServicecontrolV1ResourceInfo();

  GoogleApiServicecontrolV1ResourceInfo.fromJson(core.Map _json) {
    if (_json.containsKey('resourceContainer')) {
      resourceContainer = _json['resourceContainer'] as core.String;
    }
    if (_json.containsKey('resourceLocation')) {
      resourceLocation = _json['resourceLocation'] as core.String;
    }
    if (_json.containsKey('resourceName')) {
      resourceName = _json['resourceName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (resourceContainer != null) 'resourceContainer': resourceContainer,
        if (resourceLocation != null) 'resourceLocation': resourceLocation,
        if (resourceName != null) 'resourceName': resourceName,
      };
}

/// A span represents a single operation within a trace.
///
/// Spans can be nested to form a trace tree. Often, a trace contains a root
/// span that describes the end-to-end latency, and one or more subspans for its
/// sub-operations. A trace can also contain multiple root spans, or none at
/// all. Spans do not need to be contiguous—there may be gaps or overlaps
/// between spans in a trace.
class GoogleApiServicecontrolV1TraceSpan {
  /// A set of attributes on the span.
  ///
  /// You can have up to 32 attributes per span.
  GoogleApiServicecontrolV1Attributes attributes;

  /// An optional number of child spans that were generated while this span was
  /// active.
  ///
  /// If set, allows implementation to detect missing child spans.
  core.int childSpanCount;

  /// A description of the span's operation (up to 128 bytes).
  ///
  /// Stackdriver Trace displays the description in the Google Cloud Platform
  /// Console. For example, the display name can be a qualified method name or a
  /// file name and a line number where the operation is called. A best practice
  /// is to use the same display name within an application and at the same call
  /// point. This makes it easier to correlate spans in different traces.
  GoogleApiServicecontrolV1TruncatableString displayName;

  /// The end time of the span.
  ///
  /// On the client side, this is the time kept by the local machine where the
  /// span execution ends. On the server side, this is the time when the server
  /// application handler stops running.
  core.String endTime;

  /// The resource name of the span in the following format:
  /// projects/\[PROJECT_ID\]/traces/\[TRACE_ID\]/spans/SPAN_ID is a unique
  /// identifier for a trace within a project; it is a 32-character hexadecimal
  /// encoding of a 16-byte array.
  ///
  /// \[SPAN_ID\] is a unique identifier for a span within a trace; it is a
  /// 16-character hexadecimal encoding of an 8-byte array.
  core.String name;

  /// The \[SPAN_ID\] of this span's parent span.
  ///
  /// If this is a root span, then this field must be empty.
  core.String parentSpanId;

  /// (Optional) Set this parameter to indicate whether this span is in the same
  /// process as its parent.
  ///
  /// If you do not set this parameter, Stackdriver Trace is unable to take
  /// advantage of this helpful information.
  core.bool sameProcessAsParentSpan;

  /// The \[SPAN_ID\] portion of the span's resource name.
  core.String spanId;

  /// Distinguishes between spans generated in a particular context.
  ///
  /// For example, two spans with the same name may be distinguished using
  /// `CLIENT` (caller) and `SERVER` (callee) to identify an RPC call.
  /// Possible string values are:
  /// - "SPAN_KIND_UNSPECIFIED" : Unspecified. Do NOT use as default.
  /// Implementations MAY assume SpanKind.INTERNAL to be default.
  /// - "INTERNAL" : Indicates that the span is used internally. Default value.
  /// - "SERVER" : Indicates that the span covers server-side handling of an RPC
  /// or other remote network request.
  /// - "CLIENT" : Indicates that the span covers the client-side wrapper around
  /// an RPC or other remote request.
  /// - "PRODUCER" : Indicates that the span describes producer sending a
  /// message to a broker. Unlike client and server, there is no direct critical
  /// path latency relationship between producer and consumer spans (e.g.
  /// publishing a message to a pubsub service).
  /// - "CONSUMER" : Indicates that the span describes consumer receiving a
  /// message from a broker. Unlike client and server, there is no direct
  /// critical path latency relationship between producer and consumer spans
  /// (e.g. receiving a message from a pubsub service subscription).
  core.String spanKind;

  /// The start time of the span.
  ///
  /// On the client side, this is the time kept by the local machine where the
  /// span execution starts. On the server side, this is the time when the
  /// server's application handler starts running.
  core.String startTime;

  /// An optional final status for this span.
  Status status;

  GoogleApiServicecontrolV1TraceSpan();

  GoogleApiServicecontrolV1TraceSpan.fromJson(core.Map _json) {
    if (_json.containsKey('attributes')) {
      attributes = GoogleApiServicecontrolV1Attributes.fromJson(
          _json['attributes'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('childSpanCount')) {
      childSpanCount = _json['childSpanCount'] as core.int;
    }
    if (_json.containsKey('displayName')) {
      displayName = GoogleApiServicecontrolV1TruncatableString.fromJson(
          _json['displayName'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('parentSpanId')) {
      parentSpanId = _json['parentSpanId'] as core.String;
    }
    if (_json.containsKey('sameProcessAsParentSpan')) {
      sameProcessAsParentSpan = _json['sameProcessAsParentSpan'] as core.bool;
    }
    if (_json.containsKey('spanId')) {
      spanId = _json['spanId'] as core.String;
    }
    if (_json.containsKey('spanKind')) {
      spanKind = _json['spanKind'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = Status.fromJson(
          _json['status'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (attributes != null) 'attributes': attributes.toJson(),
        if (childSpanCount != null) 'childSpanCount': childSpanCount,
        if (displayName != null) 'displayName': displayName.toJson(),
        if (endTime != null) 'endTime': endTime,
        if (name != null) 'name': name,
        if (parentSpanId != null) 'parentSpanId': parentSpanId,
        if (sameProcessAsParentSpan != null)
          'sameProcessAsParentSpan': sameProcessAsParentSpan,
        if (spanId != null) 'spanId': spanId,
        if (spanKind != null) 'spanKind': spanKind,
        if (startTime != null) 'startTime': startTime,
        if (status != null) 'status': status.toJson(),
      };
}

/// Represents a string that might be shortened to a specified length.
class GoogleApiServicecontrolV1TruncatableString {
  /// The number of bytes removed from the original string.
  ///
  /// If this value is 0, then the string was not shortened.
  core.int truncatedByteCount;

  /// The shortened string.
  ///
  /// For example, if the original string is 500 bytes long and the limit of the
  /// string is 128 bytes, then `value` contains the first 128 bytes of the
  /// 500-byte string. Truncation always happens on a UTF8 character boundary.
  /// If there are multi-byte characters in the string, then the length of the
  /// shortened string might be less than the size limit.
  core.String value;

  GoogleApiServicecontrolV1TruncatableString();

  GoogleApiServicecontrolV1TruncatableString.fromJson(core.Map _json) {
    if (_json.containsKey('truncatedByteCount')) {
      truncatedByteCount = _json['truncatedByteCount'] as core.int;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (truncatedByteCount != null)
          'truncatedByteCount': truncatedByteCount,
        if (value != null) 'value': value,
      };
}

/// IssuanceModes specifies the allowed ways in which Certificates may be
/// requested from this CertificateAuthority.
class IssuanceModes {
  /// When true, allows callers to create Certificates by specifying a
  /// CertificateConfig.
  ///
  /// Required.
  core.bool allowConfigBasedIssuance;

  /// When true, allows callers to create Certificates by specifying a CSR.
  ///
  /// Required.
  core.bool allowCsrBasedIssuance;

  IssuanceModes();

  IssuanceModes.fromJson(core.Map _json) {
    if (_json.containsKey('allowConfigBasedIssuance')) {
      allowConfigBasedIssuance = _json['allowConfigBasedIssuance'] as core.bool;
    }
    if (_json.containsKey('allowCsrBasedIssuance')) {
      allowCsrBasedIssuance = _json['allowCsrBasedIssuance'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (allowConfigBasedIssuance != null)
          'allowConfigBasedIssuance': allowConfigBasedIssuance,
        if (allowCsrBasedIssuance != null)
          'allowCsrBasedIssuance': allowCsrBasedIssuance,
      };
}

/// Options that affect all certificates issued by a CertificateAuthority.
class IssuingOptions {
  /// When true, includes a URL to the issuing CA certificate in the "authority
  /// information access" X.509 extension.
  ///
  /// Required.
  core.bool includeCaCertUrl;

  /// When true, includes a URL to the CRL corresponding to certificates issued
  /// from a CertificateAuthority.
  ///
  /// CRLs will expire 7 days from their creation. However, we will rebuild
  /// daily. CRLs are also rebuilt shortly after a certificate is revoked.
  ///
  /// Required.
  core.bool includeCrlAccessUrl;

  IssuingOptions();

  IssuingOptions.fromJson(core.Map _json) {
    if (_json.containsKey('includeCaCertUrl')) {
      includeCaCertUrl = _json['includeCaCertUrl'] as core.bool;
    }
    if (_json.containsKey('includeCrlAccessUrl')) {
      includeCrlAccessUrl = _json['includeCrlAccessUrl'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (includeCaCertUrl != null) 'includeCaCertUrl': includeCaCertUrl,
        if (includeCrlAccessUrl != null)
          'includeCrlAccessUrl': includeCrlAccessUrl,
      };
}

/// A KeyId identifies a specific public key, usually by hashing the public key.
class KeyId {
  /// The value of this KeyId encoded in lowercase hexadecimal.
  ///
  /// This is most likely the 160 bit SHA-1 hash of the public key.
  ///
  /// Optional.
  core.String keyId;

  KeyId();

  KeyId.fromJson(core.Map _json) {
    if (_json.containsKey('keyId')) {
      keyId = _json['keyId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (keyId != null) 'keyId': keyId,
      };
}

/// A KeyUsage describes key usage values that may appear in an X.509
/// certificate.
class KeyUsage {
  /// Describes high-level ways in which a key may be used.
  KeyUsageOptions baseKeyUsage;

  /// Detailed scenarios in which a key may be used.
  ExtendedKeyUsageOptions extendedKeyUsage;

  /// Used to describe extended key usages that are not listed in the
  /// KeyUsage.ExtendedKeyUsageOptions message.
  core.List<ObjectId> unknownExtendedKeyUsages;

  KeyUsage();

  KeyUsage.fromJson(core.Map _json) {
    if (_json.containsKey('baseKeyUsage')) {
      baseKeyUsage = KeyUsageOptions.fromJson(
          _json['baseKeyUsage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('extendedKeyUsage')) {
      extendedKeyUsage = ExtendedKeyUsageOptions.fromJson(
          _json['extendedKeyUsage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('unknownExtendedKeyUsages')) {
      unknownExtendedKeyUsages = (_json['unknownExtendedKeyUsages']
              as core.List)
          .map<ObjectId>((value) =>
              ObjectId.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (baseKeyUsage != null) 'baseKeyUsage': baseKeyUsage.toJson(),
        if (extendedKeyUsage != null)
          'extendedKeyUsage': extendedKeyUsage.toJson(),
        if (unknownExtendedKeyUsages != null)
          'unknownExtendedKeyUsages':
              unknownExtendedKeyUsages.map((value) => value.toJson()).toList(),
      };
}

/// KeyUsage.KeyUsageOptions corresponds to the key usage values described in
/// https://tools.ietf.org/html/rfc5280#section-4.2.1.3.
class KeyUsageOptions {
  /// The key may be used to sign certificates.
  core.bool certSign;

  /// The key may be used for cryptographic commitments.
  ///
  /// Note that this may also be referred to as "non-repudiation".
  core.bool contentCommitment;

  /// The key may be used sign certificate revocation lists.
  core.bool crlSign;

  /// The key may be used to encipher data.
  core.bool dataEncipherment;

  /// The key may be used to decipher only.
  core.bool decipherOnly;

  /// The key may be used for digital signatures.
  core.bool digitalSignature;

  /// The key may be used to encipher only.
  core.bool encipherOnly;

  /// The key may be used in a key agreement protocol.
  core.bool keyAgreement;

  /// The key may be used to encipher other keys.
  core.bool keyEncipherment;

  KeyUsageOptions();

  KeyUsageOptions.fromJson(core.Map _json) {
    if (_json.containsKey('certSign')) {
      certSign = _json['certSign'] as core.bool;
    }
    if (_json.containsKey('contentCommitment')) {
      contentCommitment = _json['contentCommitment'] as core.bool;
    }
    if (_json.containsKey('crlSign')) {
      crlSign = _json['crlSign'] as core.bool;
    }
    if (_json.containsKey('dataEncipherment')) {
      dataEncipherment = _json['dataEncipherment'] as core.bool;
    }
    if (_json.containsKey('decipherOnly')) {
      decipherOnly = _json['decipherOnly'] as core.bool;
    }
    if (_json.containsKey('digitalSignature')) {
      digitalSignature = _json['digitalSignature'] as core.bool;
    }
    if (_json.containsKey('encipherOnly')) {
      encipherOnly = _json['encipherOnly'] as core.bool;
    }
    if (_json.containsKey('keyAgreement')) {
      keyAgreement = _json['keyAgreement'] as core.bool;
    }
    if (_json.containsKey('keyEncipherment')) {
      keyEncipherment = _json['keyEncipherment'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (certSign != null) 'certSign': certSign,
        if (contentCommitment != null) 'contentCommitment': contentCommitment,
        if (crlSign != null) 'crlSign': crlSign,
        if (dataEncipherment != null) 'dataEncipherment': dataEncipherment,
        if (decipherOnly != null) 'decipherOnly': decipherOnly,
        if (digitalSignature != null) 'digitalSignature': digitalSignature,
        if (encipherOnly != null) 'encipherOnly': encipherOnly,
        if (keyAgreement != null) 'keyAgreement': keyAgreement,
        if (keyEncipherment != null) 'keyEncipherment': keyEncipherment,
      };
}

/// A Cloud KMS key configuration that a CertificateAuthority will use.
class KeyVersionSpec {
  /// The algorithm to use for creating a managed Cloud KMS key for a for a
  /// simplified experience.
  ///
  /// All managed keys will be have their ProtectionLevel as `HSM`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SIGN_HASH_ALGORITHM_UNSPECIFIED" : Not specified.
  /// - "RSA_PSS_2048_SHA256" : maps to
  /// CryptoKeyVersionAlgorithm.RSA_SIGN_PSS_2048_SHA256
  /// - "RSA_PSS_3072_SHA256" : maps to CryptoKeyVersionAlgorithm.
  /// RSA_SIGN_PSS_3072_SHA256
  /// - "RSA_PSS_4096_SHA256" : maps to
  /// CryptoKeyVersionAlgorithm.RSA_SIGN_PSS_4096_SHA256
  /// - "RSA_PKCS1_2048_SHA256" : maps to
  /// CryptoKeyVersionAlgorithm.RSA_SIGN_PKCS1_2048_SHA256
  /// - "RSA_PKCS1_3072_SHA256" : maps to
  /// CryptoKeyVersionAlgorithm.RSA_SIGN_PKCS1_3072_SHA256
  /// - "RSA_PKCS1_4096_SHA256" : maps to
  /// CryptoKeyVersionAlgorithm.RSA_SIGN_PKCS1_4096_SHA256
  /// - "EC_P256_SHA256" : maps to CryptoKeyVersionAlgorithm.EC_SIGN_P256_SHA256
  /// - "EC_P384_SHA384" : maps to CryptoKeyVersionAlgorithm.EC_SIGN_P384_SHA384
  core.String algorithm;

  /// The resource name for an existing Cloud KMS CryptoKeyVersion in the format
  /// `projects / * /locations / * /keyRings / * /cryptoKeys / *
  /// /cryptoKeyVersions / * `.
  ///
  /// This option enables full flexibility in the key's capabilities and
  /// properties.
  ///
  /// Required.
  core.String cloudKmsKeyVersion;

  KeyVersionSpec();

  KeyVersionSpec.fromJson(core.Map _json) {
    if (_json.containsKey('algorithm')) {
      algorithm = _json['algorithm'] as core.String;
    }
    if (_json.containsKey('cloudKmsKeyVersion')) {
      cloudKmsKeyVersion = _json['cloudKmsKeyVersion'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (algorithm != null) 'algorithm': algorithm,
        if (cloudKmsKeyVersion != null)
          'cloudKmsKeyVersion': cloudKmsKeyVersion,
      };
}

/// Response message for CertificateAuthorityService.ListCertificateAuthorities.
class ListCertificateAuthoritiesResponse {
  /// The list of CertificateAuthorities.
  core.List<CertificateAuthority> certificateAuthorities;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListCertificateAuthoritiesRequest.next_page_token to
  /// retrieve the next page of results.
  core.String nextPageToken;

  /// A list of locations (e.g. "us-west1") that could not be reached.
  core.List<core.String> unreachable;

  ListCertificateAuthoritiesResponse();

  ListCertificateAuthoritiesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('certificateAuthorities')) {
      certificateAuthorities = (_json['certificateAuthorities'] as core.List)
          .map<CertificateAuthority>((value) => CertificateAuthority.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (certificateAuthorities != null)
          'certificateAuthorities':
              certificateAuthorities.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
        if (unreachable != null) 'unreachable': unreachable,
      };
}

/// Response message for
/// CertificateAuthorityService.ListCertificateRevocationLists.
class ListCertificateRevocationListsResponse {
  /// The list of CertificateRevocationLists.
  core.List<CertificateRevocationList> certificateRevocationLists;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListCertificateRevocationListsRequest.next_page_token
  /// to retrieve the next page of results.
  core.String nextPageToken;

  /// A list of locations (e.g. "us-west1") that could not be reached.
  core.List<core.String> unreachable;

  ListCertificateRevocationListsResponse();

  ListCertificateRevocationListsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('certificateRevocationLists')) {
      certificateRevocationLists =
          (_json['certificateRevocationLists'] as core.List)
              .map<CertificateRevocationList>((value) =>
                  CertificateRevocationList.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (certificateRevocationLists != null)
          'certificateRevocationLists': certificateRevocationLists
              .map((value) => value.toJson())
              .toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
        if (unreachable != null) 'unreachable': unreachable,
      };
}

/// Response message for CertificateAuthorityService.ListCertificates.
class ListCertificatesResponse {
  /// The list of Certificates.
  core.List<Certificate> certificates;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListCertificatesRequest.next_page_token to retrieve the
  /// next page of results.
  core.String nextPageToken;

  /// A list of locations (e.g. "us-west1") that could not be reached.
  core.List<core.String> unreachable;

  ListCertificatesResponse();

  ListCertificatesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('certificates')) {
      certificates = (_json['certificates'] as core.List)
          .map<Certificate>((value) => Certificate.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (certificates != null)
          'certificates': certificates.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
        if (unreachable != null) 'unreachable': unreachable,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List)
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (locations != null)
          'locations': locations.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
        if (operations != null)
          'operations': operations.map((value) => value.toJson()).toList(),
      };
}

/// Response message for CertificateAuthorityService.ListReusableConfigs.
class ListReusableConfigsResponse {
  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListReusableConfigsRequest.next_page_token to retrieve
  /// the next page of results.
  core.String nextPageToken;

  /// The list of ReusableConfigs.
  core.List<ReusableConfig> reusableConfigs;

  /// A list of locations (e.g. "us-west1") that could not be reached.
  core.List<core.String> unreachable;

  ListReusableConfigsResponse();

  ListReusableConfigsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('reusableConfigs')) {
      reusableConfigs = (_json['reusableConfigs'] as core.List)
          .map<ReusableConfig>((value) => ReusableConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
        if (reusableConfigs != null)
          'reusableConfigs':
              reusableConfigs.map((value) => value.toJson()).toList(),
        if (unreachable != null) 'unreachable': unreachable,
      };
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (displayName != null) 'displayName': displayName,
        if (labels != null) 'labels': labels,
        if (locationId != null) 'locationId': locationId,
        if (metadata != null) 'metadata': metadata,
        if (name != null) 'name': name,
      };
}

/// Represents an amount of money with its currency type.
class Money {
  /// The three-letter currency code defined in ISO 4217.
  core.String currencyCode;

  /// Number of nano (10^-9) units of the amount.
  ///
  /// The value must be between -999,999,999 and +999,999,999 inclusive. If
  /// `units` is positive, `nanos` must be positive or zero. If `units` is zero,
  /// `nanos` can be positive, zero, or negative. If `units` is negative,
  /// `nanos` must be negative or zero. For example $-1.75 is represented as
  /// `units`=-1 and `nanos`=-750,000,000.
  core.int nanos;

  /// The whole units of the amount.
  ///
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  core.String units;

  Money();

  Money.fromJson(core.Map _json) {
    if (_json.containsKey('currencyCode')) {
      currencyCode = _json['currencyCode'] as core.String;
    }
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'] as core.int;
    }
    if (_json.containsKey('units')) {
      units = _json['units'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode,
        if (nanos != null) 'nanos': nanos,
        if (units != null) 'units': units,
      };
}

/// An ObjectId specifies an object identifier (OID).
///
/// These provide context and describe types in ASN.1 messages.
class ObjectId {
  /// The parts of an OID path.
  ///
  /// The most significant parts of the path come first.
  ///
  /// Required.
  core.List<core.int> objectIdPath;

  ObjectId();

  ObjectId.fromJson(core.Map _json) {
    if (_json.containsKey('objectIdPath')) {
      objectIdPath = (_json['objectIdPath'] as core.List)
          .map<core.int>((value) => value as core.int)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (objectIdPath != null) 'objectIdPath': objectIdPath,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (done != null) 'done': done,
        if (error != null) 'error': error.toJson(),
        if (metadata != null) 'metadata': metadata,
        if (name != null) 'name': name,
        if (response != null) 'response': response,
      };
}

/// Represents the metadata of the long-running operation.
class OperationMetadata {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String apiVersion;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String endTime;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool requestedCancellation;

  /// Human-readable status of the operation, if any.
  ///
  /// Output only.
  core.String statusMessage;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String verb;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('requestedCancellation')) {
      requestedCancellation = _json['requestedCancellation'] as core.bool;
    }
    if (_json.containsKey('statusMessage')) {
      statusMessage = _json['statusMessage'] as core.String;
    }
    if (_json.containsKey('target')) {
      target = _json['target'] as core.String;
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion,
        if (createTime != null) 'createTime': createTime,
        if (endTime != null) 'endTime': endTime,
        if (requestedCancellation != null)
          'requestedCancellation': requestedCancellation,
        if (statusMessage != null) 'statusMessage': statusMessage,
        if (target != null) 'target': target,
        if (verb != null) 'verb': verb,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members` to a single `role`. Members can be user accounts, service
/// accounts, Google groups, and domains (such as G Suite). A `role` is a named
/// list of permissions; each `role` can be an IAM predefined role or a
/// user-created custom role. For some types of Google Cloud resources, a
/// `binding` can also specify a `condition`, which is a logical expression that
/// allows access to a resource only if the expression evaluates to `true`. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('auditConfigs')) {
      auditConfigs = (_json['auditConfigs'] as core.List)
          .map<AuditConfig>((value) => AuditConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) =>
              Binding.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (auditConfigs != null)
          'auditConfigs': auditConfigs.map((value) => value.toJson()).toList(),
        if (bindings != null)
          'bindings': bindings.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag,
        if (version != null) 'version': version,
      };
}

/// A PublicKey describes a public key.
class PublicKey {
  /// A public key.
  ///
  /// When this is specified in a request, the padding and encoding can be any
  /// of the options described by the respective 'KeyType' value. When this is
  /// generated by the service, it will always be an RFC 5280
  /// [SubjectPublicKeyInfo](https://tools.ietf.org/html/rfc5280#section-4.1)
  /// structure containing an algorithm identifier and a key.
  ///
  /// Required.
  core.String key;
  core.List<core.int> get keyAsBytes => convert.base64.decode(key);

  set keyAsBytes(core.List<core.int> _bytes) {
    key =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The type of public key.
  ///
  /// If specified, it must match the public key used for the`key` field.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "PEM_RSA_KEY" : A PEM-encoded PKCS#1/RFC 3447 RSAPublicKey structure, or
  /// an RFC 5280
  /// [SubjectPublicKeyInfo](https://tools.ietf.org/html/rfc5280#section-4.1)
  /// structure containing the former.
  /// - "PEM_EC_KEY" : An RFC 5280
  /// [SubjectPublicKeyInfo](https://tools.ietf.org/html/rfc5280#section-4.1)
  /// structure containing a PEM-encoded compressed NIST
  /// P-256/secp256r1/prime256v1 or P-384 key.
  core.String type;

  PublicKey();

  PublicKey.fromJson(core.Map _json) {
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (key != null) 'key': key,
        if (type != null) 'type': type,
      };
}

/// Request message for CertificateAuthorityService.RestoreCertificateAuthority.
class RestoreCertificateAuthorityRequest {
  /// An ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String requestId;

  RestoreCertificateAuthorityRequest();

  RestoreCertificateAuthorityRequest.fromJson(core.Map _json) {
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (requestId != null) 'requestId': requestId,
      };
}

/// A ReusableConfig refers to a managed ReusableConfigValues.
///
/// Those, in turn, are used to describe certain fields of an X.509 certificate,
/// such as the key usage fields, fields specific to CA certificates,
/// certificate policy extensions and custom extensions.
class ReusableConfig {
  /// The time at which this ReusableConfig was created.
  ///
  /// Output only.
  core.String createTime;

  /// A human-readable description of scenarios these ReusableConfigValues may
  /// be compatible with.
  ///
  /// Optional.
  core.String description;

  /// Labels with user-defined metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String> labels;

  /// The resource path for this ReusableConfig in the format `projects / *
  /// /locations / * /reusableConfigs / * `.
  ///
  /// Output only.
  core.String name;

  /// The time at which this ReusableConfig was updated.
  ///
  /// Output only.
  core.String updateTime;

  /// The config values.
  ///
  /// Required.
  ReusableConfigValues values;

  ReusableConfig();

  ReusableConfig.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('values')) {
      values = ReusableConfigValues.fromJson(
          _json['values'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (createTime != null) 'createTime': createTime,
        if (description != null) 'description': description,
        if (labels != null) 'labels': labels,
        if (name != null) 'name': name,
        if (updateTime != null) 'updateTime': updateTime,
        if (values != null) 'values': values.toJson(),
      };
}

/// A ReusableConfigValues is used to describe certain fields of an X.509
/// certificate, such as the key usage fields, fields specific to CA
/// certificates, certificate policy extensions and custom extensions.
class ReusableConfigValues {
  /// Describes custom X.509 extensions.
  ///
  /// Optional.
  core.List<X509Extension> additionalExtensions;

  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses
  /// that appear in the "Authority Information Access" extension in the
  /// certificate.
  ///
  /// Optional.
  core.List<core.String> aiaOcspServers;

  /// Describes options in this ReusableConfigValues that are relevant in a CA
  /// certificate.
  ///
  /// Optional.
  CaOptions caOptions;

  /// Indicates the intended use for keys that correspond to a certificate.
  ///
  /// Optional.
  KeyUsage keyUsage;

  /// Describes the X.509 certificate policy object identifiers, per
  /// https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  ///
  /// Optional.
  core.List<ObjectId> policyIds;

  ReusableConfigValues();

  ReusableConfigValues.fromJson(core.Map _json) {
    if (_json.containsKey('additionalExtensions')) {
      additionalExtensions = (_json['additionalExtensions'] as core.List)
          .map<X509Extension>((value) => X509Extension.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('aiaOcspServers')) {
      aiaOcspServers = (_json['aiaOcspServers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('caOptions')) {
      caOptions = CaOptions.fromJson(
          _json['caOptions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('keyUsage')) {
      keyUsage = KeyUsage.fromJson(
          _json['keyUsage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('policyIds')) {
      policyIds = (_json['policyIds'] as core.List)
          .map<ObjectId>((value) =>
              ObjectId.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (additionalExtensions != null)
          'additionalExtensions':
              additionalExtensions.map((value) => value.toJson()).toList(),
        if (aiaOcspServers != null) 'aiaOcspServers': aiaOcspServers,
        if (caOptions != null) 'caOptions': caOptions.toJson(),
        if (keyUsage != null) 'keyUsage': keyUsage.toJson(),
        if (policyIds != null)
          'policyIds': policyIds.map((value) => value.toJson()).toList(),
      };
}

/// A ReusableConfigWrapper describes values that may assist in creating an
/// X.509 certificate, or a reference to a pre-defined set of values.
class ReusableConfigWrapper {
  /// A resource path to a ReusableConfig in the format `projects / * /locations
  /// / * /reusableConfigs / * `.
  ///
  /// Required.
  core.String reusableConfig;

  /// A user-specified inline ReusableConfigValues.
  ///
  /// Required.
  ReusableConfigValues reusableConfigValues;

  ReusableConfigWrapper();

  ReusableConfigWrapper.fromJson(core.Map _json) {
    if (_json.containsKey('reusableConfig')) {
      reusableConfig = _json['reusableConfig'] as core.String;
    }
    if (_json.containsKey('reusableConfigValues')) {
      reusableConfigValues = ReusableConfigValues.fromJson(
          _json['reusableConfigValues'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (reusableConfig != null) 'reusableConfig': reusableConfig,
        if (reusableConfigValues != null)
          'reusableConfigValues': reusableConfigValues.toJson(),
      };
}

/// Describes fields that are relavent to the revocation of a Certificate.
class RevocationDetails {
  /// Indicates why a Certificate was revoked.
  /// Possible string values are:
  /// - "REVOCATION_REASON_UNSPECIFIED" : Default unspecified value. This value
  /// does indicate that a Certificate has been revoked, but that a reason has
  /// not been recorded.
  /// - "KEY_COMPROMISE" : Key material for this Certificate may have leaked.
  /// - "CERTIFICATE_AUTHORITY_COMPROMISE" : The key material for a certificate
  /// authority in the issuing path may have leaked.
  /// - "AFFILIATION_CHANGED" : The subject or other attributes in this
  /// Certificate have changed.
  /// - "SUPERSEDED" : This Certificate has been superseded.
  /// - "CESSATION_OF_OPERATION" : This Certificate or entities in the issuing
  /// path have ceased to operate.
  /// - "CERTIFICATE_HOLD" : This Certificate should not be considered valid, it
  /// is expected that it may become valid in the future.
  /// - "PRIVILEGE_WITHDRAWN" : This Certificate no longer has permission to
  /// assert the listed attributes.
  /// - "ATTRIBUTE_AUTHORITY_COMPROMISE" : The authority which determines
  /// appropriate attributes for a Certificate may have been compromised.
  core.String revocationState;

  /// The time at which this Certificate was revoked.
  core.String revocationTime;

  RevocationDetails();

  RevocationDetails.fromJson(core.Map _json) {
    if (_json.containsKey('revocationState')) {
      revocationState = _json['revocationState'] as core.String;
    }
    if (_json.containsKey('revocationTime')) {
      revocationTime = _json['revocationTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (revocationState != null) 'revocationState': revocationState,
        if (revocationTime != null) 'revocationTime': revocationTime,
      };
}

/// Request message for CertificateAuthorityService.RevokeCertificate.
class RevokeCertificateRequest {
  /// The RevocationReason for revoking this certificate.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REVOCATION_REASON_UNSPECIFIED" : Default unspecified value. This value
  /// does indicate that a Certificate has been revoked, but that a reason has
  /// not been recorded.
  /// - "KEY_COMPROMISE" : Key material for this Certificate may have leaked.
  /// - "CERTIFICATE_AUTHORITY_COMPROMISE" : The key material for a certificate
  /// authority in the issuing path may have leaked.
  /// - "AFFILIATION_CHANGED" : The subject or other attributes in this
  /// Certificate have changed.
  /// - "SUPERSEDED" : This Certificate has been superseded.
  /// - "CESSATION_OF_OPERATION" : This Certificate or entities in the issuing
  /// path have ceased to operate.
  /// - "CERTIFICATE_HOLD" : This Certificate should not be considered valid, it
  /// is expected that it may become valid in the future.
  /// - "PRIVILEGE_WITHDRAWN" : This Certificate no longer has permission to
  /// assert the listed attributes.
  /// - "ATTRIBUTE_AUTHORITY_COMPROMISE" : The authority which determines
  /// appropriate attributes for a Certificate may have been compromised.
  core.String reason;

  /// An ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String requestId;

  RevokeCertificateRequest();

  RevokeCertificateRequest.fromJson(core.Map _json) {
    if (_json.containsKey('reason')) {
      reason = _json['reason'] as core.String;
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (reason != null) 'reason': reason,
        if (requestId != null) 'requestId': requestId,
      };
}

/// Describes a revoked Certificate.
class RevokedCertificate {
  /// The resource path for the Certificate in the format `projects / *
  /// /locations / * /certificateAuthorities / * /certificates / * `.
  core.String certificate;

  /// The serial number of the Certificate.
  core.String hexSerialNumber;

  /// The reason the Certificate was revoked.
  /// Possible string values are:
  /// - "REVOCATION_REASON_UNSPECIFIED" : Default unspecified value. This value
  /// does indicate that a Certificate has been revoked, but that a reason has
  /// not been recorded.
  /// - "KEY_COMPROMISE" : Key material for this Certificate may have leaked.
  /// - "CERTIFICATE_AUTHORITY_COMPROMISE" : The key material for a certificate
  /// authority in the issuing path may have leaked.
  /// - "AFFILIATION_CHANGED" : The subject or other attributes in this
  /// Certificate have changed.
  /// - "SUPERSEDED" : This Certificate has been superseded.
  /// - "CESSATION_OF_OPERATION" : This Certificate or entities in the issuing
  /// path have ceased to operate.
  /// - "CERTIFICATE_HOLD" : This Certificate should not be considered valid, it
  /// is expected that it may become valid in the future.
  /// - "PRIVILEGE_WITHDRAWN" : This Certificate no longer has permission to
  /// assert the listed attributes.
  /// - "ATTRIBUTE_AUTHORITY_COMPROMISE" : The authority which determines
  /// appropriate attributes for a Certificate may have been compromised.
  core.String revocationReason;

  RevokedCertificate();

  RevokedCertificate.fromJson(core.Map _json) {
    if (_json.containsKey('certificate')) {
      certificate = _json['certificate'] as core.String;
    }
    if (_json.containsKey('hexSerialNumber')) {
      hexSerialNumber = _json['hexSerialNumber'] as core.String;
    }
    if (_json.containsKey('revocationReason')) {
      revocationReason = _json['revocationReason'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (certificate != null) 'certificate': certificate,
        if (hexSerialNumber != null) 'hexSerialNumber': hexSerialNumber,
        if (revocationReason != null) 'revocationReason': revocationReason,
      };
}

/// Request message for
/// CertificateAuthorityService.ScheduleDeleteCertificateAuthority.
class ScheduleDeleteCertificateAuthorityRequest {
  /// This field allows the CA to be scheduled for deletion even if the CA has
  /// active certs.
  ///
  /// Active certs include both unrevoked and unexpired certs.
  ///
  /// Optional.
  core.bool ignoreActiveCertificates;

  /// An ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String requestId;

  ScheduleDeleteCertificateAuthorityRequest();

  ScheduleDeleteCertificateAuthorityRequest.fromJson(core.Map _json) {
    if (_json.containsKey('ignoreActiveCertificates')) {
      ignoreActiveCertificates = _json['ignoreActiveCertificates'] as core.bool;
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (ignoreActiveCertificates != null)
          'ignoreActiveCertificates': ignoreActiveCertificates,
        if (requestId != null) 'requestId': requestId,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (policy != null) 'policy': policy.toJson(),
        if (updateMask != null) 'updateMask': updateMask,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (code != null) 'code': code,
        if (details != null) 'details': details,
        if (message != null) 'message': message,
      };
}

/// Subject describes parts of a distinguished name that, in turn, describes the
/// subject of the certificate.
class Subject {
  /// The country code of the subject.
  core.String countryCode;

  /// The locality or city of the subject.
  core.String locality;

  /// The organization of the subject.
  core.String organization;

  /// The organizational_unit of the subject.
  core.String organizationalUnit;

  /// The postal code of the subject.
  core.String postalCode;

  /// The province, territory, or regional state of the subject.
  core.String province;

  /// The street address of the subject.
  core.String streetAddress;

  Subject();

  Subject.fromJson(core.Map _json) {
    if (_json.containsKey('countryCode')) {
      countryCode = _json['countryCode'] as core.String;
    }
    if (_json.containsKey('locality')) {
      locality = _json['locality'] as core.String;
    }
    if (_json.containsKey('organization')) {
      organization = _json['organization'] as core.String;
    }
    if (_json.containsKey('organizationalUnit')) {
      organizationalUnit = _json['organizationalUnit'] as core.String;
    }
    if (_json.containsKey('postalCode')) {
      postalCode = _json['postalCode'] as core.String;
    }
    if (_json.containsKey('province')) {
      province = _json['province'] as core.String;
    }
    if (_json.containsKey('streetAddress')) {
      streetAddress = _json['streetAddress'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (countryCode != null) 'countryCode': countryCode,
        if (locality != null) 'locality': locality,
        if (organization != null) 'organization': organization,
        if (organizationalUnit != null)
          'organizationalUnit': organizationalUnit,
        if (postalCode != null) 'postalCode': postalCode,
        if (province != null) 'province': province,
        if (streetAddress != null) 'streetAddress': streetAddress,
      };
}

/// SubjectAltNames corresponds to a more modern way of listing what the
/// asserted identity is in a certificate (i.e., compared to the "common name"
/// in the distinguished name).
class SubjectAltNames {
  /// Contains additional subject alternative name values.
  core.List<X509Extension> customSans;

  /// Contains only valid, fully-qualified host names.
  core.List<core.String> dnsNames;

  /// Contains only valid RFC 2822 E-mail addresses.
  core.List<core.String> emailAddresses;

  /// Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  core.List<core.String> ipAddresses;

  /// Contains only valid RFC 3986 URIs.
  core.List<core.String> uris;

  SubjectAltNames();

  SubjectAltNames.fromJson(core.Map _json) {
    if (_json.containsKey('customSans')) {
      customSans = (_json['customSans'] as core.List)
          .map<X509Extension>((value) => X509Extension.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dnsNames')) {
      dnsNames = (_json['dnsNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('emailAddresses')) {
      emailAddresses = (_json['emailAddresses'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('ipAddresses')) {
      ipAddresses = (_json['ipAddresses'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('uris')) {
      uris = (_json['uris'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (customSans != null)
          'customSans': customSans.map((value) => value.toJson()).toList(),
        if (dnsNames != null) 'dnsNames': dnsNames,
        if (emailAddresses != null) 'emailAddresses': emailAddresses,
        if (ipAddresses != null) 'ipAddresses': ipAddresses,
        if (uris != null) 'uris': uris,
      };
}

/// These values are used to create the distinguished name and subject
/// alternative name fields in an X.509 certificate.
class SubjectConfig {
  /// The "common name" of the distinguished name.
  ///
  /// Optional.
  core.String commonName;

  /// Contains distinguished name fields such as the location and organization.
  ///
  /// Required.
  Subject subject;

  /// The subject alternative name fields.
  ///
  /// Optional.
  SubjectAltNames subjectAltName;

  SubjectConfig();

  SubjectConfig.fromJson(core.Map _json) {
    if (_json.containsKey('commonName')) {
      commonName = _json['commonName'] as core.String;
    }
    if (_json.containsKey('subject')) {
      subject = Subject.fromJson(
          _json['subject'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('subjectAltName')) {
      subjectAltName = SubjectAltNames.fromJson(
          _json['subjectAltName'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (commonName != null) 'commonName': commonName,
        if (subject != null) 'subject': subject.toJson(),
        if (subjectAltName != null) 'subjectAltName': subjectAltName.toJson(),
      };
}

/// These values describe fields in an issued X.509 certificate such as the
/// distinguished name, subject alternative names, serial number, and lifetime.
class SubjectDescription {
  /// The "common name" of the distinguished name.
  core.String commonName;

  /// The serial number encoded in lowercase hexadecimal.
  core.String hexSerialNumber;

  /// For convenience, the actual lifetime of an issued certificate.
  ///
  /// Corresponds to 'not_after_time' - 'not_before_time'.
  core.String lifetime;

  /// The time at which the certificate expires.
  core.String notAfterTime;

  /// The time at which the certificate becomes valid.
  core.String notBeforeTime;

  /// Contains distinguished name fields such as the location and organization.
  Subject subject;

  /// The subject alternative name fields.
  SubjectAltNames subjectAltName;

  SubjectDescription();

  SubjectDescription.fromJson(core.Map _json) {
    if (_json.containsKey('commonName')) {
      commonName = _json['commonName'] as core.String;
    }
    if (_json.containsKey('hexSerialNumber')) {
      hexSerialNumber = _json['hexSerialNumber'] as core.String;
    }
    if (_json.containsKey('lifetime')) {
      lifetime = _json['lifetime'] as core.String;
    }
    if (_json.containsKey('notAfterTime')) {
      notAfterTime = _json['notAfterTime'] as core.String;
    }
    if (_json.containsKey('notBeforeTime')) {
      notBeforeTime = _json['notBeforeTime'] as core.String;
    }
    if (_json.containsKey('subject')) {
      subject = Subject.fromJson(
          _json['subject'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('subjectAltName')) {
      subjectAltName = SubjectAltNames.fromJson(
          _json['subjectAltName'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (commonName != null) 'commonName': commonName,
        if (hexSerialNumber != null) 'hexSerialNumber': hexSerialNumber,
        if (lifetime != null) 'lifetime': lifetime,
        if (notAfterTime != null) 'notAfterTime': notAfterTime,
        if (notBeforeTime != null) 'notBeforeTime': notBeforeTime,
        if (subject != null) 'subject': subject.toJson(),
        if (subjectAltName != null) 'subjectAltName': subjectAltName.toJson(),
      };
}

/// Describes a subordinate CA's issuers.
///
/// This is either a resource path to a known issuing CertificateAuthority, or a
/// PEM issuer certificate chain.
class SubordinateConfig {
  /// This can refer to a CertificateAuthority in the same project that was used
  /// to create a subordinate CertificateAuthority.
  ///
  /// This field is used for information and usability purposes only. The
  /// resource name is in the format `projects / * /locations / *
  /// /certificateAuthorities / * `.
  ///
  /// Required.
  core.String certificateAuthority;

  /// Contains the PEM certificate chain for the issuers of this
  /// CertificateAuthority, but not pem certificate for this CA itself.
  ///
  /// Required.
  SubordinateConfigChain pemIssuerChain;

  SubordinateConfig();

  SubordinateConfig.fromJson(core.Map _json) {
    if (_json.containsKey('certificateAuthority')) {
      certificateAuthority = _json['certificateAuthority'] as core.String;
    }
    if (_json.containsKey('pemIssuerChain')) {
      pemIssuerChain = SubordinateConfigChain.fromJson(
          _json['pemIssuerChain'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (certificateAuthority != null)
          'certificateAuthority': certificateAuthority,
        if (pemIssuerChain != null) 'pemIssuerChain': pemIssuerChain.toJson(),
      };
}

/// This message describes a subordinate CA's issuer certificate chain.
///
/// This wrapper exists for compatibility reasons.
class SubordinateConfigChain {
  /// Expected to be in leaf-to-root order according to RFC 5246.
  ///
  /// Required.
  core.List<core.String> pemCertificates;

  SubordinateConfigChain();

  SubordinateConfigChain.fromJson(core.Map _json) {
    if (_json.containsKey('pemCertificates')) {
      pemCertificates = (_json['pemCertificates'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (pemCertificates != null) 'pemCertificates': pemCertificates,
      };
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (permissions != null) 'permissions': permissions,
      };
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (permissions != null) 'permissions': permissions,
      };
}

/// An X509Extension specifies an X.509 extension, which may be used in
/// different parts of X.509 objects like certificates, CSRs, and CRLs.
class X509Extension {
  /// Indicates whether or not this extension is critical (i.e., if the client
  /// does not know how to handle this extension, the client should consider
  /// this to be an error).
  ///
  /// Required.
  core.bool critical;

  /// The OID for this X.509 extension.
  ///
  /// Required.
  ObjectId objectId;

  /// The value of this X.509 extension.
  ///
  /// Required.
  core.String value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value);

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  X509Extension();

  X509Extension.fromJson(core.Map _json) {
    if (_json.containsKey('critical')) {
      critical = _json['critical'] as core.bool;
    }
    if (_json.containsKey('objectId')) {
      objectId = ObjectId.fromJson(
          _json['objectId'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (critical != null) 'critical': critical,
        if (objectId != null) 'objectId': objectId.toJson(),
        if (value != null) 'value': value,
      };
}
