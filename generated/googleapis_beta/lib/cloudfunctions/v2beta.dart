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

/// Cloud Functions API - v2beta
///
/// Manages lightweight user-provided functions executed in response to events.
///
/// For more information, see <https://cloud.google.com/functions>
///
/// Create an instance of [CloudFunctionsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFunctionsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRuntimesResource]
library cloudfunctions.v2beta;

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

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudFunctionsApi(http.Client client,
      {core.String rootUrl = 'https://cloudfunctions.googleapis.com/',
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

  ProjectsLocationsFunctionsResource get functions =>
      ProjectsLocationsFunctionsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRuntimesResource get runtimes =>
      ProjectsLocationsRuntimesResource(_requester);

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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsFunctionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFunctionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new function.
  ///
  /// If a function with the given name already exists in the specified project,
  /// the long running operation will return `ALREADY_EXISTS` error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location in which the function should
  /// be created, specified in the format `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [functionId] - The ID to use for the function, which will become the final
  /// component of the function's resource name. This value should be 4-63
  /// characters, and valid characters are /a-z-/.
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
    Function_ request,
    core.String parent, {
    core.String? functionId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (functionId != null) 'functionId': [functionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta/' + core.Uri.encodeFull('$parent') + '/functions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a signed URL for downloading deployed function source code.
  ///
  /// The URL is only valid for a limited period and should be used within 30
  /// minutes of generation. For more information about the signed URL usage
  /// see: https://cloud.google.com/storage/docs/access-control/signed-urls
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of function for which source code Google Cloud
  /// Storage signed URL should be generated.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2beta/' + core.Uri.encodeFull('$name') + ':generateDownloadUrl';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GenerateDownloadUrlResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a signed URL for uploading a function source code.
  ///
  /// For more information about the signed URL usage see:
  /// https://cloud.google.com/storage/docs/access-control/signed-urls. Once the
  /// function source code upload is complete, the used signed URL should be
  /// provided in CreateFunction or UpdateFunction request as a reference to the
  /// function source code. When uploading source code to the generated signed
  /// URL, please follow these restrictions: * Source file type should be a zip
  /// file. * No credentials should be attached - the signed URLs provide access
  /// to the target bucket using internal service identity; if credentials were
  /// attached, the identity from the credentials would be used, but that
  /// identity does not have permissions to upload files to the URL. When making
  /// a HTTP PUT request, these two headers need to be specified: *
  /// `content-type: application/zip` And this header SHOULD NOT be specified: *
  /// `Authorization: Bearer YOUR_TOKEN`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location in which the Google Cloud
  /// Storage signed URL should be generated, specified in the format `projects
  /// / * /locations / * `.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta/' +
        core.Uri.encodeFull('$parent') +
        '/functions:generateUploadUrl';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GenerateUploadUrlResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [Function_].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Function_> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Function_.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of functions that belong to the requested project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the function
  /// should be listed, specified in the format `projects / * /locations / * `
  /// If you want to list functions in all locations, use "-" in place of a
  /// location. When listing functions in all locations, if one or more
  /// location(s) are unreachable, the response will contain functions from all
  /// reachable locations along with the names of any unreachable locations.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The filter for Functions that match the filter expression,
  /// following the syntax outlined in https://google.aip.dev/160.
  ///
  /// [orderBy] - The sorting order of the resources returned. Value should be a
  /// comma separated list of fields. The default sorting oder is ascending. See
  /// https://google.aip.dev/132#ordering.
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

    final _url = 'v2beta/' + core.Uri.encodeFull('$parent') + '/functions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFunctionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// [updateMask] - The list of fields to be updated. If no field mask is
  /// provided, all provided fields in the request will be updated.
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
    Function_ request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta/' + core.Uri.encodeFull('$name');

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2beta/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

    final _url = 'v2beta/' + core.Uri.encodeFull('$name');

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
  /// [name] - Must not be set.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Required. A filter for matching the requested operations. The
  /// supported formats of *filter* are: To query for a specific function:
  /// project:*,location:*,function:* To query for all of the latest operations
  /// for a project: project:*,latest:true
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

    final _url = 'v2beta/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRuntimesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRuntimesResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns a list of runtimes that are supported for the requested project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the runtimes
  /// should be listed, specified in the format `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The filter for Runtimes that match the filter expression,
  /// following the syntax outlined in https://google.aip.dev/160.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRuntimesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRuntimesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta/' + core.Uri.encodeFull('$parent') + '/runtimes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRuntimesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

  AuditConfig.fromJson(core.Map _json)
      : this(
          auditLogConfigs: _json.containsKey('auditLogConfigs')
              ? (_json['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
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

  /// Role that is assigned to the list of `members`, or principals.
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
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Describes the Build step of the function that builds a container from the
/// given source.
class BuildConfig {
  /// The Cloud Build name of the latest successful deployment of the function.
  ///
  /// Output only.
  core.String? build;

  /// User managed repository created in Artifact Registry optionally with a
  /// customer managed encryption key.
  ///
  /// This is the repository to which the function docker image will be pushed
  /// after it is built by Cloud Build. If unspecified, GCF will create and use
  /// a repository named 'gcf-artifacts' for every deployed region. It must
  /// match the pattern
  /// `projects/{project}/locations/{location}/repositories/{repository}`.
  /// Cross-project repositories are not supported. Cross-location repositories
  /// are not supported. Repository format must be 'DOCKER'.
  ///
  /// Optional.
  core.String? dockerRepository;

  /// The name of the function (as defined in source code) that will be
  /// executed.
  ///
  /// Defaults to the resource name suffix, if not specified. For backward
  /// compatibility, if function with given name is not found, then the system
  /// will try to use function named "function". For Node.js this is name of a
  /// function exported by the module specified in `source_location`.
  core.String? entryPoint;

  /// User-provided build-time environment variables for the function
  core.Map<core.String, core.String>? environmentVariables;

  /// The runtime in which to run the function.
  ///
  /// Required when deploying a new function, optional when updating an existing
  /// function. For a complete list of possible choices, see the \[`gcloud`
  /// command
  /// reference\](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  core.String? runtime;

  /// The location of the function source code.
  Source? source;

  /// A permanent fixed identifier for source.
  ///
  /// Output only.
  SourceProvenance? sourceProvenance;

  /// Name of the Cloud Build Custom Worker Pool that should be used to build
  /// the function.
  ///
  /// The format of this field is
  /// `projects/{project}/locations/{region}/workerPools/{workerPool}` where
  /// {project} and {region} are the project id and region respectively where
  /// the worker pool is defined and {workerPool} is the short name of the
  /// worker pool. If the project id is not the same as the function, then the
  /// Cloud Functions Service Agent
  /// (service-@gcf-admin-robot.iam.gserviceaccount.com) must be granted the
  /// role Cloud Build Custom Workers Builder
  /// (roles/cloudbuild.customworkers.builder) in the project.
  core.String? workerPool;

  BuildConfig({
    this.build,
    this.dockerRepository,
    this.entryPoint,
    this.environmentVariables,
    this.runtime,
    this.source,
    this.sourceProvenance,
    this.workerPool,
  });

  BuildConfig.fromJson(core.Map _json)
      : this(
          build:
              _json.containsKey('build') ? _json['build'] as core.String : null,
          dockerRepository: _json.containsKey('dockerRepository')
              ? _json['dockerRepository'] as core.String
              : null,
          entryPoint: _json.containsKey('entryPoint')
              ? _json['entryPoint'] as core.String
              : null,
          environmentVariables: _json.containsKey('environmentVariables')
              ? (_json['environmentVariables']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          runtime: _json.containsKey('runtime')
              ? _json['runtime'] as core.String
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceProvenance: _json.containsKey('sourceProvenance')
              ? SourceProvenance.fromJson(_json['sourceProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workerPool: _json.containsKey('workerPool')
              ? _json['workerPool'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (build != null) 'build': build!,
        if (dockerRepository != null) 'dockerRepository': dockerRepository!,
        if (entryPoint != null) 'entryPoint': entryPoint!,
        if (environmentVariables != null)
          'environmentVariables': environmentVariables!,
        if (runtime != null) 'runtime': runtime!,
        if (source != null) 'source': source!,
        if (sourceProvenance != null) 'sourceProvenance': sourceProvenance!,
        if (workerPool != null) 'workerPool': workerPool!,
      };
}

/// Filters events based on exact matches on the CloudEvents attributes.
class EventFilter {
  /// The name of a CloudEvents attribute.
  ///
  /// Required.
  core.String? attribute;

  /// The operator used for matching the events with the value of the filter.
  ///
  /// If not specified, only events that have an exact key-value pair specified
  /// in the filter are matched. The only allowed value is `match-path-pattern`.
  ///
  /// Optional.
  core.String? operator;

  /// The value for the attribute.
  ///
  /// Required.
  core.String? value;

  EventFilter({
    this.attribute,
    this.operator,
    this.value,
  });

  EventFilter.fromJson(core.Map _json)
      : this(
          attribute: _json.containsKey('attribute')
              ? _json['attribute'] as core.String
              : null,
          operator: _json.containsKey('operator')
              ? _json['operator'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attribute != null) 'attribute': attribute!,
        if (operator != null) 'operator': operator!,
        if (value != null) 'value': value!,
      };
}

/// Describes EventTrigger, used to request events to be sent from another
/// service.
class EventTrigger {
  /// The name of the channel associated with the trigger in
  /// `projects/{project}/locations/{location}/channels/{channel}` format.
  ///
  /// You must provide a channel to receive events from Eventarc SaaS partners.
  ///
  /// Optional.
  core.String? channel;

  /// Criteria used to filter events.
  core.List<EventFilter>? eventFilters;

  /// The type of event to observe.
  ///
  /// For example: `google.cloud.audit.log.v1.written` or
  /// `google.cloud.pubsub.topic.v1.messagePublished`.
  ///
  /// Required.
  core.String? eventType;

  /// The name of a Pub/Sub topic in the same project that will be used as the
  /// transport topic for the event delivery.
  ///
  /// Format: `projects/{project}/topics/{topic}`. This is only valid for events
  /// of type `google.cloud.pubsub.topic.v1.messagePublished`. The topic
  /// provided here will not be deleted at function deletion.
  ///
  /// Optional.
  core.String? pubsubTopic;

  /// If unset, then defaults to ignoring failures (i.e. not retrying them).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RETRY_POLICY_UNSPECIFIED" : Not specified.
  /// - "RETRY_POLICY_DO_NOT_RETRY" : Do not retry.
  /// - "RETRY_POLICY_RETRY" : Retry on any failure, retry up to 7 days with an
  /// exponential backoff (capped at 10 seconds).
  core.String? retryPolicy;

  /// The email of the trigger's service account.
  ///
  /// The service account must have permission to invoke Cloud Run services, the
  /// permission is `run.routes.invoke`. If empty, defaults to the Compute
  /// Engine default service account:
  /// `{project_number}-compute@developer.gserviceaccount.com`.
  ///
  /// Optional.
  core.String? serviceAccountEmail;

  /// The resource name of the Eventarc trigger.
  ///
  /// The format of this field is
  /// `projects/{project}/locations/{region}/triggers/{trigger}`.
  ///
  /// Output only.
  core.String? trigger;

  /// The region that the trigger will be in.
  ///
  /// The trigger will only receive events originating in this region. It can be
  /// the same region as the function, a different region or multi-region, or
  /// the global region. If not provided, defaults to the same region as the
  /// function.
  core.String? triggerRegion;

  EventTrigger({
    this.channel,
    this.eventFilters,
    this.eventType,
    this.pubsubTopic,
    this.retryPolicy,
    this.serviceAccountEmail,
    this.trigger,
    this.triggerRegion,
  });

  EventTrigger.fromJson(core.Map _json)
      : this(
          channel: _json.containsKey('channel')
              ? _json['channel'] as core.String
              : null,
          eventFilters: _json.containsKey('eventFilters')
              ? (_json['eventFilters'] as core.List)
                  .map((value) => EventFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          eventType: _json.containsKey('eventType')
              ? _json['eventType'] as core.String
              : null,
          pubsubTopic: _json.containsKey('pubsubTopic')
              ? _json['pubsubTopic'] as core.String
              : null,
          retryPolicy: _json.containsKey('retryPolicy')
              ? _json['retryPolicy'] as core.String
              : null,
          serviceAccountEmail: _json.containsKey('serviceAccountEmail')
              ? _json['serviceAccountEmail'] as core.String
              : null,
          trigger: _json.containsKey('trigger')
              ? _json['trigger'] as core.String
              : null,
          triggerRegion: _json.containsKey('triggerRegion')
              ? _json['triggerRegion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
        if (eventFilters != null) 'eventFilters': eventFilters!,
        if (eventType != null) 'eventType': eventType!,
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
        if (retryPolicy != null) 'retryPolicy': retryPolicy!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (trigger != null) 'trigger': trigger!,
        if (triggerRegion != null) 'triggerRegion': triggerRegion!,
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

/// Describes a Cloud Function that contains user computation executed in
/// response to an event.
///
/// It encapsulate function and triggers configurations.
class Function_ {
  /// Describes the Build step of the function that builds a container from the
  /// given source.
  BuildConfig? buildConfig;

  /// User-provided description of a function.
  core.String? description;

  /// Describe whether the function is gen1 or gen2.
  /// Possible string values are:
  /// - "ENVIRONMENT_UNSPECIFIED" : Unspecified
  /// - "GEN_1" : Gen 1
  /// - "GEN_2" : Gen 2
  core.String? environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// response to a condition in another service.
  EventTrigger? eventTrigger;

  /// Labels associated with this Cloud Function.
  core.Map<core.String, core.String>? labels;

  /// A user-defined name of the function.
  ///
  /// Function names must be unique globally and match pattern `projects / *
  /// /locations / * /functions / * `
  core.String? name;

  /// Describes the Service being deployed.
  ///
  /// Currently deploys services to Cloud Run (fully managed).
  ServiceConfig? serviceConfig;

  /// State of the function.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified. Invalid state.
  /// - "ACTIVE" : Function has been successfully deployed and is serving.
  /// - "FAILED" : Function deployment failed and the function is not serving.
  /// - "DEPLOYING" : Function is being created or updated.
  /// - "DELETING" : Function is being deleted.
  /// - "UNKNOWN" : Function deployment failed and the function serving state is
  /// undefined. The function should be updated or deleted to move it out of
  /// this state.
  core.String? state;

  /// State Messages for this Cloud Function.
  ///
  /// Output only.
  core.List<GoogleCloudFunctionsV2betaStateMessage>? stateMessages;

  /// The last update timestamp of a Cloud Function.
  ///
  /// Output only.
  core.String? updateTime;

  Function_({
    this.buildConfig,
    this.description,
    this.environment,
    this.eventTrigger,
    this.labels,
    this.name,
    this.serviceConfig,
    this.state,
    this.stateMessages,
    this.updateTime,
  });

  Function_.fromJson(core.Map _json)
      : this(
          buildConfig: _json.containsKey('buildConfig')
              ? BuildConfig.fromJson(
                  _json['buildConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          environment: _json.containsKey('environment')
              ? _json['environment'] as core.String
              : null,
          eventTrigger: _json.containsKey('eventTrigger')
              ? EventTrigger.fromJson(
                  _json['eventTrigger'] as core.Map<core.String, core.dynamic>)
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
          serviceConfig: _json.containsKey('serviceConfig')
              ? ServiceConfig.fromJson(
                  _json['serviceConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessages: _json.containsKey('stateMessages')
              ? (_json['stateMessages'] as core.List)
                  .map((value) =>
                      GoogleCloudFunctionsV2betaStateMessage.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildConfig != null) 'buildConfig': buildConfig!,
        if (description != null) 'description': description!,
        if (environment != null) 'environment': environment!,
        if (eventTrigger != null) 'eventTrigger': eventTrigger!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (serviceConfig != null) 'serviceConfig': serviceConfig!,
        if (state != null) 'state': state!,
        if (stateMessages != null) 'stateMessages': stateMessages!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request of `GenerateDownloadUrl` method.
typedef GenerateDownloadUrlRequest = $Empty;

/// Response of `GenerateDownloadUrl` method.
class GenerateDownloadUrlResponse {
  /// The generated Google Cloud Storage signed URL that should be used for
  /// function source code download.
  core.String? downloadUrl;

  GenerateDownloadUrlResponse({
    this.downloadUrl,
  });

  GenerateDownloadUrlResponse.fromJson(core.Map _json)
      : this(
          downloadUrl: _json.containsKey('downloadUrl')
              ? _json['downloadUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (downloadUrl != null) 'downloadUrl': downloadUrl!,
      };
}

/// Request of `GenerateSourceUploadUrl` method.
typedef GenerateUploadUrlRequest = $Empty;

/// Response of `GenerateSourceUploadUrl` method.
class GenerateUploadUrlResponse {
  /// The location of the source code in the upload bucket.
  ///
  /// Once the archive is uploaded using the `upload_url` use this field to set
  /// the `function.build_config.source.storage_source` during CreateFunction
  /// and UpdateFunction. Generation defaults to 0, as Cloud Storage provides a
  /// new generation only upon uploading a new object or version of an object.
  StorageSource? storageSource;

  /// The generated Google Cloud Storage signed URL that should be used for a
  /// function source code upload.
  ///
  /// The uploaded file should be a zip archive which contains a function.
  core.String? uploadUrl;

  GenerateUploadUrlResponse({
    this.storageSource,
    this.uploadUrl,
  });

  GenerateUploadUrlResponse.fromJson(core.Map _json)
      : this(
          storageSource: _json.containsKey('storageSource')
              ? StorageSource.fromJson(
                  _json['storageSource'] as core.Map<core.String, core.dynamic>)
              : null,
          uploadUrl: _json.containsKey('uploadUrl')
              ? _json['uploadUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (storageSource != null) 'storageSource': storageSource!,
        if (uploadUrl != null) 'uploadUrl': uploadUrl!,
      };
}

/// Informational messages about the state of the Cloud Function or Operation.
class GoogleCloudFunctionsV2betaStateMessage {
  /// The message.
  core.String? message;

  /// Severity of the state message.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Not specified. Invalid severity.
  /// - "ERROR" : ERROR-level severity.
  /// - "WARNING" : WARNING-level severity.
  /// - "INFO" : INFO-level severity.
  core.String? severity;

  /// One-word CamelCase type of the state message.
  core.String? type;

  GoogleCloudFunctionsV2betaStateMessage({
    this.message,
    this.severity,
    this.type,
  });

  GoogleCloudFunctionsV2betaStateMessage.fromJson(core.Map _json)
      : this(
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
        if (severity != null) 'severity': severity!,
        if (type != null) 'type': type!,
      };
}

/// Response for the `ListFunctions` method.
class ListFunctionsResponse {
  /// The functions that match the request.
  core.List<Function_>? functions;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
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

  ListFunctionsResponse.fromJson(core.Map _json)
      : this(
          functions: _json.containsKey('functions')
              ? (_json['functions'] as core.List)
                  .map((value) => Function_.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
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

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
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

/// Response for the `ListRuntimes` method.
class ListRuntimesResponse {
  /// The runtimes that match the request.
  core.List<Runtime>? runtimes;

  ListRuntimesResponse({
    this.runtimes,
  });

  ListRuntimesResponse.fromJson(core.Map _json)
      : this(
          runtimes: _json.containsKey('runtimes')
              ? (_json['runtimes'] as core.List)
                  .map((value) => Runtime.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (runtimes != null) 'runtimes': runtimes!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location;

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

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Location of the source in a Google Cloud Source Repository.
class RepoSource {
  /// Regex matching branches to build.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  core.String? branchName;

  /// Explicit commit SHA to build.
  core.String? commitSha;

  /// Directory, relative to the source root, in which to run the build.
  ///
  /// This must be a relative path. If a step's `dir` is specified and is an
  /// absolute path, this value is ignored for that step's execution. eg.
  /// helloworld (no leading slash allowed)
  core.String? dir;

  /// Only trigger a build if the revision regex does NOT match the revision
  /// regex.
  core.bool? invertRegex;

  /// ID of the project that owns the Cloud Source Repository.
  ///
  /// If omitted, the project ID requesting the build is assumed.
  core.String? projectId;

  /// Name of the Cloud Source Repository.
  core.String? repoName;

  /// Regex matching tags to build.
  ///
  /// The syntax of the regular expressions accepted is the syntax accepted by
  /// RE2 and described at https://github.com/google/re2/wiki/Syntax
  core.String? tagName;

  RepoSource({
    this.branchName,
    this.commitSha,
    this.dir,
    this.invertRegex,
    this.projectId,
    this.repoName,
    this.tagName,
  });

  RepoSource.fromJson(core.Map _json)
      : this(
          branchName: _json.containsKey('branchName')
              ? _json['branchName'] as core.String
              : null,
          commitSha: _json.containsKey('commitSha')
              ? _json['commitSha'] as core.String
              : null,
          dir: _json.containsKey('dir') ? _json['dir'] as core.String : null,
          invertRegex: _json.containsKey('invertRegex')
              ? _json['invertRegex'] as core.bool
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          repoName: _json.containsKey('repoName')
              ? _json['repoName'] as core.String
              : null,
          tagName: _json.containsKey('tagName')
              ? _json['tagName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (branchName != null) 'branchName': branchName!,
        if (commitSha != null) 'commitSha': commitSha!,
        if (dir != null) 'dir': dir!,
        if (invertRegex != null) 'invertRegex': invertRegex!,
        if (projectId != null) 'projectId': projectId!,
        if (repoName != null) 'repoName': repoName!,
        if (tagName != null) 'tagName': tagName!,
      };
}

/// Describes a runtime and any special information (e.g., deprecation status)
/// related to it.
class Runtime {
  /// The user facing name, eg 'Go 1.13', 'Node.js 12', etc.
  core.String? displayName;

  /// The environment for the runtime.
  /// Possible string values are:
  /// - "ENVIRONMENT_UNSPECIFIED" : Unspecified
  /// - "GEN_1" : Gen 1
  /// - "GEN_2" : Gen 2
  core.String? environment;

  /// The name of the runtime, e.g., 'go113', 'nodejs12', etc.
  core.String? name;

  /// The stage of life this runtime is in, e.g., BETA, GA, etc.
  /// Possible string values are:
  /// - "RUNTIME_STAGE_UNSPECIFIED" : Not specified.
  /// - "DEVELOPMENT" : The runtime is in development.
  /// - "ALPHA" : The runtime is in the Alpha stage.
  /// - "BETA" : The runtime is in the Beta stage.
  /// - "GA" : The runtime is generally available.
  /// - "DEPRECATED" : The runtime is deprecated.
  /// - "DECOMMISSIONED" : The runtime is no longer supported.
  core.String? stage;

  /// Warning messages, e.g., a deprecation warning.
  core.List<core.String>? warnings;

  Runtime({
    this.displayName,
    this.environment,
    this.name,
    this.stage,
    this.warnings,
  });

  Runtime.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          environment: _json.containsKey('environment')
              ? _json['environment'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          stage:
              _json.containsKey('stage') ? _json['stage'] as core.String : null,
          warnings: _json.containsKey('warnings')
              ? (_json['warnings'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (environment != null) 'environment': environment!,
        if (name != null) 'name': name!,
        if (stage != null) 'stage': stage!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// Configuration for a secret environment variable.
///
/// It has the information necessary to fetch the secret value from secret
/// manager and expose it as an environment variable.
class SecretEnvVar {
  /// Name of the environment variable.
  core.String? key;

  /// Project identifier (preferably project number but can also be the project
  /// ID) of the project that contains the secret.
  ///
  /// If not set, it is assumed that the secret is in the same project as the
  /// function.
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

  SecretEnvVar.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          secret: _json.containsKey('secret')
              ? _json['secret'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
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
  /// `secret_foo` would mount the secret value file at
  /// `/etc/secrets/secret_foo`.
  core.String? path;

  /// Version of the secret (version number or the string 'latest').
  ///
  /// It is preferable to use `latest` version with secret volumes as secret
  /// value changes are reflected immediately.
  core.String? version;

  SecretVersion({
    this.path,
    this.version,
  });

  SecretVersion.fromJson(core.Map _json)
      : this(
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
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
/// the application container.
class SecretVolume {
  /// The path within the container to mount the secret volume.
  ///
  /// For example, setting the mount_path as `/etc/secrets` would mount the
  /// secret value files under the `/etc/secrets` directory. This directory will
  /// also be completely shadowed and unavailable to mount any other secrets.
  /// Recommended mount path: /etc/secrets
  core.String? mountPath;

  /// Project identifier (preferably project number but can also be the project
  /// ID) of the project that contains the secret.
  ///
  /// If not set, it is assumed that the secret is in the same project as the
  /// function.
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

  SecretVolume.fromJson(core.Map _json)
      : this(
          mountPath: _json.containsKey('mountPath')
              ? _json['mountPath'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          secret: _json.containsKey('secret')
              ? _json['secret'] as core.String
              : null,
          versions: _json.containsKey('versions')
              ? (_json['versions'] as core.List)
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

/// Describes the Service being deployed.
///
/// Currently Supported : Cloud Run (fully managed).
class ServiceConfig {
  /// Whether 100% of traffic is routed to the latest revision.
  ///
  /// On CreateFunction and UpdateFunction, when set to true, the revision being
  /// deployed will serve 100% of traffic, ignoring any traffic split settings,
  /// if any. On GetFunction, true will be returned if the latest revision is
  /// serving 100% of traffic.
  core.bool? allTrafficOnLatestRevision;

  /// The amount of memory available for a function.
  ///
  /// Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is
  /// supplied the value is interpreted as bytes. See
  /// https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  /// a full description.
  core.String? availableMemory;

  /// Environment variables that shall be available during function execution.
  core.Map<core.String, core.String>? environmentVariables;

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
  core.int? maxInstanceCount;

  /// The limit on the minimum number of function instances that may coexist at
  /// a given time.
  ///
  /// Function instances are kept in idle state for a short period after they
  /// finished executing the request to reduce cold start time for subsequent
  /// requests. Setting a minimum instance count will ensure that the given
  /// number of instances are kept running in idle state always. This can help
  /// with cold start times when jump in incoming request count occurs after the
  /// idle instance would have been stopped in the default case.
  core.int? minInstanceCount;

  /// The name of service revision.
  ///
  /// Output only.
  core.String? revision;

  /// Secret environment variables configuration.
  core.List<SecretEnvVar>? secretEnvironmentVariables;

  /// Secret volumes configuration.
  core.List<SecretVolume>? secretVolumes;

  /// Name of the service associated with a Function.
  ///
  /// The format of this field is
  /// `projects/{project}/locations/{region}/services/{service}`
  ///
  /// Output only.
  core.String? service;

  /// The email of the service's service account.
  ///
  /// If empty, defaults to
  /// `{project_number}-compute@developer.gserviceaccount.com`.
  core.String? serviceAccountEmail;

  /// The function execution timeout.
  ///
  /// Execution is considered failed and can be terminated if the function is
  /// not completed at the end of the timeout period. Defaults to 60 seconds.
  core.int? timeoutSeconds;

  /// URI of the Service deployed.
  ///
  /// Output only.
  core.String? uri;

  /// The Serverless VPC Access connector that this cloud function can connect
  /// to.
  ///
  /// The format of this field is `projects / * /locations / * /connectors / *
  /// `.
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

  ServiceConfig({
    this.allTrafficOnLatestRevision,
    this.availableMemory,
    this.environmentVariables,
    this.ingressSettings,
    this.maxInstanceCount,
    this.minInstanceCount,
    this.revision,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.service,
    this.serviceAccountEmail,
    this.timeoutSeconds,
    this.uri,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  ServiceConfig.fromJson(core.Map _json)
      : this(
          allTrafficOnLatestRevision:
              _json.containsKey('allTrafficOnLatestRevision')
                  ? _json['allTrafficOnLatestRevision'] as core.bool
                  : null,
          availableMemory: _json.containsKey('availableMemory')
              ? _json['availableMemory'] as core.String
              : null,
          environmentVariables: _json.containsKey('environmentVariables')
              ? (_json['environmentVariables']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          ingressSettings: _json.containsKey('ingressSettings')
              ? _json['ingressSettings'] as core.String
              : null,
          maxInstanceCount: _json.containsKey('maxInstanceCount')
              ? _json['maxInstanceCount'] as core.int
              : null,
          minInstanceCount: _json.containsKey('minInstanceCount')
              ? _json['minInstanceCount'] as core.int
              : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.String
              : null,
          secretEnvironmentVariables:
              _json.containsKey('secretEnvironmentVariables')
                  ? (_json['secretEnvironmentVariables'] as core.List)
                      .map((value) => SecretEnvVar.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          secretVolumes: _json.containsKey('secretVolumes')
              ? (_json['secretVolumes'] as core.List)
                  .map((value) => SecretVolume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
          serviceAccountEmail: _json.containsKey('serviceAccountEmail')
              ? _json['serviceAccountEmail'] as core.String
              : null,
          timeoutSeconds: _json.containsKey('timeoutSeconds')
              ? _json['timeoutSeconds'] as core.int
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
          vpcConnector: _json.containsKey('vpcConnector')
              ? _json['vpcConnector'] as core.String
              : null,
          vpcConnectorEgressSettings:
              _json.containsKey('vpcConnectorEgressSettings')
                  ? _json['vpcConnectorEgressSettings'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allTrafficOnLatestRevision != null)
          'allTrafficOnLatestRevision': allTrafficOnLatestRevision!,
        if (availableMemory != null) 'availableMemory': availableMemory!,
        if (environmentVariables != null)
          'environmentVariables': environmentVariables!,
        if (ingressSettings != null) 'ingressSettings': ingressSettings!,
        if (maxInstanceCount != null) 'maxInstanceCount': maxInstanceCount!,
        if (minInstanceCount != null) 'minInstanceCount': minInstanceCount!,
        if (revision != null) 'revision': revision!,
        if (secretEnvironmentVariables != null)
          'secretEnvironmentVariables': secretEnvironmentVariables!,
        if (secretVolumes != null) 'secretVolumes': secretVolumes!,
        if (service != null) 'service': service!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (timeoutSeconds != null) 'timeoutSeconds': timeoutSeconds!,
        if (uri != null) 'uri': uri!,
        if (vpcConnector != null) 'vpcConnector': vpcConnector!,
        if (vpcConnectorEgressSettings != null)
          'vpcConnectorEgressSettings': vpcConnectorEgressSettings!,
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
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// The location of the function source code.
class Source {
  /// If provided, get the source from this location in a Cloud Source
  /// Repository.
  RepoSource? repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  StorageSource? storageSource;

  Source({
    this.repoSource,
    this.storageSource,
  });

  Source.fromJson(core.Map _json)
      : this(
          repoSource: _json.containsKey('repoSource')
              ? RepoSource.fromJson(
                  _json['repoSource'] as core.Map<core.String, core.dynamic>)
              : null,
          storageSource: _json.containsKey('storageSource')
              ? StorageSource.fromJson(
                  _json['storageSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (repoSource != null) 'repoSource': repoSource!,
        if (storageSource != null) 'storageSource': storageSource!,
      };
}

/// Provenance of the source.
///
/// Ways to find the original source, or verify that some source was used for
/// this build.
class SourceProvenance {
  /// A copy of the build's `source.repo_source`, if exists, with any revisions
  /// resolved.
  RepoSource? resolvedRepoSource;

  /// A copy of the build's `source.storage_source`, if exists, with any
  /// generations resolved.
  StorageSource? resolvedStorageSource;

  SourceProvenance({
    this.resolvedRepoSource,
    this.resolvedStorageSource,
  });

  SourceProvenance.fromJson(core.Map _json)
      : this(
          resolvedRepoSource: _json.containsKey('resolvedRepoSource')
              ? RepoSource.fromJson(_json['resolvedRepoSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resolvedStorageSource: _json.containsKey('resolvedStorageSource')
              ? StorageSource.fromJson(_json['resolvedStorageSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resolvedRepoSource != null)
          'resolvedRepoSource': resolvedRepoSource!,
        if (resolvedStorageSource != null)
          'resolvedStorageSource': resolvedStorageSource!,
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

/// Location of the source in an archive file in Google Cloud Storage.
class StorageSource {
  /// Google Cloud Storage bucket containing the source (see
  /// [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  core.String? bucket;

  /// Google Cloud Storage generation for the object.
  ///
  /// If the generation is omitted, the latest generation will be used.
  core.String? generation;

  /// Google Cloud Storage object containing the source.
  ///
  /// This object must be a gzipped archive file (`.tar.gz`) containing source
  /// to build.
  core.String? object;

  StorageSource({
    this.bucket,
    this.generation,
    this.object,
  });

  StorageSource.fromJson(core.Map _json)
      : this(
          bucket: _json.containsKey('bucket')
              ? _json['bucket'] as core.String
              : null,
          generation: _json.containsKey('generation')
              ? _json['generation'] as core.String
              : null,
          object: _json.containsKey('object')
              ? _json['object'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (generation != null) 'generation': generation!,
        if (object != null) 'object': object!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $TestIamPermissionsResponse;
