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

/// Cloud Functions API - v1
///
/// Manages lightweight user-provided functions executed in response to events.
///
/// For more information, see <https://cloud.google.com/functions>
///
/// Create an instance of [CloudFunctionsApi] to access these resources:
///
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFunctionsResource]
library cloudfunctions.v1;

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

/// Manages lightweight user-provided functions executed in response to events.
class CloudFunctionsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  CloudFunctionsApi(http.Client client,
      {core.String rootUrl = 'https://cloudfunctions.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/\[^/\]+$`.
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
  /// [filter] - Required. A filter for matching the requested operations. The
  /// supported formats of *filter* are: To query for a specific function:
  /// project:*,location:*,function:* To query for all of the latest operations
  /// for a project: project:*,latest:true
  ///
  /// [name] - Must not be set.
  ///
  /// [pageSize] - The maximum number of records that should be returned.
  /// Requested page size cannot exceed 100. If not set, the default page size
  /// is 100. Pagination is only supported when querying for a specific
  /// function.
  ///
  /// [pageToken] - Token identifying which result to start with, which is
  /// returned by a previous list call. Pagination is only supported when
  /// querying for a specific function.
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
  async.Future<ListOperationsResponse> list({
    core.String? filter,
    core.String? name,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (name != null) 'name': [name],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  ProjectsLocationsFunctionsResource get functions =>
      ProjectsLocationsFunctionsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

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

class ProjectsLocationsFunctionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFunctionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Synchronously invokes a deployed Cloud Function.
  ///
  /// To be used for testing purposes as very limited traffic is allowed. For
  /// more information on the actual limits, refer to
  /// [Rate Limits](https://cloud.google.com/functions/quotas#rate_limits).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the function to be called.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/functions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CallFunctionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CallFunctionResponse> call(
    CallFunctionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':call';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CallFunctionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new function.
  ///
  /// If a function with the given name already exists in the specified project,
  /// the long running operation will return `ALREADY_EXISTS` error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The project and location in which the function
  /// should be created, specified in the format `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    CloudFunction request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + '/functions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a function with the given name from the specified project.
  ///
  /// If the given function is used by some trigger, the trigger will be updated
  /// to remove this function.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the function which should be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/functions/\[^/\]+$`.
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a signed URL for downloading deployed function source code.
  ///
  /// The URL is only valid for a limited period and should be used within
  /// minutes after generation. For more information about the signed URL usage
  /// see: https://cloud.google.com/storage/docs/access-control/signed-urls
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of function for which source code Google Cloud Storage
  /// signed URL should be generated.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/functions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateDownloadUrlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateDownloadUrlResponse> generateDownloadUrl(
    GenerateDownloadUrlRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':generateDownloadUrl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateDownloadUrlResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a signed URL for uploading a function source code.
  ///
  /// For more information about the signed URL usage see:
  /// https://cloud.google.com/storage/docs/access-control/signed-urls. Once the
  /// function source code upload is complete, the used signed URL should be
  /// provided in CreateFunction or UpdateFunction request as a reference to the
  /// function source code. When uploading source code to the generated signed
  /// URL, please follow these restrictions: * Source file type should be a zip
  /// file. * Source file size should not exceed 100MB limit. * No credentials
  /// should be attached - the signed URLs provide access to the target bucket
  /// using internal service identity; if credentials were attached, the
  /// identity from the credentials would be used, but that identity does not
  /// have permissions to upload files to the URL. When making a HTTP PUT
  /// request, these two headers need to be specified: * `content-type:
  /// application/zip` * `x-goog-content-length-range: 0,104857600` And this
  /// header SHOULD NOT be specified: * `Authorization: Bearer YOUR_TOKEN`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project and location in which the Google Cloud Storage
  /// signed URL should be generated, specified in the format `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateUploadUrlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateUploadUrlResponse> generateUploadUrl(
    GenerateUploadUrlRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/functions:generateUploadUrl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateUploadUrlResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a function with the given name from the requested project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the function which details should be
  /// obtained.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/functions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CloudFunction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CloudFunction> get(
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
    return CloudFunction.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAM access control policy for a function.
  ///
  /// Returns an empty policy if the function exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/functions/\[^/\]+$`.
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

  /// Returns a list of functions that belong to the requested project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project and location from which the function should be
  /// listed, specified in the format `projects / * /locations / * ` If you want
  /// to list functions in all locations, use "-" in place of a location. When
  /// listing functions in all locations, if one or more location(s) are
  /// unreachable, the response will contain functions from all reachable
  /// locations along with the names of any unreachable locations.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of functions to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListFunctionsResponse`;
  /// indicates that this is a continuation of a prior `ListFunctions` call, and
  /// that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFunctionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFunctionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/functions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFunctionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates existing function.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A user-defined name of the function. Function names must be
  /// unique globally and match pattern `projects / * /locations / * /functions
  /// / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/functions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields in `CloudFunction` that have
  /// to be updated.
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
    CloudFunction request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Sets the IAM access control policy on the specified function.
  ///
  /// Replaces any existing policy.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/functions/\[^/\]+$`.
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

  /// Tests the specified permissions against the IAM access control policy for
  /// a function.
  ///
  /// If the function does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/functions/\[^/\]+$`.
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

/// Request for the `CallFunction` method.
class CallFunctionRequest {
  /// Input to be passed to the function.
  ///
  /// Required.
  core.String? data;

  CallFunctionRequest({
    this.data,
  });

  CallFunctionRequest.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
      };
}

/// Response of `CallFunction` method.
class CallFunctionResponse {
  /// Either system or user-function generated error.
  ///
  /// Set if execution was not successful.
  core.String? error;

  /// Execution id of function invocation.
  core.String? executionId;

  /// Result populated for successful execution of synchronous function.
  ///
  /// Will not be populated if function does not return a result through
  /// context.
  core.String? result;

  CallFunctionResponse({
    this.error,
    this.executionId,
    this.result,
  });

  CallFunctionResponse.fromJson(core.Map json_)
      : this(
          error:
              json_.containsKey('error') ? json_['error'] as core.String : null,
          executionId: json_.containsKey('executionId')
              ? json_['executionId'] as core.String
              : null,
          result: json_.containsKey('result')
              ? json_['result'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (executionId != null) 'executionId': executionId!,
        if (result != null) 'result': result!,
      };
}

/// Describes a Cloud Function that contains user computation executed in
/// response to an event.
///
/// It encapsulate function and triggers configurations.
class CloudFunction {
  /// The amount of memory in MB available for a function.
  ///
  /// Defaults to 256MB.
  core.int? availableMemoryMb;

  /// Build environment variables that shall be available during build time.
  core.Map<core.String, core.String>? buildEnvironmentVariables;

  /// The Cloud Build ID of the latest successful deployment of the function.
  ///
  /// Output only.
  core.String? buildId;

  /// The Cloud Build Name of the function deployment.
  ///
  /// `projects//locations//builds/`.
  ///
  /// Output only.
  core.String? buildName;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build
  /// the function.
  ///
  /// The format of this field is
  /// `projects/{project}/locations/{region}/workerPools/{workerPool}` where
  /// `{project}` and `{region}` are the project id and region respectively
  /// where the worker pool is defined and `{workerPool}` is the short name of
  /// the worker pool. If the project id is not the same as the function, then
  /// the Cloud Functions Service Agent
  /// (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the
  /// role Cloud Build Custom Workers Builder
  /// (`roles/cloudbuild.customworkers.builder`) in the project.
  core.String? buildWorkerPool;

  /// User-provided description of a function.
  core.String? description;

  /// Docker Registry to use for this deployment.
  ///
  /// If `docker_repository` field is specified, this field will be
  /// automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently
  /// defaults to `CONTAINER_REGISTRY`. This field may be overridden by the
  /// backend for eligible deployments.
  /// Possible string values are:
  /// - "DOCKER_REGISTRY_UNSPECIFIED" : Unspecified.
  /// - "CONTAINER_REGISTRY" : Docker images will be stored in multi-regional
  /// Container Registry repositories named `gcf`.
  /// - "ARTIFACT_REGISTRY" : Docker images will be stored in regional Artifact
  /// Registry repositories. By default, GCF will create and use repositories
  /// named `gcf-artifacts` in every region in which a function is deployed. But
  /// the repository to use can also be specified by the user using the
  /// `docker_repository` field.
  core.String? dockerRegistry;

  /// User managed repository created in Artifact Registry optionally with a
  /// customer managed encryption key.
  ///
  /// If specified, deployments will use Artifact Registry. If unspecified and
  /// the deployment is eligible to use Artifact Registry, GCF will create and
  /// use a repository named 'gcf-artifacts' for every deployed region. This is
  /// the repository to which the function docker image will be pushed after it
  /// is built by Cloud Build. It must match the pattern
  /// `projects/{project}/locations/{location}/repositories/{repository}`.
  /// Cross-project repositories are not supported. Cross-location repositories
  /// are not supported. Repository format must be 'DOCKER'.
  core.String? dockerRepository;

  /// The name of the function (as defined in source code) that will be
  /// executed.
  ///
  /// Defaults to the resource name suffix, if not specified. For backward
  /// compatibility, if function with given name is not found, then the system
  /// will try to use function named "function". For Node.js this is name of a
  /// function exported by the module specified in `source_location`.
  core.String? entryPoint;

  /// Environment variables that shall be available during function execution.
  core.Map<core.String, core.String>? environmentVariables;

  /// A source that fires events in response to a condition in another service.
  EventTrigger? eventTrigger;

  /// An HTTPS endpoint type of source that can be triggered via URL.
  HttpsTrigger? httpsTrigger;

  /// The ingress settings for the function, controlling what traffic can reach
  /// it.
  /// Possible string values are:
  /// - "INGRESS_SETTINGS_UNSPECIFIED" : Unspecified.
  /// - "ALLOW_ALL" : Allow HTTP traffic from public and private sources.
  /// - "ALLOW_INTERNAL_ONLY" : Allow HTTP traffic from only private VPC
  /// sources.
  /// - "ALLOW_INTERNAL_AND_GCLB" : Allow HTTP traffic from private VPC sources
  /// and through GCLB.
  core.String? ingressSettings;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt function resources.
  ///
  /// It must match the pattern
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// If specified, you must also provide an artifact registry repository using
  /// the `docker_repository` field that was created with the same KMS crypto
  /// key. The following service accounts need to be granted the role 'Cloud KMS
  /// CryptoKey Encrypter/Decrypter
  /// (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the
  /// Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud
  /// Functions service account
  /// (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) -
  /// Required to protect the function's image. 2. Google Storage service
  /// account
  /// (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) -
  /// Required to protect the function's source code. If this service account
  /// does not exist, deploying a function without a KMS key or retrieving the
  /// service agent name provisions it. For more information, see
  /// https://cloud.google.com/storage/docs/projects#service-agents and
  /// https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google
  /// Cloud Functions delegates access to service agents to protect function
  /// resources in internal projects that are not accessible by the end user.
  core.String? kmsKeyName;

  /// Labels associated with this Cloud Function.
  core.Map<core.String, core.String>? labels;

  /// The limit on the maximum number of function instances that may coexist at
  /// a given time.
  ///
  /// In some cases, such as rapid traffic surges, Cloud Functions may, for a
  /// short period of time, create more instances than the specified max
  /// instances limit. If your function cannot tolerate this temporary behavior,
  /// you may want to factor in a safety margin and set a lower max instances
  /// value than your function can tolerate. See the
  /// [Max Instances](https://cloud.google.com/functions/docs/max-instances)
  /// Guide for more details.
  core.int? maxInstances;

  /// A lower bound for the number function instances that may coexist at a
  /// given time.
  core.int? minInstances;

  /// A user-defined name of the function.
  ///
  /// Function names must be unique globally and match pattern `projects / *
  /// /locations / * /functions / * `
  core.String? name;

  /// The VPC Network that this cloud function can connect to.
  ///
  /// It can be either the fully-qualified URI, or the short name of the network
  /// resource. If the short network name is used, the network must belong to
  /// the same project. Otherwise, it must belong to a project within the same
  /// organization. The format of this field is either
  /// `projects/{project}/global/networks/{network}` or `{network}`, where
  /// `{project}` is a project id where the network is defined, and `{network}`
  /// is the short name of the network. This field is mutually exclusive with
  /// `vpc_connector` and will be replaced by it. See
  /// [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for
  /// more information on connecting Cloud projects.
  core.String? network;

  /// The runtime in which to run the function.
  ///
  /// Required when deploying a new function, optional when updating an existing
  /// function. For a complete list of possible choices, see the \[`gcloud`
  /// command
  /// reference\](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  core.String? runtime;

  /// Secret environment variables configuration.
  core.List<SecretEnvVar>? secretEnvironmentVariables;

  /// Secret volumes configuration.
  core.List<SecretVolume>? secretVolumes;

  /// The email of the function's service account.
  ///
  /// If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  core.String? serviceAccountEmail;

  /// The Google Cloud Storage URL, starting with `gs://`, pointing to the zip
  /// archive which contains the function.
  core.String? sourceArchiveUrl;

  /// **Beta Feature** The source repository where a function is hosted.
  SourceRepository? sourceRepository;

  /// Input only.
  ///
  /// An identifier for Firebase function sources. Disclaimer: This field is
  /// only supported for Firebase function deployments.
  core.String? sourceToken;

  /// The Google Cloud Storage signed URL used for source uploading, generated
  /// by calling \[google.cloud.functions.v1.GenerateUploadUrl\].
  ///
  /// The signature is validated on write methods (Create, Update) The signature
  /// is stripped from the Function object on read methods (Get, List)
  core.String? sourceUploadUrl;

  /// Status of the function deployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLOUD_FUNCTION_STATUS_UNSPECIFIED" : Not specified. Invalid state.
  /// - "ACTIVE" : Function has been successfully deployed and is serving.
  /// - "OFFLINE" : Function deployment failed and the function isn’t serving.
  /// - "DEPLOY_IN_PROGRESS" : Function is being created or updated.
  /// - "DELETE_IN_PROGRESS" : Function is being deleted.
  /// - "UNKNOWN" : Function deployment failed and the function serving state is
  /// undefined. The function should be updated or deleted to move it out of
  /// this state.
  core.String? status;

  /// The function execution timeout.
  ///
  /// Execution is considered failed and can be terminated if the function is
  /// not completed at the end of the timeout period. Defaults to 60 seconds.
  core.String? timeout;

  /// The last update timestamp of a Cloud Function.
  ///
  /// Output only.
  core.String? updateTime;

  /// The version identifier of the Cloud Function.
  ///
  /// Each deployment attempt results in a new version of a function being
  /// created.
  ///
  /// Output only.
  core.String? versionId;

  /// The VPC Network Connector that this cloud function can connect to.
  ///
  /// It can be either the fully-qualified URI, or the short name of the network
  /// connector resource. The format of this field is `projects / * /locations /
  /// * /connectors / * ` This field is mutually exclusive with `network` field
  /// and will eventually replace it. See
  /// [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for
  /// more information on connecting Cloud projects.
  core.String? vpcConnector;

  /// The egress settings for the connector, controlling what traffic is
  /// diverted through it.
  /// Possible string values are:
  /// - "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED" : Unspecified.
  /// - "PRIVATE_RANGES_ONLY" : Use the VPC Access Connector only for private IP
  /// space from RFC1918.
  /// - "ALL_TRAFFIC" : Force the use of VPC Access Connector for all egress
  /// traffic from the function.
  core.String? vpcConnectorEgressSettings;

  CloudFunction({
    this.availableMemoryMb,
    this.buildEnvironmentVariables,
    this.buildId,
    this.buildName,
    this.buildWorkerPool,
    this.description,
    this.dockerRegistry,
    this.dockerRepository,
    this.entryPoint,
    this.environmentVariables,
    this.eventTrigger,
    this.httpsTrigger,
    this.ingressSettings,
    this.kmsKeyName,
    this.labels,
    this.maxInstances,
    this.minInstances,
    this.name,
    this.network,
    this.runtime,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.serviceAccountEmail,
    this.sourceArchiveUrl,
    this.sourceRepository,
    this.sourceToken,
    this.sourceUploadUrl,
    this.status,
    this.timeout,
    this.updateTime,
    this.versionId,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  CloudFunction.fromJson(core.Map json_)
      : this(
          availableMemoryMb: json_.containsKey('availableMemoryMb')
              ? json_['availableMemoryMb'] as core.int
              : null,
          buildEnvironmentVariables:
              json_.containsKey('buildEnvironmentVariables')
                  ? (json_['buildEnvironmentVariables']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, item) => core.MapEntry(
                        key,
                        item as core.String,
                      ),
                    )
                  : null,
          buildId: json_.containsKey('buildId')
              ? json_['buildId'] as core.String
              : null,
          buildName: json_.containsKey('buildName')
              ? json_['buildName'] as core.String
              : null,
          buildWorkerPool: json_.containsKey('buildWorkerPool')
              ? json_['buildWorkerPool'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          dockerRegistry: json_.containsKey('dockerRegistry')
              ? json_['dockerRegistry'] as core.String
              : null,
          dockerRepository: json_.containsKey('dockerRepository')
              ? json_['dockerRepository'] as core.String
              : null,
          entryPoint: json_.containsKey('entryPoint')
              ? json_['entryPoint'] as core.String
              : null,
          environmentVariables: json_.containsKey('environmentVariables')
              ? (json_['environmentVariables']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          eventTrigger: json_.containsKey('eventTrigger')
              ? EventTrigger.fromJson(
                  json_['eventTrigger'] as core.Map<core.String, core.dynamic>)
              : null,
          httpsTrigger: json_.containsKey('httpsTrigger')
              ? HttpsTrigger.fromJson(
                  json_['httpsTrigger'] as core.Map<core.String, core.dynamic>)
              : null,
          ingressSettings: json_.containsKey('ingressSettings')
              ? json_['ingressSettings'] as core.String
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          maxInstances: json_.containsKey('maxInstances')
              ? json_['maxInstances'] as core.int
              : null,
          minInstances: json_.containsKey('minInstances')
              ? json_['minInstances'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          runtime: json_.containsKey('runtime')
              ? json_['runtime'] as core.String
              : null,
          secretEnvironmentVariables:
              json_.containsKey('secretEnvironmentVariables')
                  ? (json_['secretEnvironmentVariables'] as core.List)
                      .map((value) => SecretEnvVar.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          secretVolumes: json_.containsKey('secretVolumes')
              ? (json_['secretVolumes'] as core.List)
                  .map((value) => SecretVolume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceAccountEmail: json_.containsKey('serviceAccountEmail')
              ? json_['serviceAccountEmail'] as core.String
              : null,
          sourceArchiveUrl: json_.containsKey('sourceArchiveUrl')
              ? json_['sourceArchiveUrl'] as core.String
              : null,
          sourceRepository: json_.containsKey('sourceRepository')
              ? SourceRepository.fromJson(json_['sourceRepository']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sourceToken: json_.containsKey('sourceToken')
              ? json_['sourceToken'] as core.String
              : null,
          sourceUploadUrl: json_.containsKey('sourceUploadUrl')
              ? json_['sourceUploadUrl'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          versionId: json_.containsKey('versionId')
              ? json_['versionId'] as core.String
              : null,
          vpcConnector: json_.containsKey('vpcConnector')
              ? json_['vpcConnector'] as core.String
              : null,
          vpcConnectorEgressSettings:
              json_.containsKey('vpcConnectorEgressSettings')
                  ? json_['vpcConnectorEgressSettings'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableMemoryMb != null) 'availableMemoryMb': availableMemoryMb!,
        if (buildEnvironmentVariables != null)
          'buildEnvironmentVariables': buildEnvironmentVariables!,
        if (buildId != null) 'buildId': buildId!,
        if (buildName != null) 'buildName': buildName!,
        if (buildWorkerPool != null) 'buildWorkerPool': buildWorkerPool!,
        if (description != null) 'description': description!,
        if (dockerRegistry != null) 'dockerRegistry': dockerRegistry!,
        if (dockerRepository != null) 'dockerRepository': dockerRepository!,
        if (entryPoint != null) 'entryPoint': entryPoint!,
        if (environmentVariables != null)
          'environmentVariables': environmentVariables!,
        if (eventTrigger != null) 'eventTrigger': eventTrigger!,
        if (httpsTrigger != null) 'httpsTrigger': httpsTrigger!,
        if (ingressSettings != null) 'ingressSettings': ingressSettings!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (labels != null) 'labels': labels!,
        if (maxInstances != null) 'maxInstances': maxInstances!,
        if (minInstances != null) 'minInstances': minInstances!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (runtime != null) 'runtime': runtime!,
        if (secretEnvironmentVariables != null)
          'secretEnvironmentVariables': secretEnvironmentVariables!,
        if (secretVolumes != null) 'secretVolumes': secretVolumes!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (sourceArchiveUrl != null) 'sourceArchiveUrl': sourceArchiveUrl!,
        if (sourceRepository != null) 'sourceRepository': sourceRepository!,
        if (sourceToken != null) 'sourceToken': sourceToken!,
        if (sourceUploadUrl != null) 'sourceUploadUrl': sourceUploadUrl!,
        if (status != null) 'status': status!,
        if (timeout != null) 'timeout': timeout!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (versionId != null) 'versionId': versionId!,
        if (vpcConnector != null) 'vpcConnector': vpcConnector!,
        if (vpcConnectorEgressSettings != null)
          'vpcConnectorEgressSettings': vpcConnectorEgressSettings!,
      };
}

/// Describes EventTrigger, used to request events be sent from another service.
class EventTrigger {
  /// The type of event to observe.
  ///
  /// For example: `providers/cloud.storage/eventTypes/object.change` and
  /// `providers/cloud.pubsub/eventTypes/topic.publish`. Event types match
  /// pattern `providers / * /eventTypes / * .*`. The pattern contains: 1.
  /// namespace: For example, `cloud.storage` and `google.firebase.analytics`.
  /// 2. resource type: The type of resource on which event occurs. For example,
  /// the Google Cloud Storage API includes the type `object`. 3. action: The
  /// action that generates the event. For example, action for a Google Cloud
  /// Storage Object is 'change'. These parts are lower case.
  ///
  /// Required.
  core.String? eventType;

  /// Specifies policy for failed executions.
  FailurePolicy? failurePolicy;

  /// The resource(s) from which to observe events, for example,
  /// `projects/_/buckets/myBucket`.
  ///
  /// Not all syntactically correct values are accepted by all services. For
  /// example: 1. The authorization model must support it. Google Cloud
  /// Functions only allows EventTriggers to be deployed that observe resources
  /// in the same project as the `CloudFunction`. 2. The resource type must
  /// match the pattern expected for an `event_type`. For example, an
  /// `EventTrigger` that has an `event_type` of "google.pubsub.topic.publish"
  /// should have a resource that matches Google Cloud Pub/Sub topics.
  /// Additionally, some services may support short names when creating an
  /// `EventTrigger`. These will always be returned in the normalized "long"
  /// format. See each *service's* documentation for supported formats.
  ///
  /// Required.
  core.String? resource;

  /// The hostname of the service that should be observed.
  ///
  /// If no string is provided, the default service implementing the API will be
  /// used. For example, `storage.googleapis.com` is the default for all event
  /// types in the `google.storage` namespace.
  core.String? service;

  EventTrigger({
    this.eventType,
    this.failurePolicy,
    this.resource,
    this.service,
  });

  EventTrigger.fromJson(core.Map json_)
      : this(
          eventType: json_.containsKey('eventType')
              ? json_['eventType'] as core.String
              : null,
          failurePolicy: json_.containsKey('failurePolicy')
              ? FailurePolicy.fromJson(
                  json_['failurePolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventType != null) 'eventType': eventType!,
        if (failurePolicy != null) 'failurePolicy': failurePolicy!,
        if (resource != null) 'resource': resource!,
        if (service != null) 'service': service!,
      };
}

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

/// Describes the policy in case of function's execution failure.
///
/// If empty, then defaults to ignoring failures (i.e. not retrying them).
class FailurePolicy {
  /// If specified, then the function will be retried in case of a failure.
  Retry? retry;

  FailurePolicy({
    this.retry,
  });

  FailurePolicy.fromJson(core.Map json_)
      : this(
          retry: json_.containsKey('retry')
              ? Retry.fromJson(
                  json_['retry'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (retry != null) 'retry': retry!,
      };
}

/// Request of `GenerateDownloadUrl` method.
class GenerateDownloadUrlRequest {
  /// The optional version of function.
  ///
  /// If not set, default, current version is used.
  core.String? versionId;

  GenerateDownloadUrlRequest({
    this.versionId,
  });

  GenerateDownloadUrlRequest.fromJson(core.Map json_)
      : this(
          versionId: json_.containsKey('versionId')
              ? json_['versionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (versionId != null) 'versionId': versionId!,
      };
}

/// Response of `GenerateDownloadUrl` method.
typedef GenerateDownloadUrlResponse = $GenerateDownloadUrlResponse;

/// Request of `GenerateSourceUploadUrl` method.
class GenerateUploadUrlRequest {
  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt function source code objects in staging Cloud Storage
  /// buckets.
  ///
  /// When you generate an upload url and upload your source code, it gets
  /// copied to a staging Cloud Storage bucket in an internal regional project.
  /// The source code is then copied to a versioned directory in the sources
  /// bucket in the consumer project during the function deployment. It must
  /// match the pattern
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// The Google Cloud Functions service account
  /// (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) must be
  /// granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter
  /// (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the
  /// Key/KeyRing/Project/Organization (least access preferred). GCF will
  /// delegate access to the Google Storage service account in the internal
  /// project.
  core.String? kmsKeyName;

  GenerateUploadUrlRequest({
    this.kmsKeyName,
  });

  GenerateUploadUrlRequest.fromJson(core.Map json_)
      : this(
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
      };
}

/// Response of `GenerateSourceUploadUrl` method.
class GenerateUploadUrlResponse {
  /// The generated Google Cloud Storage signed URL that should be used for a
  /// function source code upload.
  ///
  /// The uploaded file should be a zip archive which contains a function.
  core.String? uploadUrl;

  GenerateUploadUrlResponse({
    this.uploadUrl,
  });

  GenerateUploadUrlResponse.fromJson(core.Map json_)
      : this(
          uploadUrl: json_.containsKey('uploadUrl')
              ? json_['uploadUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uploadUrl != null) 'uploadUrl': uploadUrl!,
      };
}

/// Describes HttpsTrigger, could be used to connect web hooks to function.
class HttpsTrigger {
  /// The security level for the function.
  /// Possible string values are:
  /// - "SECURITY_LEVEL_UNSPECIFIED" : Unspecified.
  /// - "SECURE_ALWAYS" : Requests for a URL that match this handler that do not
  /// use HTTPS are automatically redirected to the HTTPS URL with the same
  /// path. Query parameters are reserved for the redirect.
  /// - "SECURE_OPTIONAL" : Both HTTP and HTTPS requests with URLs that match
  /// the handler succeed without redirects. The application can examine the
  /// request to determine which protocol was used and respond accordingly.
  core.String? securityLevel;

  /// The deployed url for the function.
  ///
  /// Output only.
  core.String? url;

  HttpsTrigger({
    this.securityLevel,
    this.url,
  });

  HttpsTrigger.fromJson(core.Map json_)
      : this(
          securityLevel: json_.containsKey('securityLevel')
              ? json_['securityLevel'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (securityLevel != null) 'securityLevel': securityLevel!,
        if (url != null) 'url': url!,
      };
}

/// Response for the `ListFunctions` method.
class ListFunctionsResponse {
  /// The functions that match the request.
  core.List<CloudFunction>? functions;

  /// If not empty, indicates that there may be more functions that match the
  /// request; this value should be passed in a new
  /// google.cloud.functions.v1.ListFunctionsRequest to get more functions.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// The response does not include any functions from these locations.
  core.List<core.String>? unreachable;

  ListFunctionsResponse({
    this.functions,
    this.nextPageToken,
    this.unreachable,
  });

  ListFunctionsResponse.fromJson(core.Map json_)
      : this(
          functions: json_.containsKey('functions')
              ? (json_['functions'] as core.List)
                  .map((value) => CloudFunction.fromJson(
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
        if (functions != null) 'functions': functions!,
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

/// Describes the retry policy in case of function's execution failure.
///
/// A function execution will be retried on any failure. A failed execution will
/// be retried up to 7 days with an exponential backoff (capped at 10 seconds).
/// Retried execution is charged as any other execution.
typedef Retry = $Empty;

/// Configuration for a secret environment variable.
///
/// It has the information necessary to fetch the secret value from secret
/// manager and expose it as an environment variable.
class SecretEnvVar {
  /// Name of the environment variable.
  core.String? key;

  /// Project identifier (preferrably project number but can also be the project
  /// ID) of the project that contains the secret.
  ///
  /// If not set, it will be populated with the function's project assuming that
  /// the secret exists in the same project as of the function.
  core.String? projectId;

  /// Name of the secret in secret manager (not the full resource name).
  core.String? secret;

  /// Version of the secret (version number or the string 'latest').
  ///
  /// It is recommended to use a numeric version for secret environment
  /// variables as any updates to the secret value is not reflected until new
  /// instances start.
  core.String? version;

  SecretEnvVar({
    this.key,
    this.projectId,
    this.secret,
    this.version,
  });

  SecretEnvVar.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          secret: json_.containsKey('secret')
              ? json_['secret'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (projectId != null) 'projectId': projectId!,
        if (secret != null) 'secret': secret!,
        if (version != null) 'version': version!,
      };
}

/// Configuration for a single version.
class SecretVersion {
  /// Relative path of the file under the mount path where the secret value for
  /// this version will be fetched and made available.
  ///
  /// For example, setting the mount_path as '/etc/secrets' and path as
  /// `/secret_foo` would mount the secret value file at
  /// `/etc/secrets/secret_foo`.
  core.String? path;

  /// Version of the secret (version number or the string 'latest').
  ///
  /// It is preferrable to use `latest` version with secret volumes as secret
  /// value changes are reflected immediately.
  core.String? version;

  SecretVersion({
    this.path,
    this.version,
  });

  SecretVersion.fromJson(core.Map json_)
      : this(
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (version != null) 'version': version!,
      };
}

/// Configuration for a secret volume.
///
/// It has the information necessary to fetch the secret value from secret
/// manager and make it available as files mounted at the requested paths within
/// the application container. Secret value is not a part of the configuration.
/// Every filesystem read operation performs a lookup in secret manager to
/// retrieve the secret value.
class SecretVolume {
  /// The path within the container to mount the secret volume.
  ///
  /// For example, setting the mount_path as `/etc/secrets` would mount the
  /// secret value files under the `/etc/secrets` directory. This directory will
  /// also be completely shadowed and unavailable to mount any other secrets.
  /// Recommended mount paths: /etc/secrets Restricted mount paths: /cloudsql,
  /// /dev/log, /pod, /proc, /var/log
  core.String? mountPath;

  /// Project identifier (preferrably project number but can also be the project
  /// ID) of the project that contains the secret.
  ///
  /// If not set, it will be populated with the function's project assuming that
  /// the secret exists in the same project as of the function.
  core.String? projectId;

  /// Name of the secret in secret manager (not the full resource name).
  core.String? secret;

  /// List of secret versions to mount for this secret.
  ///
  /// If empty, the `latest` version of the secret will be made available in a
  /// file named after the secret under the mount point.
  core.List<SecretVersion>? versions;

  SecretVolume({
    this.mountPath,
    this.projectId,
    this.secret,
    this.versions,
  });

  SecretVolume.fromJson(core.Map json_)
      : this(
          mountPath: json_.containsKey('mountPath')
              ? json_['mountPath'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          secret: json_.containsKey('secret')
              ? json_['secret'] as core.String
              : null,
          versions: json_.containsKey('versions')
              ? (json_['versions'] as core.List)
                  .map((value) => SecretVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mountPath != null) 'mountPath': mountPath!,
        if (projectId != null) 'projectId': projectId!,
        if (secret != null) 'secret': secret!,
        if (versions != null) 'versions': versions!,
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

/// Describes SourceRepository, used to represent parameters related to source
/// repository where a function is hosted.
class SourceRepository {
  /// The URL pointing to the hosted repository where the function were defined
  /// at the time of deployment.
  ///
  /// It always points to a specific commit in the format described above.
  ///
  /// Output only.
  core.String? deployedUrl;

  /// The URL pointing to the hosted repository where the function is defined.
  ///
  /// There are supported Cloud Source Repository URLs in the following formats:
  /// To refer to a specific commit:
  /// `https://source.developers.google.com/projects / * /repos / * /revisions /
  /// * /paths / * ` To refer to a moveable alias (branch):
  /// `https://source.developers.google.com/projects / * /repos / *
  /// /moveable-aliases / * /paths / * ` In particular, to refer to HEAD use
  /// `master` moveable alias. To refer to a specific fixed alias (tag):
  /// `https://source.developers.google.com/projects / * /repos / *
  /// /fixed-aliases / * /paths / * ` You may omit `paths / * ` if you want to
  /// use the main directory.
  core.String? url;

  SourceRepository({
    this.deployedUrl,
    this.url,
  });

  SourceRepository.fromJson(core.Map json_)
      : this(
          deployedUrl: json_.containsKey('deployedUrl')
              ? json_['deployedUrl'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployedUrl != null) 'deployedUrl': deployedUrl!,
        if (url != null) 'url': url!,
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

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;
