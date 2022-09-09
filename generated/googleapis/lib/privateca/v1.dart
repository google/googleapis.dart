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

/// Certificate Authority API - v1
///
/// The Certificate Authority Service API is a highly-available, scalable
/// service that enables you to simplify and automate the management of private
/// certificate authorities (CAs) while staying in control of your private keys.
///
/// For more information, see <https://cloud.google.com/>
///
/// Create an instance of [CertificateAuthorityServiceApi] to access these
/// resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCaPoolsResource]
///       - [ProjectsLocationsCaPoolsCertificateAuthoritiesResource]
/// -
/// [ProjectsLocationsCaPoolsCertificateAuthoritiesCertificateRevocationListsResource]
///       - [ProjectsLocationsCaPoolsCertificatesResource]
///     - [ProjectsLocationsCertificateTemplatesResource]
///     - [ProjectsLocationsOperationsResource]
library privateca.v1;

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

/// The Certificate Authority Service API is a highly-available, scalable
/// service that enables you to simplify and automate the management of private
/// certificate authorities (CAs) while staying in control of your private keys.
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

  ProjectsLocationsCaPoolsResource get caPools =>
      ProjectsLocationsCaPoolsResource(_requester);
  ProjectsLocationsCertificateTemplatesResource get certificateTemplates =>
      ProjectsLocationsCertificateTemplatesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCaPoolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCaPoolsCertificateAuthoritiesResource
      get certificateAuthorities =>
          ProjectsLocationsCaPoolsCertificateAuthoritiesResource(_requester);
  ProjectsLocationsCaPoolsCertificatesResource get certificates =>
      ProjectsLocationsCaPoolsCertificatesResource(_requester);

  ProjectsLocationsCaPoolsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a CaPool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// CaPool, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [caPoolId] - Required. It must be unique within a location and match the
  /// regular expression `[a-zA-Z0-9_-]{1,63}`
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
    CaPool request,
    core.String parent, {
    core.String? caPoolId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (caPoolId != null) 'caPoolId': [caPoolId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/caPools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a CaPool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CaPool in the format
  /// `projects / * /locations / * /caPools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// FetchCaCerts returns the current trust anchor for the CaPool.
  ///
  /// This will include CA certificate chains for all ACTIVE
  /// CertificateAuthority resources in the CaPool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [caPool] - Required. The resource name for the CaPool in the format
  /// `projects / * /locations / * /caPools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchCaCertsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchCaCertsResponse> fetchCaCerts(
    FetchCaCertsRequest request,
    core.String caPool, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$caPool') + ':fetchCaCerts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchCaCertsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a CaPool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CaPool to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CaPool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CaPool> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CaPool.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists CaPools.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// CaPools, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response.
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted.
  ///
  /// [pageSize] - Optional. Limit on the number of CaPools to include in the
  /// response. Further CaPools can subsequently be obtained by including the
  /// ListCaPoolsResponse.next_page_token in a subsequent request. If
  /// unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Pagination token, returned earlier via
  /// ListCaPoolsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCaPoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCaPoolsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/caPools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCaPoolsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a CaPool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this CaPool in the format
  /// `projects / * /locations / * /caPools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
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
    CaPool request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCaPoolsCertificateAuthoritiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCaPoolsCertificateAuthoritiesCertificateRevocationListsResource
      get certificateRevocationLists =>
          ProjectsLocationsCaPoolsCertificateAuthoritiesCertificateRevocationListsResource(
              _requester);

  ProjectsLocationsCaPoolsCertificateAuthoritiesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Activate a CertificateAuthority that is in state AWAITING_USER_ACTIVATION
  /// and is of type SUBORDINATE.
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
  /// format `projects / * /locations / * /caPools / * /certificateAuthorities /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Create a new CertificateAuthority in a given Project and Location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the CaPool associated with the
  /// CertificateAuthorities, in the format `projects / * /locations / *
  /// /caPools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (certificateAuthorityId != null)
        'certificateAuthorityId': [certificateAuthorityId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/certificateAuthorities';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a CertificateAuthority.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /caPools / * /certificateAuthorities /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+$`.
  ///
  /// [ignoreActiveCertificates] - Optional. This field allows the CA to be
  /// deleted even if the CA has active certs. Active certs include both
  /// unrevoked and unexpired certs.
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
  /// [skipGracePeriod] - Optional. If this flag is set, the Certificate
  /// Authority will be deleted as soon as possible without a 30-day grace
  /// period where undeletion would have been allowed. If you proceed, there
  /// will be no way to recover this CA.
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
    core.String name, {
    core.bool? ignoreActiveCertificates,
    core.String? requestId,
    core.bool? skipGracePeriod,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ignoreActiveCertificates != null)
        'ignoreActiveCertificates': ['${ignoreActiveCertificates}'],
      if (requestId != null) 'requestId': [requestId],
      if (skipGracePeriod != null) 'skipGracePeriod': ['${skipGracePeriod}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Disable a CertificateAuthority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /caPools / * /certificateAuthorities /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enable a CertificateAuthority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /caPools / * /certificateAuthorities /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetch a certificate signing request (CSR) from a CertificateAuthority that
  /// is in state AWAITING_USER_ACTIVATION and is of type SUBORDINATE.
  ///
  /// The CSR must then be signed by the desired parent Certificate Authority,
  /// which could be another CertificateAuthority resource, or could be an
  /// on-prem certificate authority. See also ActivateCertificateAuthority.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /caPools / * /certificateAuthorities /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetch';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchCertificateAuthorityCsrResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a CertificateAuthority.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CertificateAuthority to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CertificateAuthority.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists CertificateAuthorities.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the CaPool associated with the
  /// CertificateAuthorities, in the format `projects / * /locations / *
  /// /caPools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/certificateAuthorities';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCertificateAuthoritiesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a CertificateAuthority.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this CertificateAuthority in
  /// the format `projects / * /locations / * /caPools / *
  /// /certificateAuthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undelete a CertificateAuthority that has been deleted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateAuthority in the
  /// format `projects / * /locations / * /caPools / * /certificateAuthorities /
  /// * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
  async.Future<Operation> undelete(
    UndeleteCertificateAuthorityRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCaPoolsCertificateAuthoritiesCertificateRevocationListsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCaPoolsCertificateAuthoritiesCertificateRevocationListsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Returns a CertificateRevocationList.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CertificateRevocationList to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+/certificateRevocationLists/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CertificateRevocationList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+/certificateRevocationLists/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists CertificateRevocationLists.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// CertificateRevocationLists, in the format `projects / * /locations / *
  /// /caPools / * /certificateAuthorities / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/certificateRevocationLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCertificateRevocationListsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a CertificateRevocationList.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this CertificateRevocationList
  /// in the format `projects / * /locations / * /caPools / *
  /// certificateAuthorities / * / certificateRevocationLists / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+/certificateRevocationLists/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+/certificateRevocationLists/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificateAuthorities/\[^/\]+/certificateRevocationLists/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCaPoolsCertificatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCaPoolsCertificatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a new Certificate in a given Project, Location from a particular
  /// CaPool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the CaPool associated with the
  /// Certificate, in the format `projects / * /locations / * /caPools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
  ///
  /// [certificateId] - Optional. It must be unique within a location and match
  /// the regular expression `[a-zA-Z0-9_-]{1,63}`. This field is required when
  /// using a CertificateAuthority in the Enterprise CertificateAuthority.Tier,
  /// but is optional and its value is ignored otherwise.
  ///
  /// [issuingCertificateAuthorityId] - Optional. The resource ID of the
  /// CertificateAuthority that should issue the certificate. This optional
  /// field will ignore the load-balancing scheme of the Pool and directly issue
  /// the certificate from the CA with the specified ID, contained in the same
  /// CaPool referenced by `parent`. Per-CA quota rules apply. If left empty, a
  /// CertificateAuthority will be chosen from the CaPool by the service. For
  /// example, to issue a Certificate from a Certificate Authority with resource
  /// name
  /// "projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca",
  /// you can set the parent to
  /// "projects/my-project/locations/us-central1/caPools/my-pool" and the
  /// issuing_certificate_authority_id to "my-ca".
  ///
  /// [requestId] - Optional. An ID to identify requests. Specify a unique
  /// request ID so that if you must retry your request, the server will know to
  /// ignore the request if it has already been completed. The server will
  /// guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If this is true, no Certificate resource will
  /// be persisted regardless of the CaPool's tier, and the returned Certificate
  /// will not contain the pem_certificate field.
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
    core.String? issuingCertificateAuthorityId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (certificateId != null) 'certificateId': [certificateId],
      if (issuingCertificateAuthorityId != null)
        'issuingCertificateAuthorityId': [issuingCertificateAuthorityId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/certificates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Certificate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a Certificate.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Certificate to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificates/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Certificate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Certificates.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// Certificates, in the format `projects / * /locations / * /caPools / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/certificates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCertificatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a Certificate.
  ///
  /// Currently, the only field you can update is the labels field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this Certificate in the format
  /// `projects / * /locations / * /caPools / * /certificates / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificates/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Certificate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Revoke a Certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this Certificate in the format
  /// `projects / * /locations / * /caPools / * /certificates / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/caPools/\[^/\]+/certificates/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':revoke';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Certificate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCertificateTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCertificateTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a new CertificateTemplate in a given Project and Location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// CertificateTemplate, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [certificateTemplateId] - Required. It must be unique within a location
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
    CertificateTemplate request,
    core.String parent, {
    core.String? certificateTemplateId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (certificateTemplateId != null)
        'certificateTemplateId': [certificateTemplateId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/certificateTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// DeleteCertificateTemplate deletes a CertificateTemplate.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for this CertificateTemplate in the
  /// format `projects / * /locations / * /certificateTemplates / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateTemplates/\[^/\]+$`.
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a CertificateTemplate.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CertificateTemplate to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CertificateTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CertificateTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CertificateTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateTemplates/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists CertificateTemplates.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// CertificateTemplates, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response.
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted.
  ///
  /// [pageSize] - Optional. Limit on the number of CertificateTemplates to
  /// include in the response. Further CertificateTemplates can subsequently be
  /// obtained by including the ListCertificateTemplatesResponse.next_page_token
  /// in a subsequent request. If unspecified, the server will pick an
  /// appropriate default.
  ///
  /// [pageToken] - Optional. Pagination token, returned earlier via
  /// ListCertificateTemplatesResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCertificateTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCertificateTemplatesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/certificateTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCertificateTemplatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a CertificateTemplate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this CertificateTemplate in
  /// the format `projects / * /locations / * /certificateTemplates / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateTemplates/\[^/\]+$`.
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
    CertificateTemplate request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateTemplates/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateTemplates/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// URLs where a CertificateAuthority will publish content.
class AccessUrls {
  /// The URL where this CertificateAuthority's CA certificate is published.
  ///
  /// This will only be set for CAs that have been activated.
  core.String? caCertificateAccessUrl;

  /// The URLs where this CertificateAuthority's CRLs are published.
  ///
  /// This will only be set for CAs that have been activated.
  core.List<core.String>? crlAccessUrls;

  AccessUrls({
    this.caCertificateAccessUrl,
    this.crlAccessUrls,
  });

  AccessUrls.fromJson(core.Map json_)
      : this(
          caCertificateAccessUrl: json_.containsKey('caCertificateAccessUrl')
              ? json_['caCertificateAccessUrl'] as core.String
              : null,
          crlAccessUrls: json_.containsKey('crlAccessUrls')
              ? (json_['crlAccessUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caCertificateAccessUrl != null)
          'caCertificateAccessUrl': caCertificateAccessUrl!,
        if (crlAccessUrls != null) 'crlAccessUrls': crlAccessUrls!,
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

  ActivateCertificateAuthorityRequest.fromJson(core.Map json_)
      : this(
          pemCaCertificate: json_.containsKey('pemCaCertificate')
              ? json_['pemCaCertificate'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          subordinateConfig: json_.containsKey('subordinateConfig')
              ? SubordinateConfig.fromJson(json_['subordinateConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pemCaCertificate != null) 'pemCaCertificate': pemCaCertificate!,
        if (requestId != null) 'requestId': requestId!,
        if (subordinateConfig != null) 'subordinateConfig': subordinateConfig!,
      };
}

/// Describes a "type" of key that may be used in a Certificate issued from a
/// CaPool.
///
/// Note that a single AllowedKeyType may refer to either a fully-qualified key
/// algorithm, such as RSA 4096, or a family of key algorithms, such as any RSA
/// key.
class AllowedKeyType {
  /// Represents an allowed Elliptic Curve key type.
  EcKeyType? ellipticCurve;

  /// Represents an allowed RSA key type.
  RsaKeyType? rsa;

  AllowedKeyType({
    this.ellipticCurve,
    this.rsa,
  });

  AllowedKeyType.fromJson(core.Map json_)
      : this(
          ellipticCurve: json_.containsKey('ellipticCurve')
              ? EcKeyType.fromJson(
                  json_['ellipticCurve'] as core.Map<core.String, core.dynamic>)
              : null,
          rsa: json_.containsKey('rsa')
              ? RsaKeyType.fromJson(
                  json_['rsa'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ellipticCurve != null) 'ellipticCurve': ellipticCurve!,
        if (rsa != null) 'rsa': rsa!,
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
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
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

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
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

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
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

  CaOptions.fromJson(core.Map json_)
      : this(
          isCa: json_.containsKey('isCa') ? json_['isCa'] as core.bool : null,
          maxIssuerPathLength: json_.containsKey('maxIssuerPathLength')
              ? json_['maxIssuerPathLength'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isCa != null) 'isCa': isCa!,
        if (maxIssuerPathLength != null)
          'maxIssuerPathLength': maxIssuerPathLength!,
      };
}

/// A CaPool represents a group of CertificateAuthorities that form a trust
/// anchor.
///
/// A CaPool can be used to manage issuance policies for one or more
/// CertificateAuthority resources and to rotate CA certificates in and out of
/// the trust anchor.
class CaPool {
  /// The IssuancePolicy to control how Certificates will be issued from this
  /// CaPool.
  ///
  /// Optional.
  IssuancePolicy? issuancePolicy;

  /// Labels with user-defined metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name for this CaPool in the format `projects / * /locations /
  /// * /caPools / * `.
  ///
  /// Output only.
  core.String? name;

  /// The PublishingOptions to follow when issuing Certificates from any
  /// CertificateAuthority in this CaPool.
  ///
  /// Optional.
  PublishingOptions? publishingOptions;

  /// The Tier of this CaPool.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not specified.
  /// - "ENTERPRISE" : Enterprise tier.
  /// - "DEVOPS" : DevOps tier.
  core.String? tier;

  CaPool({
    this.issuancePolicy,
    this.labels,
    this.name,
    this.publishingOptions,
    this.tier,
  });

  CaPool.fromJson(core.Map json_)
      : this(
          issuancePolicy: json_.containsKey('issuancePolicy')
              ? IssuancePolicy.fromJson(json_['issuancePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          publishingOptions: json_.containsKey('publishingOptions')
              ? PublishingOptions.fromJson(json_['publishingOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tier: json_.containsKey('tier') ? json_['tier'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issuancePolicy != null) 'issuancePolicy': issuancePolicy!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (publishingOptions != null) 'publishingOptions': publishingOptions!,
        if (tier != null) 'tier': tier!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

class CertChain {
  /// The certificates that form the CA chain, from leaf to root order.
  core.List<core.String>? certificates;

  CertChain({
    this.certificates,
  });

  CertChain.fromJson(core.Map json_)
      : this(
          certificates: json_.containsKey('certificates')
              ? (json_['certificates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificates != null) 'certificates': certificates!,
      };
}

/// A Certificate corresponds to a signed X.509 certificate issued by a
/// CertificateAuthority.
class Certificate {
  /// A structured description of the issued X.509 certificate.
  ///
  /// Output only.
  CertificateDescription? certificateDescription;

  /// The resource name for a CertificateTemplate used to issue this
  /// certificate, in the format `projects / * /locations / *
  /// /certificateTemplates / * `.
  ///
  /// If this is specified, the caller must have the necessary permission to use
  /// this template. If this is omitted, no template will be used. This template
  /// must be in the same location as the Certificate.
  ///
  /// Immutable.
  core.String? certificateTemplate;

  /// A description of the certificate and key that does not require X.509 or
  /// ASN.1.
  ///
  /// Immutable.
  CertificateConfig? config;

  /// The time at which this Certificate was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name of the issuing CertificateAuthority in the format
  /// `projects / * /locations / * /caPools / * /certificateAuthorities / * `.
  ///
  /// Output only.
  core.String? issuerCertificateAuthority;

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

  /// The resource name for this Certificate in the format `projects / *
  /// /locations / * /caPools / * /certificates / * `.
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

  /// Specifies how the Certificate's identity fields are to be decided.
  ///
  /// If this is omitted, the `DEFAULT` subject mode will be used.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "SUBJECT_REQUEST_MODE_UNSPECIFIED" : Not specified.
  /// - "DEFAULT" : The default mode used in most cases. Indicates that the
  /// certificate's Subject and/or SubjectAltNames are specified in the
  /// certificate request. This mode requires the caller to have the
  /// `privateca.certificates.create` permission.
  /// - "REFLECTED_SPIFFE" : A mode reserved for special cases. Indicates that
  /// the certificate should have one or more SPIFFE SubjectAltNames set by the
  /// service based on the caller's identity. This mode will ignore any
  /// explicitly specified Subject and/or SubjectAltNames in the certificate
  /// request. This mode requires the caller to have the
  /// `privateca.certificates.createForSelf` permission.
  core.String? subjectMode;

  /// The time at which this Certificate was updated.
  ///
  /// Output only.
  core.String? updateTime;

  Certificate({
    this.certificateDescription,
    this.certificateTemplate,
    this.config,
    this.createTime,
    this.issuerCertificateAuthority,
    this.labels,
    this.lifetime,
    this.name,
    this.pemCertificate,
    this.pemCertificateChain,
    this.pemCsr,
    this.revocationDetails,
    this.subjectMode,
    this.updateTime,
  });

  Certificate.fromJson(core.Map json_)
      : this(
          certificateDescription: json_.containsKey('certificateDescription')
              ? CertificateDescription.fromJson(json_['certificateDescription']
                  as core.Map<core.String, core.dynamic>)
              : null,
          certificateTemplate: json_.containsKey('certificateTemplate')
              ? json_['certificateTemplate'] as core.String
              : null,
          config: json_.containsKey('config')
              ? CertificateConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          issuerCertificateAuthority:
              json_.containsKey('issuerCertificateAuthority')
                  ? json_['issuerCertificateAuthority'] as core.String
                  : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lifetime: json_.containsKey('lifetime')
              ? json_['lifetime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pemCertificate: json_.containsKey('pemCertificate')
              ? json_['pemCertificate'] as core.String
              : null,
          pemCertificateChain: json_.containsKey('pemCertificateChain')
              ? (json_['pemCertificateChain'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pemCsr: json_.containsKey('pemCsr')
              ? json_['pemCsr'] as core.String
              : null,
          revocationDetails: json_.containsKey('revocationDetails')
              ? RevocationDetails.fromJson(json_['revocationDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subjectMode: json_.containsKey('subjectMode')
              ? json_['subjectMode'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateDescription != null)
          'certificateDescription': certificateDescription!,
        if (certificateTemplate != null)
          'certificateTemplate': certificateTemplate!,
        if (config != null) 'config': config!,
        if (createTime != null) 'createTime': createTime!,
        if (issuerCertificateAuthority != null)
          'issuerCertificateAuthority': issuerCertificateAuthority!,
        if (labels != null) 'labels': labels!,
        if (lifetime != null) 'lifetime': lifetime!,
        if (name != null) 'name': name!,
        if (pemCertificate != null) 'pemCertificate': pemCertificate!,
        if (pemCertificateChain != null)
          'pemCertificateChain': pemCertificateChain!,
        if (pemCsr != null) 'pemCsr': pemCsr!,
        if (revocationDetails != null) 'revocationDetails': revocationDetails!,
        if (subjectMode != null) 'subjectMode': subjectMode!,
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

  /// The config used to create a self-signed X.509 certificate or CSR.
  ///
  /// Required. Immutable.
  CertificateConfig? config;

  /// The time at which this CertificateAuthority was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which this CertificateAuthority was soft deleted, if it is in
  /// the DELETED state.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The time at which this CertificateAuthority will be permanently purged, if
  /// it is in the DELETED state.
  ///
  /// Output only.
  core.String? expireTime;

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
  /// Required. Immutable.
  core.String? lifetime;

  /// The resource name for this CertificateAuthority in the format `projects /
  /// * /locations / * /caPools / * /certificateAuthorities / * `.
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
  /// generated for this CA. The CA will be part of the CaPool's trust anchor,
  /// and will be used to issue certificates from the CaPool.
  /// - "DISABLED" : Certificates cannot be issued from this CA. CRLs will still
  /// be generated. The CA will be part of the CaPool's trust anchor, but will
  /// not be used to issue certificates from the CaPool.
  /// - "STAGED" : Certificates can be issued from this CA. CRLs will be
  /// generated for this CA. The CA will be part of the CaPool's trust anchor,
  /// but will not be used to issue certificates from the CaPool.
  /// - "AWAITING_USER_ACTIVATION" : Certificates cannot be issued from this CA.
  /// CRLs will not be generated. The CA will not be part of the CaPool's trust
  /// anchor, and will not be used to issue certificates from the CaPool.
  /// - "DELETED" : Certificates cannot be issued from this CA. CRLs will not be
  /// generated. The CA may still be recovered by calling
  /// CertificateAuthorityService.UndeleteCertificateAuthority before
  /// expire_time. The CA will not be part of the CaPool's trust anchor, and
  /// will not be used to issue certificates from the CaPool.
  core.String? state;

  /// If this is a subordinate CertificateAuthority, this field will be set with
  /// the subordinate configuration, which describes its issuers.
  ///
  /// This may be updated, but this CertificateAuthority must continue to
  /// validate.
  ///
  /// Optional.
  SubordinateConfig? subordinateConfig;

  /// The CaPool.Tier of the CaPool that includes this CertificateAuthority.
  ///
  /// Output only.
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

  /// The time at which this CertificateAuthority was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  CertificateAuthority({
    this.accessUrls,
    this.caCertificateDescriptions,
    this.config,
    this.createTime,
    this.deleteTime,
    this.expireTime,
    this.gcsBucket,
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

  CertificateAuthority.fromJson(core.Map json_)
      : this(
          accessUrls: json_.containsKey('accessUrls')
              ? AccessUrls.fromJson(
                  json_['accessUrls'] as core.Map<core.String, core.dynamic>)
              : null,
          caCertificateDescriptions:
              json_.containsKey('caCertificateDescriptions')
                  ? (json_['caCertificateDescriptions'] as core.List)
                      .map((value) => CertificateDescription.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          config: json_.containsKey('config')
              ? CertificateConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          gcsBucket: json_.containsKey('gcsBucket')
              ? json_['gcsBucket'] as core.String
              : null,
          keySpec: json_.containsKey('keySpec')
              ? KeyVersionSpec.fromJson(
                  json_['keySpec'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lifetime: json_.containsKey('lifetime')
              ? json_['lifetime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pemCaCertificates: json_.containsKey('pemCaCertificates')
              ? (json_['pemCaCertificates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          subordinateConfig: json_.containsKey('subordinateConfig')
              ? SubordinateConfig.fromJson(json_['subordinateConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tier: json_.containsKey('tier') ? json_['tier'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessUrls != null) 'accessUrls': accessUrls!,
        if (caCertificateDescriptions != null)
          'caCertificateDescriptions': caCertificateDescriptions!,
        if (config != null) 'config': config!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (gcsBucket != null) 'gcsBucket': gcsBucket!,
        if (keySpec != null) 'keySpec': keySpec!,
        if (labels != null) 'labels': labels!,
        if (lifetime != null) 'lifetime': lifetime!,
        if (name != null) 'name': name!,
        if (pemCaCertificates != null) 'pemCaCertificates': pemCaCertificates!,
        if (state != null) 'state': state!,
        if (subordinateConfig != null) 'subordinateConfig': subordinateConfig!,
        if (tier != null) 'tier': tier!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
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

  /// Specifies some of the values in a certificate that are related to the
  /// subject.
  ///
  /// Required.
  SubjectConfig? subjectConfig;

  /// Describes how some of the technical X.509 fields in a certificate should
  /// be populated.
  ///
  /// Required.
  X509Parameters? x509Config;

  CertificateConfig({
    this.publicKey,
    this.subjectConfig,
    this.x509Config,
  });

  CertificateConfig.fromJson(core.Map json_)
      : this(
          publicKey: json_.containsKey('publicKey')
              ? PublicKey.fromJson(
                  json_['publicKey'] as core.Map<core.String, core.dynamic>)
              : null,
          subjectConfig: json_.containsKey('subjectConfig')
              ? SubjectConfig.fromJson(
                  json_['subjectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          x509Config: json_.containsKey('x509Config')
              ? X509Parameters.fromJson(
                  json_['x509Config'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publicKey != null) 'publicKey': publicKey!,
        if (subjectConfig != null) 'subjectConfig': subjectConfig!,
        if (x509Config != null) 'x509Config': x509Config!,
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

  /// Describes some of the technical X.509 fields in a certificate.
  X509Parameters? x509Description;

  CertificateDescription({
    this.aiaIssuingCertificateUrls,
    this.authorityKeyId,
    this.certFingerprint,
    this.crlDistributionPoints,
    this.publicKey,
    this.subjectDescription,
    this.subjectKeyId,
    this.x509Description,
  });

  CertificateDescription.fromJson(core.Map json_)
      : this(
          aiaIssuingCertificateUrls:
              json_.containsKey('aiaIssuingCertificateUrls')
                  ? (json_['aiaIssuingCertificateUrls'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          authorityKeyId: json_.containsKey('authorityKeyId')
              ? KeyId.fromJson(json_['authorityKeyId']
                  as core.Map<core.String, core.dynamic>)
              : null,
          certFingerprint: json_.containsKey('certFingerprint')
              ? CertificateFingerprint.fromJson(json_['certFingerprint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          crlDistributionPoints: json_.containsKey('crlDistributionPoints')
              ? (json_['crlDistributionPoints'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          publicKey: json_.containsKey('publicKey')
              ? PublicKey.fromJson(
                  json_['publicKey'] as core.Map<core.String, core.dynamic>)
              : null,
          subjectDescription: json_.containsKey('subjectDescription')
              ? SubjectDescription.fromJson(json_['subjectDescription']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subjectKeyId: json_.containsKey('subjectKeyId')
              ? KeyId.fromJson(
                  json_['subjectKeyId'] as core.Map<core.String, core.dynamic>)
              : null,
          x509Description: json_.containsKey('x509Description')
              ? X509Parameters.fromJson(json_['x509Description']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aiaIssuingCertificateUrls != null)
          'aiaIssuingCertificateUrls': aiaIssuingCertificateUrls!,
        if (authorityKeyId != null) 'authorityKeyId': authorityKeyId!,
        if (certFingerprint != null) 'certFingerprint': certFingerprint!,
        if (crlDistributionPoints != null)
          'crlDistributionPoints': crlDistributionPoints!,
        if (publicKey != null) 'publicKey': publicKey!,
        if (subjectDescription != null)
          'subjectDescription': subjectDescription!,
        if (subjectKeyId != null) 'subjectKeyId': subjectKeyId!,
        if (x509Description != null) 'x509Description': x509Description!,
      };
}

/// Describes a set of X.509 extensions that may be part of some certificate
/// issuance controls.
class CertificateExtensionConstraints {
  /// A set of ObjectIds identifying custom X.509 extensions.
  ///
  /// Will be combined with known_extensions to determine the full set of X.509
  /// extensions.
  ///
  /// Optional.
  core.List<ObjectId>? additionalExtensions;

  /// A set of named X.509 extensions.
  ///
  /// Will be combined with additional_extensions to determine the full set of
  /// X.509 extensions.
  ///
  /// Optional.
  core.List<core.String>? knownExtensions;

  CertificateExtensionConstraints({
    this.additionalExtensions,
    this.knownExtensions,
  });

  CertificateExtensionConstraints.fromJson(core.Map json_)
      : this(
          additionalExtensions: json_.containsKey('additionalExtensions')
              ? (json_['additionalExtensions'] as core.List)
                  .map((value) => ObjectId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          knownExtensions: json_.containsKey('knownExtensions')
              ? (json_['knownExtensions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExtensions != null)
          'additionalExtensions': additionalExtensions!,
        if (knownExtensions != null) 'knownExtensions': knownExtensions!,
      };
}

/// A group of fingerprints for the x509 certificate.
class CertificateFingerprint {
  /// The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
  core.String? sha256Hash;

  CertificateFingerprint({
    this.sha256Hash,
  });

  CertificateFingerprint.fromJson(core.Map json_)
      : this(
          sha256Hash: json_.containsKey('sha256Hash')
              ? json_['sha256Hash'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha256Hash != null) 'sha256Hash': sha256Hash!,
      };
}

/// Describes constraints on a Certificate's Subject and SubjectAltNames.
class CertificateIdentityConstraints {
  /// If this is true, the SubjectAltNames extension may be copied from a
  /// certificate request into the signed certificate.
  ///
  /// Otherwise, the requested SubjectAltNames will be discarded.
  ///
  /// Required.
  core.bool? allowSubjectAltNamesPassthrough;

  /// If this is true, the Subject field may be copied from a certificate
  /// request into the signed certificate.
  ///
  /// Otherwise, the requested Subject will be discarded.
  ///
  /// Required.
  core.bool? allowSubjectPassthrough;

  /// A CEL expression that may be used to validate the resolved X.509 Subject
  /// and/or Subject Alternative Name before a certificate is signed.
  ///
  /// To see the full allowed syntax and some examples, see
  /// https://cloud.google.com/certificate-authority-service/docs/using-cel
  ///
  /// Optional.
  Expr? celExpression;

  CertificateIdentityConstraints({
    this.allowSubjectAltNamesPassthrough,
    this.allowSubjectPassthrough,
    this.celExpression,
  });

  CertificateIdentityConstraints.fromJson(core.Map json_)
      : this(
          allowSubjectAltNamesPassthrough:
              json_.containsKey('allowSubjectAltNamesPassthrough')
                  ? json_['allowSubjectAltNamesPassthrough'] as core.bool
                  : null,
          allowSubjectPassthrough: json_.containsKey('allowSubjectPassthrough')
              ? json_['allowSubjectPassthrough'] as core.bool
              : null,
          celExpression: json_.containsKey('celExpression')
              ? Expr.fromJson(
                  json_['celExpression'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowSubjectAltNamesPassthrough != null)
          'allowSubjectAltNamesPassthrough': allowSubjectAltNamesPassthrough!,
        if (allowSubjectPassthrough != null)
          'allowSubjectPassthrough': allowSubjectPassthrough!,
        if (celExpression != null) 'celExpression': celExpression!,
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

  /// The resource name for this CertificateRevocationList in the format
  /// `projects / * /locations / * /caPools / * certificateAuthorities / * /
  /// certificateRevocationLists / * `.
  ///
  /// Output only.
  core.String? name;

  /// The PEM-encoded X.509 CRL.
  ///
  /// Output only.
  core.String? pemCrl;

  /// The revision ID of this CertificateRevocationList.
  ///
  /// A new revision is committed whenever a new CRL is published. The format is
  /// an 8-character hexadecimal string.
  ///
  /// Output only.
  core.String? revisionId;

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
    this.revisionId,
    this.revokedCertificates,
    this.sequenceNumber,
    this.state,
    this.updateTime,
  });

  CertificateRevocationList.fromJson(core.Map json_)
      : this(
          accessUrl: json_.containsKey('accessUrl')
              ? json_['accessUrl'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pemCrl: json_.containsKey('pemCrl')
              ? json_['pemCrl'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          revokedCertificates: json_.containsKey('revokedCertificates')
              ? (json_['revokedCertificates'] as core.List)
                  .map((value) => RevokedCertificate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sequenceNumber: json_.containsKey('sequenceNumber')
              ? json_['sequenceNumber'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessUrl != null) 'accessUrl': accessUrl!,
        if (createTime != null) 'createTime': createTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (pemCrl != null) 'pemCrl': pemCrl!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (revokedCertificates != null)
          'revokedCertificates': revokedCertificates!,
        if (sequenceNumber != null) 'sequenceNumber': sequenceNumber!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A CertificateTemplate refers to a managed template for certificate issuance.
class CertificateTemplate {
  /// The time at which this CertificateTemplate was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A human-readable description of scenarios this template is intended for.
  ///
  /// Optional.
  core.String? description;

  /// Describes constraints on identities that may be appear in Certificates
  /// issued using this template.
  ///
  /// If this is omitted, then this template will not add restrictions on a
  /// certificate's identity.
  ///
  /// Optional.
  CertificateIdentityConstraints? identityConstraints;

  /// Labels with user-defined metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name for this CertificateTemplate in the format `projects / *
  /// /locations / * /certificateTemplates / * `.
  ///
  /// Output only.
  core.String? name;

  /// Describes the set of X.509 extensions that may appear in a Certificate
  /// issued using this CertificateTemplate.
  ///
  /// If a certificate request sets extensions that don't appear in the
  /// passthrough_extensions, those extensions will be dropped. If the issuing
  /// CaPool's IssuancePolicy defines baseline_values that don't appear here,
  /// the certificate issuance request will fail. If this is omitted, then this
  /// template will not add restrictions on a certificate's X.509 extensions.
  /// These constraints do not apply to X.509 extensions set in this
  /// CertificateTemplate's predefined_values.
  ///
  /// Optional.
  CertificateExtensionConstraints? passthroughExtensions;

  /// A set of X.509 values that will be applied to all issued certificates that
  /// use this template.
  ///
  /// If the certificate request includes conflicting values for the same
  /// properties, they will be overwritten by the values defined here. If the
  /// issuing CaPool's IssuancePolicy defines conflicting baseline_values for
  /// the same properties, the certificate issuance request will fail.
  ///
  /// Optional.
  X509Parameters? predefinedValues;

  /// The time at which this CertificateTemplate was updated.
  ///
  /// Output only.
  core.String? updateTime;

  CertificateTemplate({
    this.createTime,
    this.description,
    this.identityConstraints,
    this.labels,
    this.name,
    this.passthroughExtensions,
    this.predefinedValues,
    this.updateTime,
  });

  CertificateTemplate.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          identityConstraints: json_.containsKey('identityConstraints')
              ? CertificateIdentityConstraints.fromJson(
                  json_['identityConstraints']
                      as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          passthroughExtensions: json_.containsKey('passthroughExtensions')
              ? CertificateExtensionConstraints.fromJson(
                  json_['passthroughExtensions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          predefinedValues: json_.containsKey('predefinedValues')
              ? X509Parameters.fromJson(json_['predefinedValues']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (identityConstraints != null)
          'identityConstraints': identityConstraints!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (passthroughExtensions != null)
          'passthroughExtensions': passthroughExtensions!,
        if (predefinedValues != null) 'predefinedValues': predefinedValues!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for CertificateAuthorityService.DisableCertificateAuthority.
typedef DisableCertificateAuthorityRequest = $Request02;

/// Describes an Elliptic Curve key that may be used in a Certificate issued
/// from a CaPool.
class EcKeyType {
  /// A signature algorithm that must be used.
  ///
  /// If this is omitted, any EC-based signature algorithm will be allowed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EC_SIGNATURE_ALGORITHM_UNSPECIFIED" : Not specified. Signifies that any
  /// signature algorithm may be used.
  /// - "ECDSA_P256" : Refers to the Elliptic Curve Digital Signature Algorithm
  /// over the NIST P-256 curve.
  /// - "ECDSA_P384" : Refers to the Elliptic Curve Digital Signature Algorithm
  /// over the NIST P-384 curve.
  /// - "EDDSA_25519" : Refers to the Edwards-curve Digital Signature Algorithm
  /// over curve 25519, as described in RFC 8410.
  core.String? signatureAlgorithm;

  EcKeyType({
    this.signatureAlgorithm,
  });

  EcKeyType.fromJson(core.Map json_)
      : this(
          signatureAlgorithm: json_.containsKey('signatureAlgorithm')
              ? json_['signatureAlgorithm'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (signatureAlgorithm != null)
          'signatureAlgorithm': signatureAlgorithm!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Request message for CertificateAuthorityService.EnableCertificateAuthority.
typedef EnableCertificateAuthorityRequest = $Request02;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
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
typedef Expr = $Expr;

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

  ExtendedKeyUsageOptions.fromJson(core.Map json_)
      : this(
          clientAuth: json_.containsKey('clientAuth')
              ? json_['clientAuth'] as core.bool
              : null,
          codeSigning: json_.containsKey('codeSigning')
              ? json_['codeSigning'] as core.bool
              : null,
          emailProtection: json_.containsKey('emailProtection')
              ? json_['emailProtection'] as core.bool
              : null,
          ocspSigning: json_.containsKey('ocspSigning')
              ? json_['ocspSigning'] as core.bool
              : null,
          serverAuth: json_.containsKey('serverAuth')
              ? json_['serverAuth'] as core.bool
              : null,
          timeStamping: json_.containsKey('timeStamping')
              ? json_['timeStamping'] as core.bool
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

/// Request message for CertificateAuthorityService.FetchCaCerts.
typedef FetchCaCertsRequest = $Request02;

/// Response message for CertificateAuthorityService.FetchCaCerts.
class FetchCaCertsResponse {
  /// The PEM encoded CA certificate chains of all ACTIVE CertificateAuthority
  /// resources in this CaPool.
  core.List<CertChain>? caCerts;

  FetchCaCertsResponse({
    this.caCerts,
  });

  FetchCaCertsResponse.fromJson(core.Map json_)
      : this(
          caCerts: json_.containsKey('caCerts')
              ? (json_['caCerts'] as core.List)
                  .map((value) => CertChain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caCerts != null) 'caCerts': caCerts!,
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

  FetchCertificateAuthorityCsrResponse.fromJson(core.Map json_)
      : this(
          pemCsr: json_.containsKey('pemCsr')
              ? json_['pemCsr'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pemCsr != null) 'pemCsr': pemCsr!,
      };
}

/// IssuanceModes specifies the allowed ways in which Certificates may be
/// requested from this CaPool.
class IssuanceModes {
  /// When true, allows callers to create Certificates by specifying a
  /// CertificateConfig.
  ///
  /// Optional.
  core.bool? allowConfigBasedIssuance;

  /// When true, allows callers to create Certificates by specifying a CSR.
  ///
  /// Optional.
  core.bool? allowCsrBasedIssuance;

  IssuanceModes({
    this.allowConfigBasedIssuance,
    this.allowCsrBasedIssuance,
  });

  IssuanceModes.fromJson(core.Map json_)
      : this(
          allowConfigBasedIssuance:
              json_.containsKey('allowConfigBasedIssuance')
                  ? json_['allowConfigBasedIssuance'] as core.bool
                  : null,
          allowCsrBasedIssuance: json_.containsKey('allowCsrBasedIssuance')
              ? json_['allowCsrBasedIssuance'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowConfigBasedIssuance != null)
          'allowConfigBasedIssuance': allowConfigBasedIssuance!,
        if (allowCsrBasedIssuance != null)
          'allowCsrBasedIssuance': allowCsrBasedIssuance!,
      };
}

/// Defines controls over all certificate issuance within a CaPool.
class IssuancePolicy {
  /// If specified, then only methods allowed in the IssuanceModes may be used
  /// to issue Certificates.
  ///
  /// Optional.
  IssuanceModes? allowedIssuanceModes;

  /// If any AllowedKeyType is specified, then the certificate request's public
  /// key must match one of the key types listed here.
  ///
  /// Otherwise, any key may be used.
  ///
  /// Optional.
  core.List<AllowedKeyType>? allowedKeyTypes;

  /// A set of X.509 values that will be applied to all certificates issued
  /// through this CaPool.
  ///
  /// If a certificate request includes conflicting values for the same
  /// properties, they will be overwritten by the values defined here. If a
  /// certificate request uses a CertificateTemplate that defines conflicting
  /// predefined_values for the same properties, the certificate issuance
  /// request will fail.
  ///
  /// Optional.
  X509Parameters? baselineValues;

  /// Describes constraints on identities that may appear in Certificates issued
  /// through this CaPool.
  ///
  /// If this is omitted, then this CaPool will not add restrictions on a
  /// certificate's identity.
  ///
  /// Optional.
  CertificateIdentityConstraints? identityConstraints;

  /// The maximum lifetime allowed for issued Certificates.
  ///
  /// Note that if the issuing CertificateAuthority expires before a
  /// Certificate's requested maximum_lifetime, the effective lifetime will be
  /// explicitly truncated to match it.
  ///
  /// Optional.
  core.String? maximumLifetime;

  /// Describes the set of X.509 extensions that may appear in a Certificate
  /// issued through this CaPool.
  ///
  /// If a certificate request sets extensions that don't appear in the
  /// passthrough_extensions, those extensions will be dropped. If a certificate
  /// request uses a CertificateTemplate with predefined_values that don't
  /// appear here, the certificate issuance request will fail. If this is
  /// omitted, then this CaPool will not add restrictions on a certificate's
  /// X.509 extensions. These constraints do not apply to X.509 extensions set
  /// in this CaPool's baseline_values.
  ///
  /// Optional.
  CertificateExtensionConstraints? passthroughExtensions;

  IssuancePolicy({
    this.allowedIssuanceModes,
    this.allowedKeyTypes,
    this.baselineValues,
    this.identityConstraints,
    this.maximumLifetime,
    this.passthroughExtensions,
  });

  IssuancePolicy.fromJson(core.Map json_)
      : this(
          allowedIssuanceModes: json_.containsKey('allowedIssuanceModes')
              ? IssuanceModes.fromJson(json_['allowedIssuanceModes']
                  as core.Map<core.String, core.dynamic>)
              : null,
          allowedKeyTypes: json_.containsKey('allowedKeyTypes')
              ? (json_['allowedKeyTypes'] as core.List)
                  .map((value) => AllowedKeyType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          baselineValues: json_.containsKey('baselineValues')
              ? X509Parameters.fromJson(json_['baselineValues']
                  as core.Map<core.String, core.dynamic>)
              : null,
          identityConstraints: json_.containsKey('identityConstraints')
              ? CertificateIdentityConstraints.fromJson(
                  json_['identityConstraints']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maximumLifetime: json_.containsKey('maximumLifetime')
              ? json_['maximumLifetime'] as core.String
              : null,
          passthroughExtensions: json_.containsKey('passthroughExtensions')
              ? CertificateExtensionConstraints.fromJson(
                  json_['passthroughExtensions']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedIssuanceModes != null)
          'allowedIssuanceModes': allowedIssuanceModes!,
        if (allowedKeyTypes != null) 'allowedKeyTypes': allowedKeyTypes!,
        if (baselineValues != null) 'baselineValues': baselineValues!,
        if (identityConstraints != null)
          'identityConstraints': identityConstraints!,
        if (maximumLifetime != null) 'maximumLifetime': maximumLifetime!,
        if (passthroughExtensions != null)
          'passthroughExtensions': passthroughExtensions!,
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

  KeyId.fromJson(core.Map json_)
      : this(
          keyId:
              json_.containsKey('keyId') ? json_['keyId'] as core.String : null,
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

  KeyUsage.fromJson(core.Map json_)
      : this(
          baseKeyUsage: json_.containsKey('baseKeyUsage')
              ? KeyUsageOptions.fromJson(
                  json_['baseKeyUsage'] as core.Map<core.String, core.dynamic>)
              : null,
          extendedKeyUsage: json_.containsKey('extendedKeyUsage')
              ? ExtendedKeyUsageOptions.fromJson(json_['extendedKeyUsage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          unknownExtendedKeyUsages:
              json_.containsKey('unknownExtendedKeyUsages')
                  ? (json_['unknownExtendedKeyUsages'] as core.List)
                      .map((value) => ObjectId.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseKeyUsage != null) 'baseKeyUsage': baseKeyUsage!,
        if (extendedKeyUsage != null) 'extendedKeyUsage': extendedKeyUsage!,
        if (unknownExtendedKeyUsages != null)
          'unknownExtendedKeyUsages': unknownExtendedKeyUsages!,
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

  KeyUsageOptions.fromJson(core.Map json_)
      : this(
          certSign: json_.containsKey('certSign')
              ? json_['certSign'] as core.bool
              : null,
          contentCommitment: json_.containsKey('contentCommitment')
              ? json_['contentCommitment'] as core.bool
              : null,
          crlSign: json_.containsKey('crlSign')
              ? json_['crlSign'] as core.bool
              : null,
          dataEncipherment: json_.containsKey('dataEncipherment')
              ? json_['dataEncipherment'] as core.bool
              : null,
          decipherOnly: json_.containsKey('decipherOnly')
              ? json_['decipherOnly'] as core.bool
              : null,
          digitalSignature: json_.containsKey('digitalSignature')
              ? json_['digitalSignature'] as core.bool
              : null,
          encipherOnly: json_.containsKey('encipherOnly')
              ? json_['encipherOnly'] as core.bool
              : null,
          keyAgreement: json_.containsKey('keyAgreement')
              ? json_['keyAgreement'] as core.bool
              : null,
          keyEncipherment: json_.containsKey('keyEncipherment')
              ? json_['keyEncipherment'] as core.bool
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
  core.String? cloudKmsKeyVersion;

  KeyVersionSpec({
    this.algorithm,
    this.cloudKmsKeyVersion,
  });

  KeyVersionSpec.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          cloudKmsKeyVersion: json_.containsKey('cloudKmsKeyVersion')
              ? json_['cloudKmsKeyVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (cloudKmsKeyVersion != null)
          'cloudKmsKeyVersion': cloudKmsKeyVersion!,
      };
}

/// Response message for CertificateAuthorityService.ListCaPools.
class ListCaPoolsResponse {
  /// The list of CaPools.
  core.List<CaPool>? caPools;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListCertificateAuthoritiesRequest.next_page_token to
  /// retrieve the next page of results.
  core.String? nextPageToken;

  /// A list of locations (e.g. "us-west1") that could not be reached.
  core.List<core.String>? unreachable;

  ListCaPoolsResponse({
    this.caPools,
    this.nextPageToken,
    this.unreachable,
  });

  ListCaPoolsResponse.fromJson(core.Map json_)
      : this(
          caPools: json_.containsKey('caPools')
              ? (json_['caPools'] as core.List)
                  .map((value) => CaPool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caPools != null) 'caPools': caPools!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
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

  ListCertificateAuthoritiesResponse.fromJson(core.Map json_)
      : this(
          certificateAuthorities: json_.containsKey('certificateAuthorities')
              ? (json_['certificateAuthorities'] as core.List)
                  .map((value) => CertificateAuthority.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateAuthorities != null)
          'certificateAuthorities': certificateAuthorities!,
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

  ListCertificateRevocationListsResponse.fromJson(core.Map json_)
      : this(
          certificateRevocationLists:
              json_.containsKey('certificateRevocationLists')
                  ? (json_['certificateRevocationLists'] as core.List)
                      .map((value) => CertificateRevocationList.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateRevocationLists != null)
          'certificateRevocationLists': certificateRevocationLists!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for CertificateAuthorityService.ListCertificateTemplates.
class ListCertificateTemplatesResponse {
  /// The list of CertificateTemplates.
  core.List<CertificateTemplate>? certificateTemplates;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListCertificateTemplatesRequest.next_page_token to
  /// retrieve the next page of results.
  core.String? nextPageToken;

  /// A list of locations (e.g. "us-west1") that could not be reached.
  core.List<core.String>? unreachable;

  ListCertificateTemplatesResponse({
    this.certificateTemplates,
    this.nextPageToken,
    this.unreachable,
  });

  ListCertificateTemplatesResponse.fromJson(core.Map json_)
      : this(
          certificateTemplates: json_.containsKey('certificateTemplates')
              ? (json_['certificateTemplates'] as core.List)
                  .map((value) => CertificateTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateTemplates != null)
          'certificateTemplates': certificateTemplates!,
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

  ListCertificatesResponse.fromJson(core.Map json_)
      : this(
          certificates: json_.containsKey('certificates')
              ? (json_['certificates'] as core.List)
                  .map((value) => Certificate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificates != null) 'certificates': certificates!,
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

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

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

  ObjectId.fromJson(core.Map json_)
      : this(
          objectIdPath: json_.containsKey('objectIdPath')
              ? (json_['objectIdPath'] as core.List)
                  .map((value) => value as core.int)
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
  core.Map<core.String, core.Object?>? metadata;

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

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
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

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// A PublicKey describes a public key.
class PublicKey {
  /// The format of the public key.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KEY_FORMAT_UNSPECIFIED" : Default unspecified value.
  /// - "PEM" : The key is PEM-encoded as defined in
  /// [RFC 7468](https://tools.ietf.org/html/rfc7468). It can be any of the
  /// following: a PEM-encoded PKCS#1/RFC 3447 RSAPublicKey structure, an RFC
  /// 5280
  /// [SubjectPublicKeyInfo](https://tools.ietf.org/html/rfc5280#section-4.1) or
  /// a PEM-encoded X.509 certificate signing request (CSR). If a
  /// [SubjectPublicKeyInfo](https://tools.ietf.org/html/rfc5280#section-4.1) is
  /// specified, it can contain a A PEM-encoded PKCS#1/RFC 3447 RSAPublicKey or
  /// a NIST P-256/secp256r1/prime256v1 or P-384 key. If a CSR is specified, it
  /// will used solely for the purpose of extracting the public key. When
  /// generated by the service, it will always be an RFC 5280
  /// [SubjectPublicKeyInfo](https://tools.ietf.org/html/rfc5280#section-4.1)
  /// structure containing an algorithm identifier and a key.
  core.String? format;

  /// A public key.
  ///
  /// The padding and encoding must match with the `KeyFormat` value specified
  /// for the `format` field.
  ///
  /// Required.
  core.String? key;
  core.List<core.int> get keyAsBytes => convert.base64.decode(key!);

  set keyAsBytes(core.List<core.int> bytes_) {
    key =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  PublicKey({
    this.format,
    this.key,
  });

  PublicKey.fromJson(core.Map json_)
      : this(
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (format != null) 'format': format!,
        if (key != null) 'key': key!,
      };
}

/// Options relating to the publication of each CertificateAuthority's CA
/// certificate and CRLs and their inclusion as extensions in issued
/// Certificates.
///
/// The options set here apply to certificates issued by any
/// CertificateAuthority in the CaPool.
class PublishingOptions {
  /// When true, publishes each CertificateAuthority's CA certificate and
  /// includes its URL in the "Authority Information Access" X.509 extension in
  /// all issued Certificates.
  ///
  /// If this is false, the CA certificate will not be published and the
  /// corresponding X.509 extension will not be written in issued certificates.
  ///
  /// Optional.
  core.bool? publishCaCert;

  /// When true, publishes each CertificateAuthority's CRL and includes its URL
  /// in the "CRL Distribution Points" X.509 extension in all issued
  /// Certificates.
  ///
  /// If this is false, CRLs will not be published and the corresponding X.509
  /// extension will not be written in issued certificates. CRLs will expire 7
  /// days from their creation. However, we will rebuild daily. CRLs are also
  /// rebuilt shortly after a certificate is revoked.
  ///
  /// Optional.
  core.bool? publishCrl;

  PublishingOptions({
    this.publishCaCert,
    this.publishCrl,
  });

  PublishingOptions.fromJson(core.Map json_)
      : this(
          publishCaCert: json_.containsKey('publishCaCert')
              ? json_['publishCaCert'] as core.bool
              : null,
          publishCrl: json_.containsKey('publishCrl')
              ? json_['publishCrl'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publishCaCert != null) 'publishCaCert': publishCaCert!,
        if (publishCrl != null) 'publishCrl': publishCrl!,
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

  RevocationDetails.fromJson(core.Map json_)
      : this(
          revocationState: json_.containsKey('revocationState')
              ? json_['revocationState'] as core.String
              : null,
          revocationTime: json_.containsKey('revocationTime')
              ? json_['revocationTime'] as core.String
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

  RevokeCertificateRequest.fromJson(core.Map json_)
      : this(
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Describes a revoked Certificate.
class RevokedCertificate {
  /// The resource name for the Certificate in the format `projects / *
  /// /locations / * /caPools / * /certificates / * `.
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

  RevokedCertificate.fromJson(core.Map json_)
      : this(
          certificate: json_.containsKey('certificate')
              ? json_['certificate'] as core.String
              : null,
          hexSerialNumber: json_.containsKey('hexSerialNumber')
              ? json_['hexSerialNumber'] as core.String
              : null,
          revocationReason: json_.containsKey('revocationReason')
              ? json_['revocationReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificate != null) 'certificate': certificate!,
        if (hexSerialNumber != null) 'hexSerialNumber': hexSerialNumber!,
        if (revocationReason != null) 'revocationReason': revocationReason!,
      };
}

/// Describes an RSA key that may be used in a Certificate issued from a CaPool.
class RsaKeyType {
  /// The maximum allowed RSA modulus size (inclusive), in bits.
  ///
  /// If this is not set, or if set to zero, the service will not enforce an
  /// explicit upper bound on RSA modulus sizes.
  ///
  /// Optional.
  core.String? maxModulusSize;

  /// The minimum allowed RSA modulus size (inclusive), in bits.
  ///
  /// If this is not set, or if set to zero, the service-level min RSA modulus
  /// size will continue to apply.
  ///
  /// Optional.
  core.String? minModulusSize;

  RsaKeyType({
    this.maxModulusSize,
    this.minModulusSize,
  });

  RsaKeyType.fromJson(core.Map json_)
      : this(
          maxModulusSize: json_.containsKey('maxModulusSize')
              ? json_['maxModulusSize'] as core.String
              : null,
          minModulusSize: json_.containsKey('minModulusSize')
              ? json_['minModulusSize'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxModulusSize != null) 'maxModulusSize': maxModulusSize!,
        if (minModulusSize != null) 'minModulusSize': minModulusSize!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
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

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
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
typedef Status = $Status;

/// Subject describes parts of a distinguished name that, in turn, describes the
/// subject of the certificate.
class Subject {
  /// The "common name" of the subject.
  core.String? commonName;

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
    this.commonName,
    this.countryCode,
    this.locality,
    this.organization,
    this.organizationalUnit,
    this.postalCode,
    this.province,
    this.streetAddress,
  });

  Subject.fromJson(core.Map json_)
      : this(
          commonName: json_.containsKey('commonName')
              ? json_['commonName'] as core.String
              : null,
          countryCode: json_.containsKey('countryCode')
              ? json_['countryCode'] as core.String
              : null,
          locality: json_.containsKey('locality')
              ? json_['locality'] as core.String
              : null,
          organization: json_.containsKey('organization')
              ? json_['organization'] as core.String
              : null,
          organizationalUnit: json_.containsKey('organizationalUnit')
              ? json_['organizationalUnit'] as core.String
              : null,
          postalCode: json_.containsKey('postalCode')
              ? json_['postalCode'] as core.String
              : null,
          province: json_.containsKey('province')
              ? json_['province'] as core.String
              : null,
          streetAddress: json_.containsKey('streetAddress')
              ? json_['streetAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonName != null) 'commonName': commonName!,
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
  ///
  /// For each custom_san, the `value` field must contain an ASN.1 encoded
  /// UTF8String.
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

  SubjectAltNames.fromJson(core.Map json_)
      : this(
          customSans: json_.containsKey('customSans')
              ? (json_['customSans'] as core.List)
                  .map((value) => X509Extension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dnsNames: json_.containsKey('dnsNames')
              ? (json_['dnsNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          emailAddresses: json_.containsKey('emailAddresses')
              ? (json_['emailAddresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ipAddresses: json_.containsKey('ipAddresses')
              ? (json_['ipAddresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          uris: json_.containsKey('uris')
              ? (json_['uris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customSans != null) 'customSans': customSans!,
        if (dnsNames != null) 'dnsNames': dnsNames!,
        if (emailAddresses != null) 'emailAddresses': emailAddresses!,
        if (ipAddresses != null) 'ipAddresses': ipAddresses!,
        if (uris != null) 'uris': uris!,
      };
}

/// These values are used to create the distinguished name and subject
/// alternative name fields in an X.509 certificate.
class SubjectConfig {
  /// Contains distinguished name fields such as the common name, location and
  /// organization.
  ///
  /// Required.
  Subject? subject;

  /// The subject alternative name fields.
  ///
  /// Optional.
  SubjectAltNames? subjectAltName;

  SubjectConfig({
    this.subject,
    this.subjectAltName,
  });

  SubjectConfig.fromJson(core.Map json_)
      : this(
          subject: json_.containsKey('subject')
              ? Subject.fromJson(
                  json_['subject'] as core.Map<core.String, core.dynamic>)
              : null,
          subjectAltName: json_.containsKey('subjectAltName')
              ? SubjectAltNames.fromJson(json_['subjectAltName']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subject != null) 'subject': subject!,
        if (subjectAltName != null) 'subjectAltName': subjectAltName!,
      };
}

/// These values describe fields in an issued X.509 certificate such as the
/// distinguished name, subject alternative names, serial number, and lifetime.
class SubjectDescription {
  /// The serial number encoded in lowercase hexadecimal.
  core.String? hexSerialNumber;

  /// For convenience, the actual lifetime of an issued certificate.
  core.String? lifetime;

  /// The time after which the certificate is expired.
  ///
  /// Per RFC 5280, the validity period for a certificate is the period of time
  /// from not_before_time through not_after_time, inclusive. Corresponds to
  /// 'not_before_time' + 'lifetime' - 1 second.
  core.String? notAfterTime;

  /// The time at which the certificate becomes valid.
  core.String? notBeforeTime;

  /// Contains distinguished name fields such as the common name, location and /
  /// organization.
  Subject? subject;

  /// The subject alternative name fields.
  SubjectAltNames? subjectAltName;

  SubjectDescription({
    this.hexSerialNumber,
    this.lifetime,
    this.notAfterTime,
    this.notBeforeTime,
    this.subject,
    this.subjectAltName,
  });

  SubjectDescription.fromJson(core.Map json_)
      : this(
          hexSerialNumber: json_.containsKey('hexSerialNumber')
              ? json_['hexSerialNumber'] as core.String
              : null,
          lifetime: json_.containsKey('lifetime')
              ? json_['lifetime'] as core.String
              : null,
          notAfterTime: json_.containsKey('notAfterTime')
              ? json_['notAfterTime'] as core.String
              : null,
          notBeforeTime: json_.containsKey('notBeforeTime')
              ? json_['notBeforeTime'] as core.String
              : null,
          subject: json_.containsKey('subject')
              ? Subject.fromJson(
                  json_['subject'] as core.Map<core.String, core.dynamic>)
              : null,
          subjectAltName: json_.containsKey('subjectAltName')
              ? SubjectAltNames.fromJson(json_['subjectAltName']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hexSerialNumber != null) 'hexSerialNumber': hexSerialNumber!,
        if (lifetime != null) 'lifetime': lifetime!,
        if (notAfterTime != null) 'notAfterTime': notAfterTime!,
        if (notBeforeTime != null) 'notBeforeTime': notBeforeTime!,
        if (subject != null) 'subject': subject!,
        if (subjectAltName != null) 'subjectAltName': subjectAltName!,
      };
}

/// Describes a subordinate CA's issuers.
///
/// This is either a resource name to a known issuing CertificateAuthority, or a
/// PEM issuer certificate chain.
class SubordinateConfig {
  /// This can refer to a CertificateAuthority that was used to create a
  /// subordinate CertificateAuthority.
  ///
  /// This field is used for information and usability purposes only. The
  /// resource name is in the format `projects / * /locations / * /caPools / *
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

  SubordinateConfig.fromJson(core.Map json_)
      : this(
          certificateAuthority: json_.containsKey('certificateAuthority')
              ? json_['certificateAuthority'] as core.String
              : null,
          pemIssuerChain: json_.containsKey('pemIssuerChain')
              ? SubordinateConfigChain.fromJson(json_['pemIssuerChain']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateAuthority != null)
          'certificateAuthority': certificateAuthority!,
        if (pemIssuerChain != null) 'pemIssuerChain': pemIssuerChain!,
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

  SubordinateConfigChain.fromJson(core.Map json_)
      : this(
          pemCertificates: json_.containsKey('pemCertificates')
              ? (json_['pemCertificates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pemCertificates != null) 'pemCertificates': pemCertificates!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Request message for
/// CertificateAuthorityService.UndeleteCertificateAuthority.
typedef UndeleteCertificateAuthorityRequest = $Request02;

/// An X509Extension specifies an X.509 extension, which may be used in
/// different parts of X.509 objects like certificates, CSRs, and CRLs.
class X509Extension {
  /// Indicates whether or not this extension is critical (i.e., if the client
  /// does not know how to handle this extension, the client should consider
  /// this to be an error).
  ///
  /// Optional.
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

  set valueAsBytes(core.List<core.int> bytes_) {
    value =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  X509Extension({
    this.critical,
    this.objectId,
    this.value,
  });

  X509Extension.fromJson(core.Map json_)
      : this(
          critical: json_.containsKey('critical')
              ? json_['critical'] as core.bool
              : null,
          objectId: json_.containsKey('objectId')
              ? ObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (critical != null) 'critical': critical!,
        if (objectId != null) 'objectId': objectId!,
        if (value != null) 'value': value!,
      };
}

/// An X509Parameters is used to describe certain fields of an X.509
/// certificate, such as the key usage fields, fields specific to CA
/// certificates, certificate policy extensions and custom extensions.
class X509Parameters {
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

  /// Describes options in this X509Parameters that are relevant in a CA
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

  X509Parameters({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    this.keyUsage,
    this.policyIds,
  });

  X509Parameters.fromJson(core.Map json_)
      : this(
          additionalExtensions: json_.containsKey('additionalExtensions')
              ? (json_['additionalExtensions'] as core.List)
                  .map((value) => X509Extension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          aiaOcspServers: json_.containsKey('aiaOcspServers')
              ? (json_['aiaOcspServers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          caOptions: json_.containsKey('caOptions')
              ? CaOptions.fromJson(
                  json_['caOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          keyUsage: json_.containsKey('keyUsage')
              ? KeyUsage.fromJson(
                  json_['keyUsage'] as core.Map<core.String, core.dynamic>)
              : null,
          policyIds: json_.containsKey('policyIds')
              ? (json_['policyIds'] as core.List)
                  .map((value) => ObjectId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExtensions != null)
          'additionalExtensions': additionalExtensions!,
        if (aiaOcspServers != null) 'aiaOcspServers': aiaOcspServers!,
        if (caOptions != null) 'caOptions': caOptions!,
        if (keyUsage != null) 'keyUsage': keyUsage!,
        if (policyIds != null) 'policyIds': policyIds!,
      };
}
