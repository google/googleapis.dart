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

/// Cloud Asset API - v1
///
/// The cloud asset API manages the history and inventory of cloud resources.
///
/// For more information, see
/// <https://cloud.google.com/asset-inventory/docs/quickstart>
///
/// Create an instance of [CloudAssetApi] to access these resources:
///
/// - [AssetsResource]
/// - [EffectiveIamPoliciesResource]
/// - [FeedsResource]
/// - [OperationsResource]
/// - [SavedQueriesResource]
/// - [V1Resource]
library cloudasset.v1;

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

/// The cloud asset API manages the history and inventory of cloud resources.
class CloudAssetApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  AssetsResource get assets => AssetsResource(_requester);
  EffectiveIamPoliciesResource get effectiveIamPolicies =>
      EffectiveIamPoliciesResource(_requester);
  FeedsResource get feeds => FeedsResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  SavedQueriesResource get savedQueries => SavedQueriesResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  CloudAssetApi(http.Client client,
      {core.String rootUrl = 'https://cloudasset.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AssetsResource {
  final commons.ApiRequester _requester;

  AssetsResource(commons.ApiRequester client) : _requester = client;

  /// Lists assets with time and resource types and returns paged results in
  /// response.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization, folder, or project the
  /// assets belong to. Format: "organizations/\[organization-number\]" (such as
  /// "organizations/123"), "projects/\[project-id\]" (such as
  /// "projects/my-project-id"), "projects/\[project-number\]" (such as
  /// "projects/12345"), or "folders/\[folder-number\]" (such as
  /// "folders/12345").
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [assetTypes] - A list of asset types to take a snapshot for. For example:
  /// "compute.googleapis.com/Disk". Regular expression is also supported. For
  /// example: * "compute.googleapis.com.*" snapshots resources whose asset type
  /// starts with "compute.googleapis.com". * ".*Instance" snapshots resources
  /// whose asset type ends with "Instance". * ".*Instance.*" snapshots
  /// resources whose asset type contains "Instance". See
  /// [RE2](https://github.com/google/re2/wiki/Syntax) for all supported regular
  /// expression syntax. If the regular expression does not match any supported
  /// asset type, an INVALID_ARGUMENT error will be returned. If specified, only
  /// matching assets will be returned, otherwise, it will snapshot all asset
  /// types. See
  /// [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview)
  /// for all supported asset types.
  ///
  /// [contentType] - Asset content type. If not specified, no content but the
  /// asset name will be returned.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Unspecified content type.
  /// - "RESOURCE" : Resource metadata.
  /// - "IAM_POLICY" : The actual IAM policy set on a resource.
  /// - "ORG_POLICY" : The Cloud Organization Policy set on an asset.
  /// - "ACCESS_POLICY" : The Cloud Access context manager Policy set on an
  /// asset.
  /// - "OS_INVENTORY" : The runtime OS Inventory information.
  /// - "RELATIONSHIP" : The related resources.
  ///
  /// [pageSize] - The maximum number of assets to be returned in a single
  /// response. Default is 100, minimum is 1, and maximum is 1000.
  ///
  /// [pageToken] - The `next_page_token` returned from the previous
  /// `ListAssetsResponse`, or unspecified for the first `ListAssetsRequest`. It
  /// is a continuation of a prior `ListAssets` call, and the API should return
  /// the next page of assets.
  ///
  /// [readTime] - Timestamp to take an asset snapshot. This can only be set to
  /// a timestamp between the current time and the current time minus 35 days
  /// (inclusive). If not specified, the current time will be used. Due to
  /// delays in resource data collection and indexing, there is a volatile
  /// window during which running the same query may get different results.
  ///
  /// [relationshipTypes] - A list of relationship types to output, for example:
  /// `INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if
  /// content_type=RELATIONSHIP. * If specified: it snapshots specified
  /// relationships. It returns an error if any of the \[relationship_types\]
  /// doesn't belong to the supported relationship types of the \[asset_types\]
  /// or if any of the \[asset_types\] doesn't belong to the source types of the
  /// \[relationship_types\]. * Otherwise: it snapshots the supported
  /// relationships for all \[asset_types\] or returns an error if any of the
  /// \[asset_types\] has no relationship support. An unspecified asset types
  /// field means all supported asset_types. See
  /// [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview)
  /// for all supported asset types and relationship types.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAssetsResponse> list(
    core.String parent, {
    core.List<core.String>? assetTypes,
    core.String? contentType,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.List<core.String>? relationshipTypes,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (assetTypes != null) 'assetTypes': assetTypes,
      if (contentType != null) 'contentType': [contentType],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if (relationshipTypes != null) 'relationshipTypes': relationshipTypes,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class EffectiveIamPoliciesResource {
  final commons.ApiRequester _requester;

  EffectiveIamPoliciesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets effective IAM policies for a batch of resources.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Only IAM policies on or below the scope will be
  /// returned. This can only be an organization number (such as
  /// "organizations/123"), a folder number (such as "folders/123"), a project
  /// ID (such as "projects/my-project-id"), or a project number (such as
  /// "projects/12345"). To know how to get organization id, visit
  /// [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id).
  /// To know how to get folder or project id, visit
  /// [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [names] - Required. The names refer to the
  /// [full_resource_names](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  /// of
  /// [searchable asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types).
  /// A maximum of 20 resources' effective policies can be retrieved in a batch.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetEffectiveIamPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetEffectiveIamPoliciesResponse> batchGet(
    core.String scope, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$scope') +
        '/effectiveIamPolicies:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BatchGetEffectiveIamPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FeedsResource {
  final commons.ApiRequester _requester;

  FeedsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a feed in a parent project/folder/organization to listen to its
  /// asset updates.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project/folder/organization where
  /// this feed should be created in. It can only be an organization number
  /// (such as "organizations/123"), a folder number (such as "folders/123"), a
  /// project ID (such as "projects/my-project-id")", or a project number (such
  /// as "projects/12345").
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Feed].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Feed> create(
    CreateFeedRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/feeds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Feed.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an asset feed.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the feed and it must be in the format of:
  /// projects/project_number/feeds/feed_id folders/folder_number/feeds/feed_id
  /// organizations/organization_number/feeds/feed_id
  /// Value must have pattern `^\[^/\]+/\[^/\]+/feeds/\[^/\]+$`.
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

  /// Gets details about an asset feed.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Feed and it must be in the format of:
  /// projects/project_number/feeds/feed_id folders/folder_number/feeds/feed_id
  /// organizations/organization_number/feeds/feed_id
  /// Value must have pattern `^\[^/\]+/\[^/\]+/feeds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Feed].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Feed> get(
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
    return Feed.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all asset feeds in a parent project/folder/organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project/folder/organization whose feeds
  /// are to be listed. It can only be using project/folder/organization number
  /// (such as "folders/12345")", or a project ID (such as
  /// "projects/my-project-id").
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFeedsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFeedsResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/feeds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFeedsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an asset feed configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The format will be
  /// projects/{project_number}/feeds/{client-assigned_feed_identifier} or
  /// folders/{folder_number}/feeds/{client-assigned_feed_identifier} or
  /// organizations/{organization_number}/feeds/{client-assigned_feed_identifier}
  /// The client-assigned feed identifier must be unique within the parent
  /// project/folder/organization.
  /// Value must have pattern `^\[^/\]+/\[^/\]+/feeds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Feed].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Feed> patch(
    UpdateFeedRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Feed.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
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
  /// Value must have pattern `^\[^/\]+/\[^/\]+/operations/\[^/\]+/.*$`.
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
}

class SavedQueriesResource {
  final commons.ApiRequester _requester;

  SavedQueriesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a saved query in a parent project/folder/organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project/folder/organization where
  /// this saved_query should be created in. It can only be an organization
  /// number (such as "organizations/123"), a folder number (such as
  /// "folders/123"), a project ID (such as "projects/my-project-id")", or a
  /// project number (such as "projects/12345").
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [savedQueryId] - Required. The ID to use for the saved query, which must
  /// be unique in the specified parent. It will become the final component of
  /// the saved query's resource name. This value should be 4-63 characters, and
  /// valid characters are /a-z-/. Notice that this field is required in the
  /// saved query creation, and the `name` field of the `saved_query` will be
  /// ignored.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedQuery].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedQuery> create(
    SavedQuery request,
    core.String parent, {
    core.String? savedQueryId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (savedQueryId != null) 'savedQueryId': [savedQueryId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/savedQueries';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SavedQuery.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a saved query.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the saved query to delete. It must be in
  /// the format of: * projects/project_number/savedQueries/saved_query_id *
  /// folders/folder_number/savedQueries/saved_query_id *
  /// organizations/organization_number/savedQueries/saved_query_id
  /// Value must have pattern `^\[^/\]+/\[^/\]+/savedQueries/\[^/\]+$`.
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

  /// Gets details about a saved query.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the saved query and it must be in the
  /// format of: * projects/project_number/savedQueries/saved_query_id *
  /// folders/folder_number/savedQueries/saved_query_id *
  /// organizations/organization_number/savedQueries/saved_query_id
  /// Value must have pattern `^\[^/\]+/\[^/\]+/savedQueries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedQuery].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedQuery> get(
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
    return SavedQuery.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all saved queries in a parent project/folder/organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project/folder/organization whose
  /// savedQueries are to be listed. It can only be using
  /// project/folder/organization number (such as "folders/12345")", or a
  /// project ID (such as "projects/my-project-id").
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [filter] - Optional. The expression to filter resources. The expression is
  /// a list of zero or more restrictions combined via logical operators `AND`
  /// and `OR`. When `AND` and `OR` are both used in the expression, parentheses
  /// must be appropriately used to group the combinations. The expression may
  /// also contain regular expressions. See https://google.aip.dev/160 for more
  /// information on the grammar.
  ///
  /// [pageSize] - Optional. The maximum number of saved queries to return per
  /// page. The service may return fewer than this value. If unspecified, at
  /// most 50 will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListSavedQueries` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListSavedQueries` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSavedQueriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSavedQueriesResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/savedQueries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSavedQueriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a saved query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the saved query. The format must be: *
  /// projects/project_number/savedQueries/saved_query_id *
  /// folders/folder_number/savedQueries/saved_query_id *
  /// organizations/organization_number/savedQueries/saved_query_id
  /// Value must have pattern `^\[^/\]+/\[^/\]+/savedQueries/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedQuery].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedQuery> patch(
    SavedQuery request,
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
    return SavedQuery.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Analyzes IAM policies to answer which identities have what accesses on
  /// which resources.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. The relative name of the root asset. Only resources
  /// and IAM policies within the scope will be analyzed. This can only be an
  /// organization number (such as "organizations/123"), a folder number (such
  /// as "folders/123"), a project ID (such as "projects/my-project-id"), or a
  /// project number (such as "projects/12345"). To know how to get organization
  /// id, visit
  /// [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id).
  /// To know how to get folder or project id, visit
  /// [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [analysisQuery_accessSelector_permissions] - Optional. The permissions to
  /// appear in result.
  ///
  /// [analysisQuery_accessSelector_roles] - Optional. The roles to appear in
  /// result.
  ///
  /// [analysisQuery_conditionContext_accessTime] - The hypothetical access
  /// timestamp to evaluate IAM conditions. Note that this value must not be
  /// earlier than the current time; otherwise, an INVALID_ARGUMENT error will
  /// be returned.
  ///
  /// [analysisQuery_identitySelector_identity] - Required. The identity appear
  /// in the form of principals in
  /// [IAM policy binding](https://cloud.google.com/iam/reference/rest/v1/Binding).
  /// The examples of supported forms are: "user:mike@example.com",
  /// "group:admins@example.com", "domain:google.com",
  /// "serviceAccount:my-project-id@appspot.gserviceaccount.com". Notice that
  /// wildcard characters (such as * and ?) are not supported. You must give a
  /// specific identity.
  ///
  /// [analysisQuery_options_analyzeServiceAccountImpersonation] - Optional. If
  /// true, the response will include access analysis from identities to
  /// resources via service account impersonation. This is a very expensive
  /// operation, because many derived queries will be executed. We highly
  /// recommend you use AssetService.AnalyzeIamPolicyLongrunning rpc instead.
  /// For example, if the request analyzes for which resources user A has
  /// permission P, and there's an IAM policy states user A has
  /// iam.serviceAccounts.getAccessToken permission to a service account SA, and
  /// there's another IAM policy states service account SA has permission P to a
  /// GCP folder F, then user A potentially has access to the GCP folder F. And
  /// those advanced analysis results will be included in
  /// AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Another
  /// example, if the request analyzes for who has permission P to a GCP folder
  /// F, and there's an IAM policy states user A has iam.serviceAccounts.actAs
  /// permission to a service account SA, and there's another IAM policy states
  /// service account SA has permission P to the GCP folder F, then user A
  /// potentially has access to the GCP folder F. And those advanced analysis
  /// results will be included in
  /// AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Only the
  /// following permissions are considered in this analysis: *
  /// `iam.serviceAccounts.actAs` * `iam.serviceAccounts.signBlob` *
  /// `iam.serviceAccounts.signJwt` * `iam.serviceAccounts.getAccessToken` *
  /// `iam.serviceAccounts.getOpenIdToken` *
  /// `iam.serviceAccounts.implicitDelegation` Default is false.
  ///
  /// [analysisQuery_options_expandGroups] - Optional. If true, the identities
  /// section of the result will expand any Google groups appearing in an IAM
  /// policy binding. If IamPolicyAnalysisQuery.identity_selector is specified,
  /// the identity in the result will be determined by the selector, and this
  /// flag is not allowed to set. If true, the default max expansion per group
  /// is 1000 for AssetService.AnalyzeIamPolicy\]\[\]. Default is false.
  ///
  /// [analysisQuery_options_expandResources] - Optional. If true and
  /// IamPolicyAnalysisQuery.resource_selector is not specified, the resource
  /// section of the result will expand any resource attached to an IAM policy
  /// to include resources lower in the resource hierarchy. For example, if the
  /// request analyzes for which resources user A has permission P, and the
  /// results include an IAM policy with P on a GCP folder, the results will
  /// also include resources in that folder with permission P. If true and
  /// IamPolicyAnalysisQuery.resource_selector is specified, the resource
  /// section of the result will expand the specified resource to include
  /// resources lower in the resource hierarchy. Only project or lower resources
  /// are supported. Folder and organization resource cannot be used together
  /// with this option. For example, if the request analyzes for which users
  /// have permission P on a GCP project with this option enabled, the results
  /// will include all users who have permission P on that project or any lower
  /// resource. If true, the default max expansion per resource is 1000 for
  /// AssetService.AnalyzeIamPolicy\]\[\] and 100000 for
  /// AssetService.AnalyzeIamPolicyLongrunning\]\[\]. Default is false.
  ///
  /// [analysisQuery_options_expandRoles] - Optional. If true, the access
  /// section of result will expand any roles appearing in IAM policy bindings
  /// to include their permissions. If IamPolicyAnalysisQuery.access_selector is
  /// specified, the access section of the result will be determined by the
  /// selector, and this flag is not allowed to set. Default is false.
  ///
  /// [analysisQuery_options_outputGroupEdges] - Optional. If true, the result
  /// will output the relevant membership relationships between groups and other
  /// groups, and between groups and principals. Default is false.
  ///
  /// [analysisQuery_options_outputResourceEdges] - Optional. If true, the
  /// result will output the relevant parent/child relationships between
  /// resources. Default is false.
  ///
  /// [analysisQuery_resourceSelector_fullResourceName] - Required. The
  /// [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  /// of a resource of
  /// [supported resource types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#analyzable_asset_types).
  ///
  /// [executionTimeout] - Optional. Amount of time executable has to complete.
  /// See JSON representation of
  /// [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json).
  /// If this field is set with a value less than the RPC deadline, and the
  /// execution of your query hasn't finished in the specified execution
  /// timeout, you will get a response with partial result. Otherwise, your
  /// query's execution will continue until the RPC deadline. If it's not
  /// finished until then, you will get a DEADLINE_EXCEEDED error. Default is
  /// empty.
  ///
  /// [savedAnalysisQuery] - Optional. The name of a saved query, which must be
  /// in the format of: * projects/project_number/savedQueries/saved_query_id *
  /// folders/folder_number/savedQueries/saved_query_id *
  /// organizations/organization_number/savedQueries/saved_query_id If both
  /// `analysis_query` and `saved_analysis_query` are provided, they will be
  /// merged together with the `saved_analysis_query` as base and the
  /// `analysis_query` as overrides. For more details of the merge behavior,
  /// please refer to the
  /// [MergeFrom](https://developers.google.com/protocol-buffers/docs/reference/cpp/google.protobuf.message#Message.MergeFrom.details)
  /// page. Note that you cannot override primitive fields with default value,
  /// such as 0 or empty string, etc., because we use proto3, which doesn't
  /// support field presence yet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeIamPolicyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeIamPolicyResponse> analyzeIamPolicy(
    core.String scope, {
    core.List<core.String>? analysisQuery_accessSelector_permissions,
    core.List<core.String>? analysisQuery_accessSelector_roles,
    core.String? analysisQuery_conditionContext_accessTime,
    core.String? analysisQuery_identitySelector_identity,
    core.bool? analysisQuery_options_analyzeServiceAccountImpersonation,
    core.bool? analysisQuery_options_expandGroups,
    core.bool? analysisQuery_options_expandResources,
    core.bool? analysisQuery_options_expandRoles,
    core.bool? analysisQuery_options_outputGroupEdges,
    core.bool? analysisQuery_options_outputResourceEdges,
    core.String? analysisQuery_resourceSelector_fullResourceName,
    core.String? executionTimeout,
    core.String? savedAnalysisQuery,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (analysisQuery_accessSelector_permissions != null)
        'analysisQuery.accessSelector.permissions':
            analysisQuery_accessSelector_permissions,
      if (analysisQuery_accessSelector_roles != null)
        'analysisQuery.accessSelector.roles':
            analysisQuery_accessSelector_roles,
      if (analysisQuery_conditionContext_accessTime != null)
        'analysisQuery.conditionContext.accessTime': [
          analysisQuery_conditionContext_accessTime
        ],
      if (analysisQuery_identitySelector_identity != null)
        'analysisQuery.identitySelector.identity': [
          analysisQuery_identitySelector_identity
        ],
      if (analysisQuery_options_analyzeServiceAccountImpersonation != null)
        'analysisQuery.options.analyzeServiceAccountImpersonation': [
          '${analysisQuery_options_analyzeServiceAccountImpersonation}'
        ],
      if (analysisQuery_options_expandGroups != null)
        'analysisQuery.options.expandGroups': [
          '${analysisQuery_options_expandGroups}'
        ],
      if (analysisQuery_options_expandResources != null)
        'analysisQuery.options.expandResources': [
          '${analysisQuery_options_expandResources}'
        ],
      if (analysisQuery_options_expandRoles != null)
        'analysisQuery.options.expandRoles': [
          '${analysisQuery_options_expandRoles}'
        ],
      if (analysisQuery_options_outputGroupEdges != null)
        'analysisQuery.options.outputGroupEdges': [
          '${analysisQuery_options_outputGroupEdges}'
        ],
      if (analysisQuery_options_outputResourceEdges != null)
        'analysisQuery.options.outputResourceEdges': [
          '${analysisQuery_options_outputResourceEdges}'
        ],
      if (analysisQuery_resourceSelector_fullResourceName != null)
        'analysisQuery.resourceSelector.fullResourceName': [
          analysisQuery_resourceSelector_fullResourceName
        ],
      if (executionTimeout != null) 'executionTimeout': [executionTimeout],
      if (savedAnalysisQuery != null)
        'savedAnalysisQuery': [savedAnalysisQuery],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$scope') + ':analyzeIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AnalyzeIamPolicyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Analyzes IAM policies asynchronously to answer which identities have what
  /// accesses on which resources, and writes the analysis results to a Google
  /// Cloud Storage or a BigQuery destination.
  ///
  /// For Cloud Storage destination, the output format is the JSON format that
  /// represents a AnalyzeIamPolicyResponse. This method implements the
  /// google.longrunning.Operation, which allows you to track the operation
  /// status. We recommend intervals of at least 2 seconds with exponential
  /// backoff retry to poll the operation result. The metadata contains the
  /// metadata for the long-running operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. The relative name of the root asset. Only resources
  /// and IAM policies within the scope will be analyzed. This can only be an
  /// organization number (such as "organizations/123"), a folder number (such
  /// as "folders/123"), a project ID (such as "projects/my-project-id"), or a
  /// project number (such as "projects/12345"). To know how to get organization
  /// id, visit
  /// [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id).
  /// To know how to get folder or project id, visit
  /// [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
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
  async.Future<Operation> analyzeIamPolicyLongrunning(
    AnalyzeIamPolicyLongrunningRequest request,
    core.String scope, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$scope') + ':analyzeIamPolicyLongrunning';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Analyze moving a resource to a specified destination without kicking off
  /// the actual move.
  ///
  /// The analysis is best effort depending on the user's permissions of viewing
  /// different hierarchical policies and configurations. The policies and
  /// configuration are subject to change before the actual resource migration
  /// takes place.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. Name of the resource to perform the analysis
  /// against. Only GCP Project are supported as of today. Hence, this can only
  /// be Project ID (such as "projects/my-project-id") or a Project Number (such
  /// as "projects/12345").
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [destinationParent] - Required. Name of the GCP Folder or Organization to
  /// reparent the target resource. The analysis will be performed against
  /// hypothetically moving the resource to this specified desitination parent.
  /// This can only be a Folder number (such as "folders/123") or an
  /// Organization number (such as "organizations/123").
  ///
  /// [view] - Analysis view indicating what information should be included in
  /// the analysis response. If unspecified, the default view is FULL.
  /// Possible string values are:
  /// - "ANALYSIS_VIEW_UNSPECIFIED" : The default/unset value. The API will
  /// default to the FULL view.
  /// - "FULL" : Full analysis including all level of impacts of the specified
  /// resource move.
  /// - "BASIC" : Basic analysis only including blockers which will prevent the
  /// specified resource move at runtime.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeMoveResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeMoveResponse> analyzeMove(
    core.String resource, {
    core.String? destinationParent,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (destinationParent != null) 'destinationParent': [destinationParent],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':analyzeMove';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AnalyzeMoveResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Batch gets the update history of assets that overlap a time window.
  ///
  /// For IAM_POLICY content, this API outputs history when the asset and its
  /// attached IAM POLICY both exist. This can create gaps in the output
  /// history. Otherwise, this API outputs history with asset in both non-delete
  /// or deleted status. If a specified asset does not exist, this API returns
  /// an INVALID_ARGUMENT error.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative name of the root asset. It can only be
  /// an organization number (such as "organizations/123"), a project ID (such
  /// as "projects/my-project-id")", or a project number (such as
  /// "projects/12345").
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [assetNames] - A list of the full names of the assets. See:
  /// https://cloud.google.com/asset-inventory/docs/resource-name-format
  /// Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// The request becomes a no-op if the asset name list is empty, and the max
  /// size of the asset name list is 100 in one request.
  ///
  /// [contentType] - Optional. The content type.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Unspecified content type.
  /// - "RESOURCE" : Resource metadata.
  /// - "IAM_POLICY" : The actual IAM policy set on a resource.
  /// - "ORG_POLICY" : The Cloud Organization Policy set on an asset.
  /// - "ACCESS_POLICY" : The Cloud Access context manager Policy set on an
  /// asset.
  /// - "OS_INVENTORY" : The runtime OS Inventory information.
  /// - "RELATIONSHIP" : The related resources.
  ///
  /// [readTimeWindow_endTime] - End time of the time window (inclusive). If not
  /// specified, the current timestamp is used instead.
  ///
  /// [readTimeWindow_startTime] - Start time of the time window (exclusive).
  ///
  /// [relationshipTypes] - Optional. A list of relationship types to output,
  /// for example: `INSTANCE_TO_INSTANCEGROUP`. This field should only be
  /// specified if content_type=RELATIONSHIP. * If specified: it outputs
  /// specified relationships' history on the \[asset_names\]. It returns an
  /// error if any of the \[relationship_types\] doesn't belong to the supported
  /// relationship types of the \[asset_names\] or if any of the
  /// \[asset_names\]'s types doesn't belong to the source types of the
  /// \[relationship_types\]. * Otherwise: it outputs the supported
  /// relationships' history on the \[asset_names\] or returns an error if any
  /// of the \[asset_names\]'s types has no relationship support. See
  /// [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview)
  /// for all supported asset types and relationship types.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetAssetsHistoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetAssetsHistoryResponse> batchGetAssetsHistory(
    core.String parent, {
    core.List<core.String>? assetNames,
    core.String? contentType,
    core.String? readTimeWindow_endTime,
    core.String? readTimeWindow_startTime,
    core.List<core.String>? relationshipTypes,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (assetNames != null) 'assetNames': assetNames,
      if (contentType != null) 'contentType': [contentType],
      if (readTimeWindow_endTime != null)
        'readTimeWindow.endTime': [readTimeWindow_endTime],
      if (readTimeWindow_startTime != null)
        'readTimeWindow.startTime': [readTimeWindow_startTime],
      if (relationshipTypes != null) 'relationshipTypes': relationshipTypes,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':batchGetAssetsHistory';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BatchGetAssetsHistoryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports assets with time and resource types to a given Cloud Storage
  /// location/BigQuery table.
  ///
  /// For Cloud Storage location destinations, the output format is
  /// newline-delimited JSON. Each line represents a google.cloud.asset.v1.Asset
  /// in the JSON format; for BigQuery table destinations, the output table
  /// stores the fields in asset Protobuf as columns. This API implements the
  /// google.longrunning.Operation API, which allows you to keep track of the
  /// export. We recommend intervals of at least 2 seconds with exponential
  /// retry to poll the export operation result. For regular-size resource
  /// parent, the export operation usually finishes within 5 minutes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative name of the root asset. This can only be
  /// an organization number (such as "organizations/123"), a project ID (such
  /// as "projects/my-project-id"), or a project number (such as
  /// "projects/12345"), or a folder number (such as "folders/123").
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
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
  async.Future<Operation> exportAssets(
    ExportAssetsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':exportAssets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches all IAM policies within the specified scope, such as a project,
  /// folder, or organization.
  ///
  /// The caller must be granted the `cloudasset.assets.searchAllIamPolicies`
  /// permission on the desired scope, otherwise the request will be rejected.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. A scope can be a project, a folder, or an
  /// organization. The search is limited to the IAM policies within the
  /// `scope`. The caller must be granted the
  /// \[`cloudasset.assets.searchAllIamPolicies`\](https://cloud.google.com/asset-inventory/docs/access-control#required_permissions)
  /// permission on the desired scope. The allowed values are: *
  /// projects/{PROJECT_ID} (e.g., "projects/foo-bar") *
  /// projects/{PROJECT_NUMBER} (e.g., "projects/12345678") *
  /// folders/{FOLDER_NUMBER} (e.g., "folders/1234567") *
  /// organizations/{ORGANIZATION_NUMBER} (e.g., "organizations/123456")
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [assetTypes] - Optional. A list of asset types that the IAM policies are
  /// attached to. If empty, it will search the IAM policies that are attached
  /// to all the
  /// [searchable asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types).
  /// Regular expressions are also supported. For example: *
  /// "compute.googleapis.com.*" snapshots IAM policies attached to asset type
  /// starts with "compute.googleapis.com". * ".*Instance" snapshots IAM
  /// policies attached to asset type ends with "Instance". * ".*Instance.*"
  /// snapshots IAM policies attached to asset type contains "Instance". See
  /// [RE2](https://github.com/google/re2/wiki/Syntax) for all supported regular
  /// expression syntax. If the regular expression does not match any supported
  /// asset type, an INVALID_ARGUMENT error will be returned.
  ///
  /// [orderBy] - Optional. A comma-separated list of fields specifying the
  /// sorting order of the results. The default order is ascending. Add " DESC"
  /// after the field name to indicate descending order. Redundant space
  /// characters are ignored. Example: "assetType DESC, resource". Only singular
  /// primitive fields in the response are sortable: * resource * assetType *
  /// project All the other fields such as repeated fields (e.g., `folders`) and
  /// non-primitive fields (e.g., `policy`) are not supported.
  ///
  /// [pageSize] - Optional. The page size for search result pagination. Page
  /// size is capped at 500 even if a larger value is given. If set to zero,
  /// server will pick an appropriate default. Returned results may be fewer
  /// than requested. When this happens, there could be more results as long as
  /// `next_page_token` is returned.
  ///
  /// [pageToken] - Optional. If present, retrieve the next batch of results
  /// from the preceding call to this method. `page_token` must be the value of
  /// `next_page_token` from the previous response. The values of all other
  /// method parameters must be identical to those in the previous call.
  ///
  /// [query] - Optional. The query statement. See
  /// [how to construct a query](https://cloud.google.com/asset-inventory/docs/searching-iam-policies#how_to_construct_a_query)
  /// for more information. If not specified or empty, it will search all the
  /// IAM policies within the specified `scope`. Note that the query string is
  /// compared against each Cloud IAM policy binding, including its principals,
  /// roles, and Cloud IAM conditions. The returned Cloud IAM policies will only
  /// contain the bindings that match your query. To learn more about the IAM
  /// policy structure, see the
  /// [IAM policy documentation](https://cloud.google.com/iam/help/allow-policies/structure).
  /// Examples: * `policy:amy@gmail.com` to find IAM policy bindings that
  /// specify user "amy@gmail.com". * `policy:roles/compute.admin` to find IAM
  /// policy bindings that specify the Compute Admin role. * `policy:comp*` to
  /// find IAM policy bindings that contain "comp" as a prefix of any word in
  /// the binding. * `policy.role.permissions:storage.buckets.update` to find
  /// IAM policy bindings that specify a role containing
  /// "storage.buckets.update" permission. Note that if callers don't have
  /// `iam.roles.get` access to a role's included permissions, policy bindings
  /// that specify this role will be dropped from the search results. *
  /// `policy.role.permissions:upd*` to find IAM policy bindings that specify a
  /// role containing "upd" as a prefix of any word in the role permission. Note
  /// that if callers don't have `iam.roles.get` access to a role's included
  /// permissions, policy bindings that specify this role will be dropped from
  /// the search results. * `resource:organizations/123456` to find IAM policy
  /// bindings that are set on "organizations/123456". *
  /// `resource=//cloudresourcemanager.googleapis.com/projects/myproject` to
  /// find IAM policy bindings that are set on the project named "myproject". *
  /// `Important` to find IAM policy bindings that contain "Important" as a word
  /// in any of the searchable fields (except for the included permissions). *
  /// `resource:(instance1 OR instance2) policy:amy` to find IAM policy bindings
  /// that are set on resources "instance1" or "instance2" and also specify user
  /// "amy". * `roles:roles/compute.admin` to find IAM policy bindings that
  /// specify the Compute Admin role. * `memberTypes:user` to find IAM policy
  /// bindings that contain the principal type "user".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchAllIamPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchAllIamPoliciesResponse> searchAllIamPolicies(
    core.String scope, {
    core.List<core.String>? assetTypes,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (assetTypes != null) 'assetTypes': assetTypes,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$scope') + ':searchAllIamPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchAllIamPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches all Cloud resources within the specified scope, such as a
  /// project, folder, or organization.
  ///
  /// The caller must be granted the `cloudasset.assets.searchAllResources`
  /// permission on the desired scope, otherwise the request will be rejected.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. A scope can be a project, a folder, or an
  /// organization. The search is limited to the resources within the `scope`.
  /// The caller must be granted the
  /// \[`cloudasset.assets.searchAllResources`\](https://cloud.google.com/asset-inventory/docs/access-control#required_permissions)
  /// permission on the desired scope. The allowed values are: *
  /// projects/{PROJECT_ID} (e.g., "projects/foo-bar") *
  /// projects/{PROJECT_NUMBER} (e.g., "projects/12345678") *
  /// folders/{FOLDER_NUMBER} (e.g., "folders/1234567") *
  /// organizations/{ORGANIZATION_NUMBER} (e.g., "organizations/123456")
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [assetTypes] - Optional. A list of asset types that this request searches
  /// for. If empty, it will search all the
  /// [searchable asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types).
  /// Regular expressions are also supported. For example: *
  /// "compute.googleapis.com.*" snapshots resources whose asset type starts
  /// with "compute.googleapis.com". * ".*Instance" snapshots resources whose
  /// asset type ends with "Instance". * ".*Instance.*" snapshots resources
  /// whose asset type contains "Instance". See
  /// [RE2](https://github.com/google/re2/wiki/Syntax) for all supported regular
  /// expression syntax. If the regular expression does not match any supported
  /// asset type, an INVALID_ARGUMENT error will be returned.
  ///
  /// [orderBy] - Optional. A comma-separated list of fields specifying the
  /// sorting order of the results. The default order is ascending. Add " DESC"
  /// after the field name to indicate descending order. Redundant space
  /// characters are ignored. Example: "location DESC, name". Only singular
  /// primitive fields in the response are sortable: * name * assetType *
  /// project * displayName * description * location * kmsKey * createTime *
  /// updateTime * state * parentFullResourceName * parentAssetType All the
  /// other fields such as repeated fields (e.g., `networkTags`), map fields
  /// (e.g., `labels`) and struct fields (e.g., `additionalAttributes`) are not
  /// supported.
  ///
  /// [pageSize] - Optional. The page size for search result pagination. Page
  /// size is capped at 500 even if a larger value is given. If set to zero,
  /// server will pick an appropriate default. Returned results may be fewer
  /// than requested. When this happens, there could be more results as long as
  /// `next_page_token` is returned.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. `page_token` must be the
  /// value of `next_page_token` from the previous response. The values of all
  /// other method parameters, must be identical to those in the previous call.
  ///
  /// [query] - Optional. The query statement. See
  /// [how to construct a query](https://cloud.google.com/asset-inventory/docs/searching-resources#how_to_construct_a_query)
  /// for more information. If not specified or empty, it will search all the
  /// resources within the specified `scope`. Examples: * `name:Important` to
  /// find Cloud resources whose name contains "Important" as a word. *
  /// `name=Important` to find the Cloud resource whose name is exactly
  /// "Important". * `displayName:Impor*` to find Cloud resources whose display
  /// name contains "Impor" as a prefix of any word in the field. *
  /// `location:us-west*` to find Cloud resources whose location contains both
  /// "us" and "west" as prefixes. * `labels:prod` to find Cloud resources whose
  /// labels contain "prod" as a key or value. * `labels.env:prod` to find Cloud
  /// resources that have a label "env" and its value is "prod". *
  /// `labels.env:*` to find Cloud resources that have a label "env". *
  /// `kmsKey:key` to find Cloud resources encrypted with a customer-managed
  /// encryption key whose name contains the word "key". *
  /// `relationships:instance-group-1` to find Cloud resources that have
  /// relationships with "instance-group-1" in the related resource name. *
  /// `relationships:INSTANCE_TO_INSTANCEGROUP` to find compute instances that
  /// have relationships of type "INSTANCE_TO_INSTANCEGROUP". *
  /// `relationships.INSTANCE_TO_INSTANCEGROUP:instance-group-1` to find compute
  /// instances that have relationships with "instance-group-1" in the compute
  /// instance group resource name, for relationship type
  /// "INSTANCE_TO_INSTANCEGROUP". * `state:ACTIVE` to find Cloud resources
  /// whose state contains "ACTIVE" as a word. * `NOT state:ACTIVE` to find
  /// Cloud resources whose state doesn't contain "ACTIVE" as a word. *
  /// `createTime<1609459200` to find Cloud resources that were created before
  /// "2021-01-01 00:00:00 UTC". 1609459200 is the epoch timestamp of
  /// "2021-01-01 00:00:00 UTC" in seconds. * `updateTime>1609459200` to find
  /// Cloud resources that were updated after "2021-01-01 00:00:00 UTC".
  /// 1609459200 is the epoch timestamp of "2021-01-01 00:00:00 UTC" in seconds.
  /// * `Important` to find Cloud resources that contain "Important" as a word
  /// in any of the searchable fields. * `Impor*` to find Cloud resources that
  /// contain "Impor" as a prefix of any word in any of the searchable fields. *
  /// `Important location:(us-west1 OR global)` to find Cloud resources that
  /// contain "Important" as a word in any of the searchable fields and are also
  /// located in the "us-west1" region or the "global" location.
  ///
  /// [readMask] - Optional. A comma-separated list of fields specifying which
  /// fields to be returned in ResourceSearchResult. Only '*' or combination of
  /// top level fields can be specified. Field names of both snake_case and
  /// camelCase are supported. Examples: `"*"`, `"name,location"`,
  /// `"name,versionedResources"`. The read_mask paths must be valid field paths
  /// listed but not limited to (both snake_case and camelCase are supported): *
  /// name * assetType * project * displayName * description * location *
  /// tagKeys * tagValues * tagValueIds * labels * networkTags * kmsKey *
  /// createTime * updateTime * state * additionalAttributes *
  /// versionedResources If read_mask is not specified, all fields except
  /// versionedResources will be returned. If only '*' is specified, all fields
  /// including versionedResources will be returned. Any invalid field path will
  /// trigger INVALID_ARGUMENT error.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchAllResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchAllResourcesResponse> searchAllResources(
    core.String scope, {
    core.List<core.String>? assetTypes,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (assetTypes != null) 'assetTypes': assetTypes,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$scope') + ':searchAllResources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchAllResourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Specifies roles and/or permissions to analyze, to determine both the
/// identities possessing them and the resources they control.
///
/// If multiple values are specified, results will include roles or permissions
/// matching any of them. The total number of roles and permissions should be
/// equal or less than 10.
class AccessSelector {
  /// The permissions to appear in result.
  ///
  /// Optional.
  core.List<core.String>? permissions;

  /// The roles to appear in result.
  ///
  /// Optional.
  core.List<core.String>? roles;

  AccessSelector({
    this.permissions,
    this.roles,
  });

  AccessSelector.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          roles: json_.containsKey('roles')
              ? (json_['roles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
        if (roles != null) 'roles': roles!,
      };
}

/// A request message for AssetService.AnalyzeIamPolicyLongrunning.
class AnalyzeIamPolicyLongrunningRequest {
  /// The request query.
  ///
  /// Required.
  IamPolicyAnalysisQuery? analysisQuery;

  /// Output configuration indicating where the results will be output to.
  ///
  /// Required.
  IamPolicyAnalysisOutputConfig? outputConfig;

  /// The name of a saved query, which must be in the format of: *
  /// projects/project_number/savedQueries/saved_query_id *
  /// folders/folder_number/savedQueries/saved_query_id *
  /// organizations/organization_number/savedQueries/saved_query_id If both
  /// `analysis_query` and `saved_analysis_query` are provided, they will be
  /// merged together with the `saved_analysis_query` as base and the
  /// `analysis_query` as overrides.
  ///
  /// For more details of the merge behavior, please refer to the
  /// [MergeFrom](https://developers.google.com/protocol-buffers/docs/reference/cpp/google.protobuf.message#Message.MergeFrom.details)
  /// doc. Note that you cannot override primitive fields with default value,
  /// such as 0 or empty string, etc., because we use proto3, which doesn't
  /// support field presence yet.
  ///
  /// Optional.
  core.String? savedAnalysisQuery;

  AnalyzeIamPolicyLongrunningRequest({
    this.analysisQuery,
    this.outputConfig,
    this.savedAnalysisQuery,
  });

  AnalyzeIamPolicyLongrunningRequest.fromJson(core.Map json_)
      : this(
          analysisQuery: json_.containsKey('analysisQuery')
              ? IamPolicyAnalysisQuery.fromJson(
                  json_['analysisQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          outputConfig: json_.containsKey('outputConfig')
              ? IamPolicyAnalysisOutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          savedAnalysisQuery: json_.containsKey('savedAnalysisQuery')
              ? json_['savedAnalysisQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisQuery != null) 'analysisQuery': analysisQuery!,
        if (outputConfig != null) 'outputConfig': outputConfig!,
        if (savedAnalysisQuery != null)
          'savedAnalysisQuery': savedAnalysisQuery!,
      };
}

/// A response message for AssetService.AnalyzeIamPolicy.
class AnalyzeIamPolicyResponse {
  /// Represents whether all entries in the main_analysis and
  /// service_account_impersonation_analysis have been fully explored to answer
  /// the query in the request.
  core.bool? fullyExplored;

  /// The main analysis that matches the original request.
  IamPolicyAnalysis? mainAnalysis;

  /// The service account impersonation analysis if
  /// AnalyzeIamPolicyRequest.analyze_service_account_impersonation is enabled.
  core.List<IamPolicyAnalysis>? serviceAccountImpersonationAnalysis;

  AnalyzeIamPolicyResponse({
    this.fullyExplored,
    this.mainAnalysis,
    this.serviceAccountImpersonationAnalysis,
  });

  AnalyzeIamPolicyResponse.fromJson(core.Map json_)
      : this(
          fullyExplored: json_.containsKey('fullyExplored')
              ? json_['fullyExplored'] as core.bool
              : null,
          mainAnalysis: json_.containsKey('mainAnalysis')
              ? IamPolicyAnalysis.fromJson(
                  json_['mainAnalysis'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccountImpersonationAnalysis:
              json_.containsKey('serviceAccountImpersonationAnalysis')
                  ? (json_['serviceAccountImpersonationAnalysis'] as core.List)
                      .map((value) => IamPolicyAnalysis.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullyExplored != null) 'fullyExplored': fullyExplored!,
        if (mainAnalysis != null) 'mainAnalysis': mainAnalysis!,
        if (serviceAccountImpersonationAnalysis != null)
          'serviceAccountImpersonationAnalysis':
              serviceAccountImpersonationAnalysis!,
      };
}

/// The response message for resource move analysis.
class AnalyzeMoveResponse {
  /// The list of analyses returned from performing the intended resource move
  /// analysis.
  ///
  /// The analysis is grouped by different Cloud services.
  core.List<MoveAnalysis>? moveAnalysis;

  AnalyzeMoveResponse({
    this.moveAnalysis,
  });

  AnalyzeMoveResponse.fromJson(core.Map json_)
      : this(
          moveAnalysis: json_.containsKey('moveAnalysis')
              ? (json_['moveAnalysis'] as core.List)
                  .map((value) => MoveAnalysis.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (moveAnalysis != null) 'moveAnalysis': moveAnalysis!,
      };
}

/// An asset in Google Cloud.
///
/// An asset can be any resource in the Google Cloud
/// [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
/// a resource outside the Google Cloud resource hierarchy (such as Google
/// Kubernetes Engine clusters and objects), or a policy (e.g. Cloud IAM
/// policy), or a relationship (e.g. an INSTANCE_TO_INSTANCEGROUP relationship).
/// See
/// [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
/// for more information.
class Asset {
  /// Please also refer to the
  /// [access level user guide](https://cloud.google.com/access-context-manager/docs/overview#access-levels).
  GoogleIdentityAccesscontextmanagerV1AccessLevel? accessLevel;

  /// Please also refer to the
  /// [access policy user guide](https://cloud.google.com/access-context-manager/docs/overview#access-policies).
  GoogleIdentityAccesscontextmanagerV1AccessPolicy? accessPolicy;

  /// The ancestry path of an asset in Google Cloud
  /// [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
  /// represented as a list of relative resource names.
  ///
  /// An ancestry path starts with the closest ancestor in the hierarchy and
  /// ends at root. If the asset is a project, folder, or organization, the
  /// ancestry path starts from the asset itself. Example:
  /// `["projects/123456789", "folders/5432", "organizations/1234"]`
  core.List<core.String>? ancestors;

  /// The type of the asset.
  ///
  /// Example: `compute.googleapis.com/Disk` See
  /// [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
  /// for more information.
  core.String? assetType;

  /// A representation of the Cloud IAM policy set on a Google Cloud resource.
  ///
  /// There can be a maximum of one Cloud IAM policy set on any given resource.
  /// In addition, Cloud IAM policies inherit their granted access scope from
  /// any policies set on parent resources in the resource hierarchy. Therefore,
  /// the effectively policy is the union of both the policy set on this
  /// resource and each policy set on all of the resource's ancestry resource
  /// levels in the hierarchy. See
  /// [this topic](https://cloud.google.com/iam/help/allow-policies/inheritance)
  /// for more information.
  Policy? iamPolicy;

  /// The full name of the asset.
  ///
  /// Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`
  /// See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  core.String? name;

  /// A representation of an
  /// [organization policy](https://cloud.google.com/resource-manager/docs/organization-policy/overview#organization_policy).
  ///
  /// There can be more than one organization policy with different constraints
  /// set on a given resource.
  core.List<GoogleCloudOrgpolicyV1Policy>? orgPolicy;

  /// A representation of runtime OS Inventory information.
  ///
  /// See
  /// [this topic](https://cloud.google.com/compute/docs/instances/os-inventory-management)
  /// for more information.
  Inventory? osInventory;

  /// One related asset of the current asset.
  RelatedAsset? relatedAsset;

  /// This field only presents for the purpose of backward-compatibility.
  ///
  /// The server will never generate responses with this field. The related
  /// assets of the asset of one relationship type. One asset only represents
  /// one type of relationship.
  ///
  /// Deprecated.
  RelatedAssets? relatedAssets;

  /// A representation of the resource.
  Resource? resource;

  /// Please also refer to the
  /// [service perimeter user guide](https://cloud.google.com/vpc-service-controls/docs/overview).
  GoogleIdentityAccesscontextmanagerV1ServicePerimeter? servicePerimeter;

  /// The last update timestamp of an asset.
  ///
  /// update_time is updated when create/update/delete operation is performed.
  core.String? updateTime;

  Asset({
    this.accessLevel,
    this.accessPolicy,
    this.ancestors,
    this.assetType,
    this.iamPolicy,
    this.name,
    this.orgPolicy,
    this.osInventory,
    this.relatedAsset,
    this.relatedAssets,
    this.resource,
    this.servicePerimeter,
    this.updateTime,
  });

  Asset.fromJson(core.Map json_)
      : this(
          accessLevel: json_.containsKey('accessLevel')
              ? GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(
                  json_['accessLevel'] as core.Map<core.String, core.dynamic>)
              : null,
          accessPolicy: json_.containsKey('accessPolicy')
              ? GoogleIdentityAccesscontextmanagerV1AccessPolicy.fromJson(
                  json_['accessPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          ancestors: json_.containsKey('ancestors')
              ? (json_['ancestors'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          assetType: json_.containsKey('assetType')
              ? json_['assetType'] as core.String
              : null,
          iamPolicy: json_.containsKey('iamPolicy')
              ? Policy.fromJson(
                  json_['iamPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          orgPolicy: json_.containsKey('orgPolicy')
              ? (json_['orgPolicy'] as core.List)
                  .map((value) => GoogleCloudOrgpolicyV1Policy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          osInventory: json_.containsKey('osInventory')
              ? Inventory.fromJson(
                  json_['osInventory'] as core.Map<core.String, core.dynamic>)
              : null,
          relatedAsset: json_.containsKey('relatedAsset')
              ? RelatedAsset.fromJson(
                  json_['relatedAsset'] as core.Map<core.String, core.dynamic>)
              : null,
          relatedAssets: json_.containsKey('relatedAssets')
              ? RelatedAssets.fromJson(
                  json_['relatedAssets'] as core.Map<core.String, core.dynamic>)
              : null,
          resource: json_.containsKey('resource')
              ? Resource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
          servicePerimeter: json_.containsKey('servicePerimeter')
              ? GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(
                  json_['servicePerimeter']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessLevel != null) 'accessLevel': accessLevel!,
        if (accessPolicy != null) 'accessPolicy': accessPolicy!,
        if (ancestors != null) 'ancestors': ancestors!,
        if (assetType != null) 'assetType': assetType!,
        if (iamPolicy != null) 'iamPolicy': iamPolicy!,
        if (name != null) 'name': name!,
        if (orgPolicy != null) 'orgPolicy': orgPolicy!,
        if (osInventory != null) 'osInventory': osInventory!,
        if (relatedAsset != null) 'relatedAsset': relatedAsset!,
        if (relatedAssets != null) 'relatedAssets': relatedAssets!,
        if (resource != null) 'resource': resource!,
        if (servicePerimeter != null) 'servicePerimeter': servicePerimeter!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Attached resource representation, which is defined by the corresponding
/// service provider.
///
/// It represents an attached resource's payload.
class AttachedResource {
  /// The type of this attached resource.
  ///
  /// Example: `osconfig.googleapis.com/Inventory` You can find the supported
  /// attached asset types of each resource in this table:
  /// `https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types`
  core.String? assetType;

  /// Versioned resource representations of this attached resource.
  ///
  /// This is repeated because there could be multiple versions of the attached
  /// resource representations during version migration.
  core.List<VersionedResource>? versionedResources;

  AttachedResource({
    this.assetType,
    this.versionedResources,
  });

  AttachedResource.fromJson(core.Map json_)
      : this(
          assetType: json_.containsKey('assetType')
              ? json_['assetType'] as core.String
              : null,
          versionedResources: json_.containsKey('versionedResources')
              ? (json_['versionedResources'] as core.List)
                  .map((value) => VersionedResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetType != null) 'assetType': assetType!,
        if (versionedResources != null)
          'versionedResources': versionedResources!,
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

/// Batch get assets history response.
class BatchGetAssetsHistoryResponse {
  /// A list of assets with valid time windows.
  core.List<TemporalAsset>? assets;

  BatchGetAssetsHistoryResponse({
    this.assets,
  });

  BatchGetAssetsHistoryResponse.fromJson(core.Map json_)
      : this(
          assets: json_.containsKey('assets')
              ? (json_['assets'] as core.List)
                  .map((value) => TemporalAsset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assets != null) 'assets': assets!,
      };
}

/// A response message for AssetService.BatchGetEffectiveIamPolicies.
class BatchGetEffectiveIamPoliciesResponse {
  /// The effective policies for a batch of resources.
  ///
  /// Note that the results order is the same as the order of
  /// BatchGetEffectiveIamPoliciesRequest.names. When a resource does not have
  /// any effective IAM policies, its corresponding policy_result will contain
  /// empty EffectiveIamPolicy.policies.
  core.List<EffectiveIamPolicy>? policyResults;

  BatchGetEffectiveIamPoliciesResponse({
    this.policyResults,
  });

  BatchGetEffectiveIamPoliciesResponse.fromJson(core.Map json_)
      : this(
          policyResults: json_.containsKey('policyResults')
              ? (json_['policyResults'] as core.List)
                  .map((value) => EffectiveIamPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyResults != null) 'policyResults': policyResults!,
      };
}

/// A BigQuery destination for exporting assets to.
class BigQueryDestination {
  /// The BigQuery dataset in format "projects/projectId/datasets/datasetId", to
  /// which the snapshot result should be exported.
  ///
  /// If this dataset does not exist, the export call returns an
  /// INVALID_ARGUMENT error. Setting the `contentType` for `exportAssets`
  /// determines the
  /// \[schema\](/asset-inventory/docs/exporting-to-bigquery#bigquery-schema) of
  /// the BigQuery table. Setting `separateTablesPerAssetType` to `TRUE` also
  /// influences the schema.
  ///
  /// Required.
  core.String? dataset;

  /// If the destination table already exists and this flag is `TRUE`, the table
  /// will be overwritten by the contents of assets snapshot.
  ///
  /// If the flag is `FALSE` or unset and the destination table already exists,
  /// the export call returns an INVALID_ARGUMEMT error.
  core.bool? force;

  /// \[partition_spec\] determines whether to export to partitioned table(s)
  /// and how to partition the data.
  ///
  /// If \[partition_spec\] is unset or \[partition_spec.partition_key\] is
  /// unset or `PARTITION_KEY_UNSPECIFIED`, the snapshot results will be
  /// exported to non-partitioned table(s). \[force\] will decide whether to
  /// overwrite existing table(s). If \[partition_spec\] is specified. First,
  /// the snapshot results will be written to partitioned table(s) with two
  /// additional timestamp columns, readTime and requestTime, one of which will
  /// be the partition key. Secondly, in the case when any destination table
  /// already exists, it will first try to update existing table's schema as
  /// necessary by appending additional columns. Then, if \[force\] is `TRUE`,
  /// the corresponding partition will be overwritten by the snapshot results
  /// (data in different partitions will remain intact); if \[force\] is unset
  /// or `FALSE`, it will append the data. An error will be returned if the
  /// schema update or data appension fails.
  PartitionSpec? partitionSpec;

  /// If this flag is `TRUE`, the snapshot results will be written to one or
  /// multiple tables, each of which contains results of one asset type.
  ///
  /// The \[force\] and \[partition_spec\] fields will apply to each of them.
  /// Field \[table\] will be concatenated with "_" and the asset type names
  /// (see https://cloud.google.com/asset-inventory/docs/supported-asset-types
  /// for supported asset types) to construct per-asset-type table names, in
  /// which all non-alphanumeric characters like "." and "/" will be substituted
  /// by "_". Example: if field \[table\] is "mytable" and snapshot results
  /// contain "storage.googleapis.com/Bucket" assets, the corresponding table
  /// name will be "mytable_storage_googleapis_com_Bucket". If any of these
  /// tables does not exist, a new table with the concatenated name will be
  /// created. When \[content_type\] in the ExportAssetsRequest is `RESOURCE`,
  /// the schema of each table will include RECORD-type columns mapped to the
  /// nested fields in the Asset.resource.data field of that asset type (up to
  /// the 15 nested level BigQuery supports
  /// (https://cloud.google.com/bigquery/docs/nested-repeated#limitations)). The
  /// fields in \>15 nested levels will be stored in JSON format string as a
  /// child column of its parent RECORD column. If error occurs when exporting
  /// to any table, the whole export call will return an error but the export
  /// results that already succeed will persist. Example: if exporting to
  /// table_type_A succeeds when exporting to table_type_B fails during one
  /// export call, the results in table_type_A will persist and there will not
  /// be partial results persisting in a table.
  core.bool? separateTablesPerAssetType;

  /// The BigQuery table to which the snapshot result should be written.
  ///
  /// If this table does not exist, a new table with the given name will be
  /// created.
  ///
  /// Required.
  core.String? table;

  BigQueryDestination({
    this.dataset,
    this.force,
    this.partitionSpec,
    this.separateTablesPerAssetType,
    this.table,
  });

  BigQueryDestination.fromJson(core.Map json_)
      : this(
          dataset: json_.containsKey('dataset')
              ? json_['dataset'] as core.String
              : null,
          force:
              json_.containsKey('force') ? json_['force'] as core.bool : null,
          partitionSpec: json_.containsKey('partitionSpec')
              ? PartitionSpec.fromJson(
                  json_['partitionSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          separateTablesPerAssetType:
              json_.containsKey('separateTablesPerAssetType')
                  ? json_['separateTablesPerAssetType'] as core.bool
                  : null,
          table:
              json_.containsKey('table') ? json_['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (force != null) 'force': force!,
        if (partitionSpec != null) 'partitionSpec': partitionSpec!,
        if (separateTablesPerAssetType != null)
          'separateTablesPerAssetType': separateTablesPerAssetType!,
        if (table != null) 'table': table!,
      };
}

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

/// The IAM conditions context.
class ConditionContext {
  /// The hypothetical access timestamp to evaluate IAM conditions.
  ///
  /// Note that this value must not be earlier than the current time; otherwise,
  /// an INVALID_ARGUMENT error will be returned.
  core.String? accessTime;

  ConditionContext({
    this.accessTime,
  });

  ConditionContext.fromJson(core.Map json_)
      : this(
          accessTime: json_.containsKey('accessTime')
              ? json_['accessTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessTime != null) 'accessTime': accessTime!,
      };
}

/// The Condition evaluation.
class ConditionEvaluation {
  /// The evaluation result.
  /// Possible string values are:
  /// - "EVALUATION_VALUE_UNSPECIFIED" : Reserved for future use.
  /// - "TRUE" : The evaluation result is `true`.
  /// - "FALSE" : The evaluation result is `false`.
  /// - "CONDITIONAL" : The evaluation result is `conditional` when the
  /// condition expression contains variables that are either missing input
  /// values or have not been supported by Analyzer yet.
  core.String? evaluationValue;

  ConditionEvaluation({
    this.evaluationValue,
  });

  ConditionEvaluation.fromJson(core.Map json_)
      : this(
          evaluationValue: json_.containsKey('evaluationValue')
              ? json_['evaluationValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluationValue != null) 'evaluationValue': evaluationValue!,
      };
}

/// Create asset feed request.
class CreateFeedRequest {
  /// The feed details.
  ///
  /// The field `name` must be empty and it will be generated in the format of:
  /// projects/project_number/feeds/feed_id folders/folder_number/feeds/feed_id
  /// organizations/organization_number/feeds/feed_id
  ///
  /// Required.
  Feed? feed;

  /// This is the client-assigned asset feed identifier and it needs to be
  /// unique under a specific parent project/folder/organization.
  ///
  /// Required.
  core.String? feedId;

  CreateFeedRequest({
    this.feed,
    this.feedId,
  });

  CreateFeedRequest.fromJson(core.Map json_)
      : this(
          feed: json_.containsKey('feed')
              ? Feed.fromJson(
                  json_['feed'] as core.Map<core.String, core.dynamic>)
              : null,
          feedId: json_.containsKey('feedId')
              ? json_['feedId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feed != null) 'feed': feed!,
        if (feedId != null) 'feedId': feedId!,
      };
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// The effective IAM policies on one resource.
class EffectiveIamPolicy {
  /// The
  /// [full_resource_name](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  /// for which the policies are computed.
  ///
  /// This is one of the BatchGetEffectiveIamPoliciesRequest.names the caller
  /// provides in the request.
  core.String? fullResourceName;

  /// The effective policies for the full_resource_name.
  ///
  /// These policies include the policy set on the full_resource_name and those
  /// set on its parents and ancestors up to the
  /// BatchGetEffectiveIamPoliciesRequest.scope. Note that these policies are
  /// not filtered according to the resource type of the full_resource_name.
  /// These policies are hierarchically ordered by PolicyInfo.attached_resource
  /// starting from full_resource_name itself to its parents and ancestors, such
  /// that policies\[i\]'s PolicyInfo.attached_resource is the child of
  /// policies\[i+1\]'s PolicyInfo.attached_resource, if policies\[i+1\] exists.
  core.List<PolicyInfo>? policies;

  EffectiveIamPolicy({
    this.fullResourceName,
    this.policies,
  });

  EffectiveIamPolicy.fromJson(core.Map json_)
      : this(
          fullResourceName: json_.containsKey('fullResourceName')
              ? json_['fullResourceName'] as core.String
              : null,
          policies: json_.containsKey('policies')
              ? (json_['policies'] as core.List)
                  .map((value) => PolicyInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
        if (policies != null) 'policies': policies!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Explanation about the IAM policy search result.
class Explanation {
  /// The map from roles to their included permissions that match the permission
  /// query (i.e., a query containing `policy.role.permissions:`).
  ///
  /// Example: if query `policy.role.permissions:compute.disk.get` matches a
  /// policy binding that contains owner role, the matched_permissions will be
  /// `{"roles/owner": ["compute.disk.get"]}`. The roles can also be found in
  /// the returned `policy` bindings. Note that the map is populated only for
  /// requests with permission queries.
  core.Map<core.String, Permissions>? matchedPermissions;

  Explanation({
    this.matchedPermissions,
  });

  Explanation.fromJson(core.Map json_)
      : this(
          matchedPermissions: json_.containsKey('matchedPermissions')
              ? (json_['matchedPermissions']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    Permissions.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matchedPermissions != null)
          'matchedPermissions': matchedPermissions!,
      };
}

/// Export asset request.
class ExportAssetsRequest {
  /// A list of asset types to take a snapshot for.
  ///
  /// For example: "compute.googleapis.com/Disk". Regular expressions are also
  /// supported. For example: * "compute.googleapis.com.*" snapshots resources
  /// whose asset type starts with "compute.googleapis.com". * ".*Instance"
  /// snapshots resources whose asset type ends with "Instance". *
  /// ".*Instance.*" snapshots resources whose asset type contains "Instance".
  /// See [RE2](https://github.com/google/re2/wiki/Syntax) for all supported
  /// regular expression syntax. If the regular expression does not match any
  /// supported asset type, an INVALID_ARGUMENT error will be returned. If
  /// specified, only matching assets will be returned, otherwise, it will
  /// snapshot all asset types. See
  /// [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview)
  /// for all supported asset types.
  core.List<core.String>? assetTypes;

  /// Asset content type.
  ///
  /// If not specified, no content but the asset name will be returned.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Unspecified content type.
  /// - "RESOURCE" : Resource metadata.
  /// - "IAM_POLICY" : The actual IAM policy set on a resource.
  /// - "ORG_POLICY" : The Cloud Organization Policy set on an asset.
  /// - "ACCESS_POLICY" : The Cloud Access context manager Policy set on an
  /// asset.
  /// - "OS_INVENTORY" : The runtime OS Inventory information.
  /// - "RELATIONSHIP" : The related resources.
  core.String? contentType;

  /// Output configuration indicating where the results will be output to.
  ///
  /// Required.
  OutputConfig? outputConfig;

  /// Timestamp to take an asset snapshot.
  ///
  /// This can only be set to a timestamp between the current time and the
  /// current time minus 35 days (inclusive). If not specified, the current time
  /// will be used. Due to delays in resource data collection and indexing,
  /// there is a volatile window during which running the same query may get
  /// different results.
  core.String? readTime;

  /// A list of relationship types to export, for example:
  /// `INSTANCE_TO_INSTANCEGROUP`.
  ///
  /// This field should only be specified if content_type=RELATIONSHIP. * If
  /// specified: it snapshots specified relationships. It returns an error if
  /// any of the \[relationship_types\] doesn't belong to the supported
  /// relationship types of the \[asset_types\] or if any of the \[asset_types\]
  /// doesn't belong to the source types of the \[relationship_types\]. *
  /// Otherwise: it snapshots the supported relationships for all
  /// \[asset_types\] or returns an error if any of the \[asset_types\] has no
  /// relationship support. An unspecified asset types field means all supported
  /// asset_types. See
  /// [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview)
  /// for all supported asset types and relationship types.
  core.List<core.String>? relationshipTypes;

  ExportAssetsRequest({
    this.assetTypes,
    this.contentType,
    this.outputConfig,
    this.readTime,
    this.relationshipTypes,
  });

  ExportAssetsRequest.fromJson(core.Map json_)
      : this(
          assetTypes: json_.containsKey('assetTypes')
              ? (json_['assetTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          contentType: json_.containsKey('contentType')
              ? json_['contentType'] as core.String
              : null,
          outputConfig: json_.containsKey('outputConfig')
              ? OutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          relationshipTypes: json_.containsKey('relationshipTypes')
              ? (json_['relationshipTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetTypes != null) 'assetTypes': assetTypes!,
        if (contentType != null) 'contentType': contentType!,
        if (outputConfig != null) 'outputConfig': outputConfig!,
        if (readTime != null) 'readTime': readTime!,
        if (relationshipTypes != null) 'relationshipTypes': relationshipTypes!,
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

/// An asset feed used to export asset updates to a destinations.
///
/// An asset feed filter controls what updates are exported. The asset feed must
/// be created within a project, organization, or folder. Supported destinations
/// are: Pub/Sub topics.
class Feed {
  /// A list of the full names of the assets to receive updates.
  ///
  /// You must specify either or both of asset_names and asset_types. Only asset
  /// updates matching specified asset_names or asset_types are exported to the
  /// feed. Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// For a list of the full names for supported asset types, see \[Resource
  /// name format\](/asset-inventory/docs/resource-name-format).
  core.List<core.String>? assetNames;

  /// A list of types of the assets to receive updates.
  ///
  /// You must specify either or both of asset_names and asset_types. Only asset
  /// updates matching specified asset_names or asset_types are exported to the
  /// feed. Example: `"compute.googleapis.com/Disk"` For a list of all supported
  /// asset types, see \[Supported asset
  /// types\](/asset-inventory/docs/supported-asset-types).
  core.List<core.String>? assetTypes;

  /// A condition which determines whether an asset update should be published.
  ///
  /// If specified, an asset will be returned only when the expression evaluates
  /// to true. When set, `expression` field in the `Expr` must be a valid
  /// [CEL expression](https://github.com/google/cel-spec) on a TemporalAsset
  /// with name `temporal_asset`. Example: a Feed with expression
  /// ("temporal_asset.deleted == true") will only publish Asset deletions.
  /// Other fields of `Expr` are optional. See our
  /// [user guide](https://cloud.google.com/asset-inventory/docs/monitoring-asset-changes-with-condition)
  /// for detailed instructions.
  Expr? condition;

  /// Asset content type.
  ///
  /// If not specified, no content but the asset name and type will be returned.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Unspecified content type.
  /// - "RESOURCE" : Resource metadata.
  /// - "IAM_POLICY" : The actual IAM policy set on a resource.
  /// - "ORG_POLICY" : The Cloud Organization Policy set on an asset.
  /// - "ACCESS_POLICY" : The Cloud Access context manager Policy set on an
  /// asset.
  /// - "OS_INVENTORY" : The runtime OS Inventory information.
  /// - "RELATIONSHIP" : The related resources.
  core.String? contentType;

  /// Feed output configuration defining where the asset updates are published
  /// to.
  ///
  /// Required.
  FeedOutputConfig? feedOutputConfig;

  /// The format will be
  /// projects/{project_number}/feeds/{client-assigned_feed_identifier} or
  /// folders/{folder_number}/feeds/{client-assigned_feed_identifier} or
  /// organizations/{organization_number}/feeds/{client-assigned_feed_identifier}
  /// The client-assigned feed identifier must be unique within the parent
  /// project/folder/organization.
  ///
  /// Required.
  core.String? name;

  /// A list of relationship types to output, for example:
  /// `INSTANCE_TO_INSTANCEGROUP`.
  ///
  /// This field should only be specified if content_type=RELATIONSHIP. * If
  /// specified: it outputs specified relationship updates on the
  /// \[asset_names\] or the \[asset_types\]. It returns an error if any of the
  /// \[relationship_types\] doesn't belong to the supported relationship types
  /// of the \[asset_names\] or \[asset_types\], or any of the \[asset_names\]
  /// or the \[asset_types\] doesn't belong to the source types of the
  /// \[relationship_types\]. * Otherwise: it outputs the supported
  /// relationships of the types of \[asset_names\] and \[asset_types\] or
  /// returns an error if any of the \[asset_names\] or the \[asset_types\] has
  /// no replationship support. See
  /// [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview)
  /// for all supported asset types and relationship types.
  core.List<core.String>? relationshipTypes;

  Feed({
    this.assetNames,
    this.assetTypes,
    this.condition,
    this.contentType,
    this.feedOutputConfig,
    this.name,
    this.relationshipTypes,
  });

  Feed.fromJson(core.Map json_)
      : this(
          assetNames: json_.containsKey('assetNames')
              ? (json_['assetNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          assetTypes: json_.containsKey('assetTypes')
              ? (json_['assetTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          contentType: json_.containsKey('contentType')
              ? json_['contentType'] as core.String
              : null,
          feedOutputConfig: json_.containsKey('feedOutputConfig')
              ? FeedOutputConfig.fromJson(json_['feedOutputConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          relationshipTypes: json_.containsKey('relationshipTypes')
              ? (json_['relationshipTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetNames != null) 'assetNames': assetNames!,
        if (assetTypes != null) 'assetTypes': assetTypes!,
        if (condition != null) 'condition': condition!,
        if (contentType != null) 'contentType': contentType!,
        if (feedOutputConfig != null) 'feedOutputConfig': feedOutputConfig!,
        if (name != null) 'name': name!,
        if (relationshipTypes != null) 'relationshipTypes': relationshipTypes!,
      };
}

/// Output configuration for asset feed destination.
class FeedOutputConfig {
  /// Destination on Pub/Sub.
  PubsubDestination? pubsubDestination;

  FeedOutputConfig({
    this.pubsubDestination,
  });

  FeedOutputConfig.fromJson(core.Map json_)
      : this(
          pubsubDestination: json_.containsKey('pubsubDestination')
              ? PubsubDestination.fromJson(json_['pubsubDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pubsubDestination != null) 'pubsubDestination': pubsubDestination!,
      };
}

/// A Cloud Storage location.
class GcsDestination {
  /// The uri of the Cloud Storage object.
  ///
  /// It's the same uri that is used by gsutil. Example:
  /// "gs://bucket_name/object_name". See
  /// [Viewing and Editing Object Metadata](https://cloud.google.com/storage/docs/viewing-editing-metadata)
  /// for more information. If the specified Cloud Storage object already exists
  /// and there is no
  /// [hold](https://cloud.google.com/storage/docs/object-holds), it will be
  /// overwritten with the exported result.
  core.String? uri;

  /// The uri prefix of all generated Cloud Storage objects.
  ///
  /// Example: "gs://bucket_name/object_name_prefix". Each object uri is in
  /// format: "gs://bucket_name/object_name_prefix// and only contains assets
  /// for that type. starts from 0. Example:
  /// "gs://bucket_name/object_name_prefix/compute.googleapis.com/Disk/0" is the
  /// first shard of output objects containing all compute.googleapis.com/Disk
  /// assets. An INVALID_ARGUMENT error will be returned if file with the same
  /// name "gs://bucket_name/object_name_prefix" already exists.
  core.String? uriPrefix;

  GcsDestination({
    this.uri,
    this.uriPrefix,
  });

  GcsDestination.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
          uriPrefix: json_.containsKey('uriPrefix')
              ? json_['uriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
        if (uriPrefix != null) 'uriPrefix': uriPrefix!,
      };
}

/// An IAM role or permission under analysis.
class GoogleCloudAssetV1Access {
  /// The analysis state of this access.
  IamPolicyAnalysisState? analysisState;

  /// The permission.
  core.String? permission;

  /// The role.
  core.String? role;

  GoogleCloudAssetV1Access({
    this.analysisState,
    this.permission,
    this.role,
  });

  GoogleCloudAssetV1Access.fromJson(core.Map json_)
      : this(
          analysisState: json_.containsKey('analysisState')
              ? IamPolicyAnalysisState.fromJson(
                  json_['analysisState'] as core.Map<core.String, core.dynamic>)
              : null,
          permission: json_.containsKey('permission')
              ? json_['permission'] as core.String
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisState != null) 'analysisState': analysisState!,
        if (permission != null) 'permission': permission!,
        if (role != null) 'role': role!,
      };
}

/// An access control list, derived from the above IAM policy binding, which
/// contains a set of resources and accesses.
///
/// May include one item from each set to compose an access control entry.
/// NOTICE that there could be multiple access control lists for one IAM policy
/// binding. The access control lists are created based on resource and access
/// combinations. For example, assume we have the following cases in one IAM
/// policy binding: - Permission P1 and P2 apply to resource R1 and R2; -
/// Permission P3 applies to resource R2 and R3; This will result in the
/// following access control lists: - AccessControlList 1: \[R1, R2\], \[P1,
/// P2\] - AccessControlList 2: \[R2, R3\], \[P3\]
class GoogleCloudAssetV1AccessControlList {
  /// The accesses that match one of the following conditions: - The
  /// access_selector, if it is specified in request; - Otherwise, access
  /// specifiers reachable from the policy binding's role.
  core.List<GoogleCloudAssetV1Access>? accesses;

  /// Condition evaluation for this AccessControlList, if there is a condition
  /// defined in the above IAM policy binding.
  ConditionEvaluation? conditionEvaluation;

  /// Resource edges of the graph starting from the policy attached resource to
  /// any descendant resources.
  ///
  /// The Edge.source_node contains the full resource name of a parent resource
  /// and Edge.target_node contains the full resource name of a child resource.
  /// This field is present only if the output_resource_edges option is enabled
  /// in request.
  core.List<GoogleCloudAssetV1Edge>? resourceEdges;

  /// The resources that match one of the following conditions: - The
  /// resource_selector, if it is specified in request; - Otherwise, resources
  /// reachable from the policy attached resource.
  core.List<GoogleCloudAssetV1Resource>? resources;

  GoogleCloudAssetV1AccessControlList({
    this.accesses,
    this.conditionEvaluation,
    this.resourceEdges,
    this.resources,
  });

  GoogleCloudAssetV1AccessControlList.fromJson(core.Map json_)
      : this(
          accesses: json_.containsKey('accesses')
              ? (json_['accesses'] as core.List)
                  .map((value) => GoogleCloudAssetV1Access.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          conditionEvaluation: json_.containsKey('conditionEvaluation')
              ? ConditionEvaluation.fromJson(json_['conditionEvaluation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resourceEdges: json_.containsKey('resourceEdges')
              ? (json_['resourceEdges'] as core.List)
                  .map((value) => GoogleCloudAssetV1Edge.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => GoogleCloudAssetV1Resource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accesses != null) 'accesses': accesses!,
        if (conditionEvaluation != null)
          'conditionEvaluation': conditionEvaluation!,
        if (resourceEdges != null) 'resourceEdges': resourceEdges!,
        if (resources != null) 'resources': resources!,
      };
}

/// A BigQuery destination.
class GoogleCloudAssetV1BigQueryDestination {
  /// The BigQuery dataset in format "projects/projectId/datasets/datasetId", to
  /// which the analysis results should be exported.
  ///
  /// If this dataset does not exist, the export call will return an
  /// INVALID_ARGUMENT error.
  ///
  /// Required.
  core.String? dataset;

  /// The partition key for BigQuery partitioned table.
  /// Possible string values are:
  /// - "PARTITION_KEY_UNSPECIFIED" : Unspecified partition key. Tables won't be
  /// partitioned using this option.
  /// - "REQUEST_TIME" : The time when the request is received. If specified as
  /// partition key, the result table(s) is partitoned by the RequestTime
  /// column, an additional timestamp column representing when the request was
  /// received.
  core.String? partitionKey;

  /// The prefix of the BigQuery tables to which the analysis results will be
  /// written.
  ///
  /// Tables will be created based on this table_prefix if not exist: *
  /// _analysis table will contain export operation's metadata. *
  /// _analysis_result will contain all the IamPolicyAnalysisResult. When
  /// \[partition_key\] is specified, both tables will be partitioned based on
  /// the \[partition_key\].
  ///
  /// Required.
  core.String? tablePrefix;

  /// Specifies the action that occurs if the destination table or partition
  /// already exists.
  ///
  /// The following values are supported: * WRITE_TRUNCATE: If the table or
  /// partition already exists, BigQuery overwrites the entire table or all the
  /// partitions data. * WRITE_APPEND: If the table or partition already exists,
  /// BigQuery appends the data to the table or the latest partition. *
  /// WRITE_EMPTY: If the table already exists and contains data, an error is
  /// returned. The default value is WRITE_APPEND. Each action is atomic and
  /// only occurs if BigQuery is able to complete the job successfully. Details
  /// are at
  /// https://cloud.google.com/bigquery/docs/loading-data-local#appending_to_or_overwriting_a_table_using_a_local_file.
  ///
  /// Optional.
  core.String? writeDisposition;

  GoogleCloudAssetV1BigQueryDestination({
    this.dataset,
    this.partitionKey,
    this.tablePrefix,
    this.writeDisposition,
  });

  GoogleCloudAssetV1BigQueryDestination.fromJson(core.Map json_)
      : this(
          dataset: json_.containsKey('dataset')
              ? json_['dataset'] as core.String
              : null,
          partitionKey: json_.containsKey('partitionKey')
              ? json_['partitionKey'] as core.String
              : null,
          tablePrefix: json_.containsKey('tablePrefix')
              ? json_['tablePrefix'] as core.String
              : null,
          writeDisposition: json_.containsKey('writeDisposition')
              ? json_['writeDisposition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (partitionKey != null) 'partitionKey': partitionKey!,
        if (tablePrefix != null) 'tablePrefix': tablePrefix!,
        if (writeDisposition != null) 'writeDisposition': writeDisposition!,
      };
}

/// A directional edge.
class GoogleCloudAssetV1Edge {
  /// The source node of the edge.
  ///
  /// For example, it could be a full resource name for a resource node or an
  /// email of an identity.
  core.String? sourceNode;

  /// The target node of the edge.
  ///
  /// For example, it could be a full resource name for a resource node or an
  /// email of an identity.
  core.String? targetNode;

  GoogleCloudAssetV1Edge({
    this.sourceNode,
    this.targetNode,
  });

  GoogleCloudAssetV1Edge.fromJson(core.Map json_)
      : this(
          sourceNode: json_.containsKey('sourceNode')
              ? json_['sourceNode'] as core.String
              : null,
          targetNode: json_.containsKey('targetNode')
              ? json_['targetNode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceNode != null) 'sourceNode': sourceNode!,
        if (targetNode != null) 'targetNode': targetNode!,
      };
}

/// A Cloud Storage location.
class GoogleCloudAssetV1GcsDestination {
  /// The uri of the Cloud Storage object.
  ///
  /// It's the same uri that is used by gsutil. Example:
  /// "gs://bucket_name/object_name". See
  /// [Viewing and Editing Object Metadata](https://cloud.google.com/storage/docs/viewing-editing-metadata)
  /// for more information. If the specified Cloud Storage object already exists
  /// and there is no
  /// [hold](https://cloud.google.com/storage/docs/object-holds), it will be
  /// overwritten with the analysis result.
  ///
  /// Required.
  core.String? uri;

  GoogleCloudAssetV1GcsDestination({
    this.uri,
  });

  GoogleCloudAssetV1GcsDestination.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// An identity under analysis.
class GoogleCloudAssetV1Identity {
  /// The analysis state of this identity.
  IamPolicyAnalysisState? analysisState;

  /// The identity name in any form of members appear in
  /// [IAM policy binding](https://cloud.google.com/iam/reference/rest/v1/Binding),
  /// such as: - user:foo@google.com - group:group1@google.com -
  /// serviceAccount:s1@prj1.iam.gserviceaccount.com -
  /// projectOwner:some_project_id - domain:google.com - allUsers - etc.
  core.String? name;

  GoogleCloudAssetV1Identity({
    this.analysisState,
    this.name,
  });

  GoogleCloudAssetV1Identity.fromJson(core.Map json_)
      : this(
          analysisState: json_.containsKey('analysisState')
              ? IamPolicyAnalysisState.fromJson(
                  json_['analysisState'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisState != null) 'analysisState': analysisState!,
        if (name != null) 'name': name!,
      };
}

/// The identities and group edges.
class GoogleCloudAssetV1IdentityList {
  /// Group identity edges of the graph starting from the binding's group
  /// members to any node of the identities.
  ///
  /// The Edge.source_node contains a group, such as `group:parent@google.com`.
  /// The Edge.target_node contains a member of the group, such as
  /// `group:child@google.com` or `user:foo@google.com`. This field is present
  /// only if the output_group_edges option is enabled in request.
  core.List<GoogleCloudAssetV1Edge>? groupEdges;

  /// Only the identities that match one of the following conditions will be
  /// presented: - The identity_selector, if it is specified in request; -
  /// Otherwise, identities reachable from the policy binding's members.
  core.List<GoogleCloudAssetV1Identity>? identities;

  GoogleCloudAssetV1IdentityList({
    this.groupEdges,
    this.identities,
  });

  GoogleCloudAssetV1IdentityList.fromJson(core.Map json_)
      : this(
          groupEdges: json_.containsKey('groupEdges')
              ? (json_['groupEdges'] as core.List)
                  .map((value) => GoogleCloudAssetV1Edge.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          identities: json_.containsKey('identities')
              ? (json_['identities'] as core.List)
                  .map((value) => GoogleCloudAssetV1Identity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupEdges != null) 'groupEdges': groupEdges!,
        if (identities != null) 'identities': identities!,
      };
}

/// A Google Cloud resource under analysis.
class GoogleCloudAssetV1Resource {
  /// The analysis state of this resource.
  IamPolicyAnalysisState? analysisState;

  /// The
  /// [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  core.String? fullResourceName;

  GoogleCloudAssetV1Resource({
    this.analysisState,
    this.fullResourceName,
  });

  GoogleCloudAssetV1Resource.fromJson(core.Map json_)
      : this(
          analysisState: json_.containsKey('analysisState')
              ? IamPolicyAnalysisState.fromJson(
                  json_['analysisState'] as core.Map<core.String, core.dynamic>)
              : null,
          fullResourceName: json_.containsKey('fullResourceName')
              ? json_['fullResourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisState != null) 'analysisState': analysisState!,
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
      };
}

/// Used in `policy_type` to specify how `boolean_policy` will behave at this
/// resource.
typedef GoogleCloudOrgpolicyV1BooleanPolicy = $BooleanPolicy;

/// Used in `policy_type` to specify how `list_policy` behaves at this resource.
///
/// `ListPolicy` can define specific values and subtrees of Cloud Resource
/// Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are
/// allowed or denied by setting the `allowed_values` and `denied_values`
/// fields. This is achieved by using the `under:` and optional `is:` prefixes.
/// The `under:` prefix is used to denote resource subtree values. The `is:`
/// prefix is used to denote specific values, and is required only if the value
/// contains a ":". Values prefixed with "is:" are treated the same as values
/// with no prefix. Ancestry subtrees must be in one of the following formats: -
/// "projects/", e.g. "projects/tokyo-rain-123" - "folders/", e.g.
/// "folders/1234" - "organizations/", e.g. "organizations/1234" The
/// `supports_under` field of the associated `Constraint` defines whether
/// ancestry prefixes can be used. You can set `allowed_values` and
/// `denied_values` in the same `Policy` if `all_values` is
/// `ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
/// values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values`
/// and `denied_values` must be unset.
typedef GoogleCloudOrgpolicyV1ListPolicy = $ListPolicy;

/// Defines a Cloud Organization `Policy` which is used to specify `Constraints`
/// for configurations of Cloud Platform resources.
class GoogleCloudOrgpolicyV1Policy {
  /// For boolean `Constraints`, whether to enforce the `Constraint` or not.
  GoogleCloudOrgpolicyV1BooleanPolicy? booleanPolicy;

  /// The name of the `Constraint` the `Policy` is configuring, for example,
  /// `constraints/serviceuser.services`.
  ///
  /// A \[list of available
  /// constraints\](/resource-manager/docs/organization-policy/org-policy-constraints)
  /// is available. Immutable after creation.
  core.String? constraint;

  /// An opaque tag indicating the current version of the `Policy`, used for
  /// concurrency control.
  ///
  /// When the `Policy` is returned from either a `GetPolicy` or a
  /// `ListOrgPolicy` request, this `etag` indicates the version of the current
  /// `Policy` to use when executing a read-modify-write loop. When the `Policy`
  /// is returned from a `GetEffectivePolicy` request, the `etag` will be unset.
  /// When the `Policy` is used in a `SetOrgPolicy` method, use the `etag` value
  /// that was returned from a `GetOrgPolicy` request as part of a
  /// read-modify-write loop for concurrency control. Not setting the `etag`in a
  /// `SetOrgPolicy` request will result in an unconditional write of the
  /// `Policy`.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// List of values either allowed or disallowed.
  GoogleCloudOrgpolicyV1ListPolicy? listPolicy;

  /// Restores the default behavior of the constraint; independent of
  /// `Constraint` type.
  GoogleCloudOrgpolicyV1RestoreDefault? restoreDefault;

  /// The time stamp the `Policy` was previously updated.
  ///
  /// This is set by the server, not specified by the caller, and represents the
  /// last time a call to `SetOrgPolicy` was made for that `Policy`. Any value
  /// set by the client will be ignored.
  core.String? updateTime;

  /// Version of the `Policy`.
  ///
  /// Default version is 0;
  core.int? version;

  GoogleCloudOrgpolicyV1Policy({
    this.booleanPolicy,
    this.constraint,
    this.etag,
    this.listPolicy,
    this.restoreDefault,
    this.updateTime,
    this.version,
  });

  GoogleCloudOrgpolicyV1Policy.fromJson(core.Map json_)
      : this(
          booleanPolicy: json_.containsKey('booleanPolicy')
              ? GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(
                  json_['booleanPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          constraint: json_.containsKey('constraint')
              ? json_['constraint'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          listPolicy: json_.containsKey('listPolicy')
              ? GoogleCloudOrgpolicyV1ListPolicy.fromJson(
                  json_['listPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          restoreDefault: json_.containsKey('restoreDefault')
              ? GoogleCloudOrgpolicyV1RestoreDefault.fromJson(
                  json_['restoreDefault']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanPolicy != null) 'booleanPolicy': booleanPolicy!,
        if (constraint != null) 'constraint': constraint!,
        if (etag != null) 'etag': etag!,
        if (listPolicy != null) 'listPolicy': listPolicy!,
        if (restoreDefault != null) 'restoreDefault': restoreDefault!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (version != null) 'version': version!,
      };
}

/// Ignores policies set above this resource and restores the
/// `constraint_default` enforcement behavior of the specific `Constraint` at
/// this resource.
///
/// Suppose that `constraint_default` is set to `ALLOW` for the `Constraint`
/// `constraints/serviceuser.services`. Suppose that organization foo.com sets a
/// `Policy` at their Organization resource node that restricts the allowed
/// service activations to deny all service activations. They could then set a
/// `Policy` with the `policy_type` `restore_default` on several experimental
/// projects, restoring the `constraint_default` enforcement of the `Constraint`
/// for only those projects, allowing those projects to have all services
/// activated.
typedef GoogleCloudOrgpolicyV1RestoreDefault = $Empty;

/// An `AccessLevel` is a label that can be applied to requests to Google Cloud
/// services, along with a list of requirements necessary for the label to be
/// applied.
class GoogleIdentityAccesscontextmanagerV1AccessLevel {
  /// A `BasicLevel` composed of `Conditions`.
  GoogleIdentityAccesscontextmanagerV1BasicLevel? basic;

  /// A `CustomLevel` written in the Common Expression Language.
  GoogleIdentityAccesscontextmanagerV1CustomLevel? custom;

  /// Description of the `AccessLevel` and its use.
  ///
  /// Does not affect behavior.
  core.String? description;

  /// Resource name for the Access Level.
  ///
  /// The `short_name` component must begin with a letter and only include
  /// alphanumeric and '_'. Format:
  /// `accessPolicies/{access_policy}/accessLevels/{access_level}`. The maximum
  /// length of the `access_level` component is 50 characters.
  ///
  /// Required.
  core.String? name;

  /// Human readable title.
  ///
  /// Must be unique within the Policy.
  core.String? title;

  GoogleIdentityAccesscontextmanagerV1AccessLevel({
    this.basic,
    this.custom,
    this.description,
    this.name,
    this.title,
  });

  GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(core.Map json_)
      : this(
          basic: json_.containsKey('basic')
              ? GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(
                  json_['basic'] as core.Map<core.String, core.dynamic>)
              : null,
          custom: json_.containsKey('custom')
              ? GoogleIdentityAccesscontextmanagerV1CustomLevel.fromJson(
                  json_['custom'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basic != null) 'basic': basic!,
        if (custom != null) 'custom': custom!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (title != null) 'title': title!,
      };
}

/// `AccessPolicy` is a container for `AccessLevels` (which define the necessary
/// attributes to use Google Cloud services) and `ServicePerimeters` (which
/// define regions of services able to freely pass data within a perimeter).
///
/// An access policy is globally visible within an organization, and the
/// restrictions it specifies apply to all projects within an organization.
typedef GoogleIdentityAccesscontextmanagerV1AccessPolicy = $AccessPolicy;

/// Identification for an API Operation.
class GoogleIdentityAccesscontextmanagerV1ApiOperation {
  /// API methods or permissions to allow.
  ///
  /// Method or permission must belong to the service specified by
  /// `service_name` field. A single MethodSelector entry with `*` specified for
  /// the `method` field will allow all methods AND permissions for the service
  /// specified in `service_name`.
  core.List<GoogleIdentityAccesscontextmanagerV1MethodSelector>?
      methodSelectors;

  /// The name of the API whose methods or permissions the IngressPolicy or
  /// EgressPolicy want to allow.
  ///
  /// A single ApiOperation with `service_name` field set to `*` will allow all
  /// methods AND permissions for all services.
  core.String? serviceName;

  GoogleIdentityAccesscontextmanagerV1ApiOperation({
    this.methodSelectors,
    this.serviceName,
  });

  GoogleIdentityAccesscontextmanagerV1ApiOperation.fromJson(core.Map json_)
      : this(
          methodSelectors: json_.containsKey('methodSelectors')
              ? (json_['methodSelectors'] as core.List)
                  .map((value) =>
                      GoogleIdentityAccesscontextmanagerV1MethodSelector
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceName: json_.containsKey('serviceName')
              ? json_['serviceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (methodSelectors != null) 'methodSelectors': methodSelectors!,
        if (serviceName != null) 'serviceName': serviceName!,
      };
}

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class GoogleIdentityAccesscontextmanagerV1BasicLevel {
  /// How the `conditions` list should be combined to determine if a request is
  /// granted this `AccessLevel`.
  ///
  /// If AND is used, each `Condition` in `conditions` must be satisfied for the
  /// `AccessLevel` to be applied. If OR is used, at least one `Condition` in
  /// `conditions` must be satisfied for the `AccessLevel` to be applied.
  /// Default behavior is AND.
  /// Possible string values are:
  /// - "AND" : All `Conditions` must be true for the `BasicLevel` to be true.
  /// - "OR" : If at least one `Condition` is true, then the `BasicLevel` is
  /// true.
  core.String? combiningFunction;

  /// A list of requirements for the `AccessLevel` to be granted.
  ///
  /// Required.
  core.List<GoogleIdentityAccesscontextmanagerV1Condition>? conditions;

  GoogleIdentityAccesscontextmanagerV1BasicLevel({
    this.combiningFunction,
    this.conditions,
  });

  GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(core.Map json_)
      : this(
          combiningFunction: json_.containsKey('combiningFunction')
              ? json_['combiningFunction'] as core.String
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) =>
                      GoogleIdentityAccesscontextmanagerV1Condition.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (combiningFunction != null) 'combiningFunction': combiningFunction!,
        if (conditions != null) 'conditions': conditions!,
      };
}

/// A condition necessary for an `AccessLevel` to be granted.
///
/// The Condition is an AND over its fields. So a Condition is true if: 1) the
/// request IP is from one of the listed subnetworks AND 2) the originating
/// device complies with the listed device policy AND 3) all listed access
/// levels are granted AND 4) the request was sent at a time allowed by the
/// DateTimeRestriction.
class GoogleIdentityAccesscontextmanagerV1Condition {
  /// Device specific restrictions, all restrictions must hold for the Condition
  /// to be true.
  ///
  /// If not specified, all devices are allowed.
  GoogleIdentityAccesscontextmanagerV1DevicePolicy? devicePolicy;

  /// CIDR block IP subnetwork specification.
  ///
  /// May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified
  /// IP address portion must be properly truncated (i.e. all the host bits must
  /// be zero) or the input is considered malformed. For example, "192.0.2.0/24"
  /// is accepted but "192.0.2.1/24" is not. Similarly, for IPv6,
  /// "2001:db8::/32" is accepted whereas "2001:db8::1/32" is not. The
  /// originating IP of a request must be in one of the listed subnets in order
  /// for this Condition to be true. If empty, all IP addresses are allowed.
  core.List<core.String>? ipSubnetworks;

  /// The request must be made by one of the provided user or service accounts.
  ///
  /// Groups are not supported. Syntax: `user:{emailid}`
  /// `serviceAccount:{emailid}` If not specified, a request may come from any
  /// user.
  core.List<core.String>? members;

  /// Whether to negate the Condition.
  ///
  /// If true, the Condition becomes a NAND over its non-empty fields, each
  /// field must be false for the Condition overall to be satisfied. Defaults to
  /// false.
  core.bool? negate;

  /// The request must originate from one of the provided countries/regions.
  ///
  /// Must be valid ISO 3166-1 alpha-2 codes.
  core.List<core.String>? regions;

  /// A list of other access levels defined in the same `Policy`, referenced by
  /// resource name.
  ///
  /// Referencing an `AccessLevel` which does not exist is an error. All access
  /// levels listed must be granted for the Condition to be true. Example:
  /// "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
  core.List<core.String>? requiredAccessLevels;

  GoogleIdentityAccesscontextmanagerV1Condition({
    this.devicePolicy,
    this.ipSubnetworks,
    this.members,
    this.negate,
    this.regions,
    this.requiredAccessLevels,
  });

  GoogleIdentityAccesscontextmanagerV1Condition.fromJson(core.Map json_)
      : this(
          devicePolicy: json_.containsKey('devicePolicy')
              ? GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(
                  json_['devicePolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          ipSubnetworks: json_.containsKey('ipSubnetworks')
              ? (json_['ipSubnetworks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          negate:
              json_.containsKey('negate') ? json_['negate'] as core.bool : null,
          regions: json_.containsKey('regions')
              ? (json_['regions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          requiredAccessLevels: json_.containsKey('requiredAccessLevels')
              ? (json_['requiredAccessLevels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devicePolicy != null) 'devicePolicy': devicePolicy!,
        if (ipSubnetworks != null) 'ipSubnetworks': ipSubnetworks!,
        if (members != null) 'members': members!,
        if (negate != null) 'negate': negate!,
        if (regions != null) 'regions': regions!,
        if (requiredAccessLevels != null)
          'requiredAccessLevels': requiredAccessLevels!,
      };
}

/// `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language
/// to represent the necessary conditions for the level to apply to a request.
///
/// See CEL spec at: https://github.com/google/cel-spec
class GoogleIdentityAccesscontextmanagerV1CustomLevel {
  /// A Cloud CEL expression evaluating to a boolean.
  ///
  /// Required.
  Expr? expr;

  GoogleIdentityAccesscontextmanagerV1CustomLevel({
    this.expr,
  });

  GoogleIdentityAccesscontextmanagerV1CustomLevel.fromJson(core.Map json_)
      : this(
          expr: json_.containsKey('expr')
              ? Expr.fromJson(
                  json_['expr'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expr != null) 'expr': expr!,
      };
}

/// `DevicePolicy` specifies device specific restrictions necessary to acquire a
/// given access level.
///
/// A `DevicePolicy` specifies requirements for requests from devices to be
/// granted access levels, it does not do any enforcement on the device.
/// `DevicePolicy` acts as an AND over all specified fields, and each repeated
/// field is an OR over its elements. Any unset fields are ignored. For example,
/// if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX,
/// encryption_status: ENCRYPTED}, then the DevicePolicy will be true for
/// requests originating from encrypted Linux desktops and encrypted Windows
/// desktops.
class GoogleIdentityAccesscontextmanagerV1DevicePolicy {
  /// Allowed device management levels, an empty list allows all management
  /// levels.
  core.List<core.String>? allowedDeviceManagementLevels;

  /// Allowed encryptions statuses, an empty list allows all statuses.
  core.List<core.String>? allowedEncryptionStatuses;

  /// Allowed OS versions, an empty list allows all types and all versions.
  core.List<GoogleIdentityAccesscontextmanagerV1OsConstraint>? osConstraints;

  /// Whether the device needs to be approved by the customer admin.
  core.bool? requireAdminApproval;

  /// Whether the device needs to be corp owned.
  core.bool? requireCorpOwned;

  /// Whether or not screenlock is required for the DevicePolicy to be true.
  ///
  /// Defaults to `false`.
  core.bool? requireScreenlock;

  GoogleIdentityAccesscontextmanagerV1DevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.osConstraints,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenlock,
  });

  GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(core.Map json_)
      : this(
          allowedDeviceManagementLevels:
              json_.containsKey('allowedDeviceManagementLevels')
                  ? (json_['allowedDeviceManagementLevels'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          allowedEncryptionStatuses:
              json_.containsKey('allowedEncryptionStatuses')
                  ? (json_['allowedEncryptionStatuses'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          osConstraints: json_.containsKey('osConstraints')
              ? (json_['osConstraints'] as core.List)
                  .map((value) =>
                      GoogleIdentityAccesscontextmanagerV1OsConstraint.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requireAdminApproval: json_.containsKey('requireAdminApproval')
              ? json_['requireAdminApproval'] as core.bool
              : null,
          requireCorpOwned: json_.containsKey('requireCorpOwned')
              ? json_['requireCorpOwned'] as core.bool
              : null,
          requireScreenlock: json_.containsKey('requireScreenlock')
              ? json_['requireScreenlock'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedDeviceManagementLevels != null)
          'allowedDeviceManagementLevels': allowedDeviceManagementLevels!,
        if (allowedEncryptionStatuses != null)
          'allowedEncryptionStatuses': allowedEncryptionStatuses!,
        if (osConstraints != null) 'osConstraints': osConstraints!,
        if (requireAdminApproval != null)
          'requireAdminApproval': requireAdminApproval!,
        if (requireCorpOwned != null) 'requireCorpOwned': requireCorpOwned!,
        if (requireScreenlock != null) 'requireScreenlock': requireScreenlock!,
      };
}

/// Defines the conditions under which an EgressPolicy matches a request.
///
/// Conditions based on information about the source of the request. Note that
/// if the destination of the request is also protected by a ServicePerimeter,
/// then that ServicePerimeter must have an IngressPolicy which allows access in
/// order for this request to succeed.
typedef GoogleIdentityAccesscontextmanagerV1EgressFrom = $EgressFrom;

/// Policy for egress from perimeter.
///
/// EgressPolicies match requests based on `egress_from` and `egress_to`
/// stanzas. For an EgressPolicy to match, both `egress_from` and `egress_to`
/// stanzas must be matched. If an EgressPolicy matches a request, the request
/// is allowed to span the ServicePerimeter boundary. For example, an
/// EgressPolicy can be used to allow VMs on networks within the
/// ServicePerimeter to access a defined set of projects outside the perimeter
/// in certain contexts (e.g. to read data from a Cloud Storage bucket or query
/// against a BigQuery dataset). EgressPolicies are concerned with the
/// *resources* that a request relates as well as the API services and API
/// actions being used. They do not related to the direction of data movement.
/// More detailed documentation for this concept can be found in the
/// descriptions of EgressFrom and EgressTo.
class GoogleIdentityAccesscontextmanagerV1EgressPolicy {
  /// Defines conditions on the source of a request causing this EgressPolicy to
  /// apply.
  GoogleIdentityAccesscontextmanagerV1EgressFrom? egressFrom;

  /// Defines the conditions on the ApiOperation and destination resources that
  /// cause this EgressPolicy to apply.
  GoogleIdentityAccesscontextmanagerV1EgressTo? egressTo;

  GoogleIdentityAccesscontextmanagerV1EgressPolicy({
    this.egressFrom,
    this.egressTo,
  });

  GoogleIdentityAccesscontextmanagerV1EgressPolicy.fromJson(core.Map json_)
      : this(
          egressFrom: json_.containsKey('egressFrom')
              ? GoogleIdentityAccesscontextmanagerV1EgressFrom.fromJson(
                  json_['egressFrom'] as core.Map<core.String, core.dynamic>)
              : null,
          egressTo: json_.containsKey('egressTo')
              ? GoogleIdentityAccesscontextmanagerV1EgressTo.fromJson(
                  json_['egressTo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (egressFrom != null) 'egressFrom': egressFrom!,
        if (egressTo != null) 'egressTo': egressTo!,
      };
}

/// Defines the conditions under which an EgressPolicy matches a request.
///
/// Conditions are based on information about the ApiOperation intended to be
/// performed on the `resources` specified. Note that if the destination of the
/// request is also protected by a ServicePerimeter, then that ServicePerimeter
/// must have an IngressPolicy which allows access in order for this request to
/// succeed. The request must match `operations` AND `resources` fields in order
/// to be allowed egress out of the perimeter.
class GoogleIdentityAccesscontextmanagerV1EgressTo {
  /// A list of external resources that are allowed to be accessed.
  ///
  /// Only AWS and Azure resources are supported. For Amazon S3, the supported
  /// format is s3://BUCKET_NAME. For Azure Storage, the supported format is
  /// azure://myaccount.blob.core.windows.net/CONTAINER_NAME. A request matches
  /// if it contains an external resource in this list (Example:
  /// s3://bucket/path). Currently '*' is not allowed.
  core.List<core.String>? externalResources;

  /// A list of ApiOperations allowed to be performed by the sources specified
  /// in the corresponding EgressFrom.
  ///
  /// A request matches if it uses an operation/service in this list.
  core.List<GoogleIdentityAccesscontextmanagerV1ApiOperation>? operations;

  /// A list of resources, currently only projects in the form `projects/`, that
  /// are allowed to be accessed by sources defined in the corresponding
  /// EgressFrom.
  ///
  /// A request matches if it contains a resource in this list. If `*` is
  /// specified for `resources`, then this EgressTo rule will authorize access
  /// to all resources outside the perimeter.
  core.List<core.String>? resources;

  GoogleIdentityAccesscontextmanagerV1EgressTo({
    this.externalResources,
    this.operations,
    this.resources,
  });

  GoogleIdentityAccesscontextmanagerV1EgressTo.fromJson(core.Map json_)
      : this(
          externalResources: json_.containsKey('externalResources')
              ? (json_['externalResources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) =>
                      GoogleIdentityAccesscontextmanagerV1ApiOperation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externalResources != null) 'externalResources': externalResources!,
        if (operations != null) 'operations': operations!,
        if (resources != null) 'resources': resources!,
      };
}

/// Defines the conditions under which an IngressPolicy matches a request.
///
/// Conditions are based on information about the source of the request. The
/// request must satisfy what is defined in `sources` AND identity related
/// fields in order to match.
class GoogleIdentityAccesscontextmanagerV1IngressFrom {
  /// A list of identities that are allowed access through this ingress policy.
  ///
  /// Should be in the format of email address. The email address should
  /// represent individual user or service account only.
  core.List<core.String>? identities;

  /// Specifies the type of identities that are allowed access from outside the
  /// perimeter.
  ///
  /// If left unspecified, then members of `identities` field will be allowed
  /// access.
  /// Possible string values are:
  /// - "IDENTITY_TYPE_UNSPECIFIED" : No blanket identity group specified.
  /// - "ANY_IDENTITY" : Authorize access from all identities outside the
  /// perimeter.
  /// - "ANY_USER_ACCOUNT" : Authorize access from all human users outside the
  /// perimeter.
  /// - "ANY_SERVICE_ACCOUNT" : Authorize access from all service accounts
  /// outside the perimeter.
  core.String? identityType;

  /// Sources that this IngressPolicy authorizes access from.
  core.List<GoogleIdentityAccesscontextmanagerV1IngressSource>? sources;

  GoogleIdentityAccesscontextmanagerV1IngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  GoogleIdentityAccesscontextmanagerV1IngressFrom.fromJson(core.Map json_)
      : this(
          identities: json_.containsKey('identities')
              ? (json_['identities'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          identityType: json_.containsKey('identityType')
              ? json_['identityType'] as core.String
              : null,
          sources: json_.containsKey('sources')
              ? (json_['sources'] as core.List)
                  .map((value) =>
                      GoogleIdentityAccesscontextmanagerV1IngressSource
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identities != null) 'identities': identities!,
        if (identityType != null) 'identityType': identityType!,
        if (sources != null) 'sources': sources!,
      };
}

/// Policy for ingress into ServicePerimeter.
///
/// IngressPolicies match requests based on `ingress_from` and `ingress_to`
/// stanzas. For an ingress policy to match, both the `ingress_from` and
/// `ingress_to` stanzas must be matched. If an IngressPolicy matches a request,
/// the request is allowed through the perimeter boundary from outside the
/// perimeter. For example, access from the internet can be allowed either based
/// on an AccessLevel or, for traffic hosted on Google Cloud, the project of the
/// source network. For access from private networks, using the project of the
/// hosting network is required. Individual ingress policies can be limited by
/// restricting which services and/or actions they match using the `ingress_to`
/// field.
class GoogleIdentityAccesscontextmanagerV1IngressPolicy {
  /// Defines the conditions on the source of a request causing this
  /// IngressPolicy to apply.
  GoogleIdentityAccesscontextmanagerV1IngressFrom? ingressFrom;

  /// Defines the conditions on the ApiOperation and request destination that
  /// cause this IngressPolicy to apply.
  GoogleIdentityAccesscontextmanagerV1IngressTo? ingressTo;

  GoogleIdentityAccesscontextmanagerV1IngressPolicy({
    this.ingressFrom,
    this.ingressTo,
  });

  GoogleIdentityAccesscontextmanagerV1IngressPolicy.fromJson(core.Map json_)
      : this(
          ingressFrom: json_.containsKey('ingressFrom')
              ? GoogleIdentityAccesscontextmanagerV1IngressFrom.fromJson(
                  json_['ingressFrom'] as core.Map<core.String, core.dynamic>)
              : null,
          ingressTo: json_.containsKey('ingressTo')
              ? GoogleIdentityAccesscontextmanagerV1IngressTo.fromJson(
                  json_['ingressTo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ingressFrom != null) 'ingressFrom': ingressFrom!,
        if (ingressTo != null) 'ingressTo': ingressTo!,
      };
}

/// The source that IngressPolicy authorizes access from.
typedef GoogleIdentityAccesscontextmanagerV1IngressSource = $IngressSource;

/// Defines the conditions under which an IngressPolicy matches a request.
///
/// Conditions are based on information about the ApiOperation intended to be
/// performed on the target resource of the request. The request must satisfy
/// what is defined in `operations` AND `resources` in order to match.
class GoogleIdentityAccesscontextmanagerV1IngressTo {
  /// A list of ApiOperations allowed to be performed by the sources specified
  /// in corresponding IngressFrom in this ServicePerimeter.
  core.List<GoogleIdentityAccesscontextmanagerV1ApiOperation>? operations;

  /// A list of resources, currently only projects in the form `projects/`,
  /// protected by this ServicePerimeter that are allowed to be accessed by
  /// sources defined in the corresponding IngressFrom.
  ///
  /// If a single `*` is specified, then access to all resources inside the
  /// perimeter are allowed.
  core.List<core.String>? resources;

  GoogleIdentityAccesscontextmanagerV1IngressTo({
    this.operations,
    this.resources,
  });

  GoogleIdentityAccesscontextmanagerV1IngressTo.fromJson(core.Map json_)
      : this(
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) =>
                      GoogleIdentityAccesscontextmanagerV1ApiOperation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operations != null) 'operations': operations!,
        if (resources != null) 'resources': resources!,
      };
}

/// An allowed method or permission of a service specified in ApiOperation.
typedef GoogleIdentityAccesscontextmanagerV1MethodSelector = $MethodSelector;

/// A restriction on the OS type and version of devices making requests.
typedef GoogleIdentityAccesscontextmanagerV1OsConstraint = $OsConstraint;

/// `ServicePerimeter` describes a set of Google Cloud resources which can
/// freely import and export data amongst themselves, but not export outside of
/// the `ServicePerimeter`.
///
/// If a request with a source within this `ServicePerimeter` has a target
/// outside of the `ServicePerimeter`, the request will be blocked. Otherwise
/// the request is allowed. There are two types of Service Perimeter - Regular
/// and Bridge. Regular Service Perimeters cannot overlap, a single Google Cloud
/// project can only belong to a single regular Service Perimeter. Service
/// Perimeter Bridges can contain only Google Cloud projects as members, a
/// single Google Cloud project may belong to multiple Service Perimeter
/// Bridges.
class GoogleIdentityAccesscontextmanagerV1ServicePerimeter {
  /// Description of the `ServicePerimeter` and its use.
  ///
  /// Does not affect behavior.
  core.String? description;

  /// Resource name for the ServicePerimeter.
  ///
  /// The `short_name` component must begin with a letter and only include
  /// alphanumeric and '_'. Format:
  /// `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`
  ///
  /// Required.
  core.String? name;

  /// Perimeter type indicator.
  ///
  /// A single project is allowed to be a member of single regular perimeter,
  /// but multiple service perimeter bridges. A project cannot be a included in
  /// a perimeter bridge without being included in regular perimeter. For
  /// perimeter bridges, the restricted service list as well as access level
  /// lists must be empty.
  /// Possible string values are:
  /// - "PERIMETER_TYPE_REGULAR" : Regular Perimeter.
  /// - "PERIMETER_TYPE_BRIDGE" : Perimeter Bridge.
  core.String? perimeterType;

  /// Proposed (or dry run) ServicePerimeter configuration.
  ///
  /// This configuration allows to specify and test ServicePerimeter
  /// configuration without enforcing actual access restrictions. Only allowed
  /// to be set when the "use_explicit_dry_run_spec" flag is set.
  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig? spec;

  /// Current ServicePerimeter configuration.
  ///
  /// Specifies sets of resources, restricted services and access levels that
  /// determine perimeter content and boundaries.
  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig? status;

  /// Human readable title.
  ///
  /// Must be unique within the Policy.
  core.String? title;

  /// Use explicit dry run spec flag.
  ///
  /// Ordinarily, a dry-run spec implicitly exists for all Service Perimeters,
  /// and that spec is identical to the status for those Service Perimeters.
  /// When this flag is set, it inhibits the generation of the implicit spec,
  /// thereby allowing the user to explicitly provide a configuration ("spec")
  /// to use in a dry-run version of the Service Perimeter. This allows the user
  /// to test changes to the enforced config ("status") without actually
  /// enforcing them. This testing is done through analyzing the differences
  /// between currently enforced and suggested restrictions.
  /// use_explicit_dry_run_spec must bet set to True if any of the fields in the
  /// spec are set to non-default values.
  core.bool? useExplicitDryRunSpec;

  GoogleIdentityAccesscontextmanagerV1ServicePerimeter({
    this.description,
    this.name,
    this.perimeterType,
    this.spec,
    this.status,
    this.title,
    this.useExplicitDryRunSpec,
  });

  GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          perimeterType: json_.containsKey('perimeterType')
              ? json_['perimeterType'] as core.String
              : null,
          spec: json_.containsKey('spec')
              ? GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
                  .fromJson(
                      json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
                  .fromJson(
                      json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          useExplicitDryRunSpec: json_.containsKey('useExplicitDryRunSpec')
              ? json_['useExplicitDryRunSpec'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (perimeterType != null) 'perimeterType': perimeterType!,
        if (spec != null) 'spec': spec!,
        if (status != null) 'status': status!,
        if (title != null) 'title': title!,
        if (useExplicitDryRunSpec != null)
          'useExplicitDryRunSpec': useExplicitDryRunSpec!,
      };
}

/// `ServicePerimeterConfig` specifies a set of Google Cloud resources that
/// describe specific Service Perimeter configuration.
class GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig {
  /// A list of `AccessLevel` resource names that allow resources within the
  /// `ServicePerimeter` to be accessed from the internet.
  ///
  /// `AccessLevels` listed must be in the same policy as this
  /// `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax
  /// error. If no `AccessLevel` names are listed, resources within the
  /// perimeter can only be accessed via Google Cloud calls with request origins
  /// within the perimeter. Example:
  /// `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter
  /// Bridge, must be empty.
  core.List<core.String>? accessLevels;

  /// List of EgressPolicies to apply to the perimeter.
  ///
  /// A perimeter may have multiple EgressPolicies, each of which is evaluated
  /// separately. Access is granted if any EgressPolicy grants it. Must be empty
  /// for a perimeter bridge.
  core.List<GoogleIdentityAccesscontextmanagerV1EgressPolicy>? egressPolicies;

  /// List of IngressPolicies to apply to the perimeter.
  ///
  /// A perimeter may have multiple IngressPolicies, each of which is evaluated
  /// separately. Access is granted if any Ingress Policy grants it. Must be
  /// empty for a perimeter bridge.
  core.List<GoogleIdentityAccesscontextmanagerV1IngressPolicy>? ingressPolicies;

  /// A list of Google Cloud resources that are inside of the service perimeter.
  ///
  /// Currently only projects are allowed. Format: `projects/{project_number}`
  core.List<core.String>? resources;

  /// Google Cloud services that are subject to the Service Perimeter
  /// restrictions.
  ///
  /// For example, if `storage.googleapis.com` is specified, access to the
  /// storage buckets inside the perimeter must meet the perimeter's access
  /// restrictions.
  core.List<core.String>? restrictedServices;

  /// Configuration for APIs allowed within Perimeter.
  GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices?
      vpcAccessibleServices;

  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig({
    this.accessLevels,
    this.egressPolicies,
    this.ingressPolicies,
    this.resources,
    this.restrictedServices,
    this.vpcAccessibleServices,
  });

  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.fromJson(
      core.Map json_)
      : this(
          accessLevels: json_.containsKey('accessLevels')
              ? (json_['accessLevels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          egressPolicies: json_.containsKey('egressPolicies')
              ? (json_['egressPolicies'] as core.List)
                  .map((value) =>
                      GoogleIdentityAccesscontextmanagerV1EgressPolicy.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ingressPolicies: json_.containsKey('ingressPolicies')
              ? (json_['ingressPolicies'] as core.List)
                  .map((value) =>
                      GoogleIdentityAccesscontextmanagerV1IngressPolicy
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          restrictedServices: json_.containsKey('restrictedServices')
              ? (json_['restrictedServices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          vpcAccessibleServices: json_.containsKey('vpcAccessibleServices')
              ? GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
                  .fromJson(json_['vpcAccessibleServices']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessLevels != null) 'accessLevels': accessLevels!,
        if (egressPolicies != null) 'egressPolicies': egressPolicies!,
        if (ingressPolicies != null) 'ingressPolicies': ingressPolicies!,
        if (resources != null) 'resources': resources!,
        if (restrictedServices != null)
          'restrictedServices': restrictedServices!,
        if (vpcAccessibleServices != null)
          'vpcAccessibleServices': vpcAccessibleServices!,
      };
}

/// Specifies how APIs are allowed to communicate within the Service Perimeter.
typedef GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
    = $VpcAccessibleServices;

/// An analysis message to group the query and results.
class IamPolicyAnalysis {
  /// The analysis query.
  IamPolicyAnalysisQuery? analysisQuery;

  /// A list of IamPolicyAnalysisResult that matches the analysis query, or
  /// empty if no result is found.
  core.List<IamPolicyAnalysisResult>? analysisResults;

  /// Represents whether all entries in the analysis_results have been fully
  /// explored to answer the query.
  core.bool? fullyExplored;

  /// A list of non-critical errors happened during the query handling.
  core.List<IamPolicyAnalysisState>? nonCriticalErrors;

  IamPolicyAnalysis({
    this.analysisQuery,
    this.analysisResults,
    this.fullyExplored,
    this.nonCriticalErrors,
  });

  IamPolicyAnalysis.fromJson(core.Map json_)
      : this(
          analysisQuery: json_.containsKey('analysisQuery')
              ? IamPolicyAnalysisQuery.fromJson(
                  json_['analysisQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          analysisResults: json_.containsKey('analysisResults')
              ? (json_['analysisResults'] as core.List)
                  .map((value) => IamPolicyAnalysisResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fullyExplored: json_.containsKey('fullyExplored')
              ? json_['fullyExplored'] as core.bool
              : null,
          nonCriticalErrors: json_.containsKey('nonCriticalErrors')
              ? (json_['nonCriticalErrors'] as core.List)
                  .map((value) => IamPolicyAnalysisState.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisQuery != null) 'analysisQuery': analysisQuery!,
        if (analysisResults != null) 'analysisResults': analysisResults!,
        if (fullyExplored != null) 'fullyExplored': fullyExplored!,
        if (nonCriticalErrors != null) 'nonCriticalErrors': nonCriticalErrors!,
      };
}

/// Output configuration for export IAM policy analysis destination.
class IamPolicyAnalysisOutputConfig {
  /// Destination on BigQuery.
  GoogleCloudAssetV1BigQueryDestination? bigqueryDestination;

  /// Destination on Cloud Storage.
  GoogleCloudAssetV1GcsDestination? gcsDestination;

  IamPolicyAnalysisOutputConfig({
    this.bigqueryDestination,
    this.gcsDestination,
  });

  IamPolicyAnalysisOutputConfig.fromJson(core.Map json_)
      : this(
          bigqueryDestination: json_.containsKey('bigqueryDestination')
              ? GoogleCloudAssetV1BigQueryDestination.fromJson(
                  json_['bigqueryDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsDestination: json_.containsKey('gcsDestination')
              ? GoogleCloudAssetV1GcsDestination.fromJson(
                  json_['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryDestination != null)
          'bigqueryDestination': bigqueryDestination!,
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
      };
}

/// IAM policy analysis query message.
class IamPolicyAnalysisQuery {
  /// Specifies roles or permissions for analysis.
  ///
  /// This is optional.
  ///
  /// Optional.
  AccessSelector? accessSelector;

  /// The hypothetical context for IAM conditions evaluation.
  ///
  /// Optional.
  ConditionContext? conditionContext;

  /// Specifies an identity for analysis.
  ///
  /// Optional.
  IdentitySelector? identitySelector;

  /// The query options.
  ///
  /// Optional.
  Options? options;

  /// Specifies a resource for analysis.
  ///
  /// Optional.
  ResourceSelector? resourceSelector;

  /// The relative name of the root asset.
  ///
  /// Only resources and IAM policies within the scope will be analyzed. This
  /// can only be an organization number (such as "organizations/123"), a folder
  /// number (such as "folders/123"), a project ID (such as
  /// "projects/my-project-id"), or a project number (such as "projects/12345").
  /// To know how to get organization id, visit
  /// [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id).
  /// To know how to get folder or project id, visit
  /// [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).
  ///
  /// Required.
  core.String? scope;

  IamPolicyAnalysisQuery({
    this.accessSelector,
    this.conditionContext,
    this.identitySelector,
    this.options,
    this.resourceSelector,
    this.scope,
  });

  IamPolicyAnalysisQuery.fromJson(core.Map json_)
      : this(
          accessSelector: json_.containsKey('accessSelector')
              ? AccessSelector.fromJson(json_['accessSelector']
                  as core.Map<core.String, core.dynamic>)
              : null,
          conditionContext: json_.containsKey('conditionContext')
              ? ConditionContext.fromJson(json_['conditionContext']
                  as core.Map<core.String, core.dynamic>)
              : null,
          identitySelector: json_.containsKey('identitySelector')
              ? IdentitySelector.fromJson(json_['identitySelector']
                  as core.Map<core.String, core.dynamic>)
              : null,
          options: json_.containsKey('options')
              ? Options.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceSelector: json_.containsKey('resourceSelector')
              ? ResourceSelector.fromJson(json_['resourceSelector']
                  as core.Map<core.String, core.dynamic>)
              : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessSelector != null) 'accessSelector': accessSelector!,
        if (conditionContext != null) 'conditionContext': conditionContext!,
        if (identitySelector != null) 'identitySelector': identitySelector!,
        if (options != null) 'options': options!,
        if (resourceSelector != null) 'resourceSelector': resourceSelector!,
        if (scope != null) 'scope': scope!,
      };
}

/// IAM Policy analysis result, consisting of one IAM policy binding and derived
/// access control lists.
class IamPolicyAnalysisResult {
  /// The access control lists derived from the iam_binding that match or
  /// potentially match resource and access selectors specified in the request.
  core.List<GoogleCloudAssetV1AccessControlList>? accessControlLists;

  /// The
  /// [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  /// of the resource to which the iam_binding policy attaches.
  core.String? attachedResourceFullName;

  /// Represents whether all analyses on the iam_binding have successfully
  /// finished.
  core.bool? fullyExplored;

  /// The Cloud IAM policy binding under analysis.
  Binding? iamBinding;

  /// The identity list derived from members of the iam_binding that match or
  /// potentially match identity selector specified in the request.
  GoogleCloudAssetV1IdentityList? identityList;

  IamPolicyAnalysisResult({
    this.accessControlLists,
    this.attachedResourceFullName,
    this.fullyExplored,
    this.iamBinding,
    this.identityList,
  });

  IamPolicyAnalysisResult.fromJson(core.Map json_)
      : this(
          accessControlLists: json_.containsKey('accessControlLists')
              ? (json_['accessControlLists'] as core.List)
                  .map((value) => GoogleCloudAssetV1AccessControlList.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          attachedResourceFullName:
              json_.containsKey('attachedResourceFullName')
                  ? json_['attachedResourceFullName'] as core.String
                  : null,
          fullyExplored: json_.containsKey('fullyExplored')
              ? json_['fullyExplored'] as core.bool
              : null,
          iamBinding: json_.containsKey('iamBinding')
              ? Binding.fromJson(
                  json_['iamBinding'] as core.Map<core.String, core.dynamic>)
              : null,
          identityList: json_.containsKey('identityList')
              ? GoogleCloudAssetV1IdentityList.fromJson(
                  json_['identityList'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessControlLists != null)
          'accessControlLists': accessControlLists!,
        if (attachedResourceFullName != null)
          'attachedResourceFullName': attachedResourceFullName!,
        if (fullyExplored != null) 'fullyExplored': fullyExplored!,
        if (iamBinding != null) 'iamBinding': iamBinding!,
        if (identityList != null) 'identityList': identityList!,
      };
}

/// Represents the detailed state of an entity under analysis, such as a
/// resource, an identity or an access.
class IamPolicyAnalysisState {
  /// The human-readable description of the cause of failure.
  core.String? cause;

  /// The Google standard error code that best describes the state.
  ///
  /// For example: - OK means the analysis on this entity has been successfully
  /// finished; - PERMISSION_DENIED means an access denied error is encountered;
  /// - DEADLINE_EXCEEDED means the analysis on this entity hasn't been started
  /// in time;
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller. HTTP
  /// Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error. For example, this error may be returned when
  /// a `Status` value received from another address space belongs to an error
  /// space that is not known in this address space. Also errors raised by APIs
  /// that do not return enough error information may be converted to this
  /// error. HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument. Note that
  /// this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates
  /// arguments that are problematic regardless of the state of the system
  /// (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations that change the state of the system, this error
  /// may be returned even if the operation has completed successfully. For
  /// example, a successful response from a server could have been delayed long
  /// enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found. Note to server developers: if a request is denied for an entire
  /// class of users, such as gradual feature rollout or undocumented allowlist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within a
  /// class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used. HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory) already exists. HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for
  /// those errors). `PERMISSION_DENIED` must not be used if the caller can not
  /// be identified (use `UNAUTHENTICATED` instead for those errors). This error
  /// code does not imply the request is valid or the requested entity exists or
  /// satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the operation. HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or perhaps the entire file system is out of space. HTTP
  /// Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state required for the operation's execution. For example, the
  /// directory to be deleted is non-empty, an rmdir operation is applied to a
  /// non-directory, etc. Service implementors can use the following guidelines
  /// to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a)
  /// Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use
  /// `ABORTED` if the client should retry at a higher level. For example, when
  /// a client-specified test-and-set fails, indicating the client should
  /// restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the
  /// client should not retry until the system state has been explicitly fixed.
  /// For example, if an "rmdir" fails because the directory is non-empty,
  /// `FAILED_PRECONDITION` should be returned since the client should not retry
  /// unless the files are deleted from the directory. HTTP Mapping: 400 Bad
  /// Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as a sequencer check failure or transaction abort. See the
  /// guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`,
  /// and `UNAVAILABLE`. HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range. E.g.,
  /// seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error
  /// indicates a problem that may be fixed if the system state changes. For
  /// example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to
  /// read at an offset that is not in the range \[0,2^32-1\], but it will
  /// generate `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size. There is a fair bit of overlap between `FAILED_PRECONDITION`
  /// and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through a space
  /// can easily look for an `OUT_OF_RANGE` error to detect when they are done.
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this service. HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors. This means that some invariants expected
  /// by the underlying system have been broken. This error code is reserved for
  /// serious errors. HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable. This is most
  /// likely a transient condition, which can be corrected by retrying with a
  /// backoff. Note that it is not always safe to retry non-idempotent
  /// operations. See the guidelines above for deciding between
  /// `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503
  /// Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption. HTTP Mapping: 500
  /// Internal Server Error
  core.String? code;

  IamPolicyAnalysisState({
    this.cause,
    this.code,
  });

  IamPolicyAnalysisState.fromJson(core.Map json_)
      : this(
          cause:
              json_.containsKey('cause') ? json_['cause'] as core.String : null,
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cause != null) 'cause': cause!,
        if (code != null) 'code': code!,
      };
}

/// A result of IAM Policy search, containing information of an IAM policy.
class IamPolicySearchResult {
  /// The type of the resource associated with this IAM policy.
  ///
  /// Example: `compute.googleapis.com/Disk`. To search against the
  /// `asset_type`: * specify the `asset_types` field in your search request.
  core.String? assetType;

  /// Explanation about the IAM policy search result.
  ///
  /// It contains additional information to explain why the search result
  /// matches the query.
  Explanation? explanation;

  /// The folder(s) that the IAM policy belongs to, in the form of
  /// folders/{FOLDER_NUMBER}.
  ///
  /// This field is available when the IAM policy belongs to one or more
  /// folders. To search against `folders`: * use a field query. Example:
  /// `folders:(123 OR 456)` * use a free text query. Example: `123` * specify
  /// the `scope` field as this folder in your search request.
  core.List<core.String>? folders;

  /// The organization that the IAM policy belongs to, in the form of
  /// organizations/{ORGANIZATION_NUMBER}.
  ///
  /// This field is available when the IAM policy belongs to an organization. To
  /// search against `organization`: * use a field query. Example:
  /// `organization:123` * use a free text query. Example: `123` * specify the
  /// `scope` field as this organization in your search request.
  core.String? organization;

  /// The IAM policy directly set on the given resource.
  ///
  /// Note that the original IAM policy can contain multiple bindings. This only
  /// contains the bindings that match the given query. For queries that don't
  /// contain a constrain on policies (e.g., an empty query), this contains all
  /// the bindings. To search against the `policy` bindings: * use a field
  /// query: - query by the policy contained members. Example:
  /// `policy:amy@gmail.com` - query by the policy contained roles. Example:
  /// `policy:roles/compute.admin` - query by the policy contained roles'
  /// included permissions. Example:
  /// `policy.role.permissions:compute.instances.create`
  Policy? policy;

  /// The project that the associated GCP resource belongs to, in the form of
  /// projects/{PROJECT_NUMBER}.
  ///
  /// If an IAM policy is set on a resource (like VM instance, Cloud Storage
  /// bucket), the project field will indicate the project that contains the
  /// resource. If an IAM policy is set on a folder or orgnization, this field
  /// will be empty. To search against the `project`: * specify the `scope`
  /// field as this project in your search request.
  core.String? project;

  /// The full resource name of the resource associated with this IAM policy.
  ///
  /// Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// See
  /// [Cloud Asset Inventory Resource Name Format](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  /// for more information. To search against the `resource`: * use a field
  /// query. Example: `resource:organizations/123`
  core.String? resource;

  IamPolicySearchResult({
    this.assetType,
    this.explanation,
    this.folders,
    this.organization,
    this.policy,
    this.project,
    this.resource,
  });

  IamPolicySearchResult.fromJson(core.Map json_)
      : this(
          assetType: json_.containsKey('assetType')
              ? json_['assetType'] as core.String
              : null,
          explanation: json_.containsKey('explanation')
              ? Explanation.fromJson(
                  json_['explanation'] as core.Map<core.String, core.dynamic>)
              : null,
          folders: json_.containsKey('folders')
              ? (json_['folders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          organization: json_.containsKey('organization')
              ? json_['organization'] as core.String
              : null,
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetType != null) 'assetType': assetType!,
        if (explanation != null) 'explanation': explanation!,
        if (folders != null) 'folders': folders!,
        if (organization != null) 'organization': organization!,
        if (policy != null) 'policy': policy!,
        if (project != null) 'project': project!,
        if (resource != null) 'resource': resource!,
      };
}

/// Specifies an identity for which to determine resource access, based on roles
/// assigned either directly to them or to the groups they belong to, directly
/// or indirectly.
class IdentitySelector {
  /// The identity appear in the form of principals in
  /// [IAM policy binding](https://cloud.google.com/iam/reference/rest/v1/Binding).
  ///
  /// The examples of supported forms are: "user:mike@example.com",
  /// "group:admins@example.com", "domain:google.com",
  /// "serviceAccount:my-project-id@appspot.gserviceaccount.com". Notice that
  /// wildcard characters (such as * and ?) are not supported. You must give a
  /// specific identity.
  ///
  /// Required.
  core.String? identity;

  IdentitySelector({
    this.identity,
  });

  IdentitySelector.fromJson(core.Map json_)
      : this(
          identity: json_.containsKey('identity')
              ? json_['identity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identity != null) 'identity': identity!,
      };
}

/// This API resource represents the available inventory data for a Compute
/// Engine virtual machine (VM) instance at a given point in time.
///
/// You can use this API resource to determine the inventory data of your VM.
/// For more information, see
/// [Information provided by OS inventory management](https://cloud.google.com/compute/docs/instances/os-inventory-management#data-collected).
class Inventory {
  /// Inventory items related to the VM keyed by an opaque unique identifier for
  /// each inventory item.
  ///
  /// The identifier is unique to each distinct and addressable inventory item
  /// and will change, when there is a new package version.
  core.Map<core.String, Item>? items;

  /// The `Inventory` API resource name.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/instances/{instance_id}/inventory`
  ///
  /// Output only.
  core.String? name;

  /// Base level operating system information for the VM.
  OsInfo? osInfo;

  /// Timestamp of the last reported inventory for the VM.
  ///
  /// Output only.
  core.String? updateTime;

  Inventory({
    this.items,
    this.name,
    this.osInfo,
    this.updateTime,
  });

  Inventory.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    Item.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          osInfo: json_.containsKey('osInfo')
              ? OsInfo.fromJson(
                  json_['osInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (name != null) 'name': name!,
        if (osInfo != null) 'osInfo': osInfo!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A single piece of inventory on a VM.
class Item {
  /// Software package available to be installed on the VM instance.
  SoftwarePackage? availablePackage;

  /// When this inventory item was first detected.
  core.String? createTime;

  /// Identifier for this item, unique across items for this VM.
  core.String? id;

  /// Software package present on the VM instance.
  SoftwarePackage? installedPackage;

  /// The origin of this inventory item.
  /// Possible string values are:
  /// - "ORIGIN_TYPE_UNSPECIFIED" : Invalid. An origin type must be specified.
  /// - "INVENTORY_REPORT" : This inventory item was discovered as the result of
  /// the agent reporting inventory via the reporting API.
  core.String? originType;

  /// The specific type of inventory, correlating to its specific details.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Invalid. An type must be specified.
  /// - "INSTALLED_PACKAGE" : This represents a package that is installed on the
  /// VM.
  /// - "AVAILABLE_PACKAGE" : This represents an update that is available for a
  /// package.
  core.String? type;

  /// When this inventory item was last modified.
  core.String? updateTime;

  Item({
    this.availablePackage,
    this.createTime,
    this.id,
    this.installedPackage,
    this.originType,
    this.type,
    this.updateTime,
  });

  Item.fromJson(core.Map json_)
      : this(
          availablePackage: json_.containsKey('availablePackage')
              ? SoftwarePackage.fromJson(json_['availablePackage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          installedPackage: json_.containsKey('installedPackage')
              ? SoftwarePackage.fromJson(json_['installedPackage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          originType: json_.containsKey('originType')
              ? json_['originType'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availablePackage != null) 'availablePackage': availablePackage!,
        if (createTime != null) 'createTime': createTime!,
        if (id != null) 'id': id!,
        if (installedPackage != null) 'installedPackage': installedPackage!,
        if (originType != null) 'originType': originType!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// ListAssets response.
class ListAssetsResponse {
  /// Assets.
  core.List<Asset>? assets;

  /// Token to retrieve the next page of results.
  ///
  /// It expires 72 hours after the page token for the first page is generated.
  /// Set to empty if there are no remaining results.
  core.String? nextPageToken;

  /// Time the snapshot was taken.
  core.String? readTime;

  ListAssetsResponse({
    this.assets,
    this.nextPageToken,
    this.readTime,
  });

  ListAssetsResponse.fromJson(core.Map json_)
      : this(
          assets: json_.containsKey('assets')
              ? (json_['assets'] as core.List)
                  .map((value) => Asset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assets != null) 'assets': assets!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (readTime != null) 'readTime': readTime!,
      };
}

class ListFeedsResponse {
  /// A list of feeds.
  core.List<Feed>? feeds;

  ListFeedsResponse({
    this.feeds,
  });

  ListFeedsResponse.fromJson(core.Map json_)
      : this(
          feeds: json_.containsKey('feeds')
              ? (json_['feeds'] as core.List)
                  .map((value) => Feed.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feeds != null) 'feeds': feeds!,
      };
}

/// Response of listing saved queries.
class ListSavedQueriesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of savedQueries.
  core.List<SavedQuery>? savedQueries;

  ListSavedQueriesResponse({
    this.nextPageToken,
    this.savedQueries,
  });

  ListSavedQueriesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          savedQueries: json_.containsKey('savedQueries')
              ? (json_['savedQueries'] as core.List)
                  .map((value) => SavedQuery.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (savedQueries != null) 'savedQueries': savedQueries!,
      };
}

/// A message to group the analysis information.
class MoveAnalysis {
  /// Analysis result of moving the target resource.
  MoveAnalysisResult? analysis;

  /// The user friendly display name of the analysis.
  ///
  /// E.g. IAM, Organization Policy etc.
  core.String? displayName;

  /// Description of error encountered when performing the analysis.
  Status? error;

  MoveAnalysis({
    this.analysis,
    this.displayName,
    this.error,
  });

  MoveAnalysis.fromJson(core.Map json_)
      : this(
          analysis: json_.containsKey('analysis')
              ? MoveAnalysisResult.fromJson(
                  json_['analysis'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysis != null) 'analysis': analysis!,
        if (displayName != null) 'displayName': displayName!,
        if (error != null) 'error': error!,
      };
}

/// An analysis result including blockers and warnings.
class MoveAnalysisResult {
  /// Blocking information that would prevent the target resource from moving to
  /// the specified destination at runtime.
  core.List<MoveImpact>? blockers;

  /// Warning information indicating that moving the target resource to the
  /// specified destination might be unsafe.
  ///
  /// This can include important policy information and configuration changes,
  /// but will not block moves at runtime.
  core.List<MoveImpact>? warnings;

  MoveAnalysisResult({
    this.blockers,
    this.warnings,
  });

  MoveAnalysisResult.fromJson(core.Map json_)
      : this(
          blockers: json_.containsKey('blockers')
              ? (json_['blockers'] as core.List)
                  .map((value) => MoveImpact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => MoveImpact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blockers != null) 'blockers': blockers!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// A message to group impacts of moving the target resource.
class MoveImpact {
  /// User friendly impact detail in a free form message.
  core.String? detail;

  MoveImpact({
    this.detail,
  });

  MoveImpact.fromJson(core.Map json_)
      : this(
          detail: json_.containsKey('detail')
              ? json_['detail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detail != null) 'detail': detail!,
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

/// Contains query options.
class Options {
  /// If true, the response will include access analysis from identities to
  /// resources via service account impersonation.
  ///
  /// This is a very expensive operation, because many derived queries will be
  /// executed. We highly recommend you use
  /// AssetService.AnalyzeIamPolicyLongrunning rpc instead. For example, if the
  /// request analyzes for which resources user A has permission P, and there's
  /// an IAM policy states user A has iam.serviceAccounts.getAccessToken
  /// permission to a service account SA, and there's another IAM policy states
  /// service account SA has permission P to a GCP folder F, then user A
  /// potentially has access to the GCP folder F. And those advanced analysis
  /// results will be included in
  /// AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Another
  /// example, if the request analyzes for who has permission P to a GCP folder
  /// F, and there's an IAM policy states user A has iam.serviceAccounts.actAs
  /// permission to a service account SA, and there's another IAM policy states
  /// service account SA has permission P to the GCP folder F, then user A
  /// potentially has access to the GCP folder F. And those advanced analysis
  /// results will be included in
  /// AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Only the
  /// following permissions are considered in this analysis: *
  /// `iam.serviceAccounts.actAs` * `iam.serviceAccounts.signBlob` *
  /// `iam.serviceAccounts.signJwt` * `iam.serviceAccounts.getAccessToken` *
  /// `iam.serviceAccounts.getOpenIdToken` *
  /// `iam.serviceAccounts.implicitDelegation` Default is false.
  ///
  /// Optional.
  core.bool? analyzeServiceAccountImpersonation;

  /// If true, the identities section of the result will expand any Google
  /// groups appearing in an IAM policy binding.
  ///
  /// If IamPolicyAnalysisQuery.identity_selector is specified, the identity in
  /// the result will be determined by the selector, and this flag is not
  /// allowed to set. If true, the default max expansion per group is 1000 for
  /// AssetService.AnalyzeIamPolicy\]\[\]. Default is false.
  ///
  /// Optional.
  core.bool? expandGroups;

  /// If true and IamPolicyAnalysisQuery.resource_selector is not specified, the
  /// resource section of the result will expand any resource attached to an IAM
  /// policy to include resources lower in the resource hierarchy.
  ///
  /// For example, if the request analyzes for which resources user A has
  /// permission P, and the results include an IAM policy with P on a GCP
  /// folder, the results will also include resources in that folder with
  /// permission P. If true and IamPolicyAnalysisQuery.resource_selector is
  /// specified, the resource section of the result will expand the specified
  /// resource to include resources lower in the resource hierarchy. Only
  /// project or lower resources are supported. Folder and organization resource
  /// cannot be used together with this option. For example, if the request
  /// analyzes for which users have permission P on a GCP project with this
  /// option enabled, the results will include all users who have permission P
  /// on that project or any lower resource. If true, the default max expansion
  /// per resource is 1000 for AssetService.AnalyzeIamPolicy\]\[\] and 100000
  /// for AssetService.AnalyzeIamPolicyLongrunning\]\[\]. Default is false.
  ///
  /// Optional.
  core.bool? expandResources;

  /// If true, the access section of result will expand any roles appearing in
  /// IAM policy bindings to include their permissions.
  ///
  /// If IamPolicyAnalysisQuery.access_selector is specified, the access section
  /// of the result will be determined by the selector, and this flag is not
  /// allowed to set. Default is false.
  ///
  /// Optional.
  core.bool? expandRoles;

  /// If true, the result will output the relevant membership relationships
  /// between groups and other groups, and between groups and principals.
  ///
  /// Default is false.
  ///
  /// Optional.
  core.bool? outputGroupEdges;

  /// If true, the result will output the relevant parent/child relationships
  /// between resources.
  ///
  /// Default is false.
  ///
  /// Optional.
  core.bool? outputResourceEdges;

  Options({
    this.analyzeServiceAccountImpersonation,
    this.expandGroups,
    this.expandResources,
    this.expandRoles,
    this.outputGroupEdges,
    this.outputResourceEdges,
  });

  Options.fromJson(core.Map json_)
      : this(
          analyzeServiceAccountImpersonation:
              json_.containsKey('analyzeServiceAccountImpersonation')
                  ? json_['analyzeServiceAccountImpersonation'] as core.bool
                  : null,
          expandGroups: json_.containsKey('expandGroups')
              ? json_['expandGroups'] as core.bool
              : null,
          expandResources: json_.containsKey('expandResources')
              ? json_['expandResources'] as core.bool
              : null,
          expandRoles: json_.containsKey('expandRoles')
              ? json_['expandRoles'] as core.bool
              : null,
          outputGroupEdges: json_.containsKey('outputGroupEdges')
              ? json_['outputGroupEdges'] as core.bool
              : null,
          outputResourceEdges: json_.containsKey('outputResourceEdges')
              ? json_['outputResourceEdges'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyzeServiceAccountImpersonation != null)
          'analyzeServiceAccountImpersonation':
              analyzeServiceAccountImpersonation!,
        if (expandGroups != null) 'expandGroups': expandGroups!,
        if (expandResources != null) 'expandResources': expandResources!,
        if (expandRoles != null) 'expandRoles': expandRoles!,
        if (outputGroupEdges != null) 'outputGroupEdges': outputGroupEdges!,
        if (outputResourceEdges != null)
          'outputResourceEdges': outputResourceEdges!,
      };
}

/// Operating system information for the VM.
typedef OsInfo = $OsInfo;

/// Output configuration for export assets destination.
class OutputConfig {
  /// Destination on BigQuery.
  ///
  /// The output table stores the fields in asset Protobuf as columns in
  /// BigQuery.
  BigQueryDestination? bigqueryDestination;

  /// Destination on Cloud Storage.
  GcsDestination? gcsDestination;

  OutputConfig({
    this.bigqueryDestination,
    this.gcsDestination,
  });

  OutputConfig.fromJson(core.Map json_)
      : this(
          bigqueryDestination: json_.containsKey('bigqueryDestination')
              ? BigQueryDestination.fromJson(json_['bigqueryDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gcsDestination: json_.containsKey('gcsDestination')
              ? GcsDestination.fromJson(json_['gcsDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryDestination != null)
          'bigqueryDestination': bigqueryDestination!,
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
      };
}

/// Specifications of BigQuery partitioned table as export destination.
class PartitionSpec {
  /// The partition key for BigQuery partitioned table.
  /// Possible string values are:
  /// - "PARTITION_KEY_UNSPECIFIED" : Unspecified partition key. If used, it
  /// means using non-partitioned table.
  /// - "READ_TIME" : The time when the snapshot is taken. If specified as
  /// partition key, the result table(s) is partitoned by the additional
  /// timestamp column, readTime. If \[read_time\] in ExportAssetsRequest is
  /// specified, the readTime column's value will be the same as it. Otherwise,
  /// its value will be the current time that is used to take the snapshot.
  /// - "REQUEST_TIME" : The time when the request is received and started to be
  /// processed. If specified as partition key, the result table(s) is
  /// partitoned by the requestTime column, an additional timestamp column
  /// representing when the request was received.
  core.String? partitionKey;

  PartitionSpec({
    this.partitionKey,
  });

  PartitionSpec.fromJson(core.Map json_)
      : this(
          partitionKey: json_.containsKey('partitionKey')
              ? json_['partitionKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partitionKey != null) 'partitionKey': partitionKey!,
      };
}

/// IAM permissions
class Permissions {
  /// A list of permissions.
  ///
  /// A sample permission string: `compute.disk.get`.
  core.List<core.String>? permissions;

  Permissions({
    this.permissions,
  });

  Permissions.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
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

/// The IAM policy and its attached resource.
class PolicyInfo {
  /// The full resource name the policy is directly attached to.
  core.String? attachedResource;

  /// The IAM policy that's directly attached to the attached_resource.
  Policy? policy;

  PolicyInfo({
    this.attachedResource,
    this.policy,
  });

  PolicyInfo.fromJson(core.Map json_)
      : this(
          attachedResource: json_.containsKey('attachedResource')
              ? json_['attachedResource'] as core.String
              : null,
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attachedResource != null) 'attachedResource': attachedResource!,
        if (policy != null) 'policy': policy!,
      };
}

/// A Pub/Sub destination.
class PubsubDestination {
  /// The name of the Pub/Sub topic to publish to.
  ///
  /// Example: `projects/PROJECT_ID/topics/TOPIC_ID`.
  core.String? topic;

  PubsubDestination({
    this.topic,
  });

  PubsubDestination.fromJson(core.Map json_)
      : this(
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topic != null) 'topic': topic!,
      };
}

/// The query content.
class QueryContent {
  /// An IAM Policy Analysis query, which could be used in the
  /// AssetService.AnalyzeIamPolicy rpc or the
  /// AssetService.AnalyzeIamPolicyLongrunning rpc.
  IamPolicyAnalysisQuery? iamPolicyAnalysisQuery;

  QueryContent({
    this.iamPolicyAnalysisQuery,
  });

  QueryContent.fromJson(core.Map json_)
      : this(
          iamPolicyAnalysisQuery: json_.containsKey('iamPolicyAnalysisQuery')
              ? IamPolicyAnalysisQuery.fromJson(json_['iamPolicyAnalysisQuery']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iamPolicyAnalysisQuery != null)
          'iamPolicyAnalysisQuery': iamPolicyAnalysisQuery!,
      };
}

/// An asset identifier in Google Cloud which contains its name, type and
/// ancestors.
///
/// An asset can be any resource in the Google Cloud
/// [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
/// a resource outside the Google Cloud resource hierarchy (such as Google
/// Kubernetes Engine clusters and objects), or a policy (e.g. Cloud IAM
/// policy). See
/// [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
/// for more information.
class RelatedAsset {
  /// The ancestors of an asset in Google Cloud
  /// [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
  /// represented as a list of relative resource names.
  ///
  /// An ancestry path starts with the closest ancestor in the hierarchy and
  /// ends at root. Example: `["projects/123456789", "folders/5432",
  /// "organizations/1234"]`
  core.List<core.String>? ancestors;

  /// The full name of the asset.
  ///
  /// Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`
  /// See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  core.String? asset;

  /// The type of the asset.
  ///
  /// Example: `compute.googleapis.com/Disk` See
  /// [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
  /// for more information.
  core.String? assetType;

  /// The unique identifier of the relationship type.
  ///
  /// Example: `INSTANCE_TO_INSTANCEGROUP`
  core.String? relationshipType;

  RelatedAsset({
    this.ancestors,
    this.asset,
    this.assetType,
    this.relationshipType,
  });

  RelatedAsset.fromJson(core.Map json_)
      : this(
          ancestors: json_.containsKey('ancestors')
              ? (json_['ancestors'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          asset:
              json_.containsKey('asset') ? json_['asset'] as core.String : null,
          assetType: json_.containsKey('assetType')
              ? json_['assetType'] as core.String
              : null,
          relationshipType: json_.containsKey('relationshipType')
              ? json_['relationshipType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ancestors != null) 'ancestors': ancestors!,
        if (asset != null) 'asset': asset!,
        if (assetType != null) 'assetType': assetType!,
        if (relationshipType != null) 'relationshipType': relationshipType!,
      };
}

/// This message only presents for the purpose of backward-compatibility.
///
/// The server will never populate this message in responses. The detailed
/// related assets with the `relationship_type`.
///
/// Deprecated.
class RelatedAssets {
  /// The peer resources of the relationship.
  core.List<RelatedAsset>? assets;

  /// The detailed relationship attributes.
  RelationshipAttributes? relationshipAttributes;

  RelatedAssets({
    this.assets,
    this.relationshipAttributes,
  });

  RelatedAssets.fromJson(core.Map json_)
      : this(
          assets: json_.containsKey('assets')
              ? (json_['assets'] as core.List)
                  .map((value) => RelatedAsset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relationshipAttributes: json_.containsKey('relationshipAttributes')
              ? RelationshipAttributes.fromJson(json_['relationshipAttributes']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assets != null) 'assets': assets!,
        if (relationshipAttributes != null)
          'relationshipAttributes': relationshipAttributes!,
      };
}

/// The detailed related resource.
class RelatedResource {
  /// The type of the asset.
  ///
  /// Example: `compute.googleapis.com/Instance`
  core.String? assetType;

  /// The full resource name of the related resource.
  ///
  /// Example:
  /// `//compute.googleapis.com/projects/my_proj_123/zones/instance/instance123`
  core.String? fullResourceName;

  RelatedResource({
    this.assetType,
    this.fullResourceName,
  });

  RelatedResource.fromJson(core.Map json_)
      : this(
          assetType: json_.containsKey('assetType')
              ? json_['assetType'] as core.String
              : null,
          fullResourceName: json_.containsKey('fullResourceName')
              ? json_['fullResourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetType != null) 'assetType': assetType!,
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
      };
}

/// The related resources of the primary resource.
class RelatedResources {
  /// The detailed related resources of the primary resource.
  core.List<RelatedResource>? relatedResources;

  RelatedResources({
    this.relatedResources,
  });

  RelatedResources.fromJson(core.Map json_)
      : this(
          relatedResources: json_.containsKey('relatedResources')
              ? (json_['relatedResources'] as core.List)
                  .map((value) => RelatedResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (relatedResources != null) 'relatedResources': relatedResources!,
      };
}

/// This message only presents for the purpose of backward-compatibility.
///
/// The server will never populate this message in responses. The relationship
/// attributes which include `type`, `source_resource_type`,
/// `target_resource_type` and `action`.
///
/// Deprecated.
class RelationshipAttributes {
  /// The detail of the relationship, e.g. `contains`, `attaches`
  core.String? action;

  /// The source asset type.
  ///
  /// Example: `compute.googleapis.com/Instance`
  core.String? sourceResourceType;

  /// The target asset type.
  ///
  /// Example: `compute.googleapis.com/Disk`
  core.String? targetResourceType;

  /// The unique identifier of the relationship type.
  ///
  /// Example: `INSTANCE_TO_INSTANCEGROUP`
  core.String? type;

  RelationshipAttributes({
    this.action,
    this.sourceResourceType,
    this.targetResourceType,
    this.type,
  });

  RelationshipAttributes.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          sourceResourceType: json_.containsKey('sourceResourceType')
              ? json_['sourceResourceType'] as core.String
              : null,
          targetResourceType: json_.containsKey('targetResourceType')
              ? json_['targetResourceType'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (sourceResourceType != null)
          'sourceResourceType': sourceResourceType!,
        if (targetResourceType != null)
          'targetResourceType': targetResourceType!,
        if (type != null) 'type': type!,
      };
}

/// A representation of a Google Cloud resource.
class Resource {
  /// The content of the resource, in which some sensitive fields are removed
  /// and may not be present.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? data;

  /// The URL of the discovery document containing the resource's JSON schema.
  ///
  /// Example: `https://www.googleapis.com/discovery/v1/apis/compute/v1/rest`
  /// This value is unspecified for resources that do not have an API based on a
  /// discovery document, such as Cloud Bigtable.
  core.String? discoveryDocumentUri;

  /// The JSON schema name listed in the discovery document.
  ///
  /// Example: `Project` This value is unspecified for resources that do not
  /// have an API based on a discovery document, such as Cloud Bigtable.
  core.String? discoveryName;

  /// The location of the resource in Google Cloud, such as its zone and region.
  ///
  /// For more information, see https://cloud.google.com/about/locations/.
  core.String? location;

  /// The full name of the immediate parent of this resource.
  ///
  /// See
  /// [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information. For Google Cloud assets, this value is the parent
  /// resource defined in the
  /// [Cloud IAM policy hierarchy](https://cloud.google.com/iam/docs/overview#policy_hierarchy).
  /// Example: `//cloudresourcemanager.googleapis.com/projects/my_project_123`
  /// For third-party assets, this field may be set differently.
  core.String? parent;

  /// The REST URL for accessing the resource.
  ///
  /// An HTTP `GET` request using this URL returns the resource itself. Example:
  /// `https://cloudresourcemanager.googleapis.com/v1/projects/my-project-123`
  /// This value is unspecified for resources without a REST API.
  core.String? resourceUrl;

  /// The API version.
  ///
  /// Example: `v1`
  core.String? version;

  Resource({
    this.data,
    this.discoveryDocumentUri,
    this.discoveryName,
    this.location,
    this.parent,
    this.resourceUrl,
    this.version,
  });

  Resource.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data')
              ? json_['data'] as core.Map<core.String, core.dynamic>
              : null,
          discoveryDocumentUri: json_.containsKey('discoveryDocumentUri')
              ? json_['discoveryDocumentUri'] as core.String
              : null,
          discoveryName: json_.containsKey('discoveryName')
              ? json_['discoveryName'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          resourceUrl: json_.containsKey('resourceUrl')
              ? json_['resourceUrl'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (discoveryDocumentUri != null)
          'discoveryDocumentUri': discoveryDocumentUri!,
        if (discoveryName != null) 'discoveryName': discoveryName!,
        if (location != null) 'location': location!,
        if (parent != null) 'parent': parent!,
        if (resourceUrl != null) 'resourceUrl': resourceUrl!,
        if (version != null) 'version': version!,
      };
}

/// A result of Resource Search, containing information of a cloud resource.
///
/// Next ID: 29
class ResourceSearchResult {
  /// The additional searchable attributes of this resource.
  ///
  /// The attributes may vary from one resource type to another. Examples:
  /// `projectId` for Project, `dnsName` for DNS ManagedZone. This field
  /// contains a subset of the resource metadata fields that are returned by the
  /// List or Get APIs provided by the corresponding GCP service (e.g., Compute
  /// Engine). see
  /// [API references and supported searchable attributes](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types)
  /// to see which fields are included. You can search values of these fields
  /// through free text search. However, you should not consume the field
  /// programically as the field names and values may change as the GCP service
  /// updates to a new incompatible API version. To search against the
  /// `additional_attributes`: * use a free text query to match the attributes
  /// values. Example: to search `additional_attributes = { dnsName: "foobar"
  /// }`, you can issue a query `foobar`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? additionalAttributes;

  /// The type of this resource.
  ///
  /// Example: `compute.googleapis.com/Disk`. To search against the
  /// `asset_type`: * specify the `asset_type` field in your search request.
  core.String? assetType;

  /// Attached resources of this resource.
  ///
  /// For example, an OSConfig Inventory is an attached resource of a Compute
  /// Instance. This field is repeated because a resource could have multiple
  /// attached resources. This `attached_resources` field is not searchable.
  /// Some attributes of the attached resources are exposed in
  /// `additional_attributes` field, so as to allow users to search on them.
  core.List<AttachedResource>? attachedResources;

  /// The create timestamp of this resource, at which the resource was created.
  ///
  /// The granularity is in seconds. Timestamp.nanos will always be 0. This
  /// field is available only when the resource's Protobuf contains it. To
  /// search against `create_time`: * use a field query. - value in seconds
  /// since unix epoch. Example: `createTime > 1609459200` - value in date
  /// string. Example: `createTime > 2021-01-01` - value in date-time string
  /// (must be quoted). Example: `createTime > "2021-01-01T00:00:00"`
  core.String? createTime;

  /// One or more paragraphs of text description of this resource.
  ///
  /// Maximum length could be up to 1M bytes. This field is available only when
  /// the resource's Protobuf contains it. To search against the `description`:
  /// * use a field query. Example: `description:"important instance"` * use a
  /// free text query. Example: `"important instance"`
  core.String? description;

  /// The display name of this resource.
  ///
  /// This field is available only when the resource's Protobuf contains it. To
  /// search against the `display_name`: * use a field query. Example:
  /// `displayName:"My Instance"` * use a free text query. Example: `"My
  /// Instance"`
  core.String? displayName;

  /// The folder(s) that this resource belongs to, in the form of
  /// folders/{FOLDER_NUMBER}.
  ///
  /// This field is available when the resource belongs to one or more folders.
  /// To search against `folders`: * use a field query. Example: `folders:(123
  /// OR 456)` * use a free text query. Example: `123` * specify the `scope`
  /// field as this folder in your search request.
  core.List<core.String>? folders;

  /// The Cloud KMS
  /// [CryptoKey](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys)
  /// name or
  /// [CryptoKeyVersion](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions)
  /// name.
  ///
  /// This field is available only when the resource's Protobuf contains it. To
  /// search against the `kms_key`: * use a field query. Example: `kmsKey:key` *
  /// use a free text query. Example: `key`
  core.String? kmsKey;

  /// Labels associated with this resource.
  ///
  /// See
  /// [Labelling and grouping GCP resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources)
  /// for more information. This field is available only when the resource's
  /// Protobuf contains it. To search against the `labels`: * use a field query:
  /// - query on any label's key or value. Example: `labels:prod` - query by a
  /// given label. Example: `labels.env:prod` - query by a given label's
  /// existence. Example: `labels.env:*` * use a free text query. Example:
  /// `prod`
  core.Map<core.String, core.String>? labels;

  /// Location can be `global`, regional like `us-east1`, or zonal like
  /// `us-west1-b`.
  ///
  /// This field is available only when the resource's Protobuf contains it. To
  /// search against the `location`: * use a field query. Example:
  /// `location:us-west*` * use a free text query. Example: `us-west*`
  core.String? location;

  /// The full resource name of this resource.
  ///
  /// Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// See
  /// [Cloud Asset Inventory Resource Name Format](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  /// for more information. To search against the `name`: * use a field query.
  /// Example: `name:instance1` * use a free text query. Example: `instance1`
  core.String? name;

  /// Network tags associated with this resource.
  ///
  /// Like labels, network tags are a type of annotations used to group GCP
  /// resources. See
  /// [Labelling GCP resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources)
  /// for more information. This field is available only when the resource's
  /// Protobuf contains it. To search against the `network_tags`: * use a field
  /// query. Example: `networkTags:internal` * use a free text query. Example:
  /// `internal`
  core.List<core.String>? networkTags;

  /// The organization that this resource belongs to, in the form of
  /// organizations/{ORGANIZATION_NUMBER}.
  ///
  /// This field is available when the resource belongs to an organization. To
  /// search against `organization`: * use a field query. Example:
  /// `organization:123` * use a free text query. Example: `123` * specify the
  /// `scope` field as this organization in your search request.
  core.String? organization;

  /// The type of this resource's immediate parent, if there is one.
  ///
  /// To search against the `parent_asset_type`: * use a field query. Example:
  /// `parentAssetType:"cloudresourcemanager.googleapis.com/Project"` * use a
  /// free text query. Example: `cloudresourcemanager.googleapis.com/Project`
  core.String? parentAssetType;

  /// The full resource name of this resource's parent, if it has one.
  ///
  /// To search against the `parent_full_resource_name`: * use a field query.
  /// Example: `parentFullResourceName:"project-name"` * use a free text query.
  /// Example: `project-name`
  core.String? parentFullResourceName;

  /// The project that this resource belongs to, in the form of
  /// projects/{PROJECT_NUMBER}.
  ///
  /// This field is available when the resource belongs to a project. To search
  /// against `project`: * use a field query. Example: `project:12345` * use a
  /// free text query. Example: `12345` * specify the `scope` field as this
  /// project in your search request.
  core.String? project;

  /// A map of related resources of this resource, keyed by the relationship
  /// type.
  ///
  /// A relationship type is in the format of {SourceType}_{ACTION}_{DestType}.
  /// Example: `DISK_TO_INSTANCE`, `DISK_TO_NETWORK`,
  /// `INSTANCE_TO_INSTANCEGROUP`. See
  /// [supported relationship types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#supported_relationship_types).
  core.Map<core.String, RelatedResources>? relationships;

  /// The state of this resource.
  ///
  /// Different resources types have different state definitions that are mapped
  /// from various fields of different resource types. This field is available
  /// only when the resource's Protobuf contains it. Example: If the resource is
  /// an instance provided by Compute Engine, its state will include
  /// PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED,
  /// REPAIRING, and TERMINATED. See `status` definition in
  /// [API Reference](https://cloud.google.com/compute/docs/reference/rest/v1/instances).
  /// If the resource is a project provided by Cloud Resource Manager, its state
  /// will include LIFECYCLE_STATE_UNSPECIFIED, ACTIVE, DELETE_REQUESTED and
  /// DELETE_IN_PROGRESS. See `lifecycleState` definition in
  /// [API Reference](https://cloud.google.com/resource-manager/reference/rest/v1/projects).
  /// To search against the `state`: * use a field query. Example:
  /// `state:RUNNING` * use a free text query. Example: `RUNNING`
  core.String? state;

  /// TagKey namespaced names, in the format of {ORG_ID}/{TAG_KEY_SHORT_NAME}.
  ///
  /// To search against the `tagKeys`: * use a field query. Example: -
  /// `tagKeys:"123456789/env*"` - `tagKeys="123456789/env"` - `tagKeys:"env"` *
  /// use a free text query. Example: - `env`
  core.List<core.String>? tagKeys;

  /// TagValue IDs, in the format of tagValues/{TAG_VALUE_ID}.
  ///
  /// To search against the `tagValueIds`: * use a field query. Example: -
  /// `tagValueIds:"456"` - `tagValueIds="tagValues/456"` * use a free text
  /// query. Example: - `456`
  core.List<core.String>? tagValueIds;

  /// TagValue namespaced names, in the format of
  /// {ORG_ID}/{TAG_KEY_SHORT_NAME}/{TAG_VALUE_SHORT_NAME}.
  ///
  /// To search against the `tagValues`: * use a field query. Example: -
  /// `tagValues:"env"` - `tagValues:"env/prod"` -
  /// `tagValues:"123456789/env/prod*"` - `tagValues="123456789/env/prod"` * use
  /// a free text query. Example: - `prod`
  core.List<core.String>? tagValues;

  /// The last update timestamp of this resource, at which the resource was last
  /// modified or deleted.
  ///
  /// The granularity is in seconds. Timestamp.nanos will always be 0. This
  /// field is available only when the resource's Protobuf contains it. To
  /// search against `update_time`: * use a field query. - value in seconds
  /// since unix epoch. Example: `updateTime < 1609459200` - value in date
  /// string. Example: `updateTime < 2021-01-01` - value in date-time string
  /// (must be quoted). Example: `updateTime < "2021-01-01T00:00:00"`
  core.String? updateTime;

  /// Versioned resource representations of this resource.
  ///
  /// This is repeated because there could be multiple versions of resource
  /// representations during version migration. This `versioned_resources` field
  /// is not searchable. Some attributes of the resource representations are
  /// exposed in `additional_attributes` field, so as to allow users to search
  /// on them.
  core.List<VersionedResource>? versionedResources;

  ResourceSearchResult({
    this.additionalAttributes,
    this.assetType,
    this.attachedResources,
    this.createTime,
    this.description,
    this.displayName,
    this.folders,
    this.kmsKey,
    this.labels,
    this.location,
    this.name,
    this.networkTags,
    this.organization,
    this.parentAssetType,
    this.parentFullResourceName,
    this.project,
    this.relationships,
    this.state,
    this.tagKeys,
    this.tagValueIds,
    this.tagValues,
    this.updateTime,
    this.versionedResources,
  });

  ResourceSearchResult.fromJson(core.Map json_)
      : this(
          additionalAttributes: json_.containsKey('additionalAttributes')
              ? json_['additionalAttributes']
                  as core.Map<core.String, core.dynamic>
              : null,
          assetType: json_.containsKey('assetType')
              ? json_['assetType'] as core.String
              : null,
          attachedResources: json_.containsKey('attachedResources')
              ? (json_['attachedResources'] as core.List)
                  .map((value) => AttachedResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          folders: json_.containsKey('folders')
              ? (json_['folders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkTags: json_.containsKey('networkTags')
              ? (json_['networkTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          organization: json_.containsKey('organization')
              ? json_['organization'] as core.String
              : null,
          parentAssetType: json_.containsKey('parentAssetType')
              ? json_['parentAssetType'] as core.String
              : null,
          parentFullResourceName: json_.containsKey('parentFullResourceName')
              ? json_['parentFullResourceName'] as core.String
              : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          relationships: json_.containsKey('relationships')
              ? (json_['relationships'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    RelatedResources.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          tagKeys: json_.containsKey('tagKeys')
              ? (json_['tagKeys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tagValueIds: json_.containsKey('tagValueIds')
              ? (json_['tagValueIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tagValues: json_.containsKey('tagValues')
              ? (json_['tagValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          versionedResources: json_.containsKey('versionedResources')
              ? (json_['versionedResources'] as core.List)
                  .map((value) => VersionedResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalAttributes != null)
          'additionalAttributes': additionalAttributes!,
        if (assetType != null) 'assetType': assetType!,
        if (attachedResources != null) 'attachedResources': attachedResources!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (folders != null) 'folders': folders!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (networkTags != null) 'networkTags': networkTags!,
        if (organization != null) 'organization': organization!,
        if (parentAssetType != null) 'parentAssetType': parentAssetType!,
        if (parentFullResourceName != null)
          'parentFullResourceName': parentFullResourceName!,
        if (project != null) 'project': project!,
        if (relationships != null) 'relationships': relationships!,
        if (state != null) 'state': state!,
        if (tagKeys != null) 'tagKeys': tagKeys!,
        if (tagValueIds != null) 'tagValueIds': tagValueIds!,
        if (tagValues != null) 'tagValues': tagValues!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (versionedResources != null)
          'versionedResources': versionedResources!,
      };
}

/// Specifies the resource to analyze for access policies, which may be set
/// directly on the resource, or on ancestors such as organizations, folders or
/// projects.
class ResourceSelector {
  /// The
  /// [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  /// of a resource of
  /// [supported resource types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#analyzable_asset_types).
  ///
  /// Required.
  core.String? fullResourceName;

  ResourceSelector({
    this.fullResourceName,
  });

  ResourceSelector.fromJson(core.Map json_)
      : this(
          fullResourceName: json_.containsKey('fullResourceName')
              ? json_['fullResourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
      };
}

/// A saved query which can be shared with others or used later.
class SavedQuery {
  /// The query content.
  QueryContent? content;

  /// The create time of this saved query.
  ///
  /// Output only.
  core.String? createTime;

  /// The account's email address who has created this saved query.
  ///
  /// Output only.
  core.String? creator;

  /// The description of this saved query.
  ///
  /// This value should be fewer than 255 characters.
  core.String? description;

  /// Labels applied on the resource.
  ///
  /// This value should not contain more than 10 entries. The key and value of
  /// each entry must be non-empty and fewer than 64 characters.
  core.Map<core.String, core.String>? labels;

  /// The last update time of this saved query.
  ///
  /// Output only.
  core.String? lastUpdateTime;

  /// The account's email address who has updated this saved query most
  /// recently.
  ///
  /// Output only.
  core.String? lastUpdater;

  /// The resource name of the saved query.
  ///
  /// The format must be: * projects/project_number/savedQueries/saved_query_id
  /// * folders/folder_number/savedQueries/saved_query_id *
  /// organizations/organization_number/savedQueries/saved_query_id
  core.String? name;

  SavedQuery({
    this.content,
    this.createTime,
    this.creator,
    this.description,
    this.labels,
    this.lastUpdateTime,
    this.lastUpdater,
    this.name,
  });

  SavedQuery.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? QueryContent.fromJson(
                  json_['content'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? json_['creator'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lastUpdateTime: json_.containsKey('lastUpdateTime')
              ? json_['lastUpdateTime'] as core.String
              : null,
          lastUpdater: json_.containsKey('lastUpdater')
              ? json_['lastUpdater'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (lastUpdater != null) 'lastUpdater': lastUpdater!,
        if (name != null) 'name': name!,
      };
}

/// Search all IAM policies response.
class SearchAllIamPoliciesResponse {
  /// Set if there are more results than those appearing in this response; to
  /// get the next set of results, call this method again, using this value as
  /// the `page_token`.
  core.String? nextPageToken;

  /// A list of IamPolicy that match the search query.
  ///
  /// Related information such as the associated resource is returned along with
  /// the policy.
  core.List<IamPolicySearchResult>? results;

  SearchAllIamPoliciesResponse({
    this.nextPageToken,
    this.results,
  });

  SearchAllIamPoliciesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => IamPolicySearchResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (results != null) 'results': results!,
      };
}

/// Search all resources response.
class SearchAllResourcesResponse {
  /// If there are more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// A list of Resources that match the search query.
  ///
  /// It contains the resource standard metadata information.
  core.List<ResourceSearchResult>? results;

  SearchAllResourcesResponse({
    this.nextPageToken,
    this.results,
  });

  SearchAllResourcesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => ResourceSearchResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (results != null) 'results': results!,
      };
}

/// Software package information of the operating system.
class SoftwarePackage {
  /// Details of an APT package.
  ///
  /// For details about the apt package manager, see
  /// https://wiki.debian.org/Apt.
  VersionedPackage? aptPackage;

  /// Details of a COS package.
  VersionedPackage? cosPackage;

  /// Details of a Googet package.
  ///
  /// For details about the googet package manager, see
  /// https://github.com/google/googet.
  VersionedPackage? googetPackage;

  /// Details of a Windows Quick Fix engineering package.
  ///
  /// See
  /// https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
  /// for info in Windows Quick Fix Engineering.
  WindowsQuickFixEngineeringPackage? qfePackage;

  /// Details of Windows Application.
  WindowsApplication? windowsApplication;

  /// Details of a Windows Update package.
  ///
  /// See https://docs.microsoft.com/en-us/windows/win32/api/_wua/ for
  /// information about Windows Update.
  WindowsUpdatePackage? wuaPackage;

  /// Yum package info.
  ///
  /// For details about the yum package manager, see
  /// https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/ch-yum.
  VersionedPackage? yumPackage;

  /// Details of a Zypper package.
  ///
  /// For details about the Zypper package manager, see
  /// https://en.opensuse.org/SDB:Zypper_manual.
  VersionedPackage? zypperPackage;

  /// Details of a Zypper patch.
  ///
  /// For details about the Zypper package manager, see
  /// https://en.opensuse.org/SDB:Zypper_manual.
  ZypperPatch? zypperPatch;

  SoftwarePackage({
    this.aptPackage,
    this.cosPackage,
    this.googetPackage,
    this.qfePackage,
    this.windowsApplication,
    this.wuaPackage,
    this.yumPackage,
    this.zypperPackage,
    this.zypperPatch,
  });

  SoftwarePackage.fromJson(core.Map json_)
      : this(
          aptPackage: json_.containsKey('aptPackage')
              ? VersionedPackage.fromJson(
                  json_['aptPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          cosPackage: json_.containsKey('cosPackage')
              ? VersionedPackage.fromJson(
                  json_['cosPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          googetPackage: json_.containsKey('googetPackage')
              ? VersionedPackage.fromJson(
                  json_['googetPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          qfePackage: json_.containsKey('qfePackage')
              ? WindowsQuickFixEngineeringPackage.fromJson(
                  json_['qfePackage'] as core.Map<core.String, core.dynamic>)
              : null,
          windowsApplication: json_.containsKey('windowsApplication')
              ? WindowsApplication.fromJson(json_['windowsApplication']
                  as core.Map<core.String, core.dynamic>)
              : null,
          wuaPackage: json_.containsKey('wuaPackage')
              ? WindowsUpdatePackage.fromJson(
                  json_['wuaPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          yumPackage: json_.containsKey('yumPackage')
              ? VersionedPackage.fromJson(
                  json_['yumPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          zypperPackage: json_.containsKey('zypperPackage')
              ? VersionedPackage.fromJson(
                  json_['zypperPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          zypperPatch: json_.containsKey('zypperPatch')
              ? ZypperPatch.fromJson(
                  json_['zypperPatch'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aptPackage != null) 'aptPackage': aptPackage!,
        if (cosPackage != null) 'cosPackage': cosPackage!,
        if (googetPackage != null) 'googetPackage': googetPackage!,
        if (qfePackage != null) 'qfePackage': qfePackage!,
        if (windowsApplication != null)
          'windowsApplication': windowsApplication!,
        if (wuaPackage != null) 'wuaPackage': wuaPackage!,
        if (yumPackage != null) 'yumPackage': yumPackage!,
        if (zypperPackage != null) 'zypperPackage': zypperPackage!,
        if (zypperPatch != null) 'zypperPatch': zypperPatch!,
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

/// An asset in Google Cloud and its temporal metadata, including the time
/// window when it was observed and its status during that window.
class TemporalAsset {
  /// An asset in Google Cloud.
  Asset? asset;

  /// Whether the asset has been deleted or not.
  core.bool? deleted;

  /// Prior copy of the asset.
  ///
  /// Populated if prior_asset_state is PRESENT. Currently this is only set for
  /// responses in Real-Time Feed.
  Asset? priorAsset;

  /// State of prior_asset.
  /// Possible string values are:
  /// - "PRIOR_ASSET_STATE_UNSPECIFIED" : prior_asset is not applicable for the
  /// current asset.
  /// - "PRESENT" : prior_asset is populated correctly.
  /// - "INVALID" : Failed to set prior_asset.
  /// - "DOES_NOT_EXIST" : Current asset is the first known state.
  /// - "DELETED" : prior_asset is a deletion.
  core.String? priorAssetState;

  /// The time window when the asset data and state was observed.
  TimeWindow? window;

  TemporalAsset({
    this.asset,
    this.deleted,
    this.priorAsset,
    this.priorAssetState,
    this.window,
  });

  TemporalAsset.fromJson(core.Map json_)
      : this(
          asset: json_.containsKey('asset')
              ? Asset.fromJson(
                  json_['asset'] as core.Map<core.String, core.dynamic>)
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          priorAsset: json_.containsKey('priorAsset')
              ? Asset.fromJson(
                  json_['priorAsset'] as core.Map<core.String, core.dynamic>)
              : null,
          priorAssetState: json_.containsKey('priorAssetState')
              ? json_['priorAssetState'] as core.String
              : null,
          window: json_.containsKey('window')
              ? TimeWindow.fromJson(
                  json_['window'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
        if (deleted != null) 'deleted': deleted!,
        if (priorAsset != null) 'priorAsset': priorAsset!,
        if (priorAssetState != null) 'priorAssetState': priorAssetState!,
        if (window != null) 'window': window!,
      };
}

/// A time window specified by its `start_time` and `end_time`.
class TimeWindow {
  /// End time of the time window (inclusive).
  ///
  /// If not specified, the current timestamp is used instead.
  core.String? endTime;

  /// Start time of the time window (exclusive).
  core.String? startTime;

  TimeWindow({
    this.endTime,
    this.startTime,
  });

  TimeWindow.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Update asset feed request.
class UpdateFeedRequest {
  /// The new values of feed details.
  ///
  /// It must match an existing feed and the field `name` must be in the format
  /// of: projects/project_number/feeds/feed_id or
  /// folders/folder_number/feeds/feed_id or
  /// organizations/organization_number/feeds/feed_id.
  ///
  /// Required.
  Feed? feed;

  /// Only updates the `feed` fields indicated by this mask.
  ///
  /// The field mask must not be empty, and it must not contain fields that are
  /// immutable or only set by the server.
  ///
  /// Required.
  core.String? updateMask;

  UpdateFeedRequest({
    this.feed,
    this.updateMask,
  });

  UpdateFeedRequest.fromJson(core.Map json_)
      : this(
          feed: json_.containsKey('feed')
              ? Feed.fromJson(
                  json_['feed'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feed != null) 'feed': feed!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Information related to the a standard versioned package.
///
/// This includes package info for APT, Yum, Zypper, and Googet package
/// managers.
typedef VersionedPackage = $VersionedPackage;

/// Resource representation as defined by the corresponding service providing
/// the resource for a given API version.
class VersionedResource {
  /// JSON representation of the resource as defined by the corresponding
  /// service providing this resource.
  ///
  /// Example: If the resource is an instance provided by Compute Engine, this
  /// field will contain the JSON representation of the instance as defined by
  /// Compute Engine:
  /// `https://cloud.google.com/compute/docs/reference/rest/v1/instances`. You
  /// can find the resource definition for each supported resource type in this
  /// table:
  /// `https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types`
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? resource;

  /// API version of the resource.
  ///
  /// Example: If the resource is an instance provided by Compute Engine v1 API
  /// as defined in
  /// `https://cloud.google.com/compute/docs/reference/rest/v1/instances`,
  /// version will be "v1".
  core.String? version;

  VersionedResource({
    this.resource,
    this.version,
  });

  VersionedResource.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.Map<core.String, core.dynamic>
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
        if (version != null) 'version': version!,
      };
}

/// Contains information about a Windows application that is retrieved from the
/// Windows Registry.
///
/// For more information about these fields, see:
/// https://docs.microsoft.com/en-us/windows/win32/msi/uninstall-registry-key
class WindowsApplication {
  /// The name of the application or product.
  core.String? displayName;

  /// The version of the product or application in string format.
  core.String? displayVersion;

  /// The internet address for technical support.
  core.String? helpLink;

  /// The last time this product received service.
  ///
  /// The value of this property is replaced each time a patch is applied or
  /// removed from the product or the command-line option is used to repair the
  /// product.
  Date? installDate;

  /// The name of the manufacturer for the product or application.
  core.String? publisher;

  WindowsApplication({
    this.displayName,
    this.displayVersion,
    this.helpLink,
    this.installDate,
    this.publisher,
  });

  WindowsApplication.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          displayVersion: json_.containsKey('displayVersion')
              ? json_['displayVersion'] as core.String
              : null,
          helpLink: json_.containsKey('helpLink')
              ? json_['helpLink'] as core.String
              : null,
          installDate: json_.containsKey('installDate')
              ? Date.fromJson(
                  json_['installDate'] as core.Map<core.String, core.dynamic>)
              : null,
          publisher: json_.containsKey('publisher')
              ? json_['publisher'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (displayVersion != null) 'displayVersion': displayVersion!,
        if (helpLink != null) 'helpLink': helpLink!,
        if (installDate != null) 'installDate': installDate!,
        if (publisher != null) 'publisher': publisher!,
      };
}

/// Information related to a Quick Fix Engineering package.
///
/// Fields are taken from Windows QuickFixEngineering Interface and match the
/// source names:
/// https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
typedef WindowsQuickFixEngineeringPackage = $WindowsQuickFixEngineeringPackage;

/// Categories specified by the Windows Update.
typedef WindowsUpdateCategory = $WindowsUpdateCategory;

/// Details related to a Windows Update package.
///
/// Field data and names are taken from Windows Update API IUpdate Interface:
/// https://docs.microsoft.com/en-us/windows/win32/api/_wua/ Descriptive fields
/// like title, and description are localized based on the locale of the VM
/// being updated.
class WindowsUpdatePackage {
  /// The categories that are associated with this update package.
  core.List<WindowsUpdateCategory>? categories;

  /// The localized description of the update package.
  core.String? description;

  /// A collection of Microsoft Knowledge Base article IDs that are associated
  /// with the update package.
  core.List<core.String>? kbArticleIds;

  /// The last published date of the update, in (UTC) date and time.
  core.String? lastDeploymentChangeTime;

  /// A collection of URLs that provide more information about the update
  /// package.
  core.List<core.String>? moreInfoUrls;

  /// The revision number of this update package.
  core.int? revisionNumber;

  /// A hyperlink to the language-specific support information for the update.
  core.String? supportUrl;

  /// The localized title of the update package.
  core.String? title;

  /// Gets the identifier of an update package.
  ///
  /// Stays the same across revisions.
  core.String? updateId;

  WindowsUpdatePackage({
    this.categories,
    this.description,
    this.kbArticleIds,
    this.lastDeploymentChangeTime,
    this.moreInfoUrls,
    this.revisionNumber,
    this.supportUrl,
    this.title,
    this.updateId,
  });

  WindowsUpdatePackage.fromJson(core.Map json_)
      : this(
          categories: json_.containsKey('categories')
              ? (json_['categories'] as core.List)
                  .map((value) => WindowsUpdateCategory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          kbArticleIds: json_.containsKey('kbArticleIds')
              ? (json_['kbArticleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lastDeploymentChangeTime:
              json_.containsKey('lastDeploymentChangeTime')
                  ? json_['lastDeploymentChangeTime'] as core.String
                  : null,
          moreInfoUrls: json_.containsKey('moreInfoUrls')
              ? (json_['moreInfoUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          revisionNumber: json_.containsKey('revisionNumber')
              ? json_['revisionNumber'] as core.int
              : null,
          supportUrl: json_.containsKey('supportUrl')
              ? json_['supportUrl'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          updateId: json_.containsKey('updateId')
              ? json_['updateId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
        if (description != null) 'description': description!,
        if (kbArticleIds != null) 'kbArticleIds': kbArticleIds!,
        if (lastDeploymentChangeTime != null)
          'lastDeploymentChangeTime': lastDeploymentChangeTime!,
        if (moreInfoUrls != null) 'moreInfoUrls': moreInfoUrls!,
        if (revisionNumber != null) 'revisionNumber': revisionNumber!,
        if (supportUrl != null) 'supportUrl': supportUrl!,
        if (title != null) 'title': title!,
        if (updateId != null) 'updateId': updateId!,
      };
}

/// Details related to a Zypper Patch.
typedef ZypperPatch = $ZypperPatch;
