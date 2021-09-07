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
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CertificateAuthorityServiceApi(http.Client client,
      {core.String rootUrl = 'https://privateca.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
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
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + '/locations';

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':activate';

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
    core.String? certificateAuthorityId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (certificateAuthorityId != null)
        'certificateAuthorityId': [certificateAuthorityId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/certificateAuthorities';

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':disable';

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':enable';

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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':fetch';

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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/certificateAuthorities';

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
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':restore';

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':scheduleDelete';

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$parent') +
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
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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
    core.String? certificateId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (certificateId != null) 'certificateId': [certificateId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/certificates';

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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/certificates';

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
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':revoke';

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':cancel';

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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + '/operations';

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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/reusableConfigs';

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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
  core.String? caCertificateAccessUrl;

  /// The URL where this CertificateAuthority's CRLs are published.
  ///
  /// This will only be set for CAs that have been activated.
  core.String? crlAccessUrl;

  AccessUrls({
    this.caCertificateAccessUrl,
    this.crlAccessUrl,
  });

  AccessUrls.fromJson(core.Map _json)
      : this(
          caCertificateAccessUrl: _json.containsKey('caCertificateAccessUrl')
              ? _json['caCertificateAccessUrl'] as core.String
              : null,
          crlAccessUrl: _json.containsKey('crlAccessUrl')
              ? _json['crlAccessUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caCertificateAccessUrl != null)
          'caCertificateAccessUrl': caCertificateAccessUrl!,
        if (crlAccessUrl != null) 'crlAccessUrl': crlAccessUrl!,
      };
}

/// Request message for
/// CertificateAuthorityService.ActivateCertificateAuthority.
class ActivateCertificateAuthorityRequest {
  /// The signed CA certificate issued from
  /// FetchCertificateAuthorityCsrResponse.pem_csr.
  ///
  /// Required.
  core.String? pemCaCertificate;

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
  core.String? requestId;

  /// Must include information about the issuer of 'pem_ca_certificate', and any
  /// further issuers until the self-signed CA.
  ///
  /// Required.
  SubordinateConfig? subordinateConfig;

  ActivateCertificateAuthorityRequest({
    this.pemCaCertificate,
    this.requestId,
    this.subordinateConfig,
  });

  ActivateCertificateAuthorityRequest.fromJson(core.Map _json)
      : this(
          pemCaCertificate: _json.containsKey('pemCaCertificate')
              ? _json['pemCaCertificate'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
          subordinateConfig: _json.containsKey('subordinateConfig')
              ? SubordinateConfig.fromJson(_json['subordinateConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pemCaCertificate != null) 'pemCaCertificate': pemCaCertificate!,
        if (requestId != null) 'requestId': requestId!,
        if (subordinateConfig != null)
          'subordinateConfig': subordinateConfig!.toJson(),
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
  core.List<ReusableConfigWrapper>? allowedConfigValues;

  AllowedConfigList({
    this.allowedConfigValues,
  });

  AllowedConfigList.fromJson(core.Map _json)
      : this(
          allowedConfigValues: _json.containsKey('allowedConfigValues')
              ? (_json['allowedConfigValues'] as core.List)
                  .map<ReusableConfigWrapper>((value) =>
                      ReusableConfigWrapper.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedConfigValues != null)
          'allowedConfigValues':
              allowedConfigValues!.map((value) => value.toJson()).toList(),
      };
}

/// AllowedSubjectAltNames specifies the allowed values for SubjectAltNames by
/// the CertificateAuthority when issuing Certificates.
class AllowedSubjectAltNames {
  /// Specifies if to allow custom X509Extension values.
  ///
  /// Optional.
  core.bool? allowCustomSans;

  /// Specifies if glob patterns used for allowed_dns_names allow wildcard
  /// certificates.
  ///
  /// If this is set, certificate requests with wildcard domains will be
  /// permitted to match a glob pattern specified in allowed_dns_names.
  /// Otherwise, certificate requests with wildcard domains will be permitted
  /// only if allowed_dns_names contains a literal wildcard.
  ///
  /// Optional.
  core.bool? allowGlobbingDnsWildcards;

  /// Contains valid, fully-qualified host names.
  ///
  /// Glob patterns are also supported. To allow an explicit wildcard
  /// certificate, escape with backlash (i.e. "\*"). E.g. for globbed entries:
  /// '*bar.com' will allow 'foo.bar.com', but not '*.bar.com', unless the
  /// allow_globbing_dns_wildcards field is set. E.g. for wildcard entries:
  /// '\*.bar.com' will allow '*.bar.com', but not 'foo.bar.com'.
  ///
  /// Optional.
  core.List<core.String>? allowedDnsNames;

  /// Contains valid RFC 2822 E-mail addresses.
  ///
  /// Glob patterns are also supported.
  ///
  /// Optional.
  core.List<core.String>? allowedEmailAddresses;

  /// Contains valid 32-bit IPv4 addresses and subnet ranges or RFC 4291 IPv6
  /// addresses and subnet ranges.
  ///
  /// Subnet ranges are specified using the '/' notation (e.g. 10.0.0.0/8,
  /// 2001:700:300:1800::/64). Glob patterns are supported only for ip address
  /// entries (i.e. not for subnet ranges).
  ///
  /// Optional.
  core.List<core.String>? allowedIps;

  /// Contains valid RFC 3986 URIs.
  ///
  /// Glob patterns are also supported. To match across path seperators (i.e.
  /// '/') use the double star glob pattern (i.e. '**').
  ///
  /// Optional.
  core.List<core.String>? allowedUris;

  AllowedSubjectAltNames({
    this.allowCustomSans,
    this.allowGlobbingDnsWildcards,
    this.allowedDnsNames,
    this.allowedEmailAddresses,
    this.allowedIps,
    this.allowedUris,
  });

  AllowedSubjectAltNames.fromJson(core.Map _json)
      : this(
          allowCustomSans: _json.containsKey('allowCustomSans')
              ? _json['allowCustomSans'] as core.bool
              : null,
          allowGlobbingDnsWildcards:
              _json.containsKey('allowGlobbingDnsWildcards')
                  ? _json['allowGlobbingDnsWildcards'] as core.bool
                  : null,
          allowedDnsNames: _json.containsKey('allowedDnsNames')
              ? (_json['allowedDnsNames'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          allowedEmailAddresses: _json.containsKey('allowedEmailAddresses')
              ? (_json['allowedEmailAddresses'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          allowedIps: _json.containsKey('allowedIps')
              ? (_json['allowedIps'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          allowedUris: _json.containsKey('allowedUris')
              ? (_json['allowedUris'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowCustomSans != null) 'allowCustomSans': allowCustomSans!,
        if (allowGlobbingDnsWildcards != null)
          'allowGlobbingDnsWildcards': allowGlobbingDnsWildcards!,
        if (allowedDnsNames != null) 'allowedDnsNames': allowedDnsNames!,
        if (allowedEmailAddresses != null)
          'allowedEmailAddresses': allowedEmailAddresses!,
        if (allowedIps != null) 'allowedIps': allowedIps!,
        if (allowedUris != null) 'allowedUris': allowedUris!,
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
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map _json)
      : this(
          auditLogConfigs: _json.containsKey('auditLogConfigs')
              ? (_json['auditLogConfigs'] as core.List)
                  .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null)
          'auditLogConfigs':
              auditLogConfigs!.map((value) => value.toJson()).toList(),
        if (service != null) 'service': service!,
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
  core.List<core.String>? exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String? logType;

  AuditLogConfig({
    this.exemptedMembers,
    this.logType,
  });

  AuditLogConfig.fromJson(core.Map _json)
      : this(
          exemptedMembers: _json.containsKey('exemptedMembers')
              ? (_json['exemptedMembers'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          logType: _json.containsKey('logType')
              ? _json['logType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exemptedMembers != null) 'exemptedMembers': exemptedMembers!,
        if (logType != null) 'logType': logType!,
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
  Expr? condition;

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
  core.List<core.String>? members;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? Expr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!.toJson(),
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
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
  core.bool? isCa;

  /// Refers to the path length restriction X.509 extension.
  ///
  /// For a CA certificate, this value describes the depth of subordinate CA
  /// certificates that are allowed. If this value is less than 0, the request
  /// will fail. If this value is missing, the max path length will be omitted
  /// from the CA certificate.
  ///
  /// Optional.
  core.int? maxIssuerPathLength;

  CaOptions({
    this.isCa,
    this.maxIssuerPathLength,
  });

  CaOptions.fromJson(core.Map _json)
      : this(
          isCa: _json.containsKey('isCa') ? _json['isCa'] as core.bool : null,
          maxIssuerPathLength: _json.containsKey('maxIssuerPathLength')
              ? _json['maxIssuerPathLength'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isCa != null) 'isCa': isCa!,
        if (maxIssuerPathLength != null)
          'maxIssuerPathLength': maxIssuerPathLength!,
      };
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// A Certificate corresponds to a signed X.509 certificate issued by a
/// CertificateAuthority.
class Certificate {
  /// A structured description of the issued X.509 certificate.
  ///
  /// Output only.
  CertificateDescription? certificateDescription;

  /// A description of the certificate and key that does not require X.509 or
  /// ASN.1.
  ///
  /// Immutable.
  CertificateConfig? config;

  /// The time at which this Certificate was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Labels with user-defined metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The desired lifetime of a certificate.
  ///
  /// Used to create the "not_before_time" and "not_after_time" fields inside an
  /// X.509 certificate. Note that the lifetime may be truncated if it would
  /// extend past the life of any certificate authority in the issuing chain.
  ///
  /// Required. Immutable.
  core.String? lifetime;

  /// The resource path for this Certificate in the format `projects / *
  /// /locations / * /certificateAuthorities / * /certificates / * `.
  ///
  /// Output only.
  core.String? name;

  /// The pem-encoded, signed X.509 certificate.
  ///
  /// Output only.
  core.String? pemCertificate;

  /// The chain that may be used to verify the X.509 certificate.
  ///
  /// Expected to be in issuer-to-root order according to RFC 5246.
  ///
  /// Output only.
  core.List<core.String>? pemCertificateChain;

  /// A pem-encoded X.509 certificate signing request (CSR).
  ///
  /// Immutable.
  core.String? pemCsr;

  /// Details regarding the revocation of this Certificate.
  ///
  /// This Certificate is considered revoked if and only if this field is
  /// present.
  ///
  /// Output only.
  RevocationDetails? revocationDetails;

  /// The time at which this Certificate was updated.
  ///
  /// Output only.
  core.String? updateTime;

  Certificate({
    this.certificateDescription,
    this.config,
    this.createTime,
    this.labels,
    this.lifetime,
    this.name,
    this.pemCertificate,
    this.pemCertificateChain,
    this.pemCsr,
    this.revocationDetails,
    this.updateTime,
  });

  Certificate.fromJson(core.Map _json)
      : this(
          certificateDescription: _json.containsKey('certificateDescription')
              ? CertificateDescription.fromJson(_json['certificateDescription']
                  as core.Map<core.String, core.dynamic>)
              : null,
          config: _json.containsKey('config')
              ? CertificateConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lifetime: _json.containsKey('lifetime')
              ? _json['lifetime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pemCertificate: _json.containsKey('pemCertificate')
              ? _json['pemCertificate'] as core.String
              : null,
          pemCertificateChain: _json.containsKey('pemCertificateChain')
              ? (_json['pemCertificateChain'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          pemCsr: _json.containsKey('pemCsr')
              ? _json['pemCsr'] as core.String
              : null,
          revocationDetails: _json.containsKey('revocationDetails')
              ? RevocationDetails.fromJson(_json['revocationDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateDescription != null)
          'certificateDescription': certificateDescription!.toJson(),
        if (config != null) 'config': config!.toJson(),
        if (createTime != null) 'createTime': createTime!,
        if (labels != null) 'labels': labels!,
        if (lifetime != null) 'lifetime': lifetime!,
        if (name != null) 'name': name!,
        if (pemCertificate != null) 'pemCertificate': pemCertificate!,
        if (pemCertificateChain != null)
          'pemCertificateChain': pemCertificateChain!,
        if (pemCsr != null) 'pemCsr': pemCsr!,
        if (revocationDetails != null)
          'revocationDetails': revocationDetails!.toJson(),
        if (updateTime != null) 'updateTime': updateTime!,
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
  AccessUrls? accessUrls;

  /// A structured description of this CertificateAuthority's CA certificate and
  /// its issuers.
  ///
  /// Ordered as self-to-root.
  ///
  /// Output only.
  core.List<CertificateDescription>? caCertificateDescriptions;

  /// The CertificateAuthorityPolicy to enforce when issuing Certificates from
  /// this CertificateAuthority.
  ///
  /// Optional.
  CertificateAuthorityPolicy? certificatePolicy;

  /// The config used to create a self-signed X.509 certificate or CSR.
  ///
  /// Required. Immutable.
  CertificateConfig? config;

  /// The time at which this CertificateAuthority was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which this CertificateAuthority will be deleted, if scheduled
  /// for deletion.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The name of a Cloud Storage bucket where this CertificateAuthority will
  /// publish content, such as the CA certificate and CRLs.
  ///
  /// This must be a bucket name, without any prefixes (such as `gs://`) or
  /// suffixes (such as `.googleapis.com`). For example, to use a bucket named
  /// `my-bucket`, you would simply specify `my-bucket`. If not specified, a
  /// managed bucket will be created.
  ///
  /// Immutable.
  core.String? gcsBucket;

  /// The IssuingOptions to follow when issuing Certificates from this
  /// CertificateAuthority.
  ///
  /// Optional.
  IssuingOptions? issuingOptions;

  /// Used when issuing certificates for this CertificateAuthority.
  ///
  /// If this CertificateAuthority is a self-signed CertificateAuthority, this
  /// key is also used to sign the self-signed CA certificate. Otherwise, it is
  /// used to sign a CSR.
  ///
  /// Required. Immutable.
  KeyVersionSpec? keySpec;

  /// Labels with user-defined metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The desired lifetime of the CA certificate.
  ///
  /// Used to create the "not_before_time" and "not_after_time" fields inside an
  /// X.509 certificate.
  ///
  /// Required.
  core.String? lifetime;

  /// The resource name for this CertificateAuthority in the format `projects /
  /// * /locations / * /certificateAuthorities / * `.
  ///
  /// Output only.
  core.String? name;

  /// This CertificateAuthority's certificate chain, including the current
  /// CertificateAuthority's certificate.
  ///
  /// Ordered such that the root issuer is the final element (consistent with
  /// RFC 5246). For a self-signed CA, this will only list the current
  /// CertificateAuthority's certificate.
  ///
  /// Output only.
  core.List<core.String>? pemCaCertificates;

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
  core.String? state;

  /// If this is a subordinate CertificateAuthority, this field will be set with
  /// the subordinate configuration, which describes its issuers.
  ///
  /// This may be updated, but this CertificateAuthority must continue to
  /// validate.
  ///
  /// Optional.
  SubordinateConfig? subordinateConfig;

  /// The Tier of this CertificateAuthority.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not specified.
  /// - "ENTERPRISE" : Enterprise tier.
  /// - "DEVOPS" : DevOps tier.
  core.String? tier;

  /// The Type of this CertificateAuthority.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified.
  /// - "SELF_SIGNED" : Self-signed CA.
  /// - "SUBORDINATE" : Subordinate CA. Could be issued by a Private CA
  /// CertificateAuthority or an unmanaged CA.
  core.String? type;

  /// The time at which this CertificateAuthority was updated.
  ///
  /// Output only.
  core.String? updateTime;

  CertificateAuthority({
    this.accessUrls,
    this.caCertificateDescriptions,
    this.certificatePolicy,
    this.config,
    this.createTime,
    this.deleteTime,
    this.gcsBucket,
    this.issuingOptions,
    this.keySpec,
    this.labels,
    this.lifetime,
    this.name,
    this.pemCaCertificates,
    this.state,
    this.subordinateConfig,
    this.tier,
    this.type,
    this.updateTime,
  });

  CertificateAuthority.fromJson(core.Map _json)
      : this(
          accessUrls: _json.containsKey('accessUrls')
              ? AccessUrls.fromJson(
                  _json['accessUrls'] as core.Map<core.String, core.dynamic>)
              : null,
          caCertificateDescriptions:
              _json.containsKey('caCertificateDescriptions')
                  ? (_json['caCertificateDescriptions'] as core.List)
                      .map<CertificateDescription>((value) =>
                          CertificateDescription.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          certificatePolicy: _json.containsKey('certificatePolicy')
              ? CertificateAuthorityPolicy.fromJson(_json['certificatePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          config: _json.containsKey('config')
              ? CertificateConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          gcsBucket: _json.containsKey('gcsBucket')
              ? _json['gcsBucket'] as core.String
              : null,
          issuingOptions: _json.containsKey('issuingOptions')
              ? IssuingOptions.fromJson(_json['issuingOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          keySpec: _json.containsKey('keySpec')
              ? KeyVersionSpec.fromJson(
                  _json['keySpec'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lifetime: _json.containsKey('lifetime')
              ? _json['lifetime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pemCaCertificates: _json.containsKey('pemCaCertificates')
              ? (_json['pemCaCertificates'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          subordinateConfig: _json.containsKey('subordinateConfig')
              ? SubordinateConfig.fromJson(_json['subordinateConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tier: _json.containsKey('tier') ? _json['tier'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessUrls != null) 'accessUrls': accessUrls!.toJson(),
        if (caCertificateDescriptions != null)
          'caCertificateDescriptions': caCertificateDescriptions!
              .map((value) => value.toJson())
              .toList(),
        if (certificatePolicy != null)
          'certificatePolicy': certificatePolicy!.toJson(),
        if (config != null) 'config': config!.toJson(),
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (gcsBucket != null) 'gcsBucket': gcsBucket!,
        if (issuingOptions != null) 'issuingOptions': issuingOptions!.toJson(),
        if (keySpec != null) 'keySpec': keySpec!.toJson(),
        if (labels != null) 'labels': labels!,
        if (lifetime != null) 'lifetime': lifetime!,
        if (name != null) 'name': name!,
        if (pemCaCertificates != null) 'pemCaCertificates': pemCaCertificates!,
        if (state != null) 'state': state!,
        if (subordinateConfig != null)
          'subordinateConfig': subordinateConfig!.toJson(),
        if (tier != null) 'tier': tier!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
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
  core.List<core.String>? allowedCommonNames;

  /// All Certificates issued by the CertificateAuthority must match at least
  /// one listed ReusableConfigWrapper in the list.
  ///
  /// Optional.
  AllowedConfigList? allowedConfigList;

  /// If specified, then only methods allowed in the IssuanceModes may be used
  /// to issue Certificates.
  ///
  /// Optional.
  IssuanceModes? allowedIssuanceModes;

  /// If any Subject is specified here, then all Certificates issued by the
  /// CertificateAuthority must match at least one listed Subject.
  ///
  /// If a Subject has an empty field, any value will be allowed for that field.
  ///
  /// Optional.
  core.List<Subject>? allowedLocationsAndOrganizations;

  /// If a AllowedSubjectAltNames is specified here, then all Certificates
  /// issued by the CertificateAuthority must match AllowedSubjectAltNames.
  ///
  /// If no value or an empty value is specified, any value will be allowed for
  /// the SubjectAltNames field.
  ///
  /// Optional.
  AllowedSubjectAltNames? allowedSans;

  /// The maximum lifetime allowed by the CertificateAuthority.
  ///
  /// Note that if the any part if the issuing chain expires before a
  /// Certificate's requested maximum_lifetime, the effective lifetime will be
  /// explicitly truncated.
  ///
  /// Optional.
  core.String? maximumLifetime;

  /// All Certificates issued by the CertificateAuthority will use the provided
  /// configuration values, overwriting any requested configuration values.
  ///
  /// Optional.
  ReusableConfigWrapper? overwriteConfigValues;

  CertificateAuthorityPolicy({
    this.allowedCommonNames,
    this.allowedConfigList,
    this.allowedIssuanceModes,
    this.allowedLocationsAndOrganizations,
    this.allowedSans,
    this.maximumLifetime,
    this.overwriteConfigValues,
  });

  CertificateAuthorityPolicy.fromJson(core.Map _json)
      : this(
          allowedCommonNames: _json.containsKey('allowedCommonNames')
              ? (_json['allowedCommonNames'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          allowedConfigList: _json.containsKey('allowedConfigList')
              ? AllowedConfigList.fromJson(_json['allowedConfigList']
                  as core.Map<core.String, core.dynamic>)
              : null,
          allowedIssuanceModes: _json.containsKey('allowedIssuanceModes')
              ? IssuanceModes.fromJson(_json['allowedIssuanceModes']
                  as core.Map<core.String, core.dynamic>)
              : null,
          allowedLocationsAndOrganizations:
              _json.containsKey('allowedLocationsAndOrganizations')
                  ? (_json['allowedLocationsAndOrganizations'] as core.List)
                      .map<Subject>((value) => Subject.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          allowedSans: _json.containsKey('allowedSans')
              ? AllowedSubjectAltNames.fromJson(
                  _json['allowedSans'] as core.Map<core.String, core.dynamic>)
              : null,
          maximumLifetime: _json.containsKey('maximumLifetime')
              ? _json['maximumLifetime'] as core.String
              : null,
          overwriteConfigValues: _json.containsKey('overwriteConfigValues')
              ? ReusableConfigWrapper.fromJson(_json['overwriteConfigValues']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedCommonNames != null)
          'allowedCommonNames': allowedCommonNames!,
        if (allowedConfigList != null)
          'allowedConfigList': allowedConfigList!.toJson(),
        if (allowedIssuanceModes != null)
          'allowedIssuanceModes': allowedIssuanceModes!.toJson(),
        if (allowedLocationsAndOrganizations != null)
          'allowedLocationsAndOrganizations': allowedLocationsAndOrganizations!
              .map((value) => value.toJson())
              .toList(),
        if (allowedSans != null) 'allowedSans': allowedSans!.toJson(),
        if (maximumLifetime != null) 'maximumLifetime': maximumLifetime!,
        if (overwriteConfigValues != null)
          'overwriteConfigValues': overwriteConfigValues!.toJson(),
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
  PublicKey? publicKey;

  /// Describes how some of the technical fields in a certificate should be
  /// populated.
  ///
  /// Required.
  ReusableConfigWrapper? reusableConfig;

  /// Specifies some of the values in a certificate that are related to the
  /// subject.
  ///
  /// Required.
  SubjectConfig? subjectConfig;

  CertificateConfig({
    this.publicKey,
    this.reusableConfig,
    this.subjectConfig,
  });

  CertificateConfig.fromJson(core.Map _json)
      : this(
          publicKey: _json.containsKey('publicKey')
              ? PublicKey.fromJson(
                  _json['publicKey'] as core.Map<core.String, core.dynamic>)
              : null,
          reusableConfig: _json.containsKey('reusableConfig')
              ? ReusableConfigWrapper.fromJson(_json['reusableConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subjectConfig: _json.containsKey('subjectConfig')
              ? SubjectConfig.fromJson(
                  _json['subjectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publicKey != null) 'publicKey': publicKey!.toJson(),
        if (reusableConfig != null) 'reusableConfig': reusableConfig!.toJson(),
        if (subjectConfig != null) 'subjectConfig': subjectConfig!.toJson(),
      };
}

/// A CertificateDescription describes an X.509 certificate or CSR that has been
/// issued, as an alternative to using ASN.1 / X.509.
class CertificateDescription {
  /// Describes lists of issuer CA certificate URLs that appear in the
  /// "Authority Information Access" extension in the certificate.
  core.List<core.String>? aiaIssuingCertificateUrls;

  /// Identifies the subject_key_id of the parent certificate, per
  /// https://tools.ietf.org/html/rfc5280#section-4.2.1.1
  KeyId? authorityKeyId;

  /// The hash of the x.509 certificate.
  CertificateFingerprint? certFingerprint;

  /// Describes some of the technical fields in a certificate.
  ReusableConfigValues? configValues;

  /// Describes a list of locations to obtain CRL information, i.e. the
  /// DistributionPoint.fullName described by
  /// https://tools.ietf.org/html/rfc5280#section-4.2.1.13
  core.List<core.String>? crlDistributionPoints;

  /// The public key that corresponds to an issued certificate.
  PublicKey? publicKey;

  /// Describes some of the values in a certificate that are related to the
  /// subject and lifetime.
  SubjectDescription? subjectDescription;

  /// Provides a means of identifiying certificates that contain a particular
  /// public key, per https://tools.ietf.org/html/rfc5280#section-4.2.1.2.
  KeyId? subjectKeyId;

  CertificateDescription({
    this.aiaIssuingCertificateUrls,
    this.authorityKeyId,
    this.certFingerprint,
    this.configValues,
    this.crlDistributionPoints,
    this.publicKey,
    this.subjectDescription,
    this.subjectKeyId,
  });

  CertificateDescription.fromJson(core.Map _json)
      : this(
          aiaIssuingCertificateUrls:
              _json.containsKey('aiaIssuingCertificateUrls')
                  ? (_json['aiaIssuingCertificateUrls'] as core.List)
                      .map<core.String>((value) => value as core.String)
                      .toList()
                  : null,
          authorityKeyId: _json.containsKey('authorityKeyId')
              ? KeyId.fromJson(_json['authorityKeyId']
                  as core.Map<core.String, core.dynamic>)
              : null,
          certFingerprint: _json.containsKey('certFingerprint')
              ? CertificateFingerprint.fromJson(_json['certFingerprint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          configValues: _json.containsKey('configValues')
              ? ReusableConfigValues.fromJson(
                  _json['configValues'] as core.Map<core.String, core.dynamic>)
              : null,
          crlDistributionPoints: _json.containsKey('crlDistributionPoints')
              ? (_json['crlDistributionPoints'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          publicKey: _json.containsKey('publicKey')
              ? PublicKey.fromJson(
                  _json['publicKey'] as core.Map<core.String, core.dynamic>)
              : null,
          subjectDescription: _json.containsKey('subjectDescription')
              ? SubjectDescription.fromJson(_json['subjectDescription']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subjectKeyId: _json.containsKey('subjectKeyId')
              ? KeyId.fromJson(
                  _json['subjectKeyId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aiaIssuingCertificateUrls != null)
          'aiaIssuingCertificateUrls': aiaIssuingCertificateUrls!,
        if (authorityKeyId != null) 'authorityKeyId': authorityKeyId!.toJson(),
        if (certFingerprint != null)
          'certFingerprint': certFingerprint!.toJson(),
        if (configValues != null) 'configValues': configValues!.toJson(),
        if (crlDistributionPoints != null)
          'crlDistributionPoints': crlDistributionPoints!,
        if (publicKey != null) 'publicKey': publicKey!.toJson(),
        if (subjectDescription != null)
          'subjectDescription': subjectDescription!.toJson(),
        if (subjectKeyId != null) 'subjectKeyId': subjectKeyId!.toJson(),
      };
}

/// A group of fingerprints for the x509 certificate.
class CertificateFingerprint {
  /// The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
  core.String? sha256Hash;

  CertificateFingerprint({
    this.sha256Hash,
  });

  CertificateFingerprint.fromJson(core.Map _json)
      : this(
          sha256Hash: _json.containsKey('sha256Hash')
              ? _json['sha256Hash'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha256Hash != null) 'sha256Hash': sha256Hash!,
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
  core.String? accessUrl;

  /// The time at which this CertificateRevocationList was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Labels with user-defined metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource path for this CertificateRevocationList in the format
  /// `projects / * /locations / * /certificateAuthorities / * /
  /// certificateRevocationLists / * `.
  ///
  /// Output only.
  core.String? name;

  /// The PEM-encoded X.509 CRL.
  ///
  /// Output only.
  core.String? pemCrl;

  /// The revoked serial numbers that appear in pem_crl.
  ///
  /// Output only.
  core.List<RevokedCertificate>? revokedCertificates;

  /// The CRL sequence number that appears in pem_crl.
  ///
  /// Output only.
  core.String? sequenceNumber;

  /// The State for this CertificateRevocationList.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "ACTIVE" : The CertificateRevocationList is up to date.
  /// - "SUPERSEDED" : The CertificateRevocationList is no longer current.
  core.String? state;

  /// The time at which this CertificateRevocationList was updated.
  ///
  /// Output only.
  core.String? updateTime;

  CertificateRevocationList({
    this.accessUrl,
    this.createTime,
    this.labels,
    this.name,
    this.pemCrl,
    this.revokedCertificates,
    this.sequenceNumber,
    this.state,
    this.updateTime,
  });

  CertificateRevocationList.fromJson(core.Map _json)
      : this(
          accessUrl: _json.containsKey('accessUrl')
              ? _json['accessUrl'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pemCrl: _json.containsKey('pemCrl')
              ? _json['pemCrl'] as core.String
              : null,
          revokedCertificates: _json.containsKey('revokedCertificates')
              ? (_json['revokedCertificates'] as core.List)
                  .map<RevokedCertificate>((value) =>
                      RevokedCertificate.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sequenceNumber: _json.containsKey('sequenceNumber')
              ? _json['sequenceNumber'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessUrl != null) 'accessUrl': accessUrl!,
        if (createTime != null) 'createTime': createTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (pemCrl != null) 'pemCrl': pemCrl!,
        if (revokedCertificates != null)
          'revokedCertificates':
              revokedCertificates!.map((value) => value.toJson()).toList(),
        if (sequenceNumber != null) 'sequenceNumber': sequenceNumber!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
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
  core.String? requestId;

  DisableCertificateAuthorityRequest({
    this.requestId,
  });

  DisableCertificateAuthorityRequest.fromJson(core.Map _json)
      : this(
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
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

  core.Map<core.String, core.dynamic> toJson() => {};
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
  core.String? requestId;

  EnableCertificateAuthorityRequest({
    this.requestId,
  });

  EnableCertificateAuthorityRequest.fromJson(core.Map _json)
      : this(
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
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
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String? expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String? location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String? title;

  Expr({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  Expr.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}

/// KeyUsage.ExtendedKeyUsageOptions has fields that correspond to certain
/// common OIDs that could be specified as an extended key usage value.
class ExtendedKeyUsageOptions {
  /// Corresponds to OID 1.3.6.1.5.5.7.3.2.
  ///
  /// Officially described as "TLS WWW client authentication", though regularly
  /// used for non-WWW TLS.
  core.bool? clientAuth;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.3.
  ///
  /// Officially described as "Signing of downloadable executable code client
  /// authentication".
  core.bool? codeSigning;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.4.
  ///
  /// Officially described as "Email protection".
  core.bool? emailProtection;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.9.
  ///
  /// Officially described as "Signing OCSP responses".
  core.bool? ocspSigning;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.1.
  ///
  /// Officially described as "TLS WWW server authentication", though regularly
  /// used for non-WWW TLS.
  core.bool? serverAuth;

  /// Corresponds to OID 1.3.6.1.5.5.7.3.8.
  ///
  /// Officially described as "Binding the hash of an object to a time".
  core.bool? timeStamping;

  ExtendedKeyUsageOptions({
    this.clientAuth,
    this.codeSigning,
    this.emailProtection,
    this.ocspSigning,
    this.serverAuth,
    this.timeStamping,
  });

  ExtendedKeyUsageOptions.fromJson(core.Map _json)
      : this(
          clientAuth: _json.containsKey('clientAuth')
              ? _json['clientAuth'] as core.bool
              : null,
          codeSigning: _json.containsKey('codeSigning')
              ? _json['codeSigning'] as core.bool
              : null,
          emailProtection: _json.containsKey('emailProtection')
              ? _json['emailProtection'] as core.bool
              : null,
          ocspSigning: _json.containsKey('ocspSigning')
              ? _json['ocspSigning'] as core.bool
              : null,
          serverAuth: _json.containsKey('serverAuth')
              ? _json['serverAuth'] as core.bool
              : null,
          timeStamping: _json.containsKey('timeStamping')
              ? _json['timeStamping'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientAuth != null) 'clientAuth': clientAuth!,
        if (codeSigning != null) 'codeSigning': codeSigning!,
        if (emailProtection != null) 'emailProtection': emailProtection!,
        if (ocspSigning != null) 'ocspSigning': ocspSigning!,
        if (serverAuth != null) 'serverAuth': serverAuth!,
        if (timeStamping != null) 'timeStamping': timeStamping!,
      };
}

/// Response message for
/// CertificateAuthorityService.FetchCertificateAuthorityCsr.
class FetchCertificateAuthorityCsrResponse {
  /// The PEM-encoded signed certificate signing request (CSR).
  ///
  /// Output only.
  core.String? pemCsr;

  FetchCertificateAuthorityCsrResponse({
    this.pemCsr,
  });

  FetchCertificateAuthorityCsrResponse.fromJson(core.Map _json)
      : this(
          pemCsr: _json.containsKey('pemCsr')
              ? _json['pemCsr'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pemCsr != null) 'pemCsr': pemCsr!,
      };
}

/// IssuanceModes specifies the allowed ways in which Certificates may be
/// requested from this CertificateAuthority.
class IssuanceModes {
  /// When true, allows callers to create Certificates by specifying a
  /// CertificateConfig.
  ///
  /// Required.
  core.bool? allowConfigBasedIssuance;

  /// When true, allows callers to create Certificates by specifying a CSR.
  ///
  /// Required.
  core.bool? allowCsrBasedIssuance;

  IssuanceModes({
    this.allowConfigBasedIssuance,
    this.allowCsrBasedIssuance,
  });

  IssuanceModes.fromJson(core.Map _json)
      : this(
          allowConfigBasedIssuance:
              _json.containsKey('allowConfigBasedIssuance')
                  ? _json['allowConfigBasedIssuance'] as core.bool
                  : null,
          allowCsrBasedIssuance: _json.containsKey('allowCsrBasedIssuance')
              ? _json['allowCsrBasedIssuance'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowConfigBasedIssuance != null)
          'allowConfigBasedIssuance': allowConfigBasedIssuance!,
        if (allowCsrBasedIssuance != null)
          'allowCsrBasedIssuance': allowCsrBasedIssuance!,
      };
}

/// Options that affect all certificates issued by a CertificateAuthority.
class IssuingOptions {
  /// When true, includes a URL to the issuing CA certificate in the "authority
  /// information access" X.509 extension.
  ///
  /// Required.
  core.bool? includeCaCertUrl;

  /// When true, includes a URL to the CRL corresponding to certificates issued
  /// from a CertificateAuthority.
  ///
  /// CRLs will expire 7 days from their creation. However, we will rebuild
  /// daily. CRLs are also rebuilt shortly after a certificate is revoked.
  ///
  /// Required.
  core.bool? includeCrlAccessUrl;

  IssuingOptions({
    this.includeCaCertUrl,
    this.includeCrlAccessUrl,
  });

  IssuingOptions.fromJson(core.Map _json)
      : this(
          includeCaCertUrl: _json.containsKey('includeCaCertUrl')
              ? _json['includeCaCertUrl'] as core.bool
              : null,
          includeCrlAccessUrl: _json.containsKey('includeCrlAccessUrl')
              ? _json['includeCrlAccessUrl'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeCaCertUrl != null) 'includeCaCertUrl': includeCaCertUrl!,
        if (includeCrlAccessUrl != null)
          'includeCrlAccessUrl': includeCrlAccessUrl!,
      };
}

/// A KeyId identifies a specific public key, usually by hashing the public key.
class KeyId {
  /// The value of this KeyId encoded in lowercase hexadecimal.
  ///
  /// This is most likely the 160 bit SHA-1 hash of the public key.
  ///
  /// Optional.
  core.String? keyId;

  KeyId({
    this.keyId,
  });

  KeyId.fromJson(core.Map _json)
      : this(
          keyId:
              _json.containsKey('keyId') ? _json['keyId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
      };
}

/// A KeyUsage describes key usage values that may appear in an X.509
/// certificate.
class KeyUsage {
  /// Describes high-level ways in which a key may be used.
  KeyUsageOptions? baseKeyUsage;

  /// Detailed scenarios in which a key may be used.
  ExtendedKeyUsageOptions? extendedKeyUsage;

  /// Used to describe extended key usages that are not listed in the
  /// KeyUsage.ExtendedKeyUsageOptions message.
  core.List<ObjectId>? unknownExtendedKeyUsages;

  KeyUsage({
    this.baseKeyUsage,
    this.extendedKeyUsage,
    this.unknownExtendedKeyUsages,
  });

  KeyUsage.fromJson(core.Map _json)
      : this(
          baseKeyUsage: _json.containsKey('baseKeyUsage')
              ? KeyUsageOptions.fromJson(
                  _json['baseKeyUsage'] as core.Map<core.String, core.dynamic>)
              : null,
          extendedKeyUsage: _json.containsKey('extendedKeyUsage')
              ? ExtendedKeyUsageOptions.fromJson(_json['extendedKeyUsage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          unknownExtendedKeyUsages:
              _json.containsKey('unknownExtendedKeyUsages')
                  ? (_json['unknownExtendedKeyUsages'] as core.List)
                      .map<ObjectId>((value) => ObjectId.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseKeyUsage != null) 'baseKeyUsage': baseKeyUsage!.toJson(),
        if (extendedKeyUsage != null)
          'extendedKeyUsage': extendedKeyUsage!.toJson(),
        if (unknownExtendedKeyUsages != null)
          'unknownExtendedKeyUsages':
              unknownExtendedKeyUsages!.map((value) => value.toJson()).toList(),
      };
}

/// KeyUsage.KeyUsageOptions corresponds to the key usage values described in
/// https://tools.ietf.org/html/rfc5280#section-4.2.1.3.
class KeyUsageOptions {
  /// The key may be used to sign certificates.
  core.bool? certSign;

  /// The key may be used for cryptographic commitments.
  ///
  /// Note that this may also be referred to as "non-repudiation".
  core.bool? contentCommitment;

  /// The key may be used sign certificate revocation lists.
  core.bool? crlSign;

  /// The key may be used to encipher data.
  core.bool? dataEncipherment;

  /// The key may be used to decipher only.
  core.bool? decipherOnly;

  /// The key may be used for digital signatures.
  core.bool? digitalSignature;

  /// The key may be used to encipher only.
  core.bool? encipherOnly;

  /// The key may be used in a key agreement protocol.
  core.bool? keyAgreement;

  /// The key may be used to encipher other keys.
  core.bool? keyEncipherment;

  KeyUsageOptions({
    this.certSign,
    this.contentCommitment,
    this.crlSign,
    this.dataEncipherment,
    this.decipherOnly,
    this.digitalSignature,
    this.encipherOnly,
    this.keyAgreement,
    this.keyEncipherment,
  });

  KeyUsageOptions.fromJson(core.Map _json)
      : this(
          certSign: _json.containsKey('certSign')
              ? _json['certSign'] as core.bool
              : null,
          contentCommitment: _json.containsKey('contentCommitment')
              ? _json['contentCommitment'] as core.bool
              : null,
          crlSign: _json.containsKey('crlSign')
              ? _json['crlSign'] as core.bool
              : null,
          dataEncipherment: _json.containsKey('dataEncipherment')
              ? _json['dataEncipherment'] as core.bool
              : null,
          decipherOnly: _json.containsKey('decipherOnly')
              ? _json['decipherOnly'] as core.bool
              : null,
          digitalSignature: _json.containsKey('digitalSignature')
              ? _json['digitalSignature'] as core.bool
              : null,
          encipherOnly: _json.containsKey('encipherOnly')
              ? _json['encipherOnly'] as core.bool
              : null,
          keyAgreement: _json.containsKey('keyAgreement')
              ? _json['keyAgreement'] as core.bool
              : null,
          keyEncipherment: _json.containsKey('keyEncipherment')
              ? _json['keyEncipherment'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certSign != null) 'certSign': certSign!,
        if (contentCommitment != null) 'contentCommitment': contentCommitment!,
        if (crlSign != null) 'crlSign': crlSign!,
        if (dataEncipherment != null) 'dataEncipherment': dataEncipherment!,
        if (decipherOnly != null) 'decipherOnly': decipherOnly!,
        if (digitalSignature != null) 'digitalSignature': digitalSignature!,
        if (encipherOnly != null) 'encipherOnly': encipherOnly!,
        if (keyAgreement != null) 'keyAgreement': keyAgreement!,
        if (keyEncipherment != null) 'keyEncipherment': keyEncipherment!,
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
  core.String? algorithm;

  /// The resource name for an existing Cloud KMS CryptoKeyVersion in the format
  /// `projects / * /locations / * /keyRings / * /cryptoKeys / *
  /// /cryptoKeyVersions / * `.
  ///
  /// This option enables full flexibility in the key's capabilities and
  /// properties.
  ///
  /// Required.
  core.String? cloudKmsKeyVersion;

  KeyVersionSpec({
    this.algorithm,
    this.cloudKmsKeyVersion,
  });

  KeyVersionSpec.fromJson(core.Map _json)
      : this(
          algorithm: _json.containsKey('algorithm')
              ? _json['algorithm'] as core.String
              : null,
          cloudKmsKeyVersion: _json.containsKey('cloudKmsKeyVersion')
              ? _json['cloudKmsKeyVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (cloudKmsKeyVersion != null)
          'cloudKmsKeyVersion': cloudKmsKeyVersion!,
      };
}

/// Response message for CertificateAuthorityService.ListCertificateAuthorities.
class ListCertificateAuthoritiesResponse {
  /// The list of CertificateAuthorities.
  core.List<CertificateAuthority>? certificateAuthorities;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListCertificateAuthoritiesRequest.next_page_token to
  /// retrieve the next page of results.
  core.String? nextPageToken;

  /// A list of locations (e.g. "us-west1") that could not be reached.
  core.List<core.String>? unreachable;

  ListCertificateAuthoritiesResponse({
    this.certificateAuthorities,
    this.nextPageToken,
    this.unreachable,
  });

  ListCertificateAuthoritiesResponse.fromJson(core.Map _json)
      : this(
          certificateAuthorities: _json.containsKey('certificateAuthorities')
              ? (_json['certificateAuthorities'] as core.List)
                  .map<CertificateAuthority>((value) =>
                      CertificateAuthority.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateAuthorities != null)
          'certificateAuthorities':
              certificateAuthorities!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for
/// CertificateAuthorityService.ListCertificateRevocationLists.
class ListCertificateRevocationListsResponse {
  /// The list of CertificateRevocationLists.
  core.List<CertificateRevocationList>? certificateRevocationLists;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListCertificateRevocationListsRequest.next_page_token
  /// to retrieve the next page of results.
  core.String? nextPageToken;

  /// A list of locations (e.g. "us-west1") that could not be reached.
  core.List<core.String>? unreachable;

  ListCertificateRevocationListsResponse({
    this.certificateRevocationLists,
    this.nextPageToken,
    this.unreachable,
  });

  ListCertificateRevocationListsResponse.fromJson(core.Map _json)
      : this(
          certificateRevocationLists:
              _json.containsKey('certificateRevocationLists')
                  ? (_json['certificateRevocationLists'] as core.List)
                      .map<CertificateRevocationList>((value) =>
                          CertificateRevocationList.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateRevocationLists != null)
          'certificateRevocationLists': certificateRevocationLists!
              .map((value) => value.toJson())
              .toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for CertificateAuthorityService.ListCertificates.
class ListCertificatesResponse {
  /// The list of Certificates.
  core.List<Certificate>? certificates;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListCertificatesRequest.next_page_token to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  /// A list of locations (e.g. "us-west1") that could not be reached.
  core.List<core.String>? unreachable;

  ListCertificatesResponse({
    this.certificates,
    this.nextPageToken,
    this.unreachable,
  });

  ListCertificatesResponse.fromJson(core.Map _json)
      : this(
          certificates: _json.containsKey('certificates')
              ? (_json['certificates'] as core.List)
                  .map<Certificate>((value) => Certificate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificates != null)
          'certificates': certificates!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
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

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map<Location>((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null)
          'locations': locations!.map((value) => value.toJson()).toList(),
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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map<Operation>((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null)
          'operations': operations!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for CertificateAuthorityService.ListReusableConfigs.
class ListReusableConfigsResponse {
  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListReusableConfigsRequest.next_page_token to retrieve
  /// the next page of results.
  core.String? nextPageToken;

  /// The list of ReusableConfigs.
  core.List<ReusableConfig>? reusableConfigs;

  /// A list of locations (e.g. "us-west1") that could not be reached.
  core.List<core.String>? unreachable;

  ListReusableConfigsResponse({
    this.nextPageToken,
    this.reusableConfigs,
    this.unreachable,
  });

  ListReusableConfigsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          reusableConfigs: _json.containsKey('reusableConfigs')
              ? (_json['reusableConfigs'] as core.List)
                  .map<ReusableConfig>((value) => ReusableConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (reusableConfigs != null)
          'reusableConfigs':
              reusableConfigs!.map((value) => value.toJson()).toList(),
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String? name;

  Location({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  Location.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
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
  core.List<core.int>? objectIdPath;

  ObjectId({
    this.objectIdPath,
  });

  ObjectId.fromJson(core.Map _json)
      : this(
          objectIdPath: _json.containsKey('objectIdPath')
              ? (_json['objectIdPath'] as core.List)
                  .map<core.int>((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectIdPath != null) 'objectIdPath': objectIdPath!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
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
  core.Map<core.String, core.Object>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

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
  core.Map<core.String, core.Object>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? (_json['response'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!.toJson(),
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// Represents the metadata of the long-running operation.
class OperationMetadata {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? requestedCancellation;

  /// Human-readable status of the operation, if any.
  ///
  /// Output only.
  core.String? statusMessage;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  OperationMetadata({
    this.apiVersion,
    this.createTime,
    this.endTime,
    this.requestedCancellation,
    this.statusMessage,
    this.target,
    this.verb,
  });

  OperationMetadata.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          requestedCancellation: _json.containsKey('requestedCancellation')
              ? _json['requestedCancellation'] as core.bool
              : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (requestedCancellation != null)
          'requestedCancellation': requestedCancellation!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
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
/// request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<Binding>? bindings;

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
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

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
  core.int? version;

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map _json)
      : this(
          auditConfigs: _json.containsKey('auditConfigs')
              ? (_json['auditConfigs'] as core.List)
                  .map<AuditConfig>((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map<Binding>((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null)
          'auditConfigs': auditConfigs!.map((value) => value.toJson()).toList(),
        if (bindings != null)
          'bindings': bindings!.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
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
  core.String? key;
  core.List<core.int> get keyAsBytes => convert.base64.decode(key!);

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
  core.String? type;

  PublicKey({
    this.key,
    this.type,
  });

  PublicKey.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (type != null) 'type': type!,
      };
}

/// Operation metadata returned by the CLH during resource state reconciliation.
class ReconciliationOperationMetadata {
  /// Use exclusive_action instead.
  ///
  /// Deprecated.
  core.bool? deleteResource;

  ///
  /// Possible string values are:
  /// - "UNKNOWN_REPAIR_ACTION"
  /// - "DELETE" : The resource has to be deleted. When using this bit, the CLH
  /// should fail the operation.
  /// - "RETRY" : This resource could not be repaired but the repair should be
  /// tried again at a later time. This can happen if there is a dependency that
  /// needs to be resolved first- e.g. if a parent resource must be repaired
  /// before a child resource.
  core.String? exclusiveAction;

  ReconciliationOperationMetadata({
    this.deleteResource,
    this.exclusiveAction,
  });

  ReconciliationOperationMetadata.fromJson(core.Map _json)
      : this(
          deleteResource: _json.containsKey('deleteResource')
              ? _json['deleteResource'] as core.bool
              : null,
          exclusiveAction: _json.containsKey('exclusiveAction')
              ? _json['exclusiveAction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deleteResource != null) 'deleteResource': deleteResource!,
        if (exclusiveAction != null) 'exclusiveAction': exclusiveAction!,
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
  core.String? requestId;

  RestoreCertificateAuthorityRequest({
    this.requestId,
  });

  RestoreCertificateAuthorityRequest.fromJson(core.Map _json)
      : this(
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
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
  core.String? createTime;

  /// A human-readable description of scenarios these ReusableConfigValues may
  /// be compatible with.
  ///
  /// Optional.
  core.String? description;

  /// Labels with user-defined metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource path for this ReusableConfig in the format `projects / *
  /// /locations / * /reusableConfigs / * `.
  ///
  /// Output only.
  core.String? name;

  /// The time at which this ReusableConfig was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The config values.
  ///
  /// Required.
  ReusableConfigValues? values;

  ReusableConfig({
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.updateTime,
    this.values,
  });

  ReusableConfig.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          values: _json.containsKey('values')
              ? ReusableConfigValues.fromJson(
                  _json['values'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (values != null) 'values': values!.toJson(),
      };
}

/// A ReusableConfigValues is used to describe certain fields of an X.509
/// certificate, such as the key usage fields, fields specific to CA
/// certificates, certificate policy extensions and custom extensions.
class ReusableConfigValues {
  /// Describes custom X.509 extensions.
  ///
  /// Optional.
  core.List<X509Extension>? additionalExtensions;

  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses
  /// that appear in the "Authority Information Access" extension in the
  /// certificate.
  ///
  /// Optional.
  core.List<core.String>? aiaOcspServers;

  /// Describes options in this ReusableConfigValues that are relevant in a CA
  /// certificate.
  ///
  /// Optional.
  CaOptions? caOptions;

  /// Indicates the intended use for keys that correspond to a certificate.
  ///
  /// Optional.
  KeyUsage? keyUsage;

  /// Describes the X.509 certificate policy object identifiers, per
  /// https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  ///
  /// Optional.
  core.List<ObjectId>? policyIds;

  ReusableConfigValues({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    this.keyUsage,
    this.policyIds,
  });

  ReusableConfigValues.fromJson(core.Map _json)
      : this(
          additionalExtensions: _json.containsKey('additionalExtensions')
              ? (_json['additionalExtensions'] as core.List)
                  .map<X509Extension>((value) => X509Extension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          aiaOcspServers: _json.containsKey('aiaOcspServers')
              ? (_json['aiaOcspServers'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          caOptions: _json.containsKey('caOptions')
              ? CaOptions.fromJson(
                  _json['caOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          keyUsage: _json.containsKey('keyUsage')
              ? KeyUsage.fromJson(
                  _json['keyUsage'] as core.Map<core.String, core.dynamic>)
              : null,
          policyIds: _json.containsKey('policyIds')
              ? (_json['policyIds'] as core.List)
                  .map<ObjectId>((value) => ObjectId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExtensions != null)
          'additionalExtensions':
              additionalExtensions!.map((value) => value.toJson()).toList(),
        if (aiaOcspServers != null) 'aiaOcspServers': aiaOcspServers!,
        if (caOptions != null) 'caOptions': caOptions!.toJson(),
        if (keyUsage != null) 'keyUsage': keyUsage!.toJson(),
        if (policyIds != null)
          'policyIds': policyIds!.map((value) => value.toJson()).toList(),
      };
}

/// A ReusableConfigWrapper describes values that may assist in creating an
/// X.509 certificate, or a reference to a pre-defined set of values.
class ReusableConfigWrapper {
  /// A resource path to a ReusableConfig in the format `projects / * /locations
  /// / * /reusableConfigs / * `.
  ///
  /// Required.
  core.String? reusableConfig;

  /// A user-specified inline ReusableConfigValues.
  ///
  /// Required.
  ReusableConfigValues? reusableConfigValues;

  ReusableConfigWrapper({
    this.reusableConfig,
    this.reusableConfigValues,
  });

  ReusableConfigWrapper.fromJson(core.Map _json)
      : this(
          reusableConfig: _json.containsKey('reusableConfig')
              ? _json['reusableConfig'] as core.String
              : null,
          reusableConfigValues: _json.containsKey('reusableConfigValues')
              ? ReusableConfigValues.fromJson(_json['reusableConfigValues']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reusableConfig != null) 'reusableConfig': reusableConfig!,
        if (reusableConfigValues != null)
          'reusableConfigValues': reusableConfigValues!.toJson(),
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
  core.String? revocationState;

  /// The time at which this Certificate was revoked.
  core.String? revocationTime;

  RevocationDetails({
    this.revocationState,
    this.revocationTime,
  });

  RevocationDetails.fromJson(core.Map _json)
      : this(
          revocationState: _json.containsKey('revocationState')
              ? _json['revocationState'] as core.String
              : null,
          revocationTime: _json.containsKey('revocationTime')
              ? _json['revocationTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (revocationState != null) 'revocationState': revocationState!,
        if (revocationTime != null) 'revocationTime': revocationTime!,
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
  core.String? reason;

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
  core.String? requestId;

  RevokeCertificateRequest({
    this.reason,
    this.requestId,
  });

  RevokeCertificateRequest.fromJson(core.Map _json)
      : this(
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Describes a revoked Certificate.
class RevokedCertificate {
  /// The resource path for the Certificate in the format `projects / *
  /// /locations / * /certificateAuthorities / * /certificates / * `.
  core.String? certificate;

  /// The serial number of the Certificate.
  core.String? hexSerialNumber;

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
  core.String? revocationReason;

  RevokedCertificate({
    this.certificate,
    this.hexSerialNumber,
    this.revocationReason,
  });

  RevokedCertificate.fromJson(core.Map _json)
      : this(
          certificate: _json.containsKey('certificate')
              ? _json['certificate'] as core.String
              : null,
          hexSerialNumber: _json.containsKey('hexSerialNumber')
              ? _json['hexSerialNumber'] as core.String
              : null,
          revocationReason: _json.containsKey('revocationReason')
              ? _json['revocationReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificate != null) 'certificate': certificate!,
        if (hexSerialNumber != null) 'hexSerialNumber': hexSerialNumber!,
        if (revocationReason != null) 'revocationReason': revocationReason!,
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
  core.bool? ignoreActiveCertificates;

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
  core.String? requestId;

  ScheduleDeleteCertificateAuthorityRequest({
    this.ignoreActiveCertificates,
    this.requestId,
  });

  ScheduleDeleteCertificateAuthorityRequest.fromJson(core.Map _json)
      : this(
          ignoreActiveCertificates:
              _json.containsKey('ignoreActiveCertificates')
                  ? _json['ignoreActiveCertificates'] as core.bool
                  : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ignoreActiveCertificates != null)
          'ignoreActiveCertificates': ignoreActiveCertificates!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!.toJson(),
        if (updateMask != null) 'updateMask': updateMask!,
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
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  Status({
    this.code,
    this.details,
    this.message,
  });

  Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map<core.Map<core.String, core.Object>>((value) =>
                      (value as core.Map<core.String, core.dynamic>).map(
                        (key, item) => core.MapEntry(
                          key,
                          item as core.Object,
                        ),
                      ))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// Subject describes parts of a distinguished name that, in turn, describes the
/// subject of the certificate.
class Subject {
  /// The country code of the subject.
  core.String? countryCode;

  /// The locality or city of the subject.
  core.String? locality;

  /// The organization of the subject.
  core.String? organization;

  /// The organizational_unit of the subject.
  core.String? organizationalUnit;

  /// The postal code of the subject.
  core.String? postalCode;

  /// The province, territory, or regional state of the subject.
  core.String? province;

  /// The street address of the subject.
  core.String? streetAddress;

  Subject({
    this.countryCode,
    this.locality,
    this.organization,
    this.organizationalUnit,
    this.postalCode,
    this.province,
    this.streetAddress,
  });

  Subject.fromJson(core.Map _json)
      : this(
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          locality: _json.containsKey('locality')
              ? _json['locality'] as core.String
              : null,
          organization: _json.containsKey('organization')
              ? _json['organization'] as core.String
              : null,
          organizationalUnit: _json.containsKey('organizationalUnit')
              ? _json['organizationalUnit'] as core.String
              : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          province: _json.containsKey('province')
              ? _json['province'] as core.String
              : null,
          streetAddress: _json.containsKey('streetAddress')
              ? _json['streetAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countryCode != null) 'countryCode': countryCode!,
        if (locality != null) 'locality': locality!,
        if (organization != null) 'organization': organization!,
        if (organizationalUnit != null)
          'organizationalUnit': organizationalUnit!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (province != null) 'province': province!,
        if (streetAddress != null) 'streetAddress': streetAddress!,
      };
}

/// SubjectAltNames corresponds to a more modern way of listing what the
/// asserted identity is in a certificate (i.e., compared to the "common name"
/// in the distinguished name).
class SubjectAltNames {
  /// Contains additional subject alternative name values.
  core.List<X509Extension>? customSans;

  /// Contains only valid, fully-qualified host names.
  core.List<core.String>? dnsNames;

  /// Contains only valid RFC 2822 E-mail addresses.
  core.List<core.String>? emailAddresses;

  /// Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  core.List<core.String>? ipAddresses;

  /// Contains only valid RFC 3986 URIs.
  core.List<core.String>? uris;

  SubjectAltNames({
    this.customSans,
    this.dnsNames,
    this.emailAddresses,
    this.ipAddresses,
    this.uris,
  });

  SubjectAltNames.fromJson(core.Map _json)
      : this(
          customSans: _json.containsKey('customSans')
              ? (_json['customSans'] as core.List)
                  .map<X509Extension>((value) => X509Extension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dnsNames: _json.containsKey('dnsNames')
              ? (_json['dnsNames'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          emailAddresses: _json.containsKey('emailAddresses')
              ? (_json['emailAddresses'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          ipAddresses: _json.containsKey('ipAddresses')
              ? (_json['ipAddresses'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          uris: _json.containsKey('uris')
              ? (_json['uris'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customSans != null)
          'customSans': customSans!.map((value) => value.toJson()).toList(),
        if (dnsNames != null) 'dnsNames': dnsNames!,
        if (emailAddresses != null) 'emailAddresses': emailAddresses!,
        if (ipAddresses != null) 'ipAddresses': ipAddresses!,
        if (uris != null) 'uris': uris!,
      };
}

/// These values are used to create the distinguished name and subject
/// alternative name fields in an X.509 certificate.
class SubjectConfig {
  /// The "common name" of the distinguished name.
  ///
  /// Optional.
  core.String? commonName;

  /// Contains distinguished name fields such as the location and organization.
  ///
  /// Required.
  Subject? subject;

  /// The subject alternative name fields.
  ///
  /// Optional.
  SubjectAltNames? subjectAltName;

  SubjectConfig({
    this.commonName,
    this.subject,
    this.subjectAltName,
  });

  SubjectConfig.fromJson(core.Map _json)
      : this(
          commonName: _json.containsKey('commonName')
              ? _json['commonName'] as core.String
              : null,
          subject: _json.containsKey('subject')
              ? Subject.fromJson(
                  _json['subject'] as core.Map<core.String, core.dynamic>)
              : null,
          subjectAltName: _json.containsKey('subjectAltName')
              ? SubjectAltNames.fromJson(_json['subjectAltName']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonName != null) 'commonName': commonName!,
        if (subject != null) 'subject': subject!.toJson(),
        if (subjectAltName != null) 'subjectAltName': subjectAltName!.toJson(),
      };
}

/// These values describe fields in an issued X.509 certificate such as the
/// distinguished name, subject alternative names, serial number, and lifetime.
class SubjectDescription {
  /// The "common name" of the distinguished name.
  core.String? commonName;

  /// The serial number encoded in lowercase hexadecimal.
  core.String? hexSerialNumber;

  /// For convenience, the actual lifetime of an issued certificate.
  ///
  /// Corresponds to 'not_after_time' - 'not_before_time'.
  core.String? lifetime;

  /// The time at which the certificate expires.
  core.String? notAfterTime;

  /// The time at which the certificate becomes valid.
  core.String? notBeforeTime;

  /// Contains distinguished name fields such as the location and organization.
  Subject? subject;

  /// The subject alternative name fields.
  SubjectAltNames? subjectAltName;

  SubjectDescription({
    this.commonName,
    this.hexSerialNumber,
    this.lifetime,
    this.notAfterTime,
    this.notBeforeTime,
    this.subject,
    this.subjectAltName,
  });

  SubjectDescription.fromJson(core.Map _json)
      : this(
          commonName: _json.containsKey('commonName')
              ? _json['commonName'] as core.String
              : null,
          hexSerialNumber: _json.containsKey('hexSerialNumber')
              ? _json['hexSerialNumber'] as core.String
              : null,
          lifetime: _json.containsKey('lifetime')
              ? _json['lifetime'] as core.String
              : null,
          notAfterTime: _json.containsKey('notAfterTime')
              ? _json['notAfterTime'] as core.String
              : null,
          notBeforeTime: _json.containsKey('notBeforeTime')
              ? _json['notBeforeTime'] as core.String
              : null,
          subject: _json.containsKey('subject')
              ? Subject.fromJson(
                  _json['subject'] as core.Map<core.String, core.dynamic>)
              : null,
          subjectAltName: _json.containsKey('subjectAltName')
              ? SubjectAltNames.fromJson(_json['subjectAltName']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonName != null) 'commonName': commonName!,
        if (hexSerialNumber != null) 'hexSerialNumber': hexSerialNumber!,
        if (lifetime != null) 'lifetime': lifetime!,
        if (notAfterTime != null) 'notAfterTime': notAfterTime!,
        if (notBeforeTime != null) 'notBeforeTime': notBeforeTime!,
        if (subject != null) 'subject': subject!.toJson(),
        if (subjectAltName != null) 'subjectAltName': subjectAltName!.toJson(),
      };
}

/// Describes a subordinate CA's issuers.
///
/// This is either a resource path to a known issuing CertificateAuthority, or a
/// PEM issuer certificate chain.
class SubordinateConfig {
  /// This can refer to a CertificateAuthority that was used to create a
  /// subordinate CertificateAuthority.
  ///
  /// This field is used for information and usability purposes only. The
  /// resource name is in the format `projects / * /locations / *
  /// /certificateAuthorities / * `.
  ///
  /// Required.
  core.String? certificateAuthority;

  /// Contains the PEM certificate chain for the issuers of this
  /// CertificateAuthority, but not pem certificate for this CA itself.
  ///
  /// Required.
  SubordinateConfigChain? pemIssuerChain;

  SubordinateConfig({
    this.certificateAuthority,
    this.pemIssuerChain,
  });

  SubordinateConfig.fromJson(core.Map _json)
      : this(
          certificateAuthority: _json.containsKey('certificateAuthority')
              ? _json['certificateAuthority'] as core.String
              : null,
          pemIssuerChain: _json.containsKey('pemIssuerChain')
              ? SubordinateConfigChain.fromJson(_json['pemIssuerChain']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateAuthority != null)
          'certificateAuthority': certificateAuthority!,
        if (pemIssuerChain != null) 'pemIssuerChain': pemIssuerChain!.toJson(),
      };
}

/// This message describes a subordinate CA's issuer certificate chain.
///
/// This wrapper exists for compatibility reasons.
class SubordinateConfigChain {
  /// Expected to be in leaf-to-root order according to RFC 5246.
  ///
  /// Required.
  core.List<core.String>? pemCertificates;

  SubordinateConfigChain({
    this.pemCertificates,
  });

  SubordinateConfigChain.fromJson(core.Map _json)
      : this(
          pemCertificates: _json.containsKey('pemCertificates')
              ? (_json['pemCertificates'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pemCertificates != null) 'pemCertificates': pemCertificates!,
      };
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  TestIamPermissionsRequest({
    this.permissions,
  });

  TestIamPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  TestIamPermissionsResponse({
    this.permissions,
  });

  TestIamPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
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
  core.bool? critical;

  /// The OID for this X.509 extension.
  ///
  /// Required.
  ObjectId? objectId;

  /// The value of this X.509 extension.
  ///
  /// Required.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  X509Extension({
    this.critical,
    this.objectId,
    this.value,
  });

  X509Extension.fromJson(core.Map _json)
      : this(
          critical: _json.containsKey('critical')
              ? _json['critical'] as core.bool
              : null,
          objectId: _json.containsKey('objectId')
              ? ObjectId.fromJson(
                  _json['objectId'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (critical != null) 'critical': critical!,
        if (objectId != null) 'objectId': objectId!.toJson(),
        if (value != null) 'value': value!,
      };
}
