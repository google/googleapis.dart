// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis.cloudasset.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudasset/v1';

/// The cloud asset API manages the history and inventory of cloud resources.
class CloudassetApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  FeedsResourceApi get feeds => FeedsResourceApi(_requester);
  OperationsResourceApi get operations => OperationsResourceApi(_requester);
  V1ResourceApi get v1 => V1ResourceApi(_requester);

  CloudassetApi(http.Client client,
      {core.String rootUrl = 'https://cloudasset.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class FeedsResourceApi {
  final commons.ApiRequester _requester;

  FeedsResourceApi(commons.ApiRequester client) : _requester = client;

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
  /// Value must have pattern "^[^/]+/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/feeds';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Feed.fromJson(data));
  }

  /// Deletes an asset feed.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the feed and it must be in the format of:
  /// projects/project_number/feeds/feed_id folders/folder_number/feeds/feed_id
  /// organizations/organization_number/feeds/feed_id
  /// Value must have pattern "^[^/]+/[^/]+/feeds/[^/]+$".
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
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Gets details about an asset feed.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Feed and it must be in the format of:
  /// projects/project_number/feeds/feed_id folders/folder_number/feeds/feed_id
  /// organizations/organization_number/feeds/feed_id
  /// Value must have pattern "^[^/]+/[^/]+/feeds/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Feed.fromJson(data));
  }

  /// Lists all asset feeds in a parent project/folder/organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project/folder/organization whose feeds
  /// are to be listed. It can only be using project/folder/organization number
  /// (such as "folders/12345")", or a project ID (such as
  /// "projects/my-project-id").
  /// Value must have pattern "^[^/]+/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/feeds';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListFeedsResponse.fromJson(data));
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
  /// Value must have pattern "^[^/]+/[^/]+/feeds/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Feed.fromJson(data));
  }
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^[^/]+/[^/]+/operations/[^/]+/.*$".
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
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class V1ResourceApi {
  final commons.ApiRequester _requester;

  V1ResourceApi(commons.ApiRequester client) : _requester = client;

  /// Batch gets the update history of assets that overlap a time window. For
  /// IAM_POLICY content, this API outputs history when the asset and its
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
  /// Value must have pattern "^[^/]+/[^/]+$".
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
  ///
  /// [readTimeWindow_endTime] - End time of the time window (inclusive). If not
  /// specified, the current timestamp is used instead.
  ///
  /// [readTimeWindow_startTime] - Start time of the time window (exclusive).
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
    core.List<core.String> assetNames,
    core.String contentType,
    core.String readTimeWindow_endTime,
    core.String readTimeWindow_startTime,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (assetNames != null) {
      _queryParams['assetNames'] = assetNames;
    }
    if (contentType != null) {
      _queryParams['contentType'] = [contentType];
    }
    if (readTimeWindow_endTime != null) {
      _queryParams['readTimeWindow.endTime'] = [readTimeWindow_endTime];
    }
    if (readTimeWindow_startTime != null) {
      _queryParams['readTimeWindow.startTime'] = [readTimeWindow_startTime];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':batchGetAssetsHistory';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => BatchGetAssetsHistoryResponse.fromJson(data));
  }

  /// Exports assets with time and resource types to a given Cloud Storage
  /// location/BigQuery table. For Cloud Storage location destinations, the
  /// output format is newline-delimited JSON. Each line represents a
  /// google.cloud.asset.v1.Asset in the JSON format; for BigQuery table
  /// destinations, the output table stores the fields in asset proto as
  /// columns. This API implements the google.longrunning.Operation API , which
  /// allows you to keep track of the export. We recommend intervals of at least
  /// 2 seconds with exponential retry to poll the export operation result. For
  /// regular-size resource parent, the export operation usually finishes within
  /// 5 minutes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative name of the root asset. This can only be
  /// an organization number (such as "organizations/123"), a project ID (such
  /// as "projects/my-project-id"), or a project number (such as
  /// "projects/12345"), or a folder number (such as "folders/123").
  /// Value must have pattern "^[^/]+/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':exportAssets';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Searches all IAM policies within the specified scope, such as a project,
  /// folder, or organization. The caller must be granted the
  /// `cloudasset.assets.searchAllIamPolicies` permission on the desired scope,
  /// otherwise the request will be rejected.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. A scope can be a project, a folder, or an
  /// organization. The search is limited to the IAM policies within the
  /// `scope`. The caller must be granted the
  /// [`cloudasset.assets.searchAllIamPolicies`](http://cloud.google.com/asset-inventory/docs/access-control#required_permissions)
  /// permission on the desired scope. The allowed values are: *
  /// projects/{PROJECT_ID} (e.g., "projects/foo-bar") *
  /// projects/{PROJECT_NUMBER} (e.g., "projects/12345678") *
  /// folders/{FOLDER_NUMBER} (e.g., "folders/1234567") *
  /// organizations/{ORGANIZATION_NUMBER} (e.g., "organizations/123456")
  /// Value must have pattern "^[^/]+/[^/]+$".
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
  /// [query] - Optional. The query statement. See [how to construct a
  /// query](https://cloud.google.com/asset-inventory/docs/searching-iam-policies#how_to_construct_a_query)
  /// for more information. If not specified or empty, it will search all the
  /// IAM policies within the specified `scope`. Examples: *
  /// `policy:amy@gmail.com` to find IAM policy bindings that specify user
  /// "amy@gmail.com". * `policy:roles/compute.admin` to find IAM policy
  /// bindings that specify the Compute Admin role. *
  /// `policy.role.permissions:storage.buckets.update` to find IAM policy
  /// bindings that specify a role containing "storage.buckets.update"
  /// permission. Note that if callers don't have `iam.roles.get` access to a
  /// role's included permissions, policy bindings that specify this role will
  /// be dropped from the search results. * `resource:organizations/123456` to
  /// find IAM policy bindings that are set on "organizations/123456". *
  /// `Important` to find IAM policy bindings that contain "Important" as a word
  /// in any of the searchable fields (except for the included permissions). *
  /// `*por*` to find IAM policy bindings that contain "por" as a substring in
  /// any of the searchable fields (except for the included permissions). *
  /// `resource:(instance1 OR instance2) policy:amy` to find IAM policy bindings
  /// that are set on resources "instance1" or "instance2" and also specify user
  /// "amy".
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
    core.int pageSize,
    core.String pageToken,
    core.String query,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (scope == null) {
      throw core.ArgumentError('Parameter scope is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (query != null) {
      _queryParams['query'] = [query];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$scope') +
        ':searchAllIamPolicies';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => SearchAllIamPoliciesResponse.fromJson(data));
  }

  /// Searches all Cloud resources within the specified scope, such as a
  /// project, folder, or organization. The caller must be granted the
  /// `cloudasset.assets.searchAllResources` permission on the desired scope,
  /// otherwise the request will be rejected.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. A scope can be a project, a folder, or an
  /// organization. The search is limited to the resources within the `scope`.
  /// The caller must be granted the
  /// [`cloudasset.assets.searchAllResources`](http://cloud.google.com/asset-inventory/docs/access-control#required_permissions)
  /// permission on the desired scope. The allowed values are: *
  /// projects/{PROJECT_ID} (e.g., "projects/foo-bar") *
  /// projects/{PROJECT_NUMBER} (e.g., "projects/12345678") *
  /// folders/{FOLDER_NUMBER} (e.g., "folders/1234567") *
  /// organizations/{ORGANIZATION_NUMBER} (e.g., "organizations/123456")
  /// Value must have pattern "^[^/]+/[^/]+$".
  ///
  /// [assetTypes] - Optional. A list of asset types that this request searches
  /// for. If empty, it will search all the [searchable asset
  /// types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types).
  ///
  /// [orderBy] - Optional. A comma separated list of fields specifying the
  /// sorting order of the results. The default order is ascending. Add " DESC"
  /// after the field name to indicate descending order. Redundant space
  /// characters are ignored. Example: "location DESC, name". Only string fields
  /// in the response are sortable, including `name`, `displayName`,
  /// `description`, `location`. All the other fields such as repeated fields
  /// (e.g., `networkTags`), map fields (e.g., `labels`) and struct fields
  /// (e.g., `additionalAttributes`) are not supported.
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
  /// [query] - Optional. The query statement. See [how to construct a
  /// query](http://cloud.google.com/asset-inventory/docs/searching-resources#how_to_construct_a_query)
  /// for more information. If not specified or empty, it will search all the
  /// resources within the specified `scope`. Note that the query string is
  /// compared against each Cloud IAM policy binding, including its members,
  /// roles, and Cloud IAM conditions. The returned Cloud IAM policies will only
  /// contain the bindings that match your query. To learn more about the IAM
  /// policy structure, see [IAM policy
  /// doc](https://cloud.google.com/iam/docs/policies#structure). Examples: *
  /// `name:Important` to find Cloud resources whose name contains "Important"
  /// as a word. * `displayName:Impor*` to find Cloud resources whose display
  /// name contains "Impor" as a prefix. * `description:*por*` to find Cloud
  /// resources whose description contains "por" as a substring. *
  /// `location:us-west*` to find Cloud resources whose location is prefixed
  /// with "us-west". * `labels:prod` to find Cloud resources whose labels
  /// contain "prod" as a key or value. * `labels.env:prod` to find Cloud
  /// resources that have a label "env" and its value is "prod". *
  /// `labels.env:*` to find Cloud resources that have a label "env". *
  /// `Important` to find Cloud resources that contain "Important" as a word in
  /// any of the searchable fields. * `Impor*` to find Cloud resources that
  /// contain "Impor" as a prefix in any of the searchable fields. * `*por*` to
  /// find Cloud resources that contain "por" as a substring in any of the
  /// searchable fields. * `Important location:(us-west1 OR global)` to find
  /// Cloud resources that contain "Important" as a word in any of the
  /// searchable fields and are also located in the "us-west1" region or the
  /// "global" location.
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
    core.List<core.String> assetTypes,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String query,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (scope == null) {
      throw core.ArgumentError('Parameter scope is required.');
    }
    if (assetTypes != null) {
      _queryParams['assetTypes'] = assetTypes;
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (query != null) {
      _queryParams['query'] = [query];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$scope') +
        ':searchAllResources';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SearchAllResourcesResponse.fromJson(data));
  }
}

