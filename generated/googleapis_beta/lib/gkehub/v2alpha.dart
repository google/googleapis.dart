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

/// GKE Hub API - v2alpha
///
/// For more information, see
/// <https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster>
///
/// Create an instance of [GKEHubApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFeatureConfigsResource]
///     - [ProjectsLocationsMembershipsResource]
///       - [ProjectsLocationsMembershipsFeaturesResource]
///     - [ProjectsLocationsOperationsResource]
library gkehub.v2alpha;

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

class GKEHubApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  GKEHubApi(http.Client client,
      {core.String rootUrl = 'https://gkehub.googleapis.com/',
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

  ProjectsLocationsFeatureConfigsResource get featureConfigs =>
      ProjectsLocationsFeatureConfigsResource(_requester);
  ProjectsLocationsMembershipsResource get memberships =>
      ProjectsLocationsMembershipsResource(_requester);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2alpha/' + core.Uri.encodeFull('$name');

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

    final _url = 'v2alpha/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsFeatureConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFeatureConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates FeatureConfig under a given parent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of parent where the FeatureConfig will be
  /// created. Specified in the format
  /// `projects/{project}/locations/global/featureConfigs/{feature_type}/{feature_config}/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [featureConfigId] - The ID of the feature config to create.
  ///
  /// [requestId] - Idempotent request UUID.
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
    FeatureConfig request,
    core.String parent, {
    core.String? featureConfigId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (featureConfigId != null) 'featureConfigId': [featureConfigId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/featureConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Removes a FeatureConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the membershipFeature to be deleted.
  /// Specified in the format `projects / * /locations / * /featureConfigs / *
  /// *`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/featureConfigs/.*$`.
  ///
  /// [requestId] - Idempotent request UUID.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// ========= FeatureConfig Services ========= Gets details of a
  /// featureConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The FeatureConfig resource name in the format `projects
  /// / * /locations / * /featureConfigs / * *`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/featureConfigs/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FeatureConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FeatureConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return FeatureConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all FeatureConfigs in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent where the FeatureConfigs will be listed.
  /// In the format: `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Lists FeatureConfigs that match the filter expression,
  /// following the syntax outlined in https://google.aip.dev/160.
  ///
  /// [orderBy] - One or more fields to compare and use to sort the output. See
  /// https://google.aip.dev/132#ordering.
  ///
  /// [pageSize] - When requesting a 'page' of resources, `page_size` specifies
  /// number of resources to return. If unspecified or set to 0, all resources
  /// will be returned.
  ///
  /// [pageToken] - Token returned by previous call to `ListFeatures` which
  /// specifies the position in the list from where to continue listing the
  /// resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFeatureConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFeatureConfigsResponse> list(
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
        'v2alpha/' + core.Uri.encodeFull('$parent') + '/featureConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFeatureConfigsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsMembershipsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMembershipsFeaturesResource get features =>
      ProjectsLocationsMembershipsFeaturesResource(_requester);

  ProjectsLocationsMembershipsResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsMembershipsFeaturesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMembershipsFeaturesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates membershipFeature under a given parent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of parent where the MembershipFeature will
  /// be created. Specified in the format `projects / * /locations / *
  /// /memberships / * /features / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [requestId] - Idempotent request UUID.
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
    MembershipFeature request,
    core.String parent, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2alpha/' + core.Uri.encodeFull('$parent') + '/features';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Removes a membershipFeature.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the membershipFeature to be deleted.
  /// Specified in the format `projects / * /locations / * /memberships / *
  /// /features / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [requestId] - Idempotent request UUID.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// ========= MembershipFeature Services ========= Gets details of a
  /// membershipFeature.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The MembershipFeature resource name in the format
  /// `projects / * /locations / * /memberships / * /features / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MembershipFeature].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MembershipFeature> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return MembershipFeature.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists MembershipFeatures in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent where the MembershipFeature will be
  /// listed. In the format: `projects / * /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [filter] - Lists MembershipFeatures that match the filter expression,
  /// following the syntax outlined in https://google.aip.dev/160. Examples: -
  /// Feature with the name "helloworld" in project "foo-proj" and membership
  /// "member-bar": name =
  /// "projects/foo-proj/locations/global/memberships/member-bar/features/helloworld"
  /// - Features that have a label called `foo`: labels.foo:* - Features that
  /// have a label called `foo` whose value is `bar`: labels.foo = bar
  ///
  /// [orderBy] - One or more fields to compare and use to sort the output. See
  /// https://google.aip.dev/132#ordering.
  ///
  /// [pageSize] - When requesting a 'page' of resources, `page_size` specifies
  /// number of resources to return. If unspecified or set to 0, all resources
  /// will be returned.
  ///
  /// [pageToken] - Token returned by previous call to `ListFeatures` which
  /// specifies the position in the list from where to continue listing the
  /// resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMembershipFeaturesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMembershipFeaturesResponse> list(
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

    final _url = 'v2alpha/' + core.Uri.encodeFull('$parent') + '/features';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListMembershipFeaturesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing MembershipFeature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the membershipFeature, in the
  /// format:
  /// `projects/{project}/locations/{location}/memberships/{membership}/features/{feature}`.
  /// Note that `membershipFeatures` is shortened to `features` in the resource
  /// name. (see http://go/aip/122#collection-identifiers)
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+/features/\[^/\]+$`.
  ///
  /// [requestId] - Idempotent request UUID.
  ///
  /// [updateMask] - Required. Mask of fields to update.
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
    MembershipFeature request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2alpha/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
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

    final _url = 'v2alpha/' + core.Uri.encodeFull('$name');

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

    final _url = 'v2alpha/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// FeatureConfig contains configurations for a Fleet feature.
///
/// FeatureConfig can be applied to MembershipFeature(s) to setup per-membership
/// FeatureSpec.
class FeatureConfig {
  /// When the FeatureConfig resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the FeatureConfig resource was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// GCP labels for this FeatureConfig.
  core.Map<core.String, core.String>? labels;

  /// Resource name of this FeatureConfig, in the format:
  /// `projects/{project}/locations/global/FeatureConfigs/{feature_type}/{feature_config}`
  ///
  /// Output only.
  core.String? name;

  /// Input only.
  ///
  /// Immutable. User input of feature spec. Note that this field is immutable.
  /// Must create a new FeatureConfig if a new feature spec is needed.
  FeatureSpec? spec;

  /// Lifecycle information of the FeatureConfig.
  FeatureConfigState? state;

  /// Google-generated UUID for this resource.
  ///
  /// This is unique across all FeatureConfig resources. If a Membership
  /// resource is deleted and another resource with the same name is created, it
  /// gets a different unique_id.
  ///
  /// Output only.
  core.String? uniqueId;

  /// When the FeatureConfig resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  FeatureConfig({
    this.createTime,
    this.deleteTime,
    this.labels,
    this.name,
    this.spec,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  FeatureConfig.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
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
          spec: _json.containsKey('spec')
              ? FeatureSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          state: _json.containsKey('state')
              ? FeatureConfigState.fromJson(
                  _json['state'] as core.Map<core.String, core.dynamic>)
              : null,
          uniqueId: _json.containsKey('uniqueId')
              ? _json['uniqueId'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (spec != null) 'spec': spec!,
        if (state != null) 'state': state!,
        if (uniqueId != null) 'uniqueId': uniqueId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Information of the FeatureConfig applied on the MembershipFeature.
class FeatureConfigRef {
  /// Input only.
  ///
  /// Resource name of FeatureConfig, in the format:
  /// `projects/{project}/locations/global/featureConfigs/{feature_config}`.
  core.String? config;

  /// When the FeatureConfig was last applied and copied to FeatureSpec.
  ///
  /// Output only.
  core.String? configUpdateTime;

  /// An id that uniquely identify a FeatureConfig object.
  ///
  /// Output only.
  core.String? uuid;

  FeatureConfigRef({
    this.config,
    this.configUpdateTime,
    this.uuid,
  });

  FeatureConfigRef.fromJson(core.Map _json)
      : this(
          config: _json.containsKey('config')
              ? _json['config'] as core.String
              : null,
          configUpdateTime: _json.containsKey('configUpdateTime')
              ? _json['configUpdateTime'] as core.String
              : null,
          uuid: _json.containsKey('uuid') ? _json['uuid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (configUpdateTime != null) 'configUpdateTime': configUpdateTime!,
        if (uuid != null) 'uuid': uuid!,
      };
}

/// FeatureConfigState describes the state of a FeatureConfig resource.
class FeatureConfigState {
  /// The current state of the FeatureConfig resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The code is not set.
  /// - "CREATING" : The FeatureConfig is being created.
  /// - "ACTIVE" : The FeatureConfig has been created.
  /// - "DELETING" : The FeatureConfig is being deleted.
  core.String? state;

  FeatureConfigState({
    this.state,
  });

  FeatureConfigState.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// FeatureSpec contains user input per-feature spec information.
typedef FeatureSpec = $Empty;

/// FeatureState contains high-level state information and per-feature state
/// information for this MembershipFeature.
class FeatureState {
  /// The high-level state of this MembershipFeature.
  State? state;

  FeatureState({
    this.state,
  });

  FeatureState.fromJson(core.Map _json)
      : this(
          state: _json.containsKey('state')
              ? State.fromJson(
                  _json['state'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// Response message for the `GkeHubFeature.ListFeatureConfigs` method.
class ListFeatureConfigsResponse {
  /// The list of FeatureConfig(s).
  core.List<FeatureConfig>? featureConfigs;

  /// A token to request the next page of resources from the
  /// `ListFeatureConfigs` method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  ListFeatureConfigsResponse({
    this.featureConfigs,
    this.nextPageToken,
  });

  ListFeatureConfigsResponse.fromJson(core.Map _json)
      : this(
          featureConfigs: _json.containsKey('featureConfigs')
              ? (_json['featureConfigs'] as core.List)
                  .map((value) => FeatureConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (featureConfigs != null) 'featureConfigs': featureConfigs!,
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

/// Response message for the `GkeHubFeature.ListMembershipFeatures` method.
class ListMembershipFeaturesResponse {
  /// The list of matching MembershipFeatures.
  core.List<MembershipFeature>? membershipFeatures;

  /// A token to request the next page of resources from the
  /// `ListMembershipFeatures` method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  ListMembershipFeaturesResponse({
    this.membershipFeatures,
    this.nextPageToken,
  });

  ListMembershipFeaturesResponse.fromJson(core.Map _json)
      : this(
          membershipFeatures: _json.containsKey('membershipFeatures')
              ? (_json['membershipFeatures'] as core.List)
                  .map((value) => MembershipFeature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (membershipFeatures != null)
          'membershipFeatures': membershipFeatures!,
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

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location;

/// MembershipFeature represents the settings and status of a Fleet Feature
/// enabled on a single Fleet Membership.
class MembershipFeature {
  /// When the MembershipFeature resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the MembershipFeature resource was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Reference information for a FeatureConfig applied on the
  /// MembershipFeature.
  FeatureConfigRef? featureConfigRef;

  /// GCP labels for this MembershipFeature.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the membershipFeature, in the format:
  /// `projects/{project}/locations/{location}/memberships/{membership}/features/{feature}`.
  ///
  /// Note that `membershipFeatures` is shortened to `features` in the resource
  /// name. (see http://go/aip/122#collection-identifiers)
  ///
  /// Output only.
  core.String? name;

  /// Lifecycle information of the resource itself.
  ResourceState? resourceState;

  /// Spec of this membershipFeature.
  ///
  /// Output only.
  FeatureSpec? spec;

  /// State of the this membershipFeature.
  ///
  /// Output only.
  FeatureState? state;

  /// When the MembershipFeature resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  MembershipFeature({
    this.createTime,
    this.deleteTime,
    this.featureConfigRef,
    this.labels,
    this.name,
    this.resourceState,
    this.spec,
    this.state,
    this.updateTime,
  });

  MembershipFeature.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          featureConfigRef: _json.containsKey('featureConfigRef')
              ? FeatureConfigRef.fromJson(_json['featureConfigRef']
                  as core.Map<core.String, core.dynamic>)
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
          resourceState: _json.containsKey('resourceState')
              ? ResourceState.fromJson(
                  _json['resourceState'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: _json.containsKey('spec')
              ? FeatureSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          state: _json.containsKey('state')
              ? FeatureState.fromJson(
                  _json['state'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (featureConfigRef != null) 'featureConfigRef': featureConfigRef!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (resourceState != null) 'resourceState': resourceState!,
        if (spec != null) 'spec': spec!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
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
  GoogleRpcStatus? error;

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
              ? GoogleRpcStatus.fromJson(
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

/// ResourceState describes the state of a MembershipFeature *resource* in the
/// GkeHub API.
///
/// See `FeatureState` for the "running state" of the MembershipFeature.
class ResourceState {
  /// The current state of the Feature resource in the Hub API.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is unknown or not set.
  /// - "ENABLING" : The MembershipFeature is being enabled, and the
  /// MembershipFeature resource is being created. Once complete, the
  /// corresponding MembershipFeature will be enabled in this Hub.
  /// - "ACTIVE" : The MembershipFeature is enabled in this Hub, and the
  /// MembershipFeature resource is fully available.
  /// - "DISABLING" : The MembershipFeature is being disabled in this Hub, and
  /// the MembershipFeature resource is being deleted.
  /// - "UPDATING" : The MembershipFeature resource is being updated.
  /// - "SERVICE_UPDATING" : The MembershipFeature resource is being updated by
  /// the Hub Service.
  core.String? state;

  ResourceState({
    this.state,
  });

  ResourceState.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// High-level state of a MembershipFeature.
class State {
  /// The high-level, machine-readable status of this MembershipFeature.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Unknown or not set.
  /// - "OK" : The MembershipFeature is operating normally.
  /// - "WARNING" : The MembershipFeature has encountered an issue, and is
  /// operating in a degraded state. The MembershipFeature may need intervention
  /// to return to normal operation. See the description and any associated
  /// MembershipFeature-specific details for more information.
  /// - "ERROR" : The MembershipFeature is not operating or is in a severely
  /// degraded state. The MembershipFeature may need intervention to return to
  /// normal operation. See the description and any associated
  /// MembershipFeature-specific details for more information.
  core.String? code;

  /// A human-readable description of the current status.
  core.String? description;

  /// The time this status and any related Feature-specific details were
  /// updated.
  core.String? updateTime;

  State({
    this.code,
    this.description,
    this.updateTime,
  });

  State.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