/// An asset in Google Cloud. An asset can be any resource in the Google Cloud
/// [resource
/// hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
/// a resource outside the Google Cloud resource hierarchy (such as Google
/// Kubernetes Engine clusters and objects), or a policy (e.g. Cloud IAM
/// policy). See [Supported asset
/// types](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
/// for more information.
class Asset {
  /// Please also refer to the [access level user
  /// guide](https://cloud.google.com/access-context-manager/docs/overview#access-levels).
  GoogleIdentityAccesscontextmanagerV1AccessLevel accessLevel;

  /// Please also refer to the [access policy user
  /// guide](https://cloud.google.com/access-context-manager/docs/overview#access-policies).
  GoogleIdentityAccesscontextmanagerV1AccessPolicy accessPolicy;

  /// The ancestry path of an asset in Google Cloud [resource
  /// hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
  /// represented as a list of relative resource names. An ancestry path starts
  /// with the closest ancestor in the hierarchy and ends at root. If the asset
  /// is a project, folder, or organization, the ancestry path starts from the
  /// asset itself. Example: `["projects/123456789", "folders/5432",
  /// "organizations/1234"]`
  core.List<core.String> ancestors;

  /// The type of the asset. Example: `compute.googleapis.com/Disk` See
  /// [Supported asset
  /// types](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
  /// for more information.
  core.String assetType;

  /// A representation of the Cloud IAM policy set on a Google Cloud resource.
  /// There can be a maximum of one Cloud IAM policy set on any given resource.
  /// In addition, Cloud IAM policies inherit their granted access scope from
  /// any policies set on parent resources in the resource hierarchy. Therefore,
  /// the effectively policy is the union of both the policy set on this
  /// resource and each policy set on all of the resource's ancestry resource
  /// levels in the hierarchy. See [this
  /// topic](https://cloud.google.com/iam/docs/policies#inheritance) for more
  /// information.
  Policy iamPolicy;

  /// The full name of the asset. Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`
  /// See [Resource
  /// names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  core.String name;

  /// A representation of an [organization
  /// policy](https://cloud.google.com/resource-manager/docs/organization-policy/overview#organization_policy).
  /// There can be more than one organization policy with different constraints
  /// set on a given resource.
  core.List<GoogleCloudOrgpolicyV1Policy> orgPolicy;

  /// A representation of the resource.
  Resource resource;

  /// Please also refer to the [service perimeter user
  /// guide](https://cloud.google.com/vpc-service-controls/docs/overview).
  GoogleIdentityAccesscontextmanagerV1ServicePerimeter servicePerimeter;

  /// The last update timestamp of an asset. update_time is updated when
  /// create/update/delete operation is performed.
  core.String updateTime;

  Asset();

  Asset.fromJson(core.Map _json) {
    if (_json.containsKey('accessLevel')) {
      accessLevel = GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(
          _json['accessLevel']);
    }
    if (_json.containsKey('accessPolicy')) {
      accessPolicy = GoogleIdentityAccesscontextmanagerV1AccessPolicy.fromJson(
          _json['accessPolicy']);
    }
    if (_json.containsKey('ancestors')) {
      ancestors = (_json['ancestors'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('assetType')) {
      assetType = _json['assetType'];
    }
    if (_json.containsKey('iamPolicy')) {
      iamPolicy = Policy.fromJson(_json['iamPolicy']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('orgPolicy')) {
      orgPolicy = (_json['orgPolicy'] as core.List)
          .map<GoogleCloudOrgpolicyV1Policy>(
              (value) => GoogleCloudOrgpolicyV1Policy.fromJson(value))
          .toList();
    }
    if (_json.containsKey('resource')) {
      resource = Resource.fromJson(_json['resource']);
    }
    if (_json.containsKey('servicePerimeter')) {
      servicePerimeter =
          GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(
              _json['servicePerimeter']);
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (accessLevel != null) {
      _json['accessLevel'] = accessLevel.toJson();
    }
    if (accessPolicy != null) {
      _json['accessPolicy'] = accessPolicy.toJson();
    }
    if (ancestors != null) {
      _json['ancestors'] = ancestors;
    }
    if (assetType != null) {
      _json['assetType'] = assetType;
    }
    if (iamPolicy != null) {
      _json['iamPolicy'] = iamPolicy.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (orgPolicy != null) {
      _json['orgPolicy'] = orgPolicy.map((value) => value.toJson()).toList();
    }
    if (resource != null) {
      _json['resource'] = resource.toJson();
    }
    if (servicePerimeter != null) {
      _json['servicePerimeter'] = servicePerimeter.toJson();
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service. The configuration
/// determines which permission types are logged, and what identities, if any,
/// are exempted from logging. An AuditConfig must have one or more
/// AuditLogConfigs. If there are AuditConfigs for both `allServices` and a
/// specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": [ { "service": "allServices",
/// "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
/// "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For
/// sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging. For example,
  /// `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a
  /// special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey('auditLogConfigs')) {
      auditLogConfigs = (_json['auditLogConfigs'] as core.List)
          .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (auditLogConfigs != null) {
      _json['auditLogConfigs'] =
          auditLogConfigs.map((value) => value.toJson()).toList();
    }
    if (service != null) {
      _json['service'] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions. Example: {
/// "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
/// "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables
/// 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
/// DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission. Follows the same format of Binding.members.
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
      exemptedMembers =
          (_json['exemptedMembers'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (exemptedMembers != null) {
      _json['exemptedMembers'] = exemptedMembers;
    }
    if (logType != null) {
      _json['logType'] = logType;
    }
    return _json;
  }
}

/// Batch get assets history response.
class BatchGetAssetsHistoryResponse {
  /// A list of assets with valid time windows.
  core.List<TemporalAsset> assets;

  BatchGetAssetsHistoryResponse();

  BatchGetAssetsHistoryResponse.fromJson(core.Map _json) {
    if (_json.containsKey('assets')) {
      assets = (_json['assets'] as core.List)
          .map<TemporalAsset>((value) => TemporalAsset.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (assets != null) {
      _json['assets'] = assets.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A BigQuery destination for exporting assets to.
class BigQueryDestination {
  /// Required. The BigQuery dataset in format
  /// "projects/projectId/datasets/datasetId", to which the snapshot result
  /// should be exported. If this dataset does not exist, the export call
  /// returns an INVALID_ARGUMENT error.
  core.String dataset;

  /// If the destination table already exists and this flag is `TRUE`, the table
  /// will be overwritten by the contents of assets snapshot. If the flag is
  /// `FALSE` or unset and the destination table already exists, the export call
  /// returns an INVALID_ARGUMEMT error.
  core.bool force;

  /// [partition_spec] determines whether to export to partitioned table(s) and
  /// how to partition the data. If [partition_spec] is unset or
  /// [partition_spec.partion_key] is unset or `PARTITION_KEY_UNSPECIFIED`, the
  /// snapshot results will be exported to non-partitioned table(s). [force]
  /// will decide whether to overwrite existing table(s). If [partition_spec] is
  /// specified. First, the snapshot results will be written to partitioned
  /// table(s) with two additional timestamp columns, readTime and requestTime,
  /// one of which will be the partition key. Secondly, in the case when any
  /// destination table already exists, it will first try to update existing
  /// table's schema as necessary by appending additional columns. Then, if
  /// [force] is `TRUE`, the corresponding partition will be overwritten by the
  /// snapshot results (data in different partitions will remain intact); if
  /// [force] is unset or `FALSE`, it will append the data. An error will be
  /// returned if the schema update or data appension fails.
  PartitionSpec partitionSpec;

  /// If this flag is `TRUE`, the snapshot results will be written to one or
  /// multiple tables, each of which contains results of one asset type. The
  /// [force] and [partition_spec] fields will apply to each of them. Field
  /// [table] will be concatenated with "_" and the asset type names (see
  /// https://cloud.google.com/asset-inventory/docs/supported-asset-types for
  /// supported asset types) to construct per-asset-type table names, in which
  /// all non-alphanumeric characters like "." and "/" will be substituted by
  /// "_". Example: if field [table] is "mytable" and snapshot results contain
  /// "storage.googleapis.com/Bucket" assets, the corresponding table name will
  /// be "mytable_storage_googleapis_com_Bucket". If any of these tables does
  /// not exist, a new table with the concatenated name will be created. When
  /// [content_type] in the ExportAssetsRequest is `RESOURCE`, the schema of
  /// each table will include RECORD-type columns mapped to the nested fields in
  /// the Asset.resource.data field of that asset type (up to the 15 nested
  /// level BigQuery supports
  /// (https://cloud.google.com/bigquery/docs/nested-repeated#limitations)). The
  /// fields in >15 nested levels will be stored in JSON format string as a
  /// child column of its parent RECORD column. If error occurs when exporting
  /// to any table, the whole export call will return an error but the export
  /// results that already succeed will persist. Example: if exporting to
  /// table_type_A succeeds when exporting to table_type_B fails during one
  /// export call, the results in table_type_A will persist and there will not
  /// be partial results persisting in a table.
  core.bool separateTablesPerAssetType;

  /// Required. The BigQuery table to which the snapshot result should be
  /// written. If this table does not exist, a new table with the given name
  /// will be created.
  core.String table;

  BigQueryDestination();

  BigQueryDestination.fromJson(core.Map _json) {
    if (_json.containsKey('dataset')) {
      dataset = _json['dataset'];
    }
    if (_json.containsKey('force')) {
      force = _json['force'];
    }
    if (_json.containsKey('partitionSpec')) {
      partitionSpec = PartitionSpec.fromJson(_json['partitionSpec']);
    }
    if (_json.containsKey('separateTablesPerAssetType')) {
      separateTablesPerAssetType = _json['separateTablesPerAssetType'];
    }
    if (_json.containsKey('table')) {
      table = _json['table'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (dataset != null) {
      _json['dataset'] = dataset;
    }
    if (force != null) {
      _json['force'] = force;
    }
    if (partitionSpec != null) {
      _json['partitionSpec'] = partitionSpec.toJson();
    }
    if (separateTablesPerAssetType != null) {
      _json['separateTablesPerAssetType'] = separateTablesPerAssetType;
    }
    if (table != null) {
      _json['table'] = table;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding. If the condition
  /// evaluates to `true`, then this binding applies to the current request. If
  /// the condition evaluates to `false`, then this binding does not apply to
  /// the current request. However, a different role binding might grant the
  /// same role to one or more of the members in this binding. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
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

  /// Role that is assigned to `members`. For example, `roles/viewer`,
  /// `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(_json['condition']);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('role')) {
      role = _json['role'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (members != null) {
      _json['members'] = members;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// Create asset feed request.
class CreateFeedRequest {
  /// Required. The feed details. The field `name` must be empty and it will be
  /// generated in the format of: projects/project_number/feeds/feed_id
  /// folders/folder_number/feeds/feed_id
  /// organizations/organization_number/feeds/feed_id
  Feed feed;

  /// Required. This is the client-assigned asset feed identifier and it needs
  /// to be unique under a specific parent project/folder/organization.
  core.String feedId;

  CreateFeedRequest();

  CreateFeedRequest.fromJson(core.Map _json) {
    if (_json.containsKey('feed')) {
      feed = Feed.fromJson(_json['feed']);
    }
    if (_json.containsKey('feedId')) {
      feedId = _json['feedId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (feed != null) {
      _json['feed'] = feed.toJson();
    }
    if (feedId != null) {
      _json['feedId'] = feedId;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Explanation about the IAM policy search result.
class Explanation {
  /// The map from roles to their included permissions that match the permission
  /// query (i.e., a query containing `policy.role.permissions:`). Example: if
  /// query `policy.role.permissions:compute.disk.get` matches a policy binding
  /// that contains owner role, the matched_permissions will be `{"roles/owner":
  /// ["compute.disk.get"]}`. The roles can also be found in the returned
  /// `policy` bindings. Note that the map is populated only for requests with
  /// permission queries.
  core.Map<core.String, Permissions> matchedPermissions;

  Explanation();

  Explanation.fromJson(core.Map _json) {
    if (_json.containsKey('matchedPermissions')) {
      matchedPermissions = commons.mapMap<core.Map, Permissions>(
          _json['matchedPermissions'].cast<core.String, core.Map>(),
          (core.Map item) => Permissions.fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (matchedPermissions != null) {
      _json['matchedPermissions'] =
          commons.mapMap<Permissions, core.Map<core.String, core.Object>>(
              matchedPermissions, (Permissions item) => item.toJson());
    }
    return _json;
  }
}

/// Export asset request.
class ExportAssetsRequest {
  /// A list of asset types to take a snapshot for. For example:
  /// "compute.googleapis.com/Disk". Regular expressions are also supported. For
  /// example: * "compute.googleapis.com.*" snapshots resources whose asset type
  /// starts with "compute.googleapis.com". * ".*Instance" snapshots resources
  /// whose asset type ends with "Instance". * ".*Instance.*" snapshots
  /// resources whose asset type contains "Instance". See
  /// [RE2](https://github.com/google/re2/wiki/Syntax) for all supported regular
  /// expression syntax. If the regular expression does not match any supported
  /// asset type, an INVALID_ARGUMENT error will be returned. If specified, only
  /// matching assets will be returned, otherwise, it will snapshot all asset
  /// types. See [Introduction to Cloud Asset
  /// Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all
  /// supported asset types.
  core.List<core.String> assetTypes;

  /// Asset content type. If not specified, no content but the asset name will
  /// be returned.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Unspecified content type.
  /// - "RESOURCE" : Resource metadata.
  /// - "IAM_POLICY" : The actual IAM policy set on a resource.
  /// - "ORG_POLICY" : The Cloud Organization Policy set on an asset.
  /// - "ACCESS_POLICY" : The Cloud Access context manager Policy set on an
  /// asset.
  core.String contentType;

  /// Required. Output configuration indicating where the results will be output
  /// to.
  OutputConfig outputConfig;

  /// Timestamp to take an asset snapshot. This can only be set to a timestamp
  /// between the current time and the current time minus 35 days (inclusive).
  /// If not specified, the current time will be used. Due to delays in resource
  /// data collection and indexing, there is a volatile window during which
  /// running the same query may get different results.
  core.String readTime;

  ExportAssetsRequest();

  ExportAssetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('assetTypes')) {
      assetTypes = (_json['assetTypes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('contentType')) {
      contentType = _json['contentType'];
    }
    if (_json.containsKey('outputConfig')) {
      outputConfig = OutputConfig.fromJson(_json['outputConfig']);
    }
    if (_json.containsKey('readTime')) {
      readTime = _json['readTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (assetTypes != null) {
      _json['assetTypes'] = assetTypes;
    }
    if (contentType != null) {
      _json['contentType'] = contentType;
    }
    if (outputConfig != null) {
      _json['outputConfig'] = outputConfig.toJson();
    }
    if (readTime != null) {
      _json['readTime'] = readTime;
    }
    return _json;
  }
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax. CEL is a C-like expression language. The syntax and semantics of CEL
/// are documented at https://github.com/google/cel-spec. Example (Comparison):
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
  /// Optional. Description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// Optional. String indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// Optional. Title for the expression, i.e. a short string describing its
  /// purpose. This can be used e.g. in UIs which allow to enter the expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'];
    }
    if (_json.containsKey('location')) {
      location = _json['location'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (expression != null) {
      _json['expression'] = expression;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// An asset feed used to export asset updates to a destinations. An asset feed
/// filter controls what updates are exported. The asset feed must be created
/// within a project, organization, or folder. Supported destinations are:
/// Pub/Sub topics.
class Feed {
  /// A list of the full names of the assets to receive updates. You must
  /// specify either or both of asset_names and asset_types. Only asset updates
  /// matching specified asset_names or asset_types are exported to the feed.
  /// Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// See [Resource
  /// Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more info.
  core.List<core.String> assetNames;

  /// A list of types of the assets to receive updates. You must specify either
  /// or both of asset_names and asset_types. Only asset updates matching
  /// specified asset_names or asset_types are exported to the feed. Example:
  /// `"compute.googleapis.com/Disk"` See [this
  /// topic](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
  /// for a list of all supported asset types.
  core.List<core.String> assetTypes;

  /// A condition which determines whether an asset update should be published.
  /// If specified, an asset will be returned only when the expression evaluates
  /// to true. When set, `expression` field in the `Expr` must be a valid [CEL
  /// expression] (https://github.com/google/cel-spec) on a TemporalAsset with
  /// name `temporal_asset`. Example: a Feed with expression
  /// ("temporal_asset.deleted == true") will only publish Asset deletions.
  /// Other fields of `Expr` are optional. See our [user
  /// guide](https://cloud.google.com/asset-inventory/docs/monitoring-asset-changes#feed_with_condition)
  /// for detailed instructions.
  Expr condition;

  /// Asset content type. If not specified, no content but the asset name and
  /// type will be returned.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Unspecified content type.
  /// - "RESOURCE" : Resource metadata.
  /// - "IAM_POLICY" : The actual IAM policy set on a resource.
  /// - "ORG_POLICY" : The Cloud Organization Policy set on an asset.
  /// - "ACCESS_POLICY" : The Cloud Access context manager Policy set on an
  /// asset.
  core.String contentType;

  /// Required. Feed output configuration defining where the asset updates are
  /// published to.
  FeedOutputConfig feedOutputConfig;

  /// Required. The format will be
  /// projects/{project_number}/feeds/{client-assigned_feed_identifier} or
  /// folders/{folder_number}/feeds/{client-assigned_feed_identifier} or
  /// organizations/{organization_number}/feeds/{client-assigned_feed_identifier}
  /// The client-assigned feed identifier must be unique within the parent
  /// project/folder/organization.
  core.String name;

  Feed();

  Feed.fromJson(core.Map _json) {
    if (_json.containsKey('assetNames')) {
      assetNames = (_json['assetNames'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('assetTypes')) {
      assetTypes = (_json['assetTypes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(_json['condition']);
    }
    if (_json.containsKey('contentType')) {
      contentType = _json['contentType'];
    }
    if (_json.containsKey('feedOutputConfig')) {
      feedOutputConfig = FeedOutputConfig.fromJson(_json['feedOutputConfig']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (assetNames != null) {
      _json['assetNames'] = assetNames;
    }
    if (assetTypes != null) {
      _json['assetTypes'] = assetTypes;
    }
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (contentType != null) {
      _json['contentType'] = contentType;
    }
    if (feedOutputConfig != null) {
      _json['feedOutputConfig'] = feedOutputConfig.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Output configuration for asset feed destination.
class FeedOutputConfig {
  /// Destination on Pub/Sub.
  PubsubDestination pubsubDestination;

  FeedOutputConfig();

  FeedOutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey('pubsubDestination')) {
      pubsubDestination =
          PubsubDestination.fromJson(_json['pubsubDestination']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (pubsubDestination != null) {
      _json['pubsubDestination'] = pubsubDestination.toJson();
    }
    return _json;
  }
}

/// A Cloud Storage location.
class GcsDestination {
  /// The uri of the Cloud Storage object. It's the same uri that is used by
  /// gsutil. Example: "gs://bucket_name/object_name". See [Viewing and Editing
  /// Object
  /// Metadata](https://cloud.google.com/storage/docs/viewing-editing-metadata)
  /// for more information.
  core.String uri;

  /// The uri prefix of all generated Cloud Storage objects. Example:
  /// "gs://bucket_name/object_name_prefix". Each object uri is in format:
  /// "gs://bucket_name/object_name_prefix// and only contains assets for that
  /// type. starts from 0. Example:
  /// "gs://bucket_name/object_name_prefix/compute.googleapis.com/Disk/0" is the
  /// first shard of output objects containing all compute.googleapis.com/Disk
  /// assets. An INVALID_ARGUMENT error will be returned if file with the same
  /// name "gs://bucket_name/object_name_prefix" already exists.
  core.String uriPrefix;

  GcsDestination();

  GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
    if (_json.containsKey('uriPrefix')) {
      uriPrefix = _json['uriPrefix'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (uri != null) {
      _json['uri'] = uri;
    }
    if (uriPrefix != null) {
      _json['uriPrefix'] = uriPrefix;
    }
    return _json;
  }
}

/// Used in `policy_type` to specify how `boolean_policy` will behave at this
/// resource.
class GoogleCloudOrgpolicyV1BooleanPolicy {
  /// If `true`, then the `Policy` is enforced. If `false`, then any
  /// configuration is acceptable. Suppose you have a `Constraint`
  /// `constraints/compute.disableSerialPortAccess` with `constraint_default`
  /// set to `ALLOW`. A `Policy` for that `Constraint` exhibits the following
  /// behavior: - If the `Policy` at this resource has enforced set to `false`,
  /// serial port connection attempts will be allowed. - If the `Policy` at this
  /// resource has enforced set to `true`, serial port connection attempts will
  /// be refused. - If the `Policy` at this resource is `RestoreDefault`, serial
  /// port connection attempts will be allowed. - If no `Policy` is set at this
  /// resource or anywhere higher in the resource hierarchy, serial port
  /// connection attempts will be allowed. - If no `Policy` is set at this
  /// resource, but one exists higher in the resource hierarchy, the behavior is
  /// as if the`Policy` were set at this resource. The following examples
  /// demonstrate the different possible layerings: Example 1 (nearest
  /// `Constraint` wins): `organizations/foo` has a `Policy` with: {enforced:
  /// false} `projects/bar` has no `Policy` set. The constraint at
  /// `projects/bar` and `organizations/foo` will not be enforced. Example 2
  /// (enforcement gets replaced): `organizations/foo` has a `Policy` with:
  /// {enforced: false} `projects/bar` has a `Policy` with: {enforced: true} The
  /// constraint at `organizations/foo` is not enforced. The constraint at
  /// `projects/bar` is enforced. Example 3 (RestoreDefault):
  /// `organizations/foo` has a `Policy` with: {enforced: true} `projects/bar`
  /// has a `Policy` with: {RestoreDefault: {}} The constraint at
  /// `organizations/foo` is enforced. The constraint at `projects/bar` is not
  /// enforced, because `constraint_default` for the `Constraint` is `ALLOW`.
  core.bool enforced;

  GoogleCloudOrgpolicyV1BooleanPolicy();

  GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('enforced')) {
      enforced = _json['enforced'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (enforced != null) {
      _json['enforced'] = enforced;
    }
    return _json;
  }
}

/// Used in `policy_type` to specify how `list_policy` behaves at this resource.
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
class GoogleCloudOrgpolicyV1ListPolicy {
  /// The policy all_values state.
  /// Possible string values are:
  /// - "ALL_VALUES_UNSPECIFIED" : Indicates that allowed_values or
  /// denied_values must be set.
  /// - "ALLOW" : A policy with this set allows all values.
  /// - "DENY" : A policy with this set denies all values.
  core.String allValues;

  /// List of values allowed at this resource. Can only be set if `all_values`
  /// is set to `ALL_VALUES_UNSPECIFIED`.
  core.List<core.String> allowedValues;

  /// List of values denied at this resource. Can only be set if `all_values` is
  /// set to `ALL_VALUES_UNSPECIFIED`.
  core.List<core.String> deniedValues;

  /// Determines the inheritance behavior for this `Policy`. By default, a
  /// `ListPolicy` set at a resource supersedes any `Policy` set anywhere up the
  /// resource hierarchy. However, if `inherit_from_parent` is set to `true`,
  /// then the values from the effective `Policy` of the parent resource are
  /// inherited, meaning the values set in this `Policy` are added to the values
  /// inherited up the hierarchy. Setting `Policy` hierarchies that inherit both
  /// allowed values and denied values isn't recommended in most circumstances
  /// to keep the configuration simple and understandable. However, it is
  /// possible to set a `Policy` with `allowed_values` set that inherits a
  /// `Policy` with `denied_values` set. In this case, the values that are
  /// allowed must be in `allowed_values` and not present in `denied_values`.
  /// For example, suppose you have a `Constraint`
  /// `constraints/serviceuser.services`, which has a `constraint_type` of
  /// `list_constraint`, and with `constraint_default` set to `ALLOW`. Suppose
  /// that at the Organization level, a `Policy` is applied that restricts the
  /// allowed API activations to {`E1`, `E2`}. Then, if a `Policy` is applied to
  /// a project below the Organization that has `inherit_from_parent` set to
  /// `false` and field all_values set to DENY, then an attempt to activate any
  /// API will be denied. The following examples demonstrate different possible
  /// layerings for `projects/bar` parented by `organizations/foo`: Example 1
  /// (no inherited values): `organizations/foo` has a `Policy` with values:
  /// {allowed_values: "E1" allowed_values:"E2"} `projects/bar` has
  /// `inherit_from_parent` `false` and values: {allowed_values: "E3"
  /// allowed_values: "E4"} The accepted values at `organizations/foo` are `E1`,
  /// `E2`. The accepted values at `projects/bar` are `E3`, and `E4`. Example 2
  /// (inherited values): `organizations/foo` has a `Policy` with values:
  /// {allowed_values: "E1" allowed_values:"E2"} `projects/bar` has a `Policy`
  /// with values: {value: "E3" value: "E4" inherit_from_parent: true} The
  /// accepted values at `organizations/foo` are `E1`, `E2`. The accepted values
  /// at `projects/bar` are `E1`, `E2`, `E3`, and `E4`. Example 3 (inheriting
  /// both allowed and denied values): `organizations/foo` has a `Policy` with
  /// values: {allowed_values: "E1" allowed_values: "E2"} `projects/bar` has a
  /// `Policy` with: {denied_values: "E1"} The accepted values at
  /// `organizations/foo` are `E1`, `E2`. The value accepted at `projects/bar`
  /// is `E2`. Example 4 (RestoreDefault): `organizations/foo` has a `Policy`
  /// with values: {allowed_values: "E1" allowed_values:"E2"} `projects/bar` has
  /// a `Policy` with values: {RestoreDefault: {}} The accepted values at
  /// `organizations/foo` are `E1`, `E2`. The accepted values at `projects/bar`
  /// are either all or none depending on the value of `constraint_default` (if
  /// `ALLOW`, all; if `DENY`, none). Example 5 (no policy inherits parent
  /// policy): `organizations/foo` has no `Policy` set. `projects/bar` has no
  /// `Policy` set. The accepted values at both levels are either all or none
  /// depending on the value of `constraint_default` (if `ALLOW`, all; if
  /// `DENY`, none). Example 6 (ListConstraint allowing all):
  /// `organizations/foo` has a `Policy` with values: {allowed_values: "E1"
  /// allowed_values: "E2"} `projects/bar` has a `Policy` with: {all: ALLOW} The
  /// accepted values at `organizations/foo` are `E1`, E2`. Any value is
  /// accepted at `projects/bar`. Example 7 (ListConstraint allowing none):
  /// `organizations/foo` has a `Policy` with values: {allowed_values: "E1"
  /// allowed_values: "E2"} `projects/bar` has a `Policy` with: {all: DENY} The
  /// accepted values at `organizations/foo` are `E1`, E2`. No value is accepted
  /// at `projects/bar`. Example 10 (allowed and denied subtrees of Resource
  /// Manager hierarchy): Given the following resource hierarchy O1->{F1, F2};
  /// F1->{P1}; F2->{P2, P3}, `organizations/foo` has a `Policy` with values:
  /// {allowed_values: "under:organizations/O1"} `projects/bar` has a `Policy`
  /// with: {allowed_values: "under:projects/P3"} {denied_values:
  /// "under:folders/F2"} The accepted values at `organizations/foo` are
  /// `organizations/O1`, `folders/F1`, `folders/F2`, `projects/P1`,
  /// `projects/P2`, `projects/P3`. The accepted values at `projects/bar` are
  /// `organizations/O1`, `folders/F1`, `projects/P1`.
  core.bool inheritFromParent;

  /// Optional. The Google Cloud Console will try to default to a configuration
  /// that matches the value specified in this `Policy`. If `suggested_value` is
  /// not set, it will inherit the value specified higher in the hierarchy,
  /// unless `inherit_from_parent` is `false`.
  core.String suggestedValue;

  GoogleCloudOrgpolicyV1ListPolicy();

  GoogleCloudOrgpolicyV1ListPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('allValues')) {
      allValues = _json['allValues'];
    }
    if (_json.containsKey('allowedValues')) {
      allowedValues = (_json['allowedValues'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('deniedValues')) {
      deniedValues = (_json['deniedValues'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('inheritFromParent')) {
      inheritFromParent = _json['inheritFromParent'];
    }
    if (_json.containsKey('suggestedValue')) {
      suggestedValue = _json['suggestedValue'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (allValues != null) {
      _json['allValues'] = allValues;
    }
    if (allowedValues != null) {
      _json['allowedValues'] = allowedValues;
    }
    if (deniedValues != null) {
      _json['deniedValues'] = deniedValues;
    }
    if (inheritFromParent != null) {
      _json['inheritFromParent'] = inheritFromParent;
    }
    if (suggestedValue != null) {
      _json['suggestedValue'] = suggestedValue;
    }
    return _json;
  }
}

/// Defines a Cloud Organization `Policy` which is used to specify `Constraints`
/// for configurations of Cloud Platform resources.
class GoogleCloudOrgpolicyV1Policy {
  /// For boolean `Constraints`, whether to enforce the `Constraint` or not.
  GoogleCloudOrgpolicyV1BooleanPolicy booleanPolicy;

  /// The name of the `Constraint` the `Policy` is configuring, for example,
  /// `constraints/serviceuser.services`. A [list of available
  /// constraints](/resource-manager/docs/organization-policy/org-policy-constraints)
  /// is available. Immutable after creation.
  core.String constraint;

  /// An opaque tag indicating the current version of the `Policy`, used for
  /// concurrency control. When the `Policy` is returned from either a
  /// `GetPolicy` or a `ListOrgPolicy` request, this `etag` indicates the
  /// version of the current `Policy` to use when executing a read-modify-write
  /// loop. When the `Policy` is returned from a `GetEffectivePolicy` request,
  /// the `etag` will be unset. When the `Policy` is used in a `SetOrgPolicy`
  /// method, use the `etag` value that was returned from a `GetOrgPolicy`
  /// request as part of a read-modify-write loop for concurrency control. Not
  /// setting the `etag`in a `SetOrgPolicy` request will result in an
  /// unconditional write of the `Policy`.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// List of values either allowed or disallowed.
  GoogleCloudOrgpolicyV1ListPolicy listPolicy;

  /// Restores the default behavior of the constraint; independent of
  /// `Constraint` type.
  GoogleCloudOrgpolicyV1RestoreDefault restoreDefault;

  /// The time stamp the `Policy` was previously updated. This is set by the
  /// server, not specified by the caller, and represents the last time a call
  /// to `SetOrgPolicy` was made for that `Policy`. Any value set by the client
  /// will be ignored.
  core.String updateTime;

  /// Version of the `Policy`. Default version is 0;
  core.int version;

  GoogleCloudOrgpolicyV1Policy();

  GoogleCloudOrgpolicyV1Policy.fromJson(core.Map _json) {
    if (_json.containsKey('booleanPolicy')) {
      booleanPolicy =
          GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(_json['booleanPolicy']);
    }
    if (_json.containsKey('constraint')) {
      constraint = _json['constraint'];
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
    if (_json.containsKey('listPolicy')) {
      listPolicy =
          GoogleCloudOrgpolicyV1ListPolicy.fromJson(_json['listPolicy']);
    }
    if (_json.containsKey('restoreDefault')) {
      restoreDefault = GoogleCloudOrgpolicyV1RestoreDefault.fromJson(
          _json['restoreDefault']);
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
    if (_json.containsKey('version')) {
      version = _json['version'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (booleanPolicy != null) {
      _json['booleanPolicy'] = booleanPolicy.toJson();
    }
    if (constraint != null) {
      _json['constraint'] = constraint;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (listPolicy != null) {
      _json['listPolicy'] = listPolicy.toJson();
    }
    if (restoreDefault != null) {
      _json['restoreDefault'] = restoreDefault.toJson();
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Ignores policies set above this resource and restores the
/// `constraint_default` enforcement behavior of the specific `Constraint` at
/// this resource. Suppose that `constraint_default` is set to `ALLOW` for the
/// `Constraint` `constraints/serviceuser.services`. Suppose that organization
/// foo.com sets a `Policy` at their Organization resource node that restricts
/// the allowed service activations to deny all service activations. They could
/// then set a `Policy` with the `policy_type` `restore_default` on several
/// experimental projects, restoring the `constraint_default` enforcement of the
/// `Constraint` for only those projects, allowing those projects to have all
/// services activated.
class GoogleCloudOrgpolicyV1RestoreDefault {
  GoogleCloudOrgpolicyV1RestoreDefault();

  GoogleCloudOrgpolicyV1RestoreDefault.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// An `AccessLevel` is a label that can be applied to requests to Google Cloud
/// services, along with a list of requirements necessary for the label to be
/// applied.
class GoogleIdentityAccesscontextmanagerV1AccessLevel {
  /// A `BasicLevel` composed of `Conditions`.
  GoogleIdentityAccesscontextmanagerV1BasicLevel basic;

  /// A `CustomLevel` written in the Common Expression Language.
  GoogleIdentityAccesscontextmanagerV1CustomLevel custom;

  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  core.String description;

  /// Required. Resource name for the Access Level. The `short_name` component
  /// must begin with a letter and only include alphanumeric and '_'. Format:
  /// `accessPolicies/{policy_id}/accessLevels/{short_name}`. The maximum length
  /// of the `short_name` component is 50 characters.
  core.String name;

  /// Human readable title. Must be unique within the Policy.
  core.String title;

  GoogleIdentityAccesscontextmanagerV1AccessLevel();

  GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(core.Map _json) {
    if (_json.containsKey('basic')) {
      basic = GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(
          _json['basic']);
    }
    if (_json.containsKey('custom')) {
      custom = GoogleIdentityAccesscontextmanagerV1CustomLevel.fromJson(
          _json['custom']);
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (basic != null) {
      _json['basic'] = basic.toJson();
    }
    if (custom != null) {
      _json['custom'] = custom.toJson();
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// `AccessPolicy` is a container for `AccessLevels` (which define the necessary
/// attributes to use Google Cloud services) and `ServicePerimeters` (which
/// define regions of services able to freely pass data within a perimeter). An
/// access policy is globally visible within an organization, and the
/// restrictions it specifies apply to all projects within an organization.
class GoogleIdentityAccesscontextmanagerV1AccessPolicy {
  /// Output only. An opaque identifier for the current version of the
  /// `AccessPolicy`. This will always be a strongly validated etag, meaning
  /// that two Access Polices will be identical if and only if their etags are
  /// identical. Clients should not expect this to be in any specific format.
  core.String etag;

  /// Output only. Resource name of the `AccessPolicy`. Format:
  /// `accessPolicies/{policy_id}`
  core.String name;

  /// Required. The parent of this `AccessPolicy` in the Cloud Resource
  /// Hierarchy. Currently immutable once created. Format:
  /// `organizations/{organization_id}`
  core.String parent;

  /// Required. Human readable title. Does not affect behavior.
  core.String title;

  GoogleIdentityAccesscontextmanagerV1AccessPolicy();

  GoogleIdentityAccesscontextmanagerV1AccessPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class GoogleIdentityAccesscontextmanagerV1BasicLevel {
  /// How the `conditions` list should be combined to determine if a request is
  /// granted this `AccessLevel`. If AND is used, each `Condition` in
  /// `conditions` must be satisfied for the `AccessLevel` to be applied. If OR
  /// is used, at least one `Condition` in `conditions` must be satisfied for
  /// the `AccessLevel` to be applied. Default behavior is AND.
  /// Possible string values are:
  /// - "AND" : All `Conditions` must be true for the `BasicLevel` to be true.
  /// - "OR" : If at least one `Condition` is true, then the `BasicLevel` is
  /// true.
  core.String combiningFunction;

  /// Required. A list of requirements for the `AccessLevel` to be granted.
  core.List<GoogleIdentityAccesscontextmanagerV1Condition> conditions;

  GoogleIdentityAccesscontextmanagerV1BasicLevel();

  GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(core.Map _json) {
    if (_json.containsKey('combiningFunction')) {
      combiningFunction = _json['combiningFunction'];
    }
    if (_json.containsKey('conditions')) {
      conditions = (_json['conditions'] as core.List)
          .map<GoogleIdentityAccesscontextmanagerV1Condition>((value) =>
              GoogleIdentityAccesscontextmanagerV1Condition.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (combiningFunction != null) {
      _json['combiningFunction'] = combiningFunction;
    }
    if (conditions != null) {
      _json['conditions'] = conditions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A condition necessary for an `AccessLevel` to be granted. The Condition is
/// an AND over its fields. So a Condition is true if: 1) the request IP is from
/// one of the listed subnetworks AND 2) the originating device complies with
/// the listed device policy AND 3) all listed access levels are granted AND 4)
/// the request was sent at a time allowed by the DateTimeRestriction.
class GoogleIdentityAccesscontextmanagerV1Condition {
  /// Device specific restrictions, all restrictions must hold for the Condition
  /// to be true. If not specified, all devices are allowed.
  GoogleIdentityAccesscontextmanagerV1DevicePolicy devicePolicy;

  /// CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for
  /// a CIDR IP address block, the specified IP address portion must be properly
  /// truncated (i.e. all the host bits must be zero) or the input is considered
  /// malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is
  /// not. Similarly, for IPv6, "2001:db8::/32" is accepted whereas
  /// "2001:db8::1/32" is not. The originating IP of a request must be in one of
  /// the listed subnets in order for this Condition to be true. If empty, all
  /// IP addresses are allowed.
  core.List<core.String> ipSubnetworks;

  /// The request must be made by one of the provided user or service accounts.
  /// Groups are not supported. Syntax: `user:{emailid}`
  /// `serviceAccount:{emailid}` If not specified, a request may come from any
  /// user.
  core.List<core.String> members;

  /// Whether to negate the Condition. If true, the Condition becomes a NAND
  /// over its non-empty fields, each field must be false for the Condition
  /// overall to be satisfied. Defaults to false.
  core.bool negate;

  /// The request must originate from one of the provided countries/regions.
  /// Must be valid ISO 3166-1 alpha-2 codes.
  core.List<core.String> regions;

  /// A list of other access levels defined in the same `Policy`, referenced by
  /// resource name. Referencing an `AccessLevel` which does not exist is an
  /// error. All access levels listed must be granted for the Condition to be
  /// true. Example: "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
  core.List<core.String> requiredAccessLevels;

  GoogleIdentityAccesscontextmanagerV1Condition();

  GoogleIdentityAccesscontextmanagerV1Condition.fromJson(core.Map _json) {
    if (_json.containsKey('devicePolicy')) {
      devicePolicy = GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(
          _json['devicePolicy']);
    }
    if (_json.containsKey('ipSubnetworks')) {
      ipSubnetworks = (_json['ipSubnetworks'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('negate')) {
      negate = _json['negate'];
    }
    if (_json.containsKey('regions')) {
      regions = (_json['regions'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('requiredAccessLevels')) {
      requiredAccessLevels =
          (_json['requiredAccessLevels'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (devicePolicy != null) {
      _json['devicePolicy'] = devicePolicy.toJson();
    }
    if (ipSubnetworks != null) {
      _json['ipSubnetworks'] = ipSubnetworks;
    }
    if (members != null) {
      _json['members'] = members;
    }
    if (negate != null) {
      _json['negate'] = negate;
    }
    if (regions != null) {
      _json['regions'] = regions;
    }
    if (requiredAccessLevels != null) {
      _json['requiredAccessLevels'] = requiredAccessLevels;
    }
    return _json;
  }
}

/// `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language
/// to represent the necessary conditions for the level to apply to a request.
/// See CEL spec at: https://github.com/google/cel-spec
class GoogleIdentityAccesscontextmanagerV1CustomLevel {
  /// Required. A Cloud CEL expression evaluating to a boolean.
  Expr expr;

  GoogleIdentityAccesscontextmanagerV1CustomLevel();

  GoogleIdentityAccesscontextmanagerV1CustomLevel.fromJson(core.Map _json) {
    if (_json.containsKey('expr')) {
      expr = Expr.fromJson(_json['expr']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (expr != null) {
      _json['expr'] = expr.toJson();
    }
    return _json;
  }
}

/// `DevicePolicy` specifies device specific restrictions necessary to acquire a
/// given access level. A `DevicePolicy` specifies requirements for requests
/// from devices to be granted access levels, it does not do any enforcement on
/// the device. `DevicePolicy` acts as an AND over all specified fields, and
/// each repeated field is an OR over its elements. Any unset fields are
/// ignored. For example, if the proto is { os_type : DESKTOP_WINDOWS, os_type :
/// DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be
/// true for requests originating from encrypted Linux desktops and encrypted
/// Windows desktops.
class GoogleIdentityAccesscontextmanagerV1DevicePolicy {
  /// Allowed device management levels, an empty list allows all management
  /// levels.
  core.List<core.String> allowedDeviceManagementLevels;

  /// Allowed encryptions statuses, an empty list allows all statuses.
  core.List<core.String> allowedEncryptionStatuses;

  /// Allowed OS versions, an empty list allows all types and all versions.
  core.List<GoogleIdentityAccesscontextmanagerV1OsConstraint> osConstraints;

  /// Whether the device needs to be approved by the customer admin.
  core.bool requireAdminApproval;

  /// Whether the device needs to be corp owned.
  core.bool requireCorpOwned;

  /// Whether or not screenlock is required for the DevicePolicy to be true.
  /// Defaults to `false`.
  core.bool requireScreenlock;

  GoogleIdentityAccesscontextmanagerV1DevicePolicy();

  GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(core.Map _json) {
    if (_json.containsKey('allowedDeviceManagementLevels')) {
      allowedDeviceManagementLevels =
          (_json['allowedDeviceManagementLevels'] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey('allowedEncryptionStatuses')) {
      allowedEncryptionStatuses =
          (_json['allowedEncryptionStatuses'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('osConstraints')) {
      osConstraints = (_json['osConstraints'] as core.List)
          .map<GoogleIdentityAccesscontextmanagerV1OsConstraint>((value) =>
              GoogleIdentityAccesscontextmanagerV1OsConstraint.fromJson(value))
          .toList();
    }
    if (_json.containsKey('requireAdminApproval')) {
      requireAdminApproval = _json['requireAdminApproval'];
    }
    if (_json.containsKey('requireCorpOwned')) {
      requireCorpOwned = _json['requireCorpOwned'];
    }
    if (_json.containsKey('requireScreenlock')) {
      requireScreenlock = _json['requireScreenlock'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (allowedDeviceManagementLevels != null) {
      _json['allowedDeviceManagementLevels'] = allowedDeviceManagementLevels;
    }
    if (allowedEncryptionStatuses != null) {
      _json['allowedEncryptionStatuses'] = allowedEncryptionStatuses;
    }
    if (osConstraints != null) {
      _json['osConstraints'] =
          osConstraints.map((value) => value.toJson()).toList();
    }
    if (requireAdminApproval != null) {
      _json['requireAdminApproval'] = requireAdminApproval;
    }
    if (requireCorpOwned != null) {
      _json['requireCorpOwned'] = requireCorpOwned;
    }
    if (requireScreenlock != null) {
      _json['requireScreenlock'] = requireScreenlock;
    }
    return _json;
  }
}

/// A restriction on the OS type and version of devices making requests.
class GoogleIdentityAccesscontextmanagerV1OsConstraint {
  /// The minimum allowed OS version. If not set, any version of this OS
  /// satisfies the constraint. Format: `"major.minor.patch"`. Examples:
  /// `"10.5.301"`, `"9.2.1"`.
  core.String minimumVersion;

  /// Required. The allowed OS type.
  /// Possible string values are:
  /// - "OS_UNSPECIFIED" : The operating system of the device is not specified
  /// or not known.
  /// - "DESKTOP_MAC" : A desktop Mac operating system.
  /// - "DESKTOP_WINDOWS" : A desktop Windows operating system.
  /// - "DESKTOP_LINUX" : A desktop Linux operating system.
  /// - "DESKTOP_CHROME_OS" : A desktop ChromeOS operating system.
  /// - "ANDROID" : An Android operating system.
  /// - "IOS" : An iOS operating system.
  core.String osType;

  /// Only allows requests from devices with a verified Chrome OS. Verifications
  /// includes requirements that the device is enterprise-managed, conformant to
  /// domain policies, and the caller has permission to call the API targeted by
  /// the request.
  core.bool requireVerifiedChromeOs;

  GoogleIdentityAccesscontextmanagerV1OsConstraint();

  GoogleIdentityAccesscontextmanagerV1OsConstraint.fromJson(core.Map _json) {
    if (_json.containsKey('minimumVersion')) {
      minimumVersion = _json['minimumVersion'];
    }
    if (_json.containsKey('osType')) {
      osType = _json['osType'];
    }
    if (_json.containsKey('requireVerifiedChromeOs')) {
      requireVerifiedChromeOs = _json['requireVerifiedChromeOs'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (minimumVersion != null) {
      _json['minimumVersion'] = minimumVersion;
    }
    if (osType != null) {
      _json['osType'] = osType;
    }
    if (requireVerifiedChromeOs != null) {
      _json['requireVerifiedChromeOs'] = requireVerifiedChromeOs;
    }
    return _json;
  }
}

/// `ServicePerimeter` describes a set of Google Cloud resources which can
/// freely import and export data amongst themselves, but not export outside of
/// the `ServicePerimeter`. If a request with a source within this
/// `ServicePerimeter` has a target outside of the `ServicePerimeter`, the
/// request will be blocked. Otherwise the request is allowed. There are two
/// types of Service Perimeter - Regular and Bridge. Regular Service Perimeters
/// cannot overlap, a single Google Cloud project can only belong to a single
/// regular Service Perimeter. Service Perimeter Bridges can contain only Google
/// Cloud projects as members, a single Google Cloud project may belong to
/// multiple Service Perimeter Bridges.
class GoogleIdentityAccesscontextmanagerV1ServicePerimeter {
  /// Description of the `ServicePerimeter` and its use. Does not affect
  /// behavior.
  core.String description;

  /// Required. Resource name for the ServicePerimeter. The `short_name`
  /// component must begin with a letter and only include alphanumeric and '_'.
  /// Format: `accessPolicies/{policy_id}/servicePerimeters/{short_name}`
  core.String name;

  /// Perimeter type indicator. A single project is allowed to be a member of
  /// single regular perimeter, but multiple service perimeter bridges. A
  /// project cannot be a included in a perimeter bridge without being included
  /// in regular perimeter. For perimeter bridges, the restricted service list
  /// as well as access level lists must be empty.
  /// Possible string values are:
  /// - "PERIMETER_TYPE_REGULAR" : Regular Perimeter.
  /// - "PERIMETER_TYPE_BRIDGE" : Perimeter Bridge.
  core.String perimeterType;

  /// Proposed (or dry run) ServicePerimeter configuration. This configuration
  /// allows to specify and test ServicePerimeter configuration without
  /// enforcing actual access restrictions. Only allowed to be set when the
  /// "use_explicit_dry_run_spec" flag is set.
  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig spec;

  /// Current ServicePerimeter configuration. Specifies sets of resources,
  /// restricted services and access levels that determine perimeter content and
  /// boundaries.
  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig status;

  /// Human readable title. Must be unique within the Policy.
  core.String title;

  /// Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly
  /// exists for all Service Perimeters, and that spec is identical to the
  /// status for those Service Perimeters. When this flag is set, it inhibits
  /// the generation of the implicit spec, thereby allowing the user to
  /// explicitly provide a configuration ("spec") to use in a dry-run version of
  /// the Service Perimeter. This allows the user to test changes to the
  /// enforced config ("status") without actually enforcing them. This testing
  /// is done through analyzing the differences between currently enforced and
  /// suggested restrictions. use_explicit_dry_run_spec must bet set to True if
  /// any of the fields in the spec are set to non-default values.
  core.bool useExplicitDryRunSpec;

  GoogleIdentityAccesscontextmanagerV1ServicePerimeter();

  GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(
      core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('perimeterType')) {
      perimeterType = _json['perimeterType'];
    }
    if (_json.containsKey('spec')) {
      spec =
          GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.fromJson(
              _json['spec']);
    }
    if (_json.containsKey('status')) {
      status =
          GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.fromJson(
              _json['status']);
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
    if (_json.containsKey('useExplicitDryRunSpec')) {
      useExplicitDryRunSpec = _json['useExplicitDryRunSpec'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (perimeterType != null) {
      _json['perimeterType'] = perimeterType;
    }
    if (spec != null) {
      _json['spec'] = spec.toJson();
    }
    if (status != null) {
      _json['status'] = status.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (useExplicitDryRunSpec != null) {
      _json['useExplicitDryRunSpec'] = useExplicitDryRunSpec;
    }
    return _json;
  }
}

/// `ServicePerimeterConfig` specifies a set of Google Cloud resources that
/// describe specific Service Perimeter configuration.
class GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig {
  /// A list of `AccessLevel` resource names that allow resources within the
  /// `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed
  /// must be in the same policy as this `ServicePerimeter`. Referencing a
  /// nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are
  /// listed, resources within the perimeter can only be accessed via Google
  /// Cloud calls with request origins within the perimeter. Example:
  /// `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter
  /// Bridge, must be empty.
  core.List<core.String> accessLevels;

  /// A list of Google Cloud resources that are inside of the service perimeter.
  /// Currently only projects are allowed. Format: `projects/{project_number}`
  core.List<core.String> resources;

  /// Google Cloud services that are subject to the Service Perimeter
  /// restrictions. For example, if `storage.googleapis.com` is specified,
  /// access to the storage buckets inside the perimeter must meet the
  /// perimeter's access restrictions.
  core.List<core.String> restrictedServices;

  /// Configuration for APIs allowed within Perimeter.
  GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
      vpcAccessibleServices;

  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();

  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.fromJson(
      core.Map _json) {
    if (_json.containsKey('accessLevels')) {
      accessLevels = (_json['accessLevels'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('restrictedServices')) {
      restrictedServices =
          (_json['restrictedServices'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('vpcAccessibleServices')) {
      vpcAccessibleServices =
          GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices.fromJson(
              _json['vpcAccessibleServices']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (accessLevels != null) {
      _json['accessLevels'] = accessLevels;
    }
    if (resources != null) {
      _json['resources'] = resources;
    }
    if (restrictedServices != null) {
      _json['restrictedServices'] = restrictedServices;
    }
    if (vpcAccessibleServices != null) {
      _json['vpcAccessibleServices'] = vpcAccessibleServices.toJson();
    }
    return _json;
  }
}

/// Specifies how APIs are allowed to communicate within the Service Perimeter.
class GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices {
  /// The list of APIs usable within the Service Perimeter. Must be empty unless
  /// 'enable_restriction' is True. You can specify a list of individual
  /// services, as well as include the 'RESTRICTED-SERVICES' value, which
  /// automatically includes all of the services protected by the perimeter.
  core.List<core.String> allowedServices;

  /// Whether to restrict API calls within the Service Perimeter to the list of
  /// APIs specified in 'allowed_services'.
  core.bool enableRestriction;

  GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices();

  GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices.fromJson(
      core.Map _json) {
    if (_json.containsKey('allowedServices')) {
      allowedServices =
          (_json['allowedServices'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('enableRestriction')) {
      enableRestriction = _json['enableRestriction'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (allowedServices != null) {
      _json['allowedServices'] = allowedServices;
    }
    if (enableRestriction != null) {
      _json['enableRestriction'] = enableRestriction;
    }
    return _json;
  }
}

/// A result of IAM Policy search, containing information of an IAM policy.
class IamPolicySearchResult {
  /// Explanation about the IAM policy search result. It contains additional
  /// information to explain why the search result matches the query.
  Explanation explanation;

  /// The IAM policy directly set on the given resource. Note that the original
  /// IAM policy can contain multiple bindings. This only contains the bindings
  /// that match the given query. For queries that don't contain a constrain on
  /// policies (e.g., an empty query), this contains all the bindings. To search
  /// against the `policy` bindings: * use a field query: - query by the policy
  /// contained members. Example: `policy:amy@gmail.com` - query by the policy
  /// contained roles. Example: `policy:roles/compute.admin` - query by the
  /// policy contained roles' included permissions. Example:
  /// `policy.role.permissions:compute.instances.create`
  Policy policy;

  /// The project that the associated GCP resource belongs to, in the form of
  /// projects/{PROJECT_NUMBER}. If an IAM policy is set on a resource (like VM
  /// instance, Cloud Storage bucket), the project field will indicate the
  /// project that contains the resource. If an IAM policy is set on a folder or
  /// orgnization, the project field will be empty. To search against the
  /// `project`: * specify the `scope` field as this project in your search
  /// request.
  core.String project;

  /// The full resource name of the resource associated with this IAM policy.
  /// Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// See [Cloud Asset Inventory Resource Name
  /// Format](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  /// for more information. To search against the `resource`: * use a field
  /// query. Example: `resource:organizations/123`
  core.String resource;

  IamPolicySearchResult();

  IamPolicySearchResult.fromJson(core.Map _json) {
    if (_json.containsKey('explanation')) {
      explanation = Explanation.fromJson(_json['explanation']);
    }
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(_json['policy']);
    }
    if (_json.containsKey('project')) {
      project = _json['project'];
    }
    if (_json.containsKey('resource')) {
      resource = _json['resource'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (explanation != null) {
      _json['explanation'] = explanation.toJson();
    }
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    if (project != null) {
      _json['project'] = project;
    }
    if (resource != null) {
      _json['resource'] = resource;
    }
    return _json;
  }
}

class ListFeedsResponse {
  /// A list of feeds.
  core.List<Feed> feeds;

  ListFeedsResponse();

  ListFeedsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('feeds')) {
      feeds = (_json['feeds'] as core.List)
          .map<Feed>((value) => Feed.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (feeds != null) {
      _json['feeds'] = feeds.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation. It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata. Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`. If the original method is standard
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
      done = _json['done'];
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(_json['error']);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// Output configuration for export assets destination.
class OutputConfig {
  /// Destination on BigQuery. The output table stores the fields in asset proto
  /// as columns in BigQuery.
  BigQueryDestination bigqueryDestination;

  /// Destination on Cloud Storage.
  GcsDestination gcsDestination;

  OutputConfig();

  OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey('bigqueryDestination')) {
      bigqueryDestination =
          BigQueryDestination.fromJson(_json['bigqueryDestination']);
    }
    if (_json.containsKey('gcsDestination')) {
      gcsDestination = GcsDestination.fromJson(_json['gcsDestination']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (bigqueryDestination != null) {
      _json['bigqueryDestination'] = bigqueryDestination.toJson();
    }
    if (gcsDestination != null) {
      _json['gcsDestination'] = gcsDestination.toJson();
    }
    return _json;
  }
}

/// Specifications of BigQuery partitioned table as export destination.
class PartitionSpec {
  /// The partition key for BigQuery partitioned table.
  /// Possible string values are:
  /// - "PARTITION_KEY_UNSPECIFIED" : Unspecified partition key. If used, it
  /// means using non-partitioned table.
  /// - "READ_TIME" : The time when the snapshot is taken. If specified as
  /// partition key, the result table(s) is partitoned by the additional
  /// timestamp column, readTime. If [read_time] in ExportAssetsRequest is
  /// specified, the readTime column's value will be the same as it. Otherwise,
  /// its value will be the current time that is used to take the snapshot.
  /// - "REQUEST_TIME" : The time when the request is received and started to be
  /// processed. If specified as partition key, the result table(s) is
  /// partitoned by the requestTime column, an additional timestamp column
  /// representing when the request was received.
  core.String partitionKey;

  PartitionSpec();

  PartitionSpec.fromJson(core.Map _json) {
    if (_json.containsKey('partitionKey')) {
      partitionKey = _json['partitionKey'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (partitionKey != null) {
      _json['partitionKey'] = partitionKey;
    }
    return _json;
  }
}

/// IAM permissions
class Permissions {
  /// A list of permissions. A sample permission string: `compute.disk.get`.
  core.List<core.String> permissions;

  Permissions();

  Permissions.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources. A `Policy` is a collection of
/// `bindings`. A `binding` binds one or more `members` to a single `role`.
/// Members can be user accounts, service accounts, Google groups, and domains
/// (such as G Suite). A `role` is a named list of permissions; each `role` can
/// be an IAM predefined role or a user-created custom role. For some types of
/// Google Cloud resources, a `binding` can also specify a `condition`, which is
/// a logical expression that allows access to a resource only if the expression
/// evaluates to `true`. A condition can add constraints based on attributes of
/// the request, the resource, or both. To learn which resources support
/// conditions in their IAM policies, see the [IAM
/// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the [IAM
/// documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`. Optionally, may specify a
  /// `condition` that determines how and when the `bindings` are applied. Each
  /// of the `bindings` must contain at least one member.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other. It is
  /// strongly suggested that systems make use of the `etag` in the
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

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
  /// Requests that specify an invalid value are rejected. Any operation that
  /// affects conditional role bindings must specify version `3`. This
  /// requirement applies to the following operations: * Getting a policy that
  /// includes a conditional role binding * Adding a conditional role binding to
  /// a policy * Changing a conditional role binding in a policy * Removing any
  /// role binding, with or without a condition, from a policy that includes
  /// conditions **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost. If a
  /// policy does not include any conditions, operations on that policy may
  /// specify any valid version or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('auditConfigs')) {
      auditConfigs = (_json['auditConfigs'] as core.List)
          .map<AuditConfig>((value) => AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) => Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
    if (_json.containsKey('version')) {
      version = _json['version'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (auditConfigs != null) {
      _json['auditConfigs'] =
          auditConfigs.map((value) => value.toJson()).toList();
    }
    if (bindings != null) {
      _json['bindings'] = bindings.map((value) => value.toJson()).toList();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// A Pub/Sub destination.
class PubsubDestination {
  /// The name of the Pub/Sub topic to publish to. Example:
  /// `projects/PROJECT_ID/topics/TOPIC_ID`.
  core.String topic;

  PubsubDestination();

  PubsubDestination.fromJson(core.Map _json) {
    if (_json.containsKey('topic')) {
      topic = _json['topic'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (topic != null) {
      _json['topic'] = topic;
    }
    return _json;
  }
}

/// A representation of a Google Cloud resource.
class Resource {
  /// The content of the resource, in which some sensitive fields are removed
  /// and may not be present.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> data;

  /// The URL of the discovery document containing the resource's JSON schema.
  /// Example: `https://www.googleapis.com/discovery/v1/apis/compute/v1/rest`
  /// This value is unspecified for resources that do not have an API based on a
  /// discovery document, such as Cloud Bigtable.
  core.String discoveryDocumentUri;

  /// The JSON schema name listed in the discovery document. Example: `Project`
  /// This value is unspecified for resources that do not have an API based on a
  /// discovery document, such as Cloud Bigtable.
  core.String discoveryName;

  /// The location of the resource in Google Cloud, such as its zone and region.
  /// For more information, see https://cloud.google.com/about/locations/.
  core.String location;

  /// The full name of the immediate parent of this resource. See [Resource
  /// Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information. For Google Cloud assets, this value is the parent
  /// resource defined in the [Cloud IAM policy
  /// hierarchy](https://cloud.google.com/iam/docs/overview#policy_hierarchy).
  /// Example: `//cloudresourcemanager.googleapis.com/projects/my_project_123`
  /// For third-party assets, this field may be set differently.
  core.String parent;

  /// The REST URL for accessing the resource. An HTTP `GET` request using this
  /// URL returns the resource itself. Example:
  /// `https://cloudresourcemanager.googleapis.com/v1/projects/my-project-123`
  /// This value is unspecified for resources without a REST API.
  core.String resourceUrl;

  /// The API version. Example: `v1`
  core.String version;

  Resource();

  Resource.fromJson(core.Map _json) {
    if (_json.containsKey('data')) {
      data = (_json['data'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('discoveryDocumentUri')) {
      discoveryDocumentUri = _json['discoveryDocumentUri'];
    }
    if (_json.containsKey('discoveryName')) {
      discoveryName = _json['discoveryName'];
    }
    if (_json.containsKey('location')) {
      location = _json['location'];
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'];
    }
    if (_json.containsKey('resourceUrl')) {
      resourceUrl = _json['resourceUrl'];
    }
    if (_json.containsKey('version')) {
      version = _json['version'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (data != null) {
      _json['data'] = data;
    }
    if (discoveryDocumentUri != null) {
      _json['discoveryDocumentUri'] = discoveryDocumentUri;
    }
    if (discoveryName != null) {
      _json['discoveryName'] = discoveryName;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (resourceUrl != null) {
      _json['resourceUrl'] = resourceUrl;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// A result of Resource Search, containing information of a cloud resource.
class ResourceSearchResult {
  /// The additional searchable attributes of this resource. The attributes may
  /// vary from one resource type to another. Examples: `projectId` for Project,
  /// `dnsName` for DNS ManagedZone. This field contains a subset of the
  /// resource metadata fields that are returned by the List or Get APIs
  /// provided by the corresponding GCP service (e.g., Compute Engine). see [API
  /// references and supported searchable
  /// attributes](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types)
  /// for more information. You can search values of these fields through free
  /// text search. However, you should not consume the field programically as
  /// the field names and values may change as the GCP service updates to a new
  /// incompatible API version. To search against the `additional_attributes`: *
  /// use a free text query to match the attributes values. Example: to search
  /// `additional_attributes = { dnsName: "foobar" }`, you can issue a query
  /// `foobar`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> additionalAttributes;

  /// The type of this resource. Example: `compute.googleapis.com/Disk`. To
  /// search against the `asset_type`: * specify the `asset_type` field in your
  /// search request.
  core.String assetType;

  /// One or more paragraphs of text description of this resource. Maximum
  /// length could be up to 1M bytes. To search against the `description`: * use
  /// a field query. Example: `description:"*important instance*"` * use a free
  /// text query. Example: `"*important instance*"`
  core.String description;

  /// The display name of this resource. To search against the `display_name`: *
  /// use a field query. Example: `displayName:"My Instance"` * use a free text
  /// query. Example: `"My Instance"`
  core.String displayName;

  /// Labels associated with this resource. See [Labelling and grouping GCP
  /// resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources)
  /// for more information. To search against the `labels`: * use a field query:
  /// - query on any label's key or value. Example: `labels:prod` - query by a
  /// given label. Example: `labels.env:prod` - query by a given label's
  /// existence. Example: `labels.env:*` * use a free text query. Example:
  /// `prod`
  core.Map<core.String, core.String> labels;

  /// Location can be `global`, regional like `us-east1`, or zonal like
  /// `us-west1-b`. To search against the `location`: * use a field query.
  /// Example: `location:us-west*` * use a free text query. Example: `us-west*`
  core.String location;

  /// The full resource name of this resource. Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// See [Cloud Asset Inventory Resource Name
  /// Format](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  /// for more information. To search against the `name`: * use a field query.
  /// Example: `name:instance1` * use a free text query. Example: `instance1`
  core.String name;

  /// Network tags associated with this resource. Like labels, network tags are
  /// a type of annotations used to group GCP resources. See [Labelling GCP
  /// resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources)
  /// for more information. To search against the `network_tags`: * use a field
  /// query. Example: `networkTags:internal` * use a free text query. Example:
  /// `internal`
  core.List<core.String> networkTags;

  /// The project that this resource belongs to, in the form of
  /// projects/{PROJECT_NUMBER}. To search against the `project`: * specify the
  /// `scope` field as this project in your search request.
  core.String project;

  ResourceSearchResult();

  ResourceSearchResult.fromJson(core.Map _json) {
    if (_json.containsKey('additionalAttributes')) {
      additionalAttributes = (_json['additionalAttributes'] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey('assetType')) {
      assetType = _json['assetType'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('location')) {
      location = _json['location'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('networkTags')) {
      networkTags = (_json['networkTags'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('project')) {
      project = _json['project'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (additionalAttributes != null) {
      _json['additionalAttributes'] = additionalAttributes;
    }
    if (assetType != null) {
      _json['assetType'] = assetType;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (networkTags != null) {
      _json['networkTags'] = networkTags;
    }
    if (project != null) {
      _json['project'] = project;
    }
    return _json;
  }
}

/// Search all IAM policies response.
class SearchAllIamPoliciesResponse {
  /// Set if there are more results than those appearing in this response; to
  /// get the next set of results, call this method again, using this value as
  /// the `page_token`.
  core.String nextPageToken;

  /// A list of IamPolicy that match the search query. Related information such
  /// as the associated resource is returned along with the policy.
  core.List<IamPolicySearchResult> results;

  SearchAllIamPoliciesResponse();

  SearchAllIamPoliciesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('results')) {
      results = (_json['results'] as core.List)
          .map<IamPolicySearchResult>(
              (value) => IamPolicySearchResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (results != null) {
      _json['results'] = results.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Search all resources response.
class SearchAllResourcesResponse {
  /// If there are more results than those appearing in this response, then
  /// `next_page_token` is included. To get the next set of results, call this
  /// method again using the value of `next_page_token` as `page_token`.
  core.String nextPageToken;

  /// A list of Resources that match the search query. It contains the resource
  /// standard metadata information.
  core.List<ResourceSearchResult> results;

  SearchAllResourcesResponse();

  SearchAllResourcesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('results')) {
      results = (_json['results'] as core.List)
          .map<ResourceSearchResult>(
              (value) => ResourceSearchResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (results != null) {
      _json['results'] = results.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'];
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// An asset in Google Cloud and its temporal metadata, including the time
/// window when it was observed and its status during that window.
class TemporalAsset {
  /// An asset in Google Cloud.
  Asset asset;

  /// Whether the asset has been deleted or not.
  core.bool deleted;

  /// Prior copy of the asset. Populated if prior_asset_state is PRESENT.
  /// Currently this is only set for responses in Real-Time Feed.
  Asset priorAsset;

  /// State of prior_asset.
  /// Possible string values are:
  /// - "PRIOR_ASSET_STATE_UNSPECIFIED" : prior_asset is not applicable for the
  /// current asset.
  /// - "PRESENT" : prior_asset is populated correctly.
  /// - "INVALID" : Failed to set prior_asset.
  /// - "DOES_NOT_EXIST" : Current asset is the first known state.
  /// - "DELETED" : prior_asset is a deletion.
  core.String priorAssetState;

  /// The time window when the asset data and state was observed.
  TimeWindow window;

  TemporalAsset();

  TemporalAsset.fromJson(core.Map _json) {
    if (_json.containsKey('asset')) {
      asset = Asset.fromJson(_json['asset']);
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'];
    }
    if (_json.containsKey('priorAsset')) {
      priorAsset = Asset.fromJson(_json['priorAsset']);
    }
    if (_json.containsKey('priorAssetState')) {
      priorAssetState = _json['priorAssetState'];
    }
    if (_json.containsKey('window')) {
      window = TimeWindow.fromJson(_json['window']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (asset != null) {
      _json['asset'] = asset.toJson();
    }
    if (deleted != null) {
      _json['deleted'] = deleted;
    }
    if (priorAsset != null) {
      _json['priorAsset'] = priorAsset.toJson();
    }
    if (priorAssetState != null) {
      _json['priorAssetState'] = priorAssetState;
    }
    if (window != null) {
      _json['window'] = window.toJson();
    }
    return _json;
  }
}

/// A time window specified by its `start_time` and `end_time`.
class TimeWindow {
  /// End time of the time window (inclusive). If not specified, the current
  /// timestamp is used instead.
  core.String endTime;

  /// Start time of the time window (exclusive).
  core.String startTime;

  TimeWindow();

  TimeWindow.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// Update asset feed request.
class UpdateFeedRequest {
  /// Required. The new values of feed details. It must match an existing feed
  /// and the field `name` must be in the format of:
  /// projects/project_number/feeds/feed_id or
  /// folders/folder_number/feeds/feed_id or
  /// organizations/organization_number/feeds/feed_id.
  Feed feed;

  /// Required. Only updates the `feed` fields indicated by this mask. The field
  /// mask must not be empty, and it must not contain fields that are immutable
  /// or only set by the server.
  core.String updateMask;

  UpdateFeedRequest();

  UpdateFeedRequest.fromJson(core.Map _json) {
    if (_json.containsKey('feed')) {
      feed = Feed.fromJson(_json['feed']);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (feed != null) {
      _json['feed'] = feed.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}
