// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis.logging.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client logging/v2';

/// Writes log entries and manages your Cloud Logging configuration. The table
/// entries below are presented in alphabetical order, not in order of common
/// use. For explanations of the concepts found in the table entries, read the
/// documentation at https://cloud.google.com/logging/docs.
class LoggingApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud Platform services
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// Administrate log data for your projects
  static const loggingAdminScope =
      'https://www.googleapis.com/auth/logging.admin';

  /// View log data for your projects
  static const loggingReadScope =
      'https://www.googleapis.com/auth/logging.read';

  /// Submit log data for your projects
  static const loggingWriteScope =
      'https://www.googleapis.com/auth/logging.write';

  final commons.ApiRequester _requester;

  BillingAccountsResourceApi get billingAccounts =>
      BillingAccountsResourceApi(_requester);
  EntriesResourceApi get entries => EntriesResourceApi(_requester);
  ExclusionsResourceApi get exclusions => ExclusionsResourceApi(_requester);
  FoldersResourceApi get folders => FoldersResourceApi(_requester);
  LocationsResourceApi get locations => LocationsResourceApi(_requester);
  LogsResourceApi get logs => LogsResourceApi(_requester);
  MonitoredResourceDescriptorsResourceApi get monitoredResourceDescriptors =>
      MonitoredResourceDescriptorsResourceApi(_requester);
  OrganizationsResourceApi get organizations =>
      OrganizationsResourceApi(_requester);
  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);
  SinksResourceApi get sinks => SinksResourceApi(_requester);
  V2ResourceApi get v2 => V2ResourceApi(_requester);

  LoggingApi(http.Client client,
      {core.String rootUrl = 'https://logging.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class BillingAccountsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsBucketsResourceApi get buckets =>
      BillingAccountsBucketsResourceApi(_requester);
  BillingAccountsExclusionsResourceApi get exclusions =>
      BillingAccountsExclusionsResourceApi(_requester);
  BillingAccountsLocationsResourceApi get locations =>
      BillingAccountsLocationsResourceApi(_requester);
  BillingAccountsLogsResourceApi get logs =>
      BillingAccountsLogsResourceApi(_requester);
  BillingAccountsSinksResourceApi get sinks =>
      BillingAccountsSinksResourceApi(_requester);

  BillingAccountsResourceApi(commons.ApiRequester client) : _requester = client;
}

class BillingAccountsBucketsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsBucketsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets a bucket (Beta).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the bucket:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern "^billingAccounts/[^/]+/buckets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> get(
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }
}

class BillingAccountsExclusionsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsExclusionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new exclusion in a specified parent resource. Only log entries
  /// belonging to that resource can be excluded. You can have up to 10
  /// exclusions in a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource in which to create the exclusion:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Examples:
  /// "projects/my-logging-project", "organizations/123456789".
  /// Value must have pattern "^billingAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> create(
    LogExclusion request,
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/exclusions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }

  /// Deletes an exclusion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of an existing exclusion to delete:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^billingAccounts/[^/]+/exclusions/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets the description of an exclusion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of an existing exclusion:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^billingAccounts/[^/]+/exclusions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> get(
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }

  /// Lists all the exclusions in a parent resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose exclusions are to be
  /// listed. "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^billingAccounts/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExclusionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExclusionsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/exclusions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListExclusionsResponse.fromJson(data));
  }

  /// Changes one or more properties of an existing exclusion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the exclusion to update:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^billingAccounts/[^/]+/exclusions/[^/]+$".
  ///
  /// [updateMask] - Required. A non-empty list of fields to change in the
  /// existing exclusion. New values for the fields are taken from the
  /// corresponding fields in the LogExclusion included in this request. Fields
  /// not mentioned in update_mask are not changed and are ignored in the
  /// request.For example, to change the filter and description of an exclusion,
  /// specify an update_mask of "filter,description".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> patch(
    LogExclusion request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }
}

class BillingAccountsLocationsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsLocationsBucketsResourceApi get buckets =>
      BillingAccountsLocationsBucketsResourceApi(_requester);

  BillingAccountsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class BillingAccountsLocationsBucketsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsLocationsBucketsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a bucket that can be used to store log entries. Once a bucket has
  /// been created, the region cannot be changed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the bucket:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]" Example:
  /// "projects/my-logging-project/locations/global"
  /// Value must have pattern "^billingAccounts/[^/]+/locations/[^/]+$".
  ///
  /// [bucketId] - Required. A client-assigned identifier such as "my-bucket".
  /// Identifiers are limited to 100 characters and can include only letters,
  /// digits, underscores, hyphens, and periods.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> create(
    LogBucket request,
    core.String parent, {
    core.String bucketId,
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
    if (bucketId != null) {
      _queryParams['bucketId'] = [bucketId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/buckets';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After 7
  /// days, the bucket will be purged and all logs in the bucket will be
  /// permanently deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to delete.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern
  /// "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Lists buckets (Beta).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose buckets are to be listed:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]" Note: The locations portion
  /// of the resource must be specified, but supplying the character - in place
  /// of LOCATION_ID will return all buckets.
  /// Value must have pattern "^billingAccounts/[^/]+/locations/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBucketsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBucketsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/buckets';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListBucketsResponse.fromJson(data));
  }

  /// Updates a bucket. This method replaces the following fields in the
  /// existing bucket with values from the new bucket: retention_periodIf the
  /// retention period is decreased and the bucket is locked,
  /// FAILED_PRECONDITION will be returned.If the bucket has a LifecycleState of
  /// DELETE_REQUESTED, FAILED_PRECONDITION will be returned.A buckets region
  /// may not be modified after it is created. This method is in Beta.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to update.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id". Also
  /// requires permission "resourcemanager.projects.updateLiens" to set the
  /// locked property
  /// Value must have pattern
  /// "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+$".
  ///
  /// [updateMask] - Required. Field mask that specifies the fields in bucket
  /// that need an update. A bucket field will be overwritten if, and only if,
  /// it is in the update mask. name and output only fields cannot be
  /// updated.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=retention_days.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> patch(
    LogBucket request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Undeletes a bucket. A bucket that has been deleted may be undeleted within
  /// the grace period of 7 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to undelete.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern
  /// "^billingAccounts/[^/]+/locations/[^/]+/buckets/[^/]+$".
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
  async.Future<Empty> undelete(
    UndeleteBucketRequest request,
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':undelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }
}

class BillingAccountsLogsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsLogsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes all the log entries in a log. The log reappears if it receives new
  /// entries. Log entries written shortly before the delete operation might not
  /// be deleted. Entries received after the delete operation with a timestamp
  /// before the operation will be deleted.
  ///
  /// Request parameters:
  ///
  /// [logName] - Required. The resource name of the log to delete:
  /// "projects/[PROJECT_ID]/logs/[LOG_ID]"
  /// "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
  /// "folders/[FOLDER_ID]/logs/[LOG_ID]" [LOG_ID] must be URL-encoded. For
  /// example, "projects/my-project-id/logs/syslog",
  /// "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
  /// For more information about log names, see LogEntry.
  /// Value must have pattern "^billingAccounts/[^/]+/logs/[^/]+$".
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
    core.String logName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (logName == null) {
      throw core.ArgumentError('Parameter logName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$logName');

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

  /// Lists the logs in projects, organizations, folders, or billing accounts.
  /// Only logs that have entries are listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name that owns the logs:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^billingAccounts/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLogsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/logs';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListLogsResponse.fromJson(data));
  }
}

class BillingAccountsSinksResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsSinksResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a sink that exports specified log entries to a destination. The
  /// export of newly-ingested log entries begins immediately, unless the sink's
  /// writer_identity is not permitted to write to the destination. A sink can
  /// export log entries only from the resource owning the sink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the sink:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Examples:
  /// "projects/my-logging-project", "organizations/123456789".
  /// Value must have pattern "^billingAccounts/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. Determines the kind of IAM identity
  /// returned as writer_identity in the new sink. If this value is omitted or
  /// set to false, and if the sink's parent is a project, then the value
  /// returned as writer_identity is the same group or service account used by
  /// Logging before the addition of writer identities to this API. The sink's
  /// destination must be in the same project as the sink itself.If this field
  /// is set to true, or if the sink is owned by a non-project resource such as
  /// an organization, then the value of writer_identity will be a unique
  /// service account used only for exports from the new sink. For more
  /// information, see writer_identity in LogSink.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> create(
    LogSink request,
    core.String parent, {
    core.bool uniqueWriterIdentity,
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
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Deletes a sink. If the sink has a unique writer_identity, then that
  /// service account is also deleted.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to delete,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^billingAccounts/[^/]+/sinks/[^/]+$".
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
    core.String sinkName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

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

  /// Gets a sink.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The resource name of the sink:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^billingAccounts/[^/]+/sinks/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> get(
    core.String sinkName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Lists sinks.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose sinks are to be listed:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^billingAccounts/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSinksResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListSinksResponse.fromJson(data));
  }

  /// Updates a sink. This method replaces the following fields in the existing
  /// sink with values from the new sink: destination, and filter.The updated
  /// sink might also have a new writer_identity; see the unique_writer_identity
  /// field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to update,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^billingAccounts/[^/]+/sinks/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. See sinks.create for a description of
  /// this field. When updating a sink, the effect of this field on the value of
  /// writer_identity in the updated sink depends on both the old and new values
  /// of this field: If the old and new values of this field are both false or
  /// both true, then there is no change to the sink's writer_identity. If the
  /// old value is false and the new value is true, then writer_identity is
  /// changed to a unique service account. It is an error if the old value is
  /// true and the new value is set to false or defaulted to false.
  ///
  /// [updateMask] - Optional. Field mask that specifies the fields in sink that
  /// need an update. A sink field will be overwritten if, and only if, it is in
  /// the update mask. name and output only fields cannot be updated.An empty
  /// updateMask is temporarily treated as using the following mask for
  /// backwards compatibility purposes: destination,filter,includeChildren At
  /// some point in the future, behavior will be removed and specifying an empty
  /// updateMask will be an error.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> patch(
    LogSink request,
    core.String sinkName, {
    core.bool uniqueWriterIdentity,
    core.String updateMask,
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
    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Updates a sink. This method replaces the following fields in the existing
  /// sink with values from the new sink: destination, and filter.The updated
  /// sink might also have a new writer_identity; see the unique_writer_identity
  /// field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to update,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^billingAccounts/[^/]+/sinks/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. See sinks.create for a description of
  /// this field. When updating a sink, the effect of this field on the value of
  /// writer_identity in the updated sink depends on both the old and new values
  /// of this field: If the old and new values of this field are both false or
  /// both true, then there is no change to the sink's writer_identity. If the
  /// old value is false and the new value is true, then writer_identity is
  /// changed to a unique service account. It is an error if the old value is
  /// true and the new value is set to false or defaulted to false.
  ///
  /// [updateMask] - Optional. Field mask that specifies the fields in sink that
  /// need an update. A sink field will be overwritten if, and only if, it is in
  /// the update mask. name and output only fields cannot be updated.An empty
  /// updateMask is temporarily treated as using the following mask for
  /// backwards compatibility purposes: destination,filter,includeChildren At
  /// some point in the future, behavior will be removed and specifying an empty
  /// updateMask will be an error.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> update(
    LogSink request,
    core.String sinkName, {
    core.bool uniqueWriterIdentity,
    core.String updateMask,
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
    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }
}

class EntriesResourceApi {
  final commons.ApiRequester _requester;

  EntriesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists log entries. Use this method to retrieve log entries that originated
  /// from a project/folder/organization/billing account. For ways to export log
  /// entries, see Exporting Logs
  /// (https://cloud.google.com/logging/docs/export).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLogEntriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLogEntriesResponse> list(
    ListLogEntriesRequest request, {
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
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/entries:list';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListLogEntriesResponse.fromJson(data));
  }

  /// Writes log entries to Logging. This API method is the only way to send log
  /// entries to Logging. This method is used, directly or indirectly, by the
  /// Logging agent (fluentd) and all logging libraries configured to use
  /// Logging. A single request may contain log entries for a maximum of 1000
  /// different resources (projects, organizations, billing accounts or folders)
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WriteLogEntriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WriteLogEntriesResponse> write(
    WriteLogEntriesRequest request, {
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
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/entries:write';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => WriteLogEntriesResponse.fromJson(data));
  }
}

class ExclusionsResourceApi {
  final commons.ApiRequester _requester;

  ExclusionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new exclusion in a specified parent resource. Only log entries
  /// belonging to that resource can be excluded. You can have up to 10
  /// exclusions in a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource in which to create the exclusion:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Examples:
  /// "projects/my-logging-project", "organizations/123456789".
  /// Value must have pattern "^[^/]+/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> create(
    LogExclusion request,
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/exclusions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }

  /// Deletes an exclusion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of an existing exclusion to delete:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^[^/]+/[^/]+/exclusions/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets the description of an exclusion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of an existing exclusion:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^[^/]+/[^/]+/exclusions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> get(
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }

  /// Lists all the exclusions in a parent resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose exclusions are to be
  /// listed. "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^[^/]+/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExclusionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExclusionsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/exclusions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListExclusionsResponse.fromJson(data));
  }

  /// Changes one or more properties of an existing exclusion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the exclusion to update:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^[^/]+/[^/]+/exclusions/[^/]+$".
  ///
  /// [updateMask] - Required. A non-empty list of fields to change in the
  /// existing exclusion. New values for the fields are taken from the
  /// corresponding fields in the LogExclusion included in this request. Fields
  /// not mentioned in update_mask are not changed and are ignored in the
  /// request.For example, to change the filter and description of an exclusion,
  /// specify an update_mask of "filter,description".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> patch(
    LogExclusion request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }
}

class FoldersResourceApi {
  final commons.ApiRequester _requester;

  FoldersExclusionsResourceApi get exclusions =>
      FoldersExclusionsResourceApi(_requester);
  FoldersLocationsResourceApi get locations =>
      FoldersLocationsResourceApi(_requester);
  FoldersLogsResourceApi get logs => FoldersLogsResourceApi(_requester);
  FoldersSinksResourceApi get sinks => FoldersSinksResourceApi(_requester);

  FoldersResourceApi(commons.ApiRequester client) : _requester = client;
}

class FoldersExclusionsResourceApi {
  final commons.ApiRequester _requester;

  FoldersExclusionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new exclusion in a specified parent resource. Only log entries
  /// belonging to that resource can be excluded. You can have up to 10
  /// exclusions in a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource in which to create the exclusion:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Examples:
  /// "projects/my-logging-project", "organizations/123456789".
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> create(
    LogExclusion request,
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/exclusions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }

  /// Deletes an exclusion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of an existing exclusion to delete:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^folders/[^/]+/exclusions/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets the description of an exclusion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of an existing exclusion:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^folders/[^/]+/exclusions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> get(
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }

  /// Lists all the exclusions in a parent resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose exclusions are to be
  /// listed. "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExclusionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExclusionsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/exclusions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListExclusionsResponse.fromJson(data));
  }

  /// Changes one or more properties of an existing exclusion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the exclusion to update:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^folders/[^/]+/exclusions/[^/]+$".
  ///
  /// [updateMask] - Required. A non-empty list of fields to change in the
  /// existing exclusion. New values for the fields are taken from the
  /// corresponding fields in the LogExclusion included in this request. Fields
  /// not mentioned in update_mask are not changed and are ignored in the
  /// request.For example, to change the filter and description of an exclusion,
  /// specify an update_mask of "filter,description".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> patch(
    LogExclusion request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }
}

class FoldersLocationsResourceApi {
  final commons.ApiRequester _requester;

  FoldersLocationsBucketsResourceApi get buckets =>
      FoldersLocationsBucketsResourceApi(_requester);

  FoldersLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class FoldersLocationsBucketsResourceApi {
  final commons.ApiRequester _requester;

  FoldersLocationsBucketsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a bucket that can be used to store log entries. Once a bucket has
  /// been created, the region cannot be changed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the bucket:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]" Example:
  /// "projects/my-logging-project/locations/global"
  /// Value must have pattern "^folders/[^/]+/locations/[^/]+$".
  ///
  /// [bucketId] - Required. A client-assigned identifier such as "my-bucket".
  /// Identifiers are limited to 100 characters and can include only letters,
  /// digits, underscores, hyphens, and periods.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> create(
    LogBucket request,
    core.String parent, {
    core.String bucketId,
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
    if (bucketId != null) {
      _queryParams['bucketId'] = [bucketId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/buckets';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After 7
  /// days, the bucket will be purged and all logs in the bucket will be
  /// permanently deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to delete.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern "^folders/[^/]+/locations/[^/]+/buckets/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets a bucket (Beta).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the bucket:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern "^folders/[^/]+/locations/[^/]+/buckets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> get(
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Lists buckets (Beta).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose buckets are to be listed:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]" Note: The locations portion
  /// of the resource must be specified, but supplying the character - in place
  /// of LOCATION_ID will return all buckets.
  /// Value must have pattern "^folders/[^/]+/locations/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBucketsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBucketsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/buckets';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListBucketsResponse.fromJson(data));
  }

  /// Updates a bucket. This method replaces the following fields in the
  /// existing bucket with values from the new bucket: retention_periodIf the
  /// retention period is decreased and the bucket is locked,
  /// FAILED_PRECONDITION will be returned.If the bucket has a LifecycleState of
  /// DELETE_REQUESTED, FAILED_PRECONDITION will be returned.A buckets region
  /// may not be modified after it is created. This method is in Beta.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to update.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id". Also
  /// requires permission "resourcemanager.projects.updateLiens" to set the
  /// locked property
  /// Value must have pattern "^folders/[^/]+/locations/[^/]+/buckets/[^/]+$".
  ///
  /// [updateMask] - Required. Field mask that specifies the fields in bucket
  /// that need an update. A bucket field will be overwritten if, and only if,
  /// it is in the update mask. name and output only fields cannot be
  /// updated.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=retention_days.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> patch(
    LogBucket request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Undeletes a bucket. A bucket that has been deleted may be undeleted within
  /// the grace period of 7 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to undelete.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern "^folders/[^/]+/locations/[^/]+/buckets/[^/]+$".
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
  async.Future<Empty> undelete(
    UndeleteBucketRequest request,
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':undelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }
}

class FoldersLogsResourceApi {
  final commons.ApiRequester _requester;

  FoldersLogsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes all the log entries in a log. The log reappears if it receives new
  /// entries. Log entries written shortly before the delete operation might not
  /// be deleted. Entries received after the delete operation with a timestamp
  /// before the operation will be deleted.
  ///
  /// Request parameters:
  ///
  /// [logName] - Required. The resource name of the log to delete:
  /// "projects/[PROJECT_ID]/logs/[LOG_ID]"
  /// "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
  /// "folders/[FOLDER_ID]/logs/[LOG_ID]" [LOG_ID] must be URL-encoded. For
  /// example, "projects/my-project-id/logs/syslog",
  /// "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
  /// For more information about log names, see LogEntry.
  /// Value must have pattern "^folders/[^/]+/logs/[^/]+$".
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
    core.String logName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (logName == null) {
      throw core.ArgumentError('Parameter logName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$logName');

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

  /// Lists the logs in projects, organizations, folders, or billing accounts.
  /// Only logs that have entries are listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name that owns the logs:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLogsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/logs';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListLogsResponse.fromJson(data));
  }
}

class FoldersSinksResourceApi {
  final commons.ApiRequester _requester;

  FoldersSinksResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a sink that exports specified log entries to a destination. The
  /// export of newly-ingested log entries begins immediately, unless the sink's
  /// writer_identity is not permitted to write to the destination. A sink can
  /// export log entries only from the resource owning the sink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the sink:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Examples:
  /// "projects/my-logging-project", "organizations/123456789".
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. Determines the kind of IAM identity
  /// returned as writer_identity in the new sink. If this value is omitted or
  /// set to false, and if the sink's parent is a project, then the value
  /// returned as writer_identity is the same group or service account used by
  /// Logging before the addition of writer identities to this API. The sink's
  /// destination must be in the same project as the sink itself.If this field
  /// is set to true, or if the sink is owned by a non-project resource such as
  /// an organization, then the value of writer_identity will be a unique
  /// service account used only for exports from the new sink. For more
  /// information, see writer_identity in LogSink.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> create(
    LogSink request,
    core.String parent, {
    core.bool uniqueWriterIdentity,
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
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Deletes a sink. If the sink has a unique writer_identity, then that
  /// service account is also deleted.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to delete,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^folders/[^/]+/sinks/[^/]+$".
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
    core.String sinkName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

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

  /// Gets a sink.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The resource name of the sink:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^folders/[^/]+/sinks/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> get(
    core.String sinkName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Lists sinks.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose sinks are to be listed:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSinksResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListSinksResponse.fromJson(data));
  }

  /// Updates a sink. This method replaces the following fields in the existing
  /// sink with values from the new sink: destination, and filter.The updated
  /// sink might also have a new writer_identity; see the unique_writer_identity
  /// field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to update,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^folders/[^/]+/sinks/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. See sinks.create for a description of
  /// this field. When updating a sink, the effect of this field on the value of
  /// writer_identity in the updated sink depends on both the old and new values
  /// of this field: If the old and new values of this field are both false or
  /// both true, then there is no change to the sink's writer_identity. If the
  /// old value is false and the new value is true, then writer_identity is
  /// changed to a unique service account. It is an error if the old value is
  /// true and the new value is set to false or defaulted to false.
  ///
  /// [updateMask] - Optional. Field mask that specifies the fields in sink that
  /// need an update. A sink field will be overwritten if, and only if, it is in
  /// the update mask. name and output only fields cannot be updated.An empty
  /// updateMask is temporarily treated as using the following mask for
  /// backwards compatibility purposes: destination,filter,includeChildren At
  /// some point in the future, behavior will be removed and specifying an empty
  /// updateMask will be an error.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> patch(
    LogSink request,
    core.String sinkName, {
    core.bool uniqueWriterIdentity,
    core.String updateMask,
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
    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Updates a sink. This method replaces the following fields in the existing
  /// sink with values from the new sink: destination, and filter.The updated
  /// sink might also have a new writer_identity; see the unique_writer_identity
  /// field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to update,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^folders/[^/]+/sinks/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. See sinks.create for a description of
  /// this field. When updating a sink, the effect of this field on the value of
  /// writer_identity in the updated sink depends on both the old and new values
  /// of this field: If the old and new values of this field are both false or
  /// both true, then there is no change to the sink's writer_identity. If the
  /// old value is false and the new value is true, then writer_identity is
  /// changed to a unique service account. It is an error if the old value is
  /// true and the new value is set to false or defaulted to false.
  ///
  /// [updateMask] - Optional. Field mask that specifies the fields in sink that
  /// need an update. A sink field will be overwritten if, and only if, it is in
  /// the update mask. name and output only fields cannot be updated.An empty
  /// updateMask is temporarily treated as using the following mask for
  /// backwards compatibility purposes: destination,filter,includeChildren At
  /// some point in the future, behavior will be removed and specifying an empty
  /// updateMask will be an error.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> update(
    LogSink request,
    core.String sinkName, {
    core.bool uniqueWriterIdentity,
    core.String updateMask,
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
    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }
}

class LocationsResourceApi {
  final commons.ApiRequester _requester;

  LocationsBucketsResourceApi get buckets =>
      LocationsBucketsResourceApi(_requester);

  LocationsResourceApi(commons.ApiRequester client) : _requester = client;
}

class LocationsBucketsResourceApi {
  final commons.ApiRequester _requester;

  LocationsBucketsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a bucket that can be used to store log entries. Once a bucket has
  /// been created, the region cannot be changed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the bucket:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]" Example:
  /// "projects/my-logging-project/locations/global"
  /// Value must have pattern "^[^/]+/[^/]+/locations/[^/]+$".
  ///
  /// [bucketId] - Required. A client-assigned identifier such as "my-bucket".
  /// Identifiers are limited to 100 characters and can include only letters,
  /// digits, underscores, hyphens, and periods.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> create(
    LogBucket request,
    core.String parent, {
    core.String bucketId,
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
    if (bucketId != null) {
      _queryParams['bucketId'] = [bucketId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/buckets';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After 7
  /// days, the bucket will be purged and all logs in the bucket will be
  /// permanently deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to delete.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets a bucket (Beta).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the bucket:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> get(
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Lists buckets (Beta).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose buckets are to be listed:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]" Note: The locations portion
  /// of the resource must be specified, but supplying the character - in place
  /// of LOCATION_ID will return all buckets.
  /// Value must have pattern "^[^/]+/[^/]+/locations/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBucketsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBucketsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/buckets';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListBucketsResponse.fromJson(data));
  }

  /// Updates a bucket. This method replaces the following fields in the
  /// existing bucket with values from the new bucket: retention_periodIf the
  /// retention period is decreased and the bucket is locked,
  /// FAILED_PRECONDITION will be returned.If the bucket has a LifecycleState of
  /// DELETE_REQUESTED, FAILED_PRECONDITION will be returned.A buckets region
  /// may not be modified after it is created. This method is in Beta.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to update.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id". Also
  /// requires permission "resourcemanager.projects.updateLiens" to set the
  /// locked property
  /// Value must have pattern "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+$".
  ///
  /// [updateMask] - Required. Field mask that specifies the fields in bucket
  /// that need an update. A bucket field will be overwritten if, and only if,
  /// it is in the update mask. name and output only fields cannot be
  /// updated.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=retention_days.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> patch(
    LogBucket request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Undeletes a bucket. A bucket that has been deleted may be undeleted within
  /// the grace period of 7 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to undelete.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern "^[^/]+/[^/]+/locations/[^/]+/buckets/[^/]+$".
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
  async.Future<Empty> undelete(
    UndeleteBucketRequest request,
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':undelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }
}

class LogsResourceApi {
  final commons.ApiRequester _requester;

  LogsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes all the log entries in a log. The log reappears if it receives new
  /// entries. Log entries written shortly before the delete operation might not
  /// be deleted. Entries received after the delete operation with a timestamp
  /// before the operation will be deleted.
  ///
  /// Request parameters:
  ///
  /// [logName] - Required. The resource name of the log to delete:
  /// "projects/[PROJECT_ID]/logs/[LOG_ID]"
  /// "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
  /// "folders/[FOLDER_ID]/logs/[LOG_ID]" [LOG_ID] must be URL-encoded. For
  /// example, "projects/my-project-id/logs/syslog",
  /// "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
  /// For more information about log names, see LogEntry.
  /// Value must have pattern "^[^/]+/[^/]+/logs/[^/]+$".
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
    core.String logName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (logName == null) {
      throw core.ArgumentError('Parameter logName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$logName');

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

  /// Lists the logs in projects, organizations, folders, or billing accounts.
  /// Only logs that have entries are listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name that owns the logs:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^[^/]+/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLogsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/logs';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListLogsResponse.fromJson(data));
  }
}

class MonitoredResourceDescriptorsResourceApi {
  final commons.ApiRequester _requester;

  MonitoredResourceDescriptorsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists the descriptors for monitored resource types used by Logging.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMonitoredResourceDescriptorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMonitoredResourceDescriptorsResponse> list({
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/monitoredResourceDescriptors';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
        (data) => ListMonitoredResourceDescriptorsResponse.fromJson(data));
  }
}

class OrganizationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsExclusionsResourceApi get exclusions =>
      OrganizationsExclusionsResourceApi(_requester);
  OrganizationsLocationsResourceApi get locations =>
      OrganizationsLocationsResourceApi(_requester);
  OrganizationsLogsResourceApi get logs =>
      OrganizationsLogsResourceApi(_requester);
  OrganizationsSinksResourceApi get sinks =>
      OrganizationsSinksResourceApi(_requester);

  OrganizationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the Logs Router CMEK settings for the given resource.Note: CMEK for
  /// the Logs Router can currently only be configured for GCP organizations.
  /// Once configured, it applies to all projects and folders in the GCP
  /// organization.See Enabling CMEK for Logs Router
  /// (https://cloud.google.com/logging/docs/routing/managed-encryption) for
  /// more information.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource for which to retrieve CMEK settings.
  /// "projects/[PROJECT_ID]/cmekSettings"
  /// "organizations/[ORGANIZATION_ID]/cmekSettings"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings"
  /// "folders/[FOLDER_ID]/cmekSettings" Example:
  /// "organizations/12345/cmekSettings".Note: CMEK for the Logs Router can
  /// currently only be configured for GCP organizations. Once configured, it
  /// applies to all projects and folders in the GCP organization.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CmekSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CmekSettings> getCmekSettings(
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/cmekSettings';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => CmekSettings.fromJson(data));
  }

  /// Updates the Logs Router CMEK settings for the given resource.Note: CMEK
  /// for the Logs Router can currently only be configured for GCP
  /// organizations. Once configured, it applies to all projects and folders in
  /// the GCP organization.UpdateCmekSettings will fail if 1) kms_key_name is
  /// invalid, or 2) the associated service account does not have the required
  /// roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key, or
  /// 3) access to the key is disabled.See Enabling CMEK for Logs Router
  /// (https://cloud.google.com/logging/docs/routing/managed-encryption) for
  /// more information.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for the CMEK settings to update.
  /// "projects/[PROJECT_ID]/cmekSettings"
  /// "organizations/[ORGANIZATION_ID]/cmekSettings"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings"
  /// "folders/[FOLDER_ID]/cmekSettings" Example:
  /// "organizations/12345/cmekSettings".Note: CMEK for the Logs Router can
  /// currently only be configured for GCP organizations. Once configured, it
  /// applies to all projects and folders in the GCP organization.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [updateMask] - Optional. Field mask identifying which fields from
  /// cmek_settings should be updated. A field will be overwritten if and only
  /// if it is in the update mask. Output only fields cannot be updated.See
  /// FieldMask for more information.Example: "updateMask=kmsKeyName"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CmekSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CmekSettings> updateCmekSettings(
    CmekSettings request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/cmekSettings';

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => CmekSettings.fromJson(data));
  }
}

class OrganizationsExclusionsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsExclusionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new exclusion in a specified parent resource. Only log entries
  /// belonging to that resource can be excluded. You can have up to 10
  /// exclusions in a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource in which to create the exclusion:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Examples:
  /// "projects/my-logging-project", "organizations/123456789".
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> create(
    LogExclusion request,
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/exclusions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }

  /// Deletes an exclusion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of an existing exclusion to delete:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^organizations/[^/]+/exclusions/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets the description of an exclusion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of an existing exclusion:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^organizations/[^/]+/exclusions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> get(
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }

  /// Lists all the exclusions in a parent resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose exclusions are to be
  /// listed. "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExclusionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExclusionsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/exclusions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListExclusionsResponse.fromJson(data));
  }

  /// Changes one or more properties of an existing exclusion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the exclusion to update:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^organizations/[^/]+/exclusions/[^/]+$".
  ///
  /// [updateMask] - Required. A non-empty list of fields to change in the
  /// existing exclusion. New values for the fields are taken from the
  /// corresponding fields in the LogExclusion included in this request. Fields
  /// not mentioned in update_mask are not changed and are ignored in the
  /// request.For example, to change the filter and description of an exclusion,
  /// specify an update_mask of "filter,description".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> patch(
    LogExclusion request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }
}

class OrganizationsLocationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsLocationsBucketsResourceApi get buckets =>
      OrganizationsLocationsBucketsResourceApi(_requester);

  OrganizationsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsLocationsBucketsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsLocationsBucketsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a bucket that can be used to store log entries. Once a bucket has
  /// been created, the region cannot be changed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the bucket:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]" Example:
  /// "projects/my-logging-project/locations/global"
  /// Value must have pattern "^organizations/[^/]+/locations/[^/]+$".
  ///
  /// [bucketId] - Required. A client-assigned identifier such as "my-bucket".
  /// Identifiers are limited to 100 characters and can include only letters,
  /// digits, underscores, hyphens, and periods.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> create(
    LogBucket request,
    core.String parent, {
    core.String bucketId,
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
    if (bucketId != null) {
      _queryParams['bucketId'] = [bucketId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/buckets';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After 7
  /// days, the bucket will be purged and all logs in the bucket will be
  /// permanently deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to delete.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern
  /// "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets a bucket (Beta).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the bucket:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern
  /// "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> get(
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Lists buckets (Beta).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose buckets are to be listed:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]" Note: The locations portion
  /// of the resource must be specified, but supplying the character - in place
  /// of LOCATION_ID will return all buckets.
  /// Value must have pattern "^organizations/[^/]+/locations/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBucketsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBucketsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/buckets';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListBucketsResponse.fromJson(data));
  }

  /// Updates a bucket. This method replaces the following fields in the
  /// existing bucket with values from the new bucket: retention_periodIf the
  /// retention period is decreased and the bucket is locked,
  /// FAILED_PRECONDITION will be returned.If the bucket has a LifecycleState of
  /// DELETE_REQUESTED, FAILED_PRECONDITION will be returned.A buckets region
  /// may not be modified after it is created. This method is in Beta.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to update.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id". Also
  /// requires permission "resourcemanager.projects.updateLiens" to set the
  /// locked property
  /// Value must have pattern
  /// "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+$".
  ///
  /// [updateMask] - Required. Field mask that specifies the fields in bucket
  /// that need an update. A bucket field will be overwritten if, and only if,
  /// it is in the update mask. name and output only fields cannot be
  /// updated.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=retention_days.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> patch(
    LogBucket request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Undeletes a bucket. A bucket that has been deleted may be undeleted within
  /// the grace period of 7 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to undelete.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern
  /// "^organizations/[^/]+/locations/[^/]+/buckets/[^/]+$".
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
  async.Future<Empty> undelete(
    UndeleteBucketRequest request,
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':undelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }
}

class OrganizationsLogsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsLogsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes all the log entries in a log. The log reappears if it receives new
  /// entries. Log entries written shortly before the delete operation might not
  /// be deleted. Entries received after the delete operation with a timestamp
  /// before the operation will be deleted.
  ///
  /// Request parameters:
  ///
  /// [logName] - Required. The resource name of the log to delete:
  /// "projects/[PROJECT_ID]/logs/[LOG_ID]"
  /// "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
  /// "folders/[FOLDER_ID]/logs/[LOG_ID]" [LOG_ID] must be URL-encoded. For
  /// example, "projects/my-project-id/logs/syslog",
  /// "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
  /// For more information about log names, see LogEntry.
  /// Value must have pattern "^organizations/[^/]+/logs/[^/]+$".
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
    core.String logName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (logName == null) {
      throw core.ArgumentError('Parameter logName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$logName');

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

  /// Lists the logs in projects, organizations, folders, or billing accounts.
  /// Only logs that have entries are listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name that owns the logs:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLogsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/logs';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListLogsResponse.fromJson(data));
  }
}

class OrganizationsSinksResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsSinksResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a sink that exports specified log entries to a destination. The
  /// export of newly-ingested log entries begins immediately, unless the sink's
  /// writer_identity is not permitted to write to the destination. A sink can
  /// export log entries only from the resource owning the sink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the sink:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Examples:
  /// "projects/my-logging-project", "organizations/123456789".
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. Determines the kind of IAM identity
  /// returned as writer_identity in the new sink. If this value is omitted or
  /// set to false, and if the sink's parent is a project, then the value
  /// returned as writer_identity is the same group or service account used by
  /// Logging before the addition of writer identities to this API. The sink's
  /// destination must be in the same project as the sink itself.If this field
  /// is set to true, or if the sink is owned by a non-project resource such as
  /// an organization, then the value of writer_identity will be a unique
  /// service account used only for exports from the new sink. For more
  /// information, see writer_identity in LogSink.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> create(
    LogSink request,
    core.String parent, {
    core.bool uniqueWriterIdentity,
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
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Deletes a sink. If the sink has a unique writer_identity, then that
  /// service account is also deleted.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to delete,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^organizations/[^/]+/sinks/[^/]+$".
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
    core.String sinkName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

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

  /// Gets a sink.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The resource name of the sink:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^organizations/[^/]+/sinks/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> get(
    core.String sinkName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Lists sinks.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose sinks are to be listed:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSinksResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListSinksResponse.fromJson(data));
  }

  /// Updates a sink. This method replaces the following fields in the existing
  /// sink with values from the new sink: destination, and filter.The updated
  /// sink might also have a new writer_identity; see the unique_writer_identity
  /// field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to update,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^organizations/[^/]+/sinks/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. See sinks.create for a description of
  /// this field. When updating a sink, the effect of this field on the value of
  /// writer_identity in the updated sink depends on both the old and new values
  /// of this field: If the old and new values of this field are both false or
  /// both true, then there is no change to the sink's writer_identity. If the
  /// old value is false and the new value is true, then writer_identity is
  /// changed to a unique service account. It is an error if the old value is
  /// true and the new value is set to false or defaulted to false.
  ///
  /// [updateMask] - Optional. Field mask that specifies the fields in sink that
  /// need an update. A sink field will be overwritten if, and only if, it is in
  /// the update mask. name and output only fields cannot be updated.An empty
  /// updateMask is temporarily treated as using the following mask for
  /// backwards compatibility purposes: destination,filter,includeChildren At
  /// some point in the future, behavior will be removed and specifying an empty
  /// updateMask will be an error.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> patch(
    LogSink request,
    core.String sinkName, {
    core.bool uniqueWriterIdentity,
    core.String updateMask,
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
    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Updates a sink. This method replaces the following fields in the existing
  /// sink with values from the new sink: destination, and filter.The updated
  /// sink might also have a new writer_identity; see the unique_writer_identity
  /// field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to update,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^organizations/[^/]+/sinks/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. See sinks.create for a description of
  /// this field. When updating a sink, the effect of this field on the value of
  /// writer_identity in the updated sink depends on both the old and new values
  /// of this field: If the old and new values of this field are both false or
  /// both true, then there is no change to the sink's writer_identity. If the
  /// old value is false and the new value is true, then writer_identity is
  /// changed to a unique service account. It is an error if the old value is
  /// true and the new value is set to false or defaulted to false.
  ///
  /// [updateMask] - Optional. Field mask that specifies the fields in sink that
  /// need an update. A sink field will be overwritten if, and only if, it is in
  /// the update mask. name and output only fields cannot be updated.An empty
  /// updateMask is temporarily treated as using the following mask for
  /// backwards compatibility purposes: destination,filter,includeChildren At
  /// some point in the future, behavior will be removed and specifying an empty
  /// updateMask will be an error.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> update(
    LogSink request,
    core.String sinkName, {
    core.bool uniqueWriterIdentity,
    core.String updateMask,
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
    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsExclusionsResourceApi get exclusions =>
      ProjectsExclusionsResourceApi(_requester);
  ProjectsLocationsResourceApi get locations =>
      ProjectsLocationsResourceApi(_requester);
  ProjectsLogsResourceApi get logs => ProjectsLogsResourceApi(_requester);
  ProjectsMetricsResourceApi get metrics =>
      ProjectsMetricsResourceApi(_requester);
  ProjectsSinksResourceApi get sinks => ProjectsSinksResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsExclusionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsExclusionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new exclusion in a specified parent resource. Only log entries
  /// belonging to that resource can be excluded. You can have up to 10
  /// exclusions in a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource in which to create the exclusion:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Examples:
  /// "projects/my-logging-project", "organizations/123456789".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> create(
    LogExclusion request,
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/exclusions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }

  /// Deletes an exclusion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of an existing exclusion to delete:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^projects/[^/]+/exclusions/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets the description of an exclusion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of an existing exclusion:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^projects/[^/]+/exclusions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> get(
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }

  /// Lists all the exclusions in a parent resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose exclusions are to be
  /// listed. "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExclusionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExclusionsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/exclusions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListExclusionsResponse.fromJson(data));
  }

  /// Changes one or more properties of an existing exclusion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the exclusion to update:
  /// "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]"
  /// "organizations/[ORGANIZATION_ID]/exclusions/[EXCLUSION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
  /// "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" Example:
  /// "projects/my-project-id/exclusions/my-exclusion-id".
  /// Value must have pattern "^projects/[^/]+/exclusions/[^/]+$".
  ///
  /// [updateMask] - Required. A non-empty list of fields to change in the
  /// existing exclusion. New values for the fields are taken from the
  /// corresponding fields in the LogExclusion included in this request. Fields
  /// not mentioned in update_mask are not changed and are ignored in the
  /// request.For example, to change the filter and description of an exclusion,
  /// specify an update_mask of "filter,description".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogExclusion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogExclusion> patch(
    LogExclusion request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogExclusion.fromJson(data));
  }
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsBucketsResourceApi get buckets =>
      ProjectsLocationsBucketsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsBucketsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsBucketsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a bucket that can be used to store log entries. Once a bucket has
  /// been created, the region cannot be changed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the bucket:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]" Example:
  /// "projects/my-logging-project/locations/global"
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [bucketId] - Required. A client-assigned identifier such as "my-bucket".
  /// Identifiers are limited to 100 characters and can include only letters,
  /// digits, underscores, hyphens, and periods.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> create(
    LogBucket request,
    core.String parent, {
    core.String bucketId,
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
    if (bucketId != null) {
      _queryParams['bucketId'] = [bucketId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/buckets';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After 7
  /// days, the bucket will be purged and all logs in the bucket will be
  /// permanently deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to delete.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/buckets/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets a bucket (Beta).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the bucket:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/buckets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> get(
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Lists buckets (Beta).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose buckets are to be listed:
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]" Note: The locations portion
  /// of the resource must be specified, but supplying the character - in place
  /// of LOCATION_ID will return all buckets.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBucketsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBucketsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/buckets';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListBucketsResponse.fromJson(data));
  }

  /// Updates a bucket. This method replaces the following fields in the
  /// existing bucket with values from the new bucket: retention_periodIf the
  /// retention period is decreased and the bucket is locked,
  /// FAILED_PRECONDITION will be returned.If the bucket has a LifecycleState of
  /// DELETE_REQUESTED, FAILED_PRECONDITION will be returned.A buckets region
  /// may not be modified after it is created. This method is in Beta.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to update.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id". Also
  /// requires permission "resourcemanager.projects.updateLiens" to set the
  /// locked property
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/buckets/[^/]+$".
  ///
  /// [updateMask] - Required. Field mask that specifies the fields in bucket
  /// that need an update. A bucket field will be overwritten if, and only if,
  /// it is in the update mask. name and output only fields cannot be
  /// updated.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=retention_days.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogBucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogBucket> patch(
    LogBucket request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogBucket.fromJson(data));
  }

  /// Undeletes a bucket. A bucket that has been deleted may be undeleted within
  /// the grace period of 7 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the bucket to undelete.
  /// "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
  /// "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" Example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id".
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/buckets/[^/]+$".
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
  async.Future<Empty> undelete(
    UndeleteBucketRequest request,
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':undelete';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }
}

class ProjectsLogsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes all the log entries in a log. The log reappears if it receives new
  /// entries. Log entries written shortly before the delete operation might not
  /// be deleted. Entries received after the delete operation with a timestamp
  /// before the operation will be deleted.
  ///
  /// Request parameters:
  ///
  /// [logName] - Required. The resource name of the log to delete:
  /// "projects/[PROJECT_ID]/logs/[LOG_ID]"
  /// "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
  /// "folders/[FOLDER_ID]/logs/[LOG_ID]" [LOG_ID] must be URL-encoded. For
  /// example, "projects/my-project-id/logs/syslog",
  /// "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
  /// For more information about log names, see LogEntry.
  /// Value must have pattern "^projects/[^/]+/logs/[^/]+$".
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
    core.String logName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (logName == null) {
      throw core.ArgumentError('Parameter logName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$logName');

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

  /// Lists the logs in projects, organizations, folders, or billing accounts.
  /// Only logs that have entries are listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name that owns the logs:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLogsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/logs';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListLogsResponse.fromJson(data));
  }
}

class ProjectsMetricsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsMetricsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a logs-based metric.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project in which to create
  /// the metric: "projects/[PROJECT_ID]" The new metric must be provided in the
  /// request.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogMetric> create(
    LogMetric request,
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

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/metrics';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogMetric.fromJson(data));
  }

  /// Deletes a logs-based metric.
  ///
  /// Request parameters:
  ///
  /// [metricName] - Required. The resource name of the metric to delete:
  /// "projects/[PROJECT_ID]/metrics/[METRIC_ID]"
  /// Value must have pattern "^projects/[^/]+/metrics/[^/]+$".
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
    core.String metricName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (metricName == null) {
      throw core.ArgumentError('Parameter metricName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$metricName');

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

  /// Gets a logs-based metric.
  ///
  /// Request parameters:
  ///
  /// [metricName] - Required. The resource name of the desired metric:
  /// "projects/[PROJECT_ID]/metrics/[METRIC_ID]"
  /// Value must have pattern "^projects/[^/]+/metrics/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogMetric> get(
    core.String metricName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (metricName == null) {
      throw core.ArgumentError('Parameter metricName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$metricName');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogMetric.fromJson(data));
  }

  /// Lists logs-based metrics.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project containing the metrics:
  /// "projects/[PROJECT_ID]"
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLogMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLogMetricsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/metrics';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListLogMetricsResponse.fromJson(data));
  }

  /// Creates or updates a logs-based metric.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [metricName] - Required. The resource name of the metric to update:
  /// "projects/[PROJECT_ID]/metrics/[METRIC_ID]" The updated metric must be
  /// provided in the request and it's name field must be the same as
  /// [METRIC_ID] If the metric does not exist in [PROJECT_ID], then a new
  /// metric is created.
  /// Value must have pattern "^projects/[^/]+/metrics/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogMetric> update(
    LogMetric request,
    core.String metricName, {
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
    if (metricName == null) {
      throw core.ArgumentError('Parameter metricName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$metricName');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogMetric.fromJson(data));
  }
}

class ProjectsSinksResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSinksResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a sink that exports specified log entries to a destination. The
  /// export of newly-ingested log entries begins immediately, unless the sink's
  /// writer_identity is not permitted to write to the destination. A sink can
  /// export log entries only from the resource owning the sink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the sink:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Examples:
  /// "projects/my-logging-project", "organizations/123456789".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. Determines the kind of IAM identity
  /// returned as writer_identity in the new sink. If this value is omitted or
  /// set to false, and if the sink's parent is a project, then the value
  /// returned as writer_identity is the same group or service account used by
  /// Logging before the addition of writer identities to this API. The sink's
  /// destination must be in the same project as the sink itself.If this field
  /// is set to true, or if the sink is owned by a non-project resource such as
  /// an organization, then the value of writer_identity will be a unique
  /// service account used only for exports from the new sink. For more
  /// information, see writer_identity in LogSink.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> create(
    LogSink request,
    core.String parent, {
    core.bool uniqueWriterIdentity,
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
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Deletes a sink. If the sink has a unique writer_identity, then that
  /// service account is also deleted.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to delete,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^projects/[^/]+/sinks/[^/]+$".
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
    core.String sinkName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

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

  /// Gets a sink.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The resource name of the sink:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^projects/[^/]+/sinks/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> get(
    core.String sinkName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Lists sinks.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose sinks are to be listed:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSinksResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListSinksResponse.fromJson(data));
  }

  /// Updates a sink. This method replaces the following fields in the existing
  /// sink with values from the new sink: destination, and filter.The updated
  /// sink might also have a new writer_identity; see the unique_writer_identity
  /// field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to update,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^projects/[^/]+/sinks/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. See sinks.create for a description of
  /// this field. When updating a sink, the effect of this field on the value of
  /// writer_identity in the updated sink depends on both the old and new values
  /// of this field: If the old and new values of this field are both false or
  /// both true, then there is no change to the sink's writer_identity. If the
  /// old value is false and the new value is true, then writer_identity is
  /// changed to a unique service account. It is an error if the old value is
  /// true and the new value is set to false or defaulted to false.
  ///
  /// [updateMask] - Optional. Field mask that specifies the fields in sink that
  /// need an update. A sink field will be overwritten if, and only if, it is in
  /// the update mask. name and output only fields cannot be updated.An empty
  /// updateMask is temporarily treated as using the following mask for
  /// backwards compatibility purposes: destination,filter,includeChildren At
  /// some point in the future, behavior will be removed and specifying an empty
  /// updateMask will be an error.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> patch(
    LogSink request,
    core.String sinkName, {
    core.bool uniqueWriterIdentity,
    core.String updateMask,
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
    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Updates a sink. This method replaces the following fields in the existing
  /// sink with values from the new sink: destination, and filter.The updated
  /// sink might also have a new writer_identity; see the unique_writer_identity
  /// field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to update,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^projects/[^/]+/sinks/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. See sinks.create for a description of
  /// this field. When updating a sink, the effect of this field on the value of
  /// writer_identity in the updated sink depends on both the old and new values
  /// of this field: If the old and new values of this field are both false or
  /// both true, then there is no change to the sink's writer_identity. If the
  /// old value is false and the new value is true, then writer_identity is
  /// changed to a unique service account. It is an error if the old value is
  /// true and the new value is set to false or defaulted to false.
  ///
  /// [updateMask] - Optional. Field mask that specifies the fields in sink that
  /// need an update. A sink field will be overwritten if, and only if, it is in
  /// the update mask. name and output only fields cannot be updated.An empty
  /// updateMask is temporarily treated as using the following mask for
  /// backwards compatibility purposes: destination,filter,includeChildren At
  /// some point in the future, behavior will be removed and specifying an empty
  /// updateMask will be an error.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> update(
    LogSink request,
    core.String sinkName, {
    core.bool uniqueWriterIdentity,
    core.String updateMask,
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
    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }
}

class SinksResourceApi {
  final commons.ApiRequester _requester;

  SinksResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a sink that exports specified log entries to a destination. The
  /// export of newly-ingested log entries begins immediately, unless the sink's
  /// writer_identity is not permitted to write to the destination. A sink can
  /// export log entries only from the resource owning the sink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the sink:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Examples:
  /// "projects/my-logging-project", "organizations/123456789".
  /// Value must have pattern "^[^/]+/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. Determines the kind of IAM identity
  /// returned as writer_identity in the new sink. If this value is omitted or
  /// set to false, and if the sink's parent is a project, then the value
  /// returned as writer_identity is the same group or service account used by
  /// Logging before the addition of writer identities to this API. The sink's
  /// destination must be in the same project as the sink itself.If this field
  /// is set to true, or if the sink is owned by a non-project resource such as
  /// an organization, then the value of writer_identity will be a unique
  /// service account used only for exports from the new sink. For more
  /// information, see writer_identity in LogSink.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> create(
    LogSink request,
    core.String parent, {
    core.bool uniqueWriterIdentity,
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
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Deletes a sink. If the sink has a unique writer_identity, then that
  /// service account is also deleted.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to delete,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^[^/]+/[^/]+/sinks/[^/]+$".
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
    core.String sinkName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

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

  /// Gets a sink.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The resource name of the sink:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^[^/]+/[^/]+/sinks/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> get(
    core.String sinkName, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }

  /// Lists sinks.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose sinks are to be listed:
  /// "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
  /// Value must have pattern "^[^/]+/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of nextPageToken in
  /// the response indicates that more results might be available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. pageToken must be the
  /// value of nextPageToken from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSinksResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sinks';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListSinksResponse.fromJson(data));
  }

  /// Updates a sink. This method replaces the following fields in the existing
  /// sink with values from the new sink: destination, and filter.The updated
  /// sink might also have a new writer_identity; see the unique_writer_identity
  /// field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sinkName] - Required. The full resource name of the sink to update,
  /// including the parent resource and the sink identifier:
  /// "projects/[PROJECT_ID]/sinks/[SINK_ID]"
  /// "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
  /// "folders/[FOLDER_ID]/sinks/[SINK_ID]" Example:
  /// "projects/my-project-id/sinks/my-sink-id".
  /// Value must have pattern "^[^/]+/[^/]+/sinks/[^/]+$".
  ///
  /// [uniqueWriterIdentity] - Optional. See sinks.create for a description of
  /// this field. When updating a sink, the effect of this field on the value of
  /// writer_identity in the updated sink depends on both the old and new values
  /// of this field: If the old and new values of this field are both false or
  /// both true, then there is no change to the sink's writer_identity. If the
  /// old value is false and the new value is true, then writer_identity is
  /// changed to a unique service account. It is an error if the old value is
  /// true and the new value is set to false or defaulted to false.
  ///
  /// [updateMask] - Optional. Field mask that specifies the fields in sink that
  /// need an update. A sink field will be overwritten if, and only if, it is in
  /// the update mask. name and output only fields cannot be updated.An empty
  /// updateMask is temporarily treated as using the following mask for
  /// backwards compatibility purposes: destination,filter,includeChildren At
  /// some point in the future, behavior will be removed and specifying an empty
  /// updateMask will be an error.For a detailed FieldMask definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample:
  /// updateMask=filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LogSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogSink> update(
    LogSink request,
    core.String sinkName, {
    core.bool uniqueWriterIdentity,
    core.String updateMask,
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
    if (sinkName == null) {
      throw core.ArgumentError('Parameter sinkName is required.');
    }
    if (uniqueWriterIdentity != null) {
      _queryParams['uniqueWriterIdentity'] = ['${uniqueWriterIdentity}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$sinkName');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => LogSink.fromJson(data));
  }
}

class V2ResourceApi {
  final commons.ApiRequester _requester;

  V2ResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the Logs Router CMEK settings for the given resource.Note: CMEK for
  /// the Logs Router can currently only be configured for GCP organizations.
  /// Once configured, it applies to all projects and folders in the GCP
  /// organization.See Enabling CMEK for Logs Router
  /// (https://cloud.google.com/logging/docs/routing/managed-encryption) for
  /// more information.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource for which to retrieve CMEK settings.
  /// "projects/[PROJECT_ID]/cmekSettings"
  /// "organizations/[ORGANIZATION_ID]/cmekSettings"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings"
  /// "folders/[FOLDER_ID]/cmekSettings" Example:
  /// "organizations/12345/cmekSettings".Note: CMEK for the Logs Router can
  /// currently only be configured for GCP organizations. Once configured, it
  /// applies to all projects and folders in the GCP organization.
  /// Value must have pattern "^[^/]+/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CmekSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CmekSettings> getCmekSettings(
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/cmekSettings';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => CmekSettings.fromJson(data));
  }

  /// Updates the Logs Router CMEK settings for the given resource.Note: CMEK
  /// for the Logs Router can currently only be configured for GCP
  /// organizations. Once configured, it applies to all projects and folders in
  /// the GCP organization.UpdateCmekSettings will fail if 1) kms_key_name is
  /// invalid, or 2) the associated service account does not have the required
  /// roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key, or
  /// 3) access to the key is disabled.See Enabling CMEK for Logs Router
  /// (https://cloud.google.com/logging/docs/routing/managed-encryption) for
  /// more information.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for the CMEK settings to update.
  /// "projects/[PROJECT_ID]/cmekSettings"
  /// "organizations/[ORGANIZATION_ID]/cmekSettings"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings"
  /// "folders/[FOLDER_ID]/cmekSettings" Example:
  /// "organizations/12345/cmekSettings".Note: CMEK for the Logs Router can
  /// currently only be configured for GCP organizations. Once configured, it
  /// applies to all projects and folders in the GCP organization.
  /// Value must have pattern "^[^/]+/[^/]+$".
  ///
  /// [updateMask] - Optional. Field mask identifying which fields from
  /// cmek_settings should be updated. A field will be overwritten if and only
  /// if it is in the update mask. Output only fields cannot be updated.See
  /// FieldMask for more information.Example: "updateMask=kmsKeyName"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CmekSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CmekSettings> updateCmekSettings(
    CmekSettings request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/cmekSettings';

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => CmekSettings.fromJson(data));
  }
}

/// Options that change functionality of a sink exporting data to BigQuery.
class BigQueryOptions {
  /// Optional. Whether to use BigQuery's partition tables
  /// (https://cloud.google.com/bigquery/docs/partitioned-tables). By default,
  /// Logging creates dated tables based on the log entries' timestamps, e.g.
  /// syslog_20170523. With partitioned tables the date suffix is no longer
  /// present and special query syntax
  /// (https://cloud.google.com/bigquery/docs/querying-partitioned-tables) has
  /// to be used instead. In both cases, tables are sharded based on UTC
  /// timezone.
  core.bool usePartitionedTables;

  /// Output only. True if new timestamp column based partitioning is in use,
  /// false if legacy ingestion-time partitioning is in use. All new sinks will
  /// have this field set true and will use timestamp column based partitioning.
  /// If use_partitioned_tables is false, this value has no meaning and will be
  /// false. Legacy sinks using partitioned tables will have this field set to
  /// false.
  core.bool usesTimestampColumnPartitioning;

  BigQueryOptions();

  BigQueryOptions.fromJson(core.Map _json) {
    if (_json.containsKey('usePartitionedTables')) {
      usePartitionedTables = _json['usePartitionedTables'] as core.bool;
    }
    if (_json.containsKey('usesTimestampColumnPartitioning')) {
      usesTimestampColumnPartitioning =
          _json['usesTimestampColumnPartitioning'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (usePartitionedTables != null) {
      _json['usePartitionedTables'] = usePartitionedTables;
    }
    if (usesTimestampColumnPartitioning != null) {
      _json['usesTimestampColumnPartitioning'] =
          usesTimestampColumnPartitioning;
    }
    return _json;
  }
}

/// BucketOptions describes the bucket boundaries used to create a histogram for
/// the distribution. The buckets can be in a linear sequence, an exponential
/// sequence, or each bucket can be specified explicitly. BucketOptions does not
/// include the number of values in each bucket.A bucket has an inclusive lower
/// bound and exclusive upper bound for the values that are counted for that
/// bucket. The upper bound of a bucket must be strictly greater than the lower
/// bound. The sequence of N buckets for a distribution consists of an underflow
/// bucket (number 0), zero or more finite buckets (number 1 through N - 2) and
/// an overflow bucket (number N - 1). The buckets are contiguous: the lower
/// bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1.
/// The buckets span the whole range of finite values: lower bound of the
/// underflow bucket is -infinity and the upper bound of the overflow bucket is
/// +infinity. The finite buckets are so-called because both bounds are finite.
class BucketOptions {
  /// The explicit buckets.
  Explicit explicitBuckets;

  /// The exponential buckets.
  Exponential exponentialBuckets;

  /// The linear bucket.
  Linear linearBuckets;

  BucketOptions();

  BucketOptions.fromJson(core.Map _json) {
    if (_json.containsKey('explicitBuckets')) {
      explicitBuckets = Explicit.fromJson(_json['explicitBuckets']);
    }
    if (_json.containsKey('exponentialBuckets')) {
      exponentialBuckets = Exponential.fromJson(_json['exponentialBuckets']);
    }
    if (_json.containsKey('linearBuckets')) {
      linearBuckets = Linear.fromJson(_json['linearBuckets']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (explicitBuckets != null) {
      _json['explicitBuckets'] = explicitBuckets.toJson();
    }
    if (exponentialBuckets != null) {
      _json['exponentialBuckets'] = exponentialBuckets.toJson();
    }
    if (linearBuckets != null) {
      _json['linearBuckets'] = linearBuckets.toJson();
    }
    return _json;
  }
}

/// Describes the customer-managed encryption key (CMEK) settings associated
/// with a project, folder, organization, billing account, or flexible
/// resource.Note: CMEK for the Logs Router can currently only be configured for
/// GCP organizations. Once configured, it applies to all projects and folders
/// in the GCP organization.See Enabling CMEK for Logs Router
/// (https://cloud.google.com/logging/docs/routing/managed-encryption) for more
/// information.
class CmekSettings {
  /// The resource name for the configured Cloud KMS key.KMS key name format:
  /// "projects/PROJECT_ID/locations/LOCATION/keyRings/KEYRING/cryptoKeys/KEY"For
  /// example:
  /// "projects/my-project-id/locations/my-region/keyRings/key-ring-name/cryptoKeys/key-name"To
  /// enable CMEK for the Logs Router, set this field to a valid kms_key_name
  /// for which the associated service account has the required
  /// roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key.The
  /// Cloud KMS key used by the Log Router can be updated by changing the
  /// kms_key_name to a new valid key name. Encryption operations that are in
  /// progress will be completed with the key that was in use when they started.
  /// Decryption operations will be completed using the key that was used at the
  /// time of encryption unless access to that key has been revoked.To disable
  /// CMEK for the Logs Router, set this field to an empty string.See Enabling
  /// CMEK for Logs Router
  /// (https://cloud.google.com/logging/docs/routing/managed-encryption) for
  /// more information.
  core.String kmsKeyName;

  /// Output only. The resource name of the CMEK settings.
  core.String name;

  /// Output only. The service account that will be used by the Logs Router to
  /// access your Cloud KMS key.Before enabling CMEK for Logs Router, you must
  /// first assign the role roles/cloudkms.cryptoKeyEncrypterDecrypter to the
  /// service account that the Logs Router will use to access your Cloud KMS
  /// key. Use GetCmekSettings to obtain the service account ID.See Enabling
  /// CMEK for Logs Router
  /// (https://cloud.google.com/logging/docs/routing/managed-encryption) for
  /// more information.
  core.String serviceAccountId;

  CmekSettings();

  CmekSettings.fromJson(core.Map _json) {
    if (_json.containsKey('kmsKeyName')) {
      kmsKeyName = _json['kmsKeyName'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('serviceAccountId')) {
      serviceAccountId = _json['serviceAccountId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kmsKeyName != null) {
      _json['kmsKeyName'] = kmsKeyName;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (serviceAccountId != null) {
      _json['serviceAccountId'] = serviceAccountId;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for Empty is empty JSON object {}.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1
/// (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i <
/// N-1): boundsi Lower bound (1 <= i < N); boundsi - 1The bounds field must
/// contain at least one element. If bounds has only one element, then there are
/// no finite buckets, and that single element is the common boundary of the
/// overflow and underflow buckets.
class Explicit {
  /// The values must be monotonically increasing.
  core.List<core.double> bounds;

  Explicit();

  Explicit.fromJson(core.Map _json) {
    if (_json.containsKey('bounds')) {
      bounds = (_json['bounds'] as core.List)
          .map<core.double>((value) => (value as core.num).toDouble())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bounds != null) {
      _json['bounds'] = bounds;
    }
    return _json;
  }
}

/// Specifies an exponential sequence of buckets that have a width that is
/// proportional to the value of the lower bound. Each bucket represents a
/// constant relative uncertainty on a specific value in the bucket.There are
/// num_finite_buckets + 2 (= N) buckets. Bucket i has the following
/// boundaries:Upper bound (0 <= i < N-1): scale * (growth_factor ^ i). Lower
/// bound (1 <= i < N): scale * (growth_factor ^ (i - 1)).
class Exponential {
  /// Must be greater than 1.
  core.double growthFactor;

  /// Must be greater than 0.
  core.int numFiniteBuckets;

  /// Must be greater than 0.
  core.double scale;

  Exponential();

  Exponential.fromJson(core.Map _json) {
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (growthFactor != null) {
      _json['growthFactor'] = growthFactor;
    }
    if (numFiniteBuckets != null) {
      _json['numFiniteBuckets'] = numFiniteBuckets;
    }
    if (scale != null) {
      _json['scale'] = scale;
    }
    return _json;
  }
}

/// A common proto for logging HTTP requests. Only contains semantics defined by
/// the HTTP specification. Product-specific logging information MUST be defined
/// in a separate message.
class HttpRequest {
  /// The number of HTTP response bytes inserted into cache. Set only when a
  /// cache fill was attempted.
  core.String cacheFillBytes;

  /// Whether or not an entity was served from cache (with or without
  /// validation).
  core.bool cacheHit;

  /// Whether or not a cache lookup was attempted.
  core.bool cacheLookup;

  /// Whether or not the response was validated with the origin server before
  /// being served from cache. This field is only meaningful if cache_hit is
  /// True.
  core.bool cacheValidatedWithOriginServer;

  /// The request processing latency on the server, from the time the request
  /// was received until the response was sent.
  core.String latency;

  /// Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2", "websocket"
  core.String protocol;

  /// The referer URL of the request, as defined in HTTP/1.1 Header Field
  /// Definitions (http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
  core.String referer;

  /// The IP address (IPv4 or IPv6) of the client that issued the HTTP request.
  /// Examples: "192.168.1.1", "FE80::0202:B3FF:FE1E:8329".
  core.String remoteIp;

  /// The request method. Examples: "GET", "HEAD", "PUT", "POST".
  core.String requestMethod;

  /// The size of the HTTP request message in bytes, including the request
  /// headers and the request body.
  core.String requestSize;

  /// The scheme (http, https), the host name, the path and the query portion of
  /// the URL that was requested. Example:
  /// "http://example.com/some/info?color=red".
  core.String requestUrl;

  /// The size of the HTTP response message sent back to the client, in bytes,
  /// including the response headers and the response body.
  core.String responseSize;

  /// The IP address (IPv4 or IPv6) of the origin server that the request was
  /// sent to.
  core.String serverIp;

  /// The response code indicating the status of response. Examples: 200, 404.
  core.int status;

  /// The user agent sent by the client. Example: "Mozilla/4.0 (compatible; MSIE
  /// 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)".
  core.String userAgent;

  HttpRequest();

  HttpRequest.fromJson(core.Map _json) {
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cacheFillBytes != null) {
      _json['cacheFillBytes'] = cacheFillBytes;
    }
    if (cacheHit != null) {
      _json['cacheHit'] = cacheHit;
    }
    if (cacheLookup != null) {
      _json['cacheLookup'] = cacheLookup;
    }
    if (cacheValidatedWithOriginServer != null) {
      _json['cacheValidatedWithOriginServer'] = cacheValidatedWithOriginServer;
    }
    if (latency != null) {
      _json['latency'] = latency;
    }
    if (protocol != null) {
      _json['protocol'] = protocol;
    }
    if (referer != null) {
      _json['referer'] = referer;
    }
    if (remoteIp != null) {
      _json['remoteIp'] = remoteIp;
    }
    if (requestMethod != null) {
      _json['requestMethod'] = requestMethod;
    }
    if (requestSize != null) {
      _json['requestSize'] = requestSize;
    }
    if (requestUrl != null) {
      _json['requestUrl'] = requestUrl;
    }
    if (responseSize != null) {
      _json['responseSize'] = responseSize;
    }
    if (serverIp != null) {
      _json['serverIp'] = serverIp;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (userAgent != null) {
      _json['userAgent'] = userAgent;
    }
    return _json;
  }
}

/// A description of a label.
class LabelDescriptor {
  /// A human-readable description for the label.
  core.String description;

  /// The label key.
  core.String key;

  /// The type of data that can be assigned to the label.
  /// Possible string values are:
  /// - "STRING" : A variable-length string. This is the default.
  /// - "BOOL" : Boolean; true or false.
  /// - "INT64" : A 64-bit signed integer.
  core.String valueType;

  LabelDescriptor();

  LabelDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
    if (_json.containsKey('valueType')) {
      valueType = _json['valueType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (key != null) {
      _json['key'] = key;
    }
    if (valueType != null) {
      _json['valueType'] = valueType;
    }
    return _json;
  }
}

/// Specifies a linear sequence of buckets that all have the same width (except
/// overflow and underflow). Each bucket represents a constant absolute
/// uncertainty on the specific value in the bucket.There are num_finite_buckets
/// + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i
/// < N-1): offset + (width * i). Lower bound (1 <= i < N): offset + (width * (i
/// - 1)).
class Linear {
  /// Must be greater than 0.
  core.int numFiniteBuckets;

  /// Lower bound of the first bucket.
  core.double offset;

  /// Must be greater than 0.
  core.double width;

  Linear();

  Linear.fromJson(core.Map _json) {
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (numFiniteBuckets != null) {
      _json['numFiniteBuckets'] = numFiniteBuckets;
    }
    if (offset != null) {
      _json['offset'] = offset;
    }
    if (width != null) {
      _json['width'] = width;
    }
    return _json;
  }
}

/// The response from ListBuckets (Beta).
class ListBucketsResponse {
  /// A list of buckets.
  core.List<LogBucket> buckets;

  /// If there might be more results than appear in this response, then
  /// nextPageToken is included. To get the next set of results, call the same
  /// method again using the value of nextPageToken as pageToken.
  core.String nextPageToken;

  ListBucketsResponse();

  ListBucketsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('buckets')) {
      buckets = (_json['buckets'] as core.List)
          .map<LogBucket>((value) => LogBucket.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (buckets != null) {
      _json['buckets'] = buckets.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Result returned from ListExclusions.
class ListExclusionsResponse {
  /// A list of exclusions.
  core.List<LogExclusion> exclusions;

  /// If there might be more results than appear in this response, then
  /// nextPageToken is included. To get the next set of results, call the same
  /// method again using the value of nextPageToken as pageToken.
  core.String nextPageToken;

  ListExclusionsResponse();

  ListExclusionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('exclusions')) {
      exclusions = (_json['exclusions'] as core.List)
          .map<LogExclusion>((value) => LogExclusion.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exclusions != null) {
      _json['exclusions'] = exclusions.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The parameters to ListLogEntries.
class ListLogEntriesRequest {
  /// Optional. A filter that chooses which log entries to return. See Advanced
  /// Logs Queries
  /// (https://cloud.google.com/logging/docs/view/advanced-queries). Only log
  /// entries that match the filter are returned. An empty filter matches all
  /// log entries in the resources listed in resource_names. Referencing a
  /// parent resource that is not listed in resource_names will cause the filter
  /// to return no results. The maximum length of the filter is 20000
  /// characters.
  core.String filter;

  /// Optional. How the results should be sorted. Presently, the only permitted
  /// values are "timestamp asc" (default) and "timestamp desc". The first
  /// option returns entries in order of increasing values of LogEntry.timestamp
  /// (oldest first), and the second option returns entries in order of
  /// decreasing timestamps (newest first). Entries with equal timestamps are
  /// returned in order of their insert_id values.
  core.String orderBy;

  /// Optional. The maximum number of results to return from this request.
  /// Default is 50. If the value is negative or exceeds 1000, the request is
  /// rejected. The presence of next_page_token in the response indicates that
  /// more results might be available.
  core.int pageSize;

  /// Optional. If present, then retrieve the next batch of results from the
  /// preceding call to this method. page_token must be the value of
  /// next_page_token from the previous response. The values of other method
  /// parameters should be identical to those in the previous call.
  core.String pageToken;

  /// Optional. Deprecated. Use resource_names instead. One or more project
  /// identifiers or project numbers from which to retrieve log entries.
  /// Example: "my-project-1A".
  core.List<core.String> projectIds;

  /// Required. Names of one or more parent resources from which to retrieve log
  /// entries: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" Projects
  /// listed in the project_ids field are added to this list.
  core.List<core.String> resourceNames;

  ListLogEntriesRequest();

  ListLogEntriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('orderBy')) {
      orderBy = _json['orderBy'] as core.String;
    }
    if (_json.containsKey('pageSize')) {
      pageSize = _json['pageSize'] as core.int;
    }
    if (_json.containsKey('pageToken')) {
      pageToken = _json['pageToken'] as core.String;
    }
    if (_json.containsKey('projectIds')) {
      projectIds = (_json['projectIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('resourceNames')) {
      resourceNames = (_json['resourceNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (orderBy != null) {
      _json['orderBy'] = orderBy;
    }
    if (pageSize != null) {
      _json['pageSize'] = pageSize;
    }
    if (pageToken != null) {
      _json['pageToken'] = pageToken;
    }
    if (projectIds != null) {
      _json['projectIds'] = projectIds;
    }
    if (resourceNames != null) {
      _json['resourceNames'] = resourceNames;
    }
    return _json;
  }
}

/// Result returned from ListLogEntries.
class ListLogEntriesResponse {
  /// A list of log entries. If entries is empty, nextPageToken may still be
  /// returned, indicating that more entries may exist. See nextPageToken for
  /// more information.
  core.List<LogEntry> entries;

  /// If there might be more results than those appearing in this response, then
  /// nextPageToken is included. To get the next set of results, call this
  /// method again using the value of nextPageToken as pageToken.If a value for
  /// next_page_token appears and the entries field is empty, it means that the
  /// search found no log entries so far but it did not have time to search all
  /// the possible log entries. Retry the method with this value for page_token
  /// to continue the search. Alternatively, consider speeding up the search by
  /// changing your filter to specify a single log name or resource type, or to
  /// narrow the time range of the search.
  core.String nextPageToken;

  ListLogEntriesResponse();

  ListLogEntriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('entries')) {
      entries = (_json['entries'] as core.List)
          .map<LogEntry>((value) => LogEntry.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (entries != null) {
      _json['entries'] = entries.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Result returned from ListLogMetrics.
class ListLogMetricsResponse {
  /// A list of logs-based metrics.
  core.List<LogMetric> metrics;

  /// If there might be more results than appear in this response, then
  /// nextPageToken is included. To get the next set of results, call this
  /// method again using the value of nextPageToken as pageToken.
  core.String nextPageToken;

  ListLogMetricsResponse();

  ListLogMetricsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<LogMetric>((value) => LogMetric.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (metrics != null) {
      _json['metrics'] = metrics.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Result returned from ListLogs.
class ListLogsResponse {
  /// A list of log names. For example, "projects/my-project/logs/syslog" or
  /// "organizations/123/logs/cloudresourcemanager.googleapis.com%2Factivity".
  core.List<core.String> logNames;

  /// If there might be more results than those appearing in this response, then
  /// nextPageToken is included. To get the next set of results, call this
  /// method again using the value of nextPageToken as pageToken.
  core.String nextPageToken;

  ListLogsResponse();

  ListLogsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('logNames')) {
      logNames = (_json['logNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (logNames != null) {
      _json['logNames'] = logNames;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Result returned from ListMonitoredResourceDescriptors.
class ListMonitoredResourceDescriptorsResponse {
  /// If there might be more results than those appearing in this response, then
  /// nextPageToken is included. To get the next set of results, call this
  /// method again using the value of nextPageToken as pageToken.
  core.String nextPageToken;

  /// A list of resource descriptors.
  core.List<MonitoredResourceDescriptor> resourceDescriptors;

  ListMonitoredResourceDescriptorsResponse();

  ListMonitoredResourceDescriptorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('resourceDescriptors')) {
      resourceDescriptors = (_json['resourceDescriptors'] as core.List)
          .map<MonitoredResourceDescriptor>(
              (value) => MonitoredResourceDescriptor.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (resourceDescriptors != null) {
      _json['resourceDescriptors'] =
          resourceDescriptors.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Result returned from ListSinks.
class ListSinksResponse {
  /// If there might be more results than appear in this response, then
  /// nextPageToken is included. To get the next set of results, call the same
  /// method again using the value of nextPageToken as pageToken.
  core.String nextPageToken;

  /// A list of sinks.
  core.List<LogSink> sinks;

  ListSinksResponse();

  ListSinksResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('sinks')) {
      sinks = (_json['sinks'] as core.List)
          .map<LogSink>((value) => LogSink.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (sinks != null) {
      _json['sinks'] = sinks.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Describes a repository of logs (Beta).
class LogBucket {
  /// Output only. The creation timestamp of the bucket. This is not set for any
  /// of the default buckets.
  core.String createTime;

  /// Describes this bucket.
  core.String description;

  /// Output only. The bucket lifecycle state.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified state. This is only
  /// used/useful for distinguishing unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETE_REQUESTED" : The bucket has been marked for deletion by the
  /// user.
  core.String lifecycleState;

  /// Whether the bucket has been locked. The retention period on a locked
  /// bucket may not be changed. Locked buckets may only be deleted if they are
  /// empty.
  core.bool locked;

  /// The resource name of the bucket. For example:
  /// "projects/my-project-id/locations/my-location/buckets/my-bucket-id The
  /// supported locations are: "global"For the location of global it is
  /// unspecified where logs are actually stored. Once a bucket has been
  /// created, the location can not be changed.
  core.String name;

  /// Logs will be retained by default for this amount of time, after which they
  /// will automatically be deleted. The minimum retention period is 1 day. If
  /// this value is set to zero at bucket creation time, the default time of 30
  /// days will be used.
  core.int retentionDays;

  /// Output only. The last update timestamp of the bucket.
  core.String updateTime;

  LogBucket();

  LogBucket.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('lifecycleState')) {
      lifecycleState = _json['lifecycleState'] as core.String;
    }
    if (_json.containsKey('locked')) {
      locked = _json['locked'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('retentionDays')) {
      retentionDays = _json['retentionDays'] as core.int;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (lifecycleState != null) {
      _json['lifecycleState'] = lifecycleState;
    }
    if (locked != null) {
      _json['locked'] = locked;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (retentionDays != null) {
      _json['retentionDays'] = retentionDays;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// An individual entry in a log.
class LogEntry {
  /// Optional. Information about the HTTP request associated with this log
  /// entry, if applicable.
  HttpRequest httpRequest;

  /// Optional. A unique identifier for the log entry. If you provide a value,
  /// then Logging considers other log entries in the same project, with the
  /// same timestamp, and with the same insert_id to be duplicates which are
  /// removed in a single query result. However, there are no guarantees of
  /// de-duplication in the export of logs.If the insert_id is omitted when
  /// writing a log entry, the Logging API assigns its own unique identifier in
  /// this field.In queries, the insert_id is also used to order log entries
  /// that have the same log_name and timestamp values.
  core.String insertId;

  /// The log entry payload, represented as a structure that is expressed as a
  /// JSON object.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> jsonPayload;

  /// Optional. A set of user-defined (key, value) data that provides additional
  /// information about the log entry.
  core.Map<core.String, core.String> labels;

  /// Required. The resource name of the log to which this log entry belongs:
  /// "projects/[PROJECT_ID]/logs/[LOG_ID]"
  /// "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
  /// "folders/[FOLDER_ID]/logs/[LOG_ID]" A project number may be used in place
  /// of PROJECT_ID. The project number is translated to its corresponding
  /// PROJECT_ID internally and the log_name field will contain PROJECT_ID in
  /// queries and exports.[LOG_ID] must be URL-encoded within log_name. Example:
  /// "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity".
  /// [LOG_ID] must be less than 512 characters long and can only include the
  /// following characters: upper and lower case alphanumeric characters,
  /// forward-slash, underscore, hyphen, and period.For backward compatibility,
  /// if log_name begins with a forward-slash, such as /projects/..., then the
  /// log entry is ingested as usual but the forward-slash is removed. Listing
  /// the log entry will not show the leading slash and filtering for a log name
  /// with a leading slash will never return any results.
  core.String logName;

  /// Output only. Deprecated. Additional metadata about the monitored
  /// resource.Only k8s_container, k8s_pod, and k8s_node MonitoredResources have
  /// this field populated for GKE versions older than 1.12.6. For GKE versions
  /// 1.12.6 and above, the metadata field has been deprecated. The Kubernetes
  /// pod labels that used to be in metadata.userLabels will now be present in
  /// the labels field with a key prefix of k8s-pod/. The system labels that
  /// were present in the metadata.systemLabels field will no longer be
  /// available in the LogEntry.
  MonitoredResourceMetadata metadata;

  /// Optional. Information about an operation associated with the log entry, if
  /// applicable.
  LogEntryOperation operation;

  /// The log entry payload, represented as a protocol buffer. Some Google Cloud
  /// Platform services use this field for their log entry payloads.The
  /// following protocol buffer types are supported; user-defined types are not
  /// supported:"type.googleapis.com/google.cloud.audit.AuditLog"
  /// "type.googleapis.com/google.appengine.logging.v1.RequestLog"
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> protoPayload;

  /// Output only. The time the log entry was received by Logging.
  core.String receiveTimestamp;

  /// Required. The monitored resource that produced this log entry.Example: a
  /// log entry that reports a database error would be associated with the
  /// monitored resource designating the particular database that reported the
  /// error.
  MonitoredResource resource;

  /// Optional. The severity of the log entry. The default value is
  /// LogSeverity.DEFAULT.
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

  /// Optional. Source code location information associated with the log entry,
  /// if any.
  LogEntrySourceLocation sourceLocation;

  /// Optional. The span ID within the trace associated with the log entry.For
  /// Trace spans, this is the same format that the Trace API v2 uses: a
  /// 16-character hexadecimal encoding of an 8-byte array, such as
  /// 000000000000004a.
  core.String spanId;

  /// The log entry payload, represented as a Unicode string (UTF-8).
  core.String textPayload;

  /// Optional. The time the event described by the log entry occurred. This
  /// time is used to compute the log entry's age and to enforce the logs
  /// retention period. If this field is omitted in a new log entry, then
  /// Logging assigns it the current time. Timestamps have nanosecond accuracy,
  /// but trailing zeros in the fractional seconds might be omitted when the
  /// timestamp is displayed.Incoming log entries must have timestamps that
  /// don't exceed the logs retention period
  /// (https://cloud.google.com/logging/quotas#logs_retention_periods) in the
  /// past, and that don't exceed 24 hours in the future. Log entries outside
  /// those time boundaries aren't ingested by Logging.
  core.String timestamp;

  /// Optional. Resource name of the trace associated with the log entry, if
  /// any. If it contains a relative resource name, the name is assumed to be
  /// relative to //tracing.googleapis.com. Example:
  /// projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824
  core.String trace;

  /// Optional. The sampling decision of the trace associated with the log
  /// entry.True means that the trace resource name in the trace field was
  /// sampled for storage in a trace backend. False means that the trace was not
  /// sampled for storage when this log entry was written, or the sampling
  /// decision was unknown at the time. A non-sampled trace value is still
  /// useful as a request correlation identifier. The default is False.
  core.bool traceSampled;

  LogEntry();

  LogEntry.fromJson(core.Map _json) {
    if (_json.containsKey('httpRequest')) {
      httpRequest = HttpRequest.fromJson(_json['httpRequest']);
    }
    if (_json.containsKey('insertId')) {
      insertId = _json['insertId'] as core.String;
    }
    if (_json.containsKey('jsonPayload')) {
      jsonPayload = commons.mapMap<core.Object, core.Object>(
          _json['jsonPayload'].cast<core.String, core.Object>(),
          (core.Object item) => item as core.Object);
    }
    if (_json.containsKey('labels')) {
      labels = commons.mapMap<core.String, core.String>(
          _json['labels'].cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('logName')) {
      logName = _json['logName'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata = MonitoredResourceMetadata.fromJson(_json['metadata']);
    }
    if (_json.containsKey('operation')) {
      operation = LogEntryOperation.fromJson(_json['operation']);
    }
    if (_json.containsKey('protoPayload')) {
      protoPayload = commons.mapMap<core.Object, core.Object>(
          _json['protoPayload'].cast<core.String, core.Object>(),
          (core.Object item) => item as core.Object);
    }
    if (_json.containsKey('receiveTimestamp')) {
      receiveTimestamp = _json['receiveTimestamp'] as core.String;
    }
    if (_json.containsKey('resource')) {
      resource = MonitoredResource.fromJson(_json['resource']);
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('sourceLocation')) {
      sourceLocation = LogEntrySourceLocation.fromJson(_json['sourceLocation']);
    }
    if (_json.containsKey('spanId')) {
      spanId = _json['spanId'] as core.String;
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
    if (_json.containsKey('traceSampled')) {
      traceSampled = _json['traceSampled'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (httpRequest != null) {
      _json['httpRequest'] = httpRequest.toJson();
    }
    if (insertId != null) {
      _json['insertId'] = insertId;
    }
    if (jsonPayload != null) {
      _json['jsonPayload'] = jsonPayload;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (logName != null) {
      _json['logName'] = logName;
    }
    if (metadata != null) {
      _json['metadata'] = metadata.toJson();
    }
    if (operation != null) {
      _json['operation'] = operation.toJson();
    }
    if (protoPayload != null) {
      _json['protoPayload'] = protoPayload;
    }
    if (receiveTimestamp != null) {
      _json['receiveTimestamp'] = receiveTimestamp;
    }
    if (resource != null) {
      _json['resource'] = resource.toJson();
    }
    if (severity != null) {
      _json['severity'] = severity;
    }
    if (sourceLocation != null) {
      _json['sourceLocation'] = sourceLocation.toJson();
    }
    if (spanId != null) {
      _json['spanId'] = spanId;
    }
    if (textPayload != null) {
      _json['textPayload'] = textPayload;
    }
    if (timestamp != null) {
      _json['timestamp'] = timestamp;
    }
    if (trace != null) {
      _json['trace'] = trace;
    }
    if (traceSampled != null) {
      _json['traceSampled'] = traceSampled;
    }
    return _json;
  }
}

/// Additional information about a potentially long-running operation with which
/// a log entry is associated.
class LogEntryOperation {
  /// Optional. Set this to True if this is the first log entry in the
  /// operation.
  core.bool first;

  /// Optional. An arbitrary operation identifier. Log entries with the same
  /// identifier are assumed to be part of the same operation.
  core.String id;

  /// Optional. Set this to True if this is the last log entry in the operation.
  core.bool last;

  /// Optional. An arbitrary producer identifier. The combination of id and
  /// producer must be globally unique. Examples for producer:
  /// "MyDivision.MyBigCompany.com", "github.com/MyProject/MyApplication".
  core.String producer;

  LogEntryOperation();

  LogEntryOperation.fromJson(core.Map _json) {
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (first != null) {
      _json['first'] = first;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (last != null) {
      _json['last'] = last;
    }
    if (producer != null) {
      _json['producer'] = producer;
    }
    return _json;
  }
}

/// Additional information about the source code location that produced the log
/// entry.
class LogEntrySourceLocation {
  /// Optional. Source file name. Depending on the runtime environment, this
  /// might be a simple name or a fully-qualified name.
  core.String file;

  /// Optional. Human-readable name of the function or method being invoked,
  /// with optional context such as the class or package name. This information
  /// may be used in contexts such as the logs viewer, where a file and line
  /// number are less meaningful. The format can vary by language. For example:
  /// qual.if.ied.Class.method (Java), dir/package.func (Go), function (Python).
  core.String function;

  /// Optional. Line within the source file. 1-based; 0 indicates no line number
  /// available.
  core.String line;

  LogEntrySourceLocation();

  LogEntrySourceLocation.fromJson(core.Map _json) {
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (file != null) {
      _json['file'] = file;
    }
    if (function != null) {
      _json['function'] = function;
    }
    if (line != null) {
      _json['line'] = line;
    }
    return _json;
  }
}

/// Specifies a set of log entries that are not to be stored in Logging. If your
/// GCP resource receives a large volume of logs, you can use exclusions to
/// reduce your chargeable logs. Exclusions are processed after log sinks, so
/// you can export log entries before they are excluded. Note that
/// organization-level and folder-level exclusions don't apply to child
/// resources, and that you can't exclude audit log entries.
class LogExclusion {
  /// Output only. The creation timestamp of the exclusion.This field may not be
  /// present for older exclusions.
  core.String createTime;

  /// Optional. A description of this exclusion.
  core.String description;

  /// Optional. If set to True, then this exclusion is disabled and it does not
  /// exclude any log entries. You can update an exclusion to change the value
  /// of this field.
  core.bool disabled;

  /// Required. An advanced logs filter
  /// (https://cloud.google.com/logging/docs/view/advanced-queries) that matches
  /// the log entries to be excluded. By using the sample function
  /// (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you
  /// can exclude less than 100% of the matching log entries. For example, the
  /// following query matches 99% of low-severity log entries from Google Cloud
  /// Storage buckets:"resource.type=gcs_bucket severity<ERROR sample(insertId,
  /// 0.99)"
  core.String filter;

  /// Required. A client-assigned identifier, such as "load-balancer-exclusion".
  /// Identifiers are limited to 100 characters and can include only letters,
  /// digits, underscores, hyphens, and periods. First character has to be
  /// alphanumeric.
  core.String name;

  /// Output only. The last update timestamp of the exclusion.This field may not
  /// be present for older exclusions.
  core.String updateTime;

  LogExclusion();

  LogExclusion.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'] as core.bool;
    }
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (disabled != null) {
      _json['disabled'] = disabled;
    }
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Application log line emitted while processing a request.
class LogLine {
  /// App-provided log message.
  core.String logMessage;

  /// Severity of this log entry.
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

  /// Where in the source code this log message was written.
  SourceLocation sourceLocation;

  /// Approximate time when this log entry was made.
  core.String time;

  LogLine();

  LogLine.fromJson(core.Map _json) {
    if (_json.containsKey('logMessage')) {
      logMessage = _json['logMessage'] as core.String;
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('sourceLocation')) {
      sourceLocation = SourceLocation.fromJson(_json['sourceLocation']);
    }
    if (_json.containsKey('time')) {
      time = _json['time'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (logMessage != null) {
      _json['logMessage'] = logMessage;
    }
    if (severity != null) {
      _json['severity'] = severity;
    }
    if (sourceLocation != null) {
      _json['sourceLocation'] = sourceLocation.toJson();
    }
    if (time != null) {
      _json['time'] = time;
    }
    return _json;
  }
}

/// Describes a logs-based metric. The value of the metric is the number of log
/// entries that match a logs filter in a given time interval.Logs-based metric
/// can also be used to extract values from logs and create a a distribution of
/// the values. The distribution records the statistics of the extracted values
/// along with an optional histogram of the values as specified by the bucket
/// options.
class LogMetric {
  /// Optional. The bucket_options are required when the logs-based metric is
  /// using a DISTRIBUTION value type and it describes the bucket boundaries
  /// used to create a histogram of the extracted values.
  BucketOptions bucketOptions;

  /// Output only. The creation timestamp of the metric.This field may not be
  /// present for older metrics.
  core.String createTime;

  /// Optional. A description of this metric, which is used in documentation.
  /// The maximum length of the description is 8000 characters.
  core.String description;

  /// Required. An advanced logs filter
  /// (https://cloud.google.com/logging/docs/view/advanced_filters) which is
  /// used to match log entries. Example: "resource.type=gae_app AND
  /// severity>=ERROR" The maximum length of the filter is 20000 characters.
  core.String filter;

  /// Optional. A map from a label key string to an extractor expression which
  /// is used to extract data from a log entry field and assign as the label
  /// value. Each label key specified in the LabelDescriptor must have an
  /// associated extractor expression in this map. The syntax of the extractor
  /// expression is the same as for the value_extractor field.The extracted
  /// value is converted to the type defined in the label descriptor. If the
  /// either the extraction or the type conversion fails, the label will have a
  /// default value. The default value for a string label is an empty string,
  /// for an integer label its 0, and for a boolean label its false.Note that
  /// there are upper bounds on the maximum number of labels and the number of
  /// active time series that are allowed in a project.
  core.Map<core.String, core.String> labelExtractors;

  /// Optional. The metric descriptor associated with the logs-based metric. If
  /// unspecified, it uses a default metric descriptor with a DELTA metric kind,
  /// INT64 value type, with no labels and a unit of "1". Such a metric counts
  /// the number of log entries matching the filter expression.The name, type,
  /// and description fields in the metric_descriptor are output only, and is
  /// constructed using the name and description field in the LogMetric.To
  /// create a logs-based metric that records a distribution of log values, a
  /// DELTA metric kind with a DISTRIBUTION value type must be used along with a
  /// value_extractor expression in the LogMetric.Each label in the metric
  /// descriptor must have a matching label name as the key and an extractor
  /// expression as the value in the label_extractors map.The metric_kind and
  /// value_type fields in the metric_descriptor cannot be updated once
  /// initially configured. New labels can be added in the metric_descriptor,
  /// but existing labels cannot be modified except for their description.
  MetricDescriptor metricDescriptor;

  /// Required. The client-assigned metric identifier. Examples: "error_count",
  /// "nginx/requests".Metric identifiers are limited to 100 characters and can
  /// include only the following characters: A-Z, a-z, 0-9, and the special
  /// characters _-.,+!*',()%/. The forward-slash character (/) denotes a
  /// hierarchy of name pieces, and it cannot be the first character of the
  /// name.The metric identifier in this field must not be URL-encoded
  /// (https://en.wikipedia.org/wiki/Percent-encoding). However, when the metric
  /// identifier appears as the [METRIC_ID] part of a metric_name API parameter,
  /// then the metric identifier must be URL-encoded. Example:
  /// "projects/my-project/metrics/nginx%2Frequests".
  core.String name;

  /// Output only. The last update timestamp of the metric.This field may not be
  /// present for older metrics.
  core.String updateTime;

  /// Optional. A value_extractor is required when using a distribution
  /// logs-based metric to extract the values to record from a log entry. Two
  /// functions are supported for value extraction: EXTRACT(field) or
  /// REGEXP_EXTRACT(field, regex). The argument are: 1. field: The name of the
  /// log entry field from which the value is to be extracted. 2. regex: A
  /// regular expression using the Google RE2 syntax
  /// (https://github.com/google/re2/wiki/Syntax) with a single capture group to
  /// extract data from the specified log entry field. The value of the field is
  /// converted to a string before applying the regex. It is an error to specify
  /// a regex that does not include exactly one capture group.The result of the
  /// extraction must be convertible to a double type, as the distribution
  /// always records double values. If either the extraction or the conversion
  /// to double fails, then those values are not recorded in the
  /// distribution.Example: REGEXP_EXTRACT(jsonPayload.request,
  /// ".*quantity=(\d+).*")
  core.String valueExtractor;

  /// Deprecated. The API version that created or updated this metric. The v2
  /// format is used by default and cannot be changed.
  /// Possible string values are:
  /// - "V2" : Logging API v2.
  /// - "V1" : Logging API v1.
  core.String version;

  LogMetric();

  LogMetric.fromJson(core.Map _json) {
    if (_json.containsKey('bucketOptions')) {
      bucketOptions = BucketOptions.fromJson(_json['bucketOptions']);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('labelExtractors')) {
      labelExtractors = commons.mapMap<core.String, core.String>(
          _json['labelExtractors'].cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('metricDescriptor')) {
      metricDescriptor = MetricDescriptor.fromJson(_json['metricDescriptor']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('valueExtractor')) {
      valueExtractor = _json['valueExtractor'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bucketOptions != null) {
      _json['bucketOptions'] = bucketOptions.toJson();
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (labelExtractors != null) {
      _json['labelExtractors'] = labelExtractors;
    }
    if (metricDescriptor != null) {
      _json['metricDescriptor'] = metricDescriptor.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    if (valueExtractor != null) {
      _json['valueExtractor'] = valueExtractor;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Describes a sink used to export log entries to one of the following
/// destinations in any project: a Cloud Storage bucket, a BigQuery dataset, or
/// a Cloud Pub/Sub topic. A logs filter controls which log entries are
/// exported. The sink must be created within a project, organization, billing
/// account, or folder.
class LogSink {
  /// Optional. Options that affect sinks exporting data to BigQuery.
  BigQueryOptions bigqueryOptions;

  /// Output only. The creation timestamp of the sink.This field may not be
  /// present for older sinks.
  core.String createTime;

  /// Optional. A description of this sink. The maximum length of the
  /// description is 8000 characters.
  core.String description;

  /// Required. The export destination: "storage.googleapis.com/[GCS_BUCKET]"
  /// "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
  /// "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]" The sink's
  /// writer_identity, set when the sink is created, must have permission to
  /// write to the destination or else the log entries are not exported. For
  /// more information, see Exporting Logs with Sinks
  /// (https://cloud.google.com/logging/docs/api/tasks/exporting-logs).
  core.String destination;

  /// Optional. If set to True, then this sink is disabled and it does not
  /// export any log entries.
  core.bool disabled;

  /// Optional. Log entries that match any of the exclusion filters will not be
  /// exported. If a log entry is matched by both filter and one of
  /// exclusion_filters it will not be exported.
  core.List<LogExclusion> exclusions;

  /// Optional. An advanced logs filter
  /// (https://cloud.google.com/logging/docs/view/advanced-queries). The only
  /// exported log entries are those that are in the resource owning the sink
  /// and that match the filter. For example:
  /// logName="projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity>=ERROR
  core.String filter;

  /// Optional. This field applies only to sinks owned by organizations and
  /// folders. If the field is false, the default, only the logs owned by the
  /// sink's parent resource are available for export. If the field is true,
  /// then logs from all the projects, folders, and billing accounts contained
  /// in the sink's parent resource are also available for export. Whether a
  /// particular log entry from the children is exported depends on the sink's
  /// filter expression. For example, if this field is true, then the filter
  /// resource.type=gce_instance would export all Compute Engine VM instance log
  /// entries from all projects in the sink's parent. To only export entries
  /// from certain child projects, filter on the project part of the log name:
  /// logName:("projects/test-project1/" OR "projects/test-project2/") AND
  /// resource.type=gce_instance
  core.bool includeChildren;

  /// Required. The client-assigned sink identifier, unique within the project.
  /// Example: "my-syslog-errors-to-pubsub". Sink identifiers are limited to 100
  /// characters and can include only the following characters: upper and
  /// lower-case alphanumeric characters, underscores, hyphens, and periods.
  /// First character has to be alphanumeric.
  core.String name;

  /// Deprecated. This field is unused.
  /// Possible string values are:
  /// - "VERSION_FORMAT_UNSPECIFIED" : An unspecified format version that will
  /// default to V2.
  /// - "V2" : LogEntry version 2 format.
  /// - "V1" : LogEntry version 1 format.
  core.String outputVersionFormat;

  /// Output only. The last update timestamp of the sink.This field may not be
  /// present for older sinks.
  core.String updateTime;

  /// Output only. An IAM identity—a service account or group—under which
  /// Logging writes the exported log entries to the sink's destination. This
  /// field is set by sinks.create and sinks.update based on the value of
  /// unique_writer_identity in those methods.Until you grant this identity
  /// write-access to the destination, log entry exports from this sink will
  /// fail. For more information, see Granting Access for a Resource
  /// (https://cloud.google.com/iam/docs/granting-roles-to-service-accounts#granting_access_to_a_service_account_for_a_resource).
  /// Consult the destination service's documentation to determine the
  /// appropriate IAM roles to assign to the identity.
  core.String writerIdentity;

  LogSink();

  LogSink.fromJson(core.Map _json) {
    if (_json.containsKey('bigqueryOptions')) {
      bigqueryOptions = BigQueryOptions.fromJson(_json['bigqueryOptions']);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('destination')) {
      destination = _json['destination'] as core.String;
    }
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'] as core.bool;
    }
    if (_json.containsKey('exclusions')) {
      exclusions = (_json['exclusions'] as core.List)
          .map<LogExclusion>((value) => LogExclusion.fromJson(value))
          .toList();
    }
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('includeChildren')) {
      includeChildren = _json['includeChildren'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('outputVersionFormat')) {
      outputVersionFormat = _json['outputVersionFormat'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('writerIdentity')) {
      writerIdentity = _json['writerIdentity'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bigqueryOptions != null) {
      _json['bigqueryOptions'] = bigqueryOptions.toJson();
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (destination != null) {
      _json['destination'] = destination;
    }
    if (disabled != null) {
      _json['disabled'] = disabled;
    }
    if (exclusions != null) {
      _json['exclusions'] = exclusions.map((value) => value.toJson()).toList();
    }
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (includeChildren != null) {
      _json['includeChildren'] = includeChildren;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (outputVersionFormat != null) {
      _json['outputVersionFormat'] = outputVersionFormat;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    if (writerIdentity != null) {
      _json['writerIdentity'] = writerIdentity;
    }
    return _json;
  }
}

/// Defines a metric type and its schema. Once a metric descriptor is created,
/// deleting or altering it stops data collection and makes the metric type's
/// existing data unusable.The following are specific rules for service defined
/// Monitoring metric descriptors: type, metric_kind, value_type and description
/// fields are all required. The unit field must be specified if the value_type
/// is any of DOUBLE, INT64, DISTRIBUTION. Maximum of default 500 metric
/// descriptors per service is allowed. Maximum of default 10 labels per metric
/// descriptor is allowed.The default maximum limit can be overridden. Please
/// follow https://cloud.google.com/monitoring/quotas
class MetricDescriptor {
  /// A detailed description of the metric, which can be used in documentation.
  core.String description;

  /// A concise name for the metric, which can be displayed in user interfaces.
  /// Use sentence case without an ending period, for example "Request count".
  /// This field is optional but it is recommended to be set for any metrics
  /// associated with user-visible concepts, such as Quota.
  core.String displayName;

  /// The set of labels that can be used to describe a specific instance of this
  /// metric type.The label key name must follow: Only upper and lower-case
  /// letters, digits and underscores (_) are allowed. Label name must start
  /// with a letter or digit. The maximum length of a label name is 100
  /// characters.For example, the
  /// appengine.googleapis.com/http/server/response_latencies metric type has a
  /// label for the HTTP response code, response_code, so you can look at
  /// latencies for successful responses or just for responses that failed.
  core.List<LabelDescriptor> labels;

  /// Optional. The launch stage of the metric definition.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects whitelisted. Alpha releases don’t have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the “Deprecation Policy” section of our
  /// Terms of Service (https://cloud.google.com/terms/) and the Google Cloud
  /// Platform Subject to the Deprecation Policy
  /// (https://cloud.google.com/terms/deprecation) documentation.
  core.String launchStage;

  /// Optional. Metadata which can be used to guide usage of the metric.
  MetricDescriptorMetadata metadata;

  /// Whether the metric records instantaneous values, changes to a value, etc.
  /// Some combinations of metric_kind and value_type might not be supported.
  /// Possible string values are:
  /// - "METRIC_KIND_UNSPECIFIED" : Do not use this default value.
  /// - "GAUGE" : An instantaneous measurement of a value.
  /// - "DELTA" : The change in a value during a time interval.
  /// - "CUMULATIVE" : A value accumulated over a time interval. Cumulative
  /// measurements in a time series should have the same start time and
  /// increasing end times, until an event resets the cumulative value to zero
  /// and sets a new start time for the following points.
  core.String metricKind;

  /// Read-only. If present, then a time series, which is identified partially
  /// by a metric type and a MonitoredResourceDescriptor, that is associated
  /// with this metric type can only be associated with one of the monitored
  /// resource types listed here.
  core.List<core.String> monitoredResourceTypes;

  /// The resource name of the metric descriptor.
  core.String name;

  /// The metric type, including its DNS name prefix. The type is not
  /// URL-encoded.All service defined metrics must be prefixed with the service
  /// name, in the format of {service name}/{relative metric name}, such as
  /// cloudsql.googleapis.com/database/cpu/utilization. The relative metric name
  /// must follow: Only upper and lower-case letters, digits, '/' and
  /// underscores '_' are allowed. The maximum number of characters allowed for
  /// the relative_metric_name is 100.All user-defined metric types have the DNS
  /// name custom.googleapis.com, external.googleapis.com, or
  /// logging.googleapis.com/user/.Metric types should use a natural
  /// hierarchical grouping. For example:
  /// "custom.googleapis.com/invoice/paid/amount"
  /// "external.googleapis.com/prometheus/up"
  /// "appengine.googleapis.com/http/server/response_latencies"
  core.String type;

  /// The units in which the metric value is reported. It is only applicable if
  /// the value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the
  /// representation of the stored metric values.Different systems may scale the
  /// values to be more easily displayed (so a value of 0.02KBy might be
  /// displayed as 20By, and a value of 3523KBy might be displayed as 3.5MBy).
  /// However, if the unit is KBy, then the value of the metric is always in
  /// thousands of bytes, no matter how it may be displayed..If you want a
  /// custom metric to record the exact number of CPU-seconds used by a job, you
  /// can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or
  /// equivalently 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then
  /// the value is written as 12005.Alternatively, if you want a custom metric
  /// to record data in a more granular way, you can create a DOUBLE CUMULATIVE
  /// metric whose unit is ks{CPU}, and then write the value 12.005 (which is
  /// 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).The
  /// supported units are a subset of The Unified Code for Units of Measure
  /// (http://unitsofmeasure.org/ucum.html) standard:Basic units (UNIT) bit bit
  /// By byte s second min minute h hour d day 1 dimensionlessPrefixes (PREFIX)
  /// k kilo (10^3) M mega (10^6) G giga (10^9) T tera (10^12) P peta (10^15) E
  /// exa (10^18) Z zetta (10^21) Y yotta (10^24) m milli (10^-3) u micro
  /// (10^-6) n nano (10^-9) p pico (10^-12) f femto (10^-15) a atto (10^-18) z
  /// zepto (10^-21) y yocto (10^-24) Ki kibi (2^10) Mi mebi (2^20) Gi gibi
  /// (2^30) Ti tebi (2^40) Pi pebi (2^50)GrammarThe grammar also includes these
  /// connectors: / division or ratio (as an infix operator). For examples,
  /// kBy/{email} or MiBy/10ms (although you should almost never have /s in a
  /// metric unit; rates should always be computed at query time from the
  /// underlying cumulative or delta value). . multiplication or composition (as
  /// an infix operator). For examples, GBy.d or k{watt}.h.The grammar for a
  /// unit is as follows: Expression = Component { "." Component } { "/"
  /// Component } ; Component = ( [ PREFIX ] UNIT | "%" ) [ Annotation ] |
  /// Annotation | "1" ; Annotation = "{" NAME "}" ; Notes: Annotation is just a
  /// comment if it follows a UNIT. If the annotation is used alone, then the
  /// unit is equivalent to 1. For examples, {request}/s == 1/s,
  /// By{transmitted}/s == By/s. NAME is a sequence of non-blank printable ASCII
  /// characters not containing { or }. 1 represents a unitary dimensionless
  /// unit (https://en.wikipedia.org/wiki/Dimensionless_quantity) of 1, such as
  /// in 1/s. It is typically used when none of the basic units are appropriate.
  /// For example, "new users per day" can be represented as 1/d or
  /// {new-users}/d (and a metric value 5 would mean "5 new users).
  /// Alternatively, "thousands of page views per day" would be represented as
  /// 1000/d or k1/d or k{page_views}/d (and a metric value of 5.3 would mean
  /// "5300 page views per day"). % represents dimensionless value of 1/100, and
  /// annotates values giving a percentage (so the metric values are typically
  /// in the range of 0..100, and a metric value 3 means "3 percent"). 10^2.%
  /// indicates a metric contains a ratio, typically in the range 0..1, that
  /// will be multiplied by 100 and displayed as a percentage (so a metric value
  /// 0.03 means "3 percent").
  core.String unit;

  /// Whether the measurement is an integer, a floating-point number, etc. Some
  /// combinations of metric_kind and value_type might not be supported.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Do not use this default value.
  /// - "BOOL" : The value is a boolean. This value type can be used only if the
  /// metric kind is GAUGE.
  /// - "INT64" : The value is a signed 64-bit integer.
  /// - "DOUBLE" : The value is a double precision floating point number.
  /// - "STRING" : The value is a text string. This value type can be used only
  /// if the metric kind is GAUGE.
  /// - "DISTRIBUTION" : The value is a Distribution.
  /// - "MONEY" : The value is money.
  core.String valueType;

  MetricDescriptor();

  MetricDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.List)
          .map<LabelDescriptor>((value) => LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey('launchStage')) {
      launchStage = _json['launchStage'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata = MetricDescriptorMetadata.fromJson(_json['metadata']);
    }
    if (_json.containsKey('metricKind')) {
      metricKind = _json['metricKind'] as core.String;
    }
    if (_json.containsKey('monitoredResourceTypes')) {
      monitoredResourceTypes = (_json['monitoredResourceTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('unit')) {
      unit = _json['unit'] as core.String;
    }
    if (_json.containsKey('valueType')) {
      valueType = _json['valueType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels.map((value) => value.toJson()).toList();
    }
    if (launchStage != null) {
      _json['launchStage'] = launchStage;
    }
    if (metadata != null) {
      _json['metadata'] = metadata.toJson();
    }
    if (metricKind != null) {
      _json['metricKind'] = metricKind;
    }
    if (monitoredResourceTypes != null) {
      _json['monitoredResourceTypes'] = monitoredResourceTypes;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (type != null) {
      _json['type'] = type;
    }
    if (unit != null) {
      _json['unit'] = unit;
    }
    if (valueType != null) {
      _json['valueType'] = valueType;
    }
    return _json;
  }
}

/// Additional annotations that can be used to guide the usage of a metric.
class MetricDescriptorMetadata {
  /// The delay of data points caused by ingestion. Data points older than this
  /// age are guaranteed to be ingested and available to be read, excluding data
  /// loss due to errors.
  core.String ingestDelay;

  /// Deprecated. Must use the MetricDescriptor.launch_stage instead.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects whitelisted. Alpha releases don’t have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the “Deprecation Policy” section of our
  /// Terms of Service (https://cloud.google.com/terms/) and the Google Cloud
  /// Platform Subject to the Deprecation Policy
  /// (https://cloud.google.com/terms/deprecation) documentation.
  core.String launchStage;

  /// The sampling period of metric data points. For metrics which are written
  /// periodically, consecutive data points are stored at this time interval,
  /// excluding data loss due to errors. Metrics with a higher granularity have
  /// a smaller sampling period.
  core.String samplePeriod;

  MetricDescriptorMetadata();

  MetricDescriptorMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('ingestDelay')) {
      ingestDelay = _json['ingestDelay'] as core.String;
    }
    if (_json.containsKey('launchStage')) {
      launchStage = _json['launchStage'] as core.String;
    }
    if (_json.containsKey('samplePeriod')) {
      samplePeriod = _json['samplePeriod'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ingestDelay != null) {
      _json['ingestDelay'] = ingestDelay;
    }
    if (launchStage != null) {
      _json['launchStage'] = launchStage;
    }
    if (samplePeriod != null) {
      _json['samplePeriod'] = samplePeriod;
    }
    return _json;
  }
}

/// An object representing a resource that can be used for monitoring, logging,
/// billing, or other purposes. Examples include virtual machine instances,
/// databases, and storage devices such as disks. The type field identifies a
/// MonitoredResourceDescriptor object that describes the resource's schema.
/// Information in the labels field identifies the actual resource and its
/// attributes according to the schema. For example, a particular Compute Engine
/// VM instance could be represented by the following object, because the
/// MonitoredResourceDescriptor for "gce_instance" has labels "instance_id" and
/// "zone": { "type": "gce_instance", "labels": { "instance_id":
/// "12345678901234", "zone": "us-central1-a" }}
class MonitoredResource {
  /// Required. Values for all of the labels listed in the associated monitored
  /// resource descriptor. For example, Compute Engine VM instances use the
  /// labels "project_id", "instance_id", and "zone".
  core.Map<core.String, core.String> labels;

  /// Required. The monitored resource type. This field must match the type
  /// field of a MonitoredResourceDescriptor object. For example, the type of a
  /// Compute Engine VM instance is gce_instance.
  core.String type;

  MonitoredResource();

  MonitoredResource.fromJson(core.Map _json) {
    if (_json.containsKey('labels')) {
      labels = commons.mapMap<core.String, core.String>(
          _json['labels'].cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// An object that describes the schema of a MonitoredResource object using a
/// type name and a set of labels. For example, the monitored resource
/// descriptor for Google Compute Engine VM instances has a type of
/// "gce_instance" and specifies the use of the labels "instance_id" and "zone"
/// to identify particular VM instances.Different services can support different
/// monitored resource types.The following are specific rules to service defined
/// monitored resources for Monitoring and Logging: The type, display_name,
/// description, labels and launch_stage fields are all required. The first
/// label of the monitored resource descriptor must be resource_container. There
/// are legacy monitored resource descritptors start with project_id. It must
/// include a location label. Maximum of default 5 service defined monitored
/// resource descriptors is allowed per service. Maximum of default 10 labels
/// per monitored resource is allowed.The default maximum limit can be
/// overridden. Please follow https://cloud.google.com/monitoring/quotas
class MonitoredResourceDescriptor {
  /// Optional. A detailed description of the monitored resource type that might
  /// be used in documentation.
  core.String description;

  /// Optional. A concise name for the monitored resource type that might be
  /// displayed in user interfaces. It should be a Title Cased Noun Phrase,
  /// without any article or other determiners. For example, "Google Cloud SQL
  /// Database".
  core.String displayName;

  /// Required. A set of labels used to describe instances of this monitored
  /// resource type. The label key name must follow: Only upper and lower-case
  /// letters, digits and underscores (_) are allowed. Label name must start
  /// with a letter or digit. The maximum length of a label name is 100
  /// characters.For example, an individual Google Cloud SQL database is
  /// identified by values for the labels database_id and location.
  core.List<LabelDescriptor> labels;

  /// Optional. The launch stage of the monitored resource definition.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects whitelisted. Alpha releases don’t have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the “Deprecation Policy” section of our
  /// Terms of Service (https://cloud.google.com/terms/) and the Google Cloud
  /// Platform Subject to the Deprecation Policy
  /// (https://cloud.google.com/terms/deprecation) documentation.
  core.String launchStage;

  /// Optional. The resource name of the monitored resource descriptor:
  /// "projects/{project_id}/monitoredResourceDescriptors/{type}" where {type}
  /// is the value of the type field in this object and {project_id} is a
  /// project ID that provides API-specific context for accessing the type. APIs
  /// that do not use project information can use the resource name format
  /// "monitoredResourceDescriptors/{type}".
  core.String name;

  /// Required. The monitored resource type. For example, the type
  /// cloudsql_database represents databases in Google Cloud SQL.All service
  /// defined monitored resource types must be prefixed with the service name,
  /// in the format of {service name}/{relative resource name}. The relative
  /// resource name must follow: Only upper and lower-case letters and digits
  /// are allowed. It must start with upper case character and is recommended to
  /// use Upper Camel Case style. The maximum number of characters allowed for
  /// the relative_resource_name is 100.Note there are legacy service monitored
  /// resources not following this rule.
  core.String type;

  MonitoredResourceDescriptor();

  MonitoredResourceDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.List)
          .map<LabelDescriptor>((value) => LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey('launchStage')) {
      launchStage = _json['launchStage'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels.map((value) => value.toJson()).toList();
    }
    if (launchStage != null) {
      _json['launchStage'] = launchStage;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Auxiliary metadata for a MonitoredResource object. MonitoredResource objects
/// contain the minimum set of information to uniquely identify a monitored
/// resource instance. There is some other useful auxiliary metadata. Monitoring
/// and Logging use an ingestion pipeline to extract metadata for cloud
/// resources of all types, and store the metadata in this message.
class MonitoredResourceMetadata {
  /// Output only. Values for predefined system metadata labels. System labels
  /// are a kind of metadata extracted by Google, including "machine_image",
  /// "vpc", "subnet_id", "security_group", "name", etc. System label values can
  /// be only strings, Boolean values, or a list of strings. For example: {
  /// "name": "my-test-instance", "security_group": ["a", "b", "c"],
  /// "spot_instance": false }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> systemLabels;

  /// Output only. A map of user-defined metadata labels.
  core.Map<core.String, core.String> userLabels;

  MonitoredResourceMetadata();

  MonitoredResourceMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('systemLabels')) {
      systemLabels = commons.mapMap<core.Object, core.Object>(
          _json['systemLabels'].cast<core.String, core.Object>(),
          (core.Object item) => item as core.Object);
    }
    if (_json.containsKey('userLabels')) {
      userLabels = commons.mapMap<core.String, core.String>(
          _json['userLabels'].cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (systemLabels != null) {
      _json['systemLabels'] = systemLabels;
    }
    if (userLabels != null) {
      _json['userLabels'] = userLabels;
    }
    return _json;
  }
}

/// Complete log information about a single HTTP request to an App Engine
/// application.
class RequestLog {
  /// App Engine release version.
  core.String appEngineRelease;

  /// Application that handled this request.
  core.String appId;

  /// An indication of the relative cost of serving this request.
  core.double cost;

  /// Time when the request finished.
  core.String endTime;

  /// Whether this request is finished or active.
  core.bool finished;

  /// Whether this is the first RequestLog entry for this request. If an active
  /// request has several RequestLog entries written to Stackdriver Logging,
  /// then this field will be set for one of them.
  core.bool first;

  /// Internet host and port number of the resource being requested.
  core.String host;

  /// HTTP version of request. Example: "HTTP/1.1".
  core.String httpVersion;

  /// An identifier for the instance that handled the request.
  core.String instanceId;

  /// If the instance processing this request belongs to a manually scaled
  /// module, then this is the 0-based index of the instance. Otherwise, this
  /// value is -1.
  core.int instanceIndex;

  /// Origin IP address.
  core.String ip;

  /// Latency of the request.
  core.String latency;

  /// A list of log lines emitted by the application while serving this request.
  core.List<LogLine> line;

  /// Number of CPU megacycles used to process request.
  core.String megaCycles;

  /// Request method. Example: "GET", "HEAD", "PUT", "POST", "DELETE".
  core.String method;

  /// Module of the application that handled this request.
  core.String moduleId;

  /// The logged-in user who made the request.Most likely, this is the part of
  /// the user's email before the @ sign. The field value is the same for
  /// different requests from the same user, but different users can have
  /// similar names. This information is also available to the application via
  /// the App Engine Users API.This field will be populated starting with App
  /// Engine 1.9.21.
  core.String nickname;

  /// Time this request spent in the pending request queue.
  core.String pendingTime;

  /// Referrer URL of request.
  core.String referrer;

  /// Globally unique identifier for a request, which is based on the request
  /// start time. Request IDs for requests which started later will compare
  /// greater as strings than those for requests which started earlier.
  core.String requestId;

  /// Contains the path and query portion of the URL that was requested. For
  /// example, if the URL was "http://example.com/app?name=val", the resource
  /// would be "/app?name=val". The fragment identifier, which is identified by
  /// the # character, is not included.
  core.String resource;

  /// Size in bytes sent back to client by request.
  core.String responseSize;

  /// Source code for the application that handled this request. There can be
  /// more than one source reference per deployed application if source code is
  /// distributed among multiple repositories.
  core.List<SourceReference> sourceReference;

  /// Time when the request started.
  core.String startTime;

  /// HTTP response status code. Example: 200, 404.
  core.int status;

  /// Task name of the request, in the case of an offline request.
  core.String taskName;

  /// Queue name of the request, in the case of an offline request.
  core.String taskQueueName;

  /// Stackdriver Trace identifier for this request.
  core.String traceId;

  /// If true, the value in the 'trace_id' field was sampled for storage in a
  /// trace backend.
  core.bool traceSampled;

  /// File or class that handled the request.
  core.String urlMapEntry;

  /// User agent that made the request.
  core.String userAgent;

  /// Version of the application that handled this request.
  core.String versionId;

  /// Whether this was a loading request for the instance.
  core.bool wasLoadingRequest;

  RequestLog();

  RequestLog.fromJson(core.Map _json) {
    if (_json.containsKey('appEngineRelease')) {
      appEngineRelease = _json['appEngineRelease'] as core.String;
    }
    if (_json.containsKey('appId')) {
      appId = _json['appId'] as core.String;
    }
    if (_json.containsKey('cost')) {
      cost = (_json['cost'] as core.num).toDouble();
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('finished')) {
      finished = _json['finished'] as core.bool;
    }
    if (_json.containsKey('first')) {
      first = _json['first'] as core.bool;
    }
    if (_json.containsKey('host')) {
      host = _json['host'] as core.String;
    }
    if (_json.containsKey('httpVersion')) {
      httpVersion = _json['httpVersion'] as core.String;
    }
    if (_json.containsKey('instanceId')) {
      instanceId = _json['instanceId'] as core.String;
    }
    if (_json.containsKey('instanceIndex')) {
      instanceIndex = _json['instanceIndex'] as core.int;
    }
    if (_json.containsKey('ip')) {
      ip = _json['ip'] as core.String;
    }
    if (_json.containsKey('latency')) {
      latency = _json['latency'] as core.String;
    }
    if (_json.containsKey('line')) {
      line = (_json['line'] as core.List)
          .map<LogLine>((value) => LogLine.fromJson(value))
          .toList();
    }
    if (_json.containsKey('megaCycles')) {
      megaCycles = _json['megaCycles'] as core.String;
    }
    if (_json.containsKey('method')) {
      method = _json['method'] as core.String;
    }
    if (_json.containsKey('moduleId')) {
      moduleId = _json['moduleId'] as core.String;
    }
    if (_json.containsKey('nickname')) {
      nickname = _json['nickname'] as core.String;
    }
    if (_json.containsKey('pendingTime')) {
      pendingTime = _json['pendingTime'] as core.String;
    }
    if (_json.containsKey('referrer')) {
      referrer = _json['referrer'] as core.String;
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
    if (_json.containsKey('resource')) {
      resource = _json['resource'] as core.String;
    }
    if (_json.containsKey('responseSize')) {
      responseSize = _json['responseSize'] as core.String;
    }
    if (_json.containsKey('sourceReference')) {
      sourceReference = (_json['sourceReference'] as core.List)
          .map<SourceReference>((value) => SourceReference.fromJson(value))
          .toList();
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.int;
    }
    if (_json.containsKey('taskName')) {
      taskName = _json['taskName'] as core.String;
    }
    if (_json.containsKey('taskQueueName')) {
      taskQueueName = _json['taskQueueName'] as core.String;
    }
    if (_json.containsKey('traceId')) {
      traceId = _json['traceId'] as core.String;
    }
    if (_json.containsKey('traceSampled')) {
      traceSampled = _json['traceSampled'] as core.bool;
    }
    if (_json.containsKey('urlMapEntry')) {
      urlMapEntry = _json['urlMapEntry'] as core.String;
    }
    if (_json.containsKey('userAgent')) {
      userAgent = _json['userAgent'] as core.String;
    }
    if (_json.containsKey('versionId')) {
      versionId = _json['versionId'] as core.String;
    }
    if (_json.containsKey('wasLoadingRequest')) {
      wasLoadingRequest = _json['wasLoadingRequest'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (appEngineRelease != null) {
      _json['appEngineRelease'] = appEngineRelease;
    }
    if (appId != null) {
      _json['appId'] = appId;
    }
    if (cost != null) {
      _json['cost'] = cost;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (finished != null) {
      _json['finished'] = finished;
    }
    if (first != null) {
      _json['first'] = first;
    }
    if (host != null) {
      _json['host'] = host;
    }
    if (httpVersion != null) {
      _json['httpVersion'] = httpVersion;
    }
    if (instanceId != null) {
      _json['instanceId'] = instanceId;
    }
    if (instanceIndex != null) {
      _json['instanceIndex'] = instanceIndex;
    }
    if (ip != null) {
      _json['ip'] = ip;
    }
    if (latency != null) {
      _json['latency'] = latency;
    }
    if (line != null) {
      _json['line'] = line.map((value) => value.toJson()).toList();
    }
    if (megaCycles != null) {
      _json['megaCycles'] = megaCycles;
    }
    if (method != null) {
      _json['method'] = method;
    }
    if (moduleId != null) {
      _json['moduleId'] = moduleId;
    }
    if (nickname != null) {
      _json['nickname'] = nickname;
    }
    if (pendingTime != null) {
      _json['pendingTime'] = pendingTime;
    }
    if (referrer != null) {
      _json['referrer'] = referrer;
    }
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    if (resource != null) {
      _json['resource'] = resource;
    }
    if (responseSize != null) {
      _json['responseSize'] = responseSize;
    }
    if (sourceReference != null) {
      _json['sourceReference'] =
          sourceReference.map((value) => value.toJson()).toList();
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (taskName != null) {
      _json['taskName'] = taskName;
    }
    if (taskQueueName != null) {
      _json['taskQueueName'] = taskQueueName;
    }
    if (traceId != null) {
      _json['traceId'] = traceId;
    }
    if (traceSampled != null) {
      _json['traceSampled'] = traceSampled;
    }
    if (urlMapEntry != null) {
      _json['urlMapEntry'] = urlMapEntry;
    }
    if (userAgent != null) {
      _json['userAgent'] = userAgent;
    }
    if (versionId != null) {
      _json['versionId'] = versionId;
    }
    if (wasLoadingRequest != null) {
      _json['wasLoadingRequest'] = wasLoadingRequest;
    }
    return _json;
  }
}

/// Specifies a location in a source code file.
class SourceLocation {
  /// Source file name. Depending on the runtime environment, this might be a
  /// simple name or a fully-qualified name.
  core.String file;

  /// Human-readable name of the function or method being invoked, with optional
  /// context such as the class or package name. This information is used in
  /// contexts such as the logs viewer, where a file and line number are less
  /// meaningful. The format can vary by language. For example:
  /// qual.if.ied.Class.method (Java), dir/package.func (Go), function (Python).
  core.String functionName;

  /// Line within the source file.
  core.String line;

  SourceLocation();

  SourceLocation.fromJson(core.Map _json) {
    if (_json.containsKey('file')) {
      file = _json['file'] as core.String;
    }
    if (_json.containsKey('functionName')) {
      functionName = _json['functionName'] as core.String;
    }
    if (_json.containsKey('line')) {
      line = _json['line'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (file != null) {
      _json['file'] = file;
    }
    if (functionName != null) {
      _json['functionName'] = functionName;
    }
    if (line != null) {
      _json['line'] = line;
    }
    return _json;
  }
}

/// A reference to a particular snapshot of the source tree used to build and
/// deploy an application.
class SourceReference {
  /// Optional. A URI string identifying the repository. Example:
  /// "https://github.com/GoogleCloudPlatform/kubernetes.git"
  core.String repository;

  /// The canonical and persistent identifier of the deployed revision. Example
  /// (git): "0035781c50ec7aa23385dc841529ce8a4b70db1b"
  core.String revisionId;

  SourceReference();

  SourceReference.fromJson(core.Map _json) {
    if (_json.containsKey('repository')) {
      repository = _json['repository'] as core.String;
    }
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (repository != null) {
      _json['repository'] = repository;
    }
    if (revisionId != null) {
      _json['revisionId'] = revisionId;
    }
    return _json;
  }
}

/// The parameters to UndeleteBucket.
class UndeleteBucketRequest {
  UndeleteBucketRequest();

  UndeleteBucketRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// The parameters to WriteLogEntries.
class WriteLogEntriesRequest {
  /// Optional. If true, the request should expect normal response, but the
  /// entries won't be persisted nor exported. Useful for checking whether the
  /// logging API endpoints are working properly before sending valuable data.
  core.bool dryRun;

  /// Required. The log entries to send to Logging. The order of log entries in
  /// this list does not matter. Values supplied in this method's log_name,
  /// resource, and labels fields are copied into those log entries in this list
  /// that do not include values for their corresponding fields. For more
  /// information, see the LogEntry type.If the timestamp or insert_id fields
  /// are missing in log entries, then this method supplies the current time or
  /// a unique identifier, respectively. The supplied values are chosen so that,
  /// among the log entries that did not supply their own values, the entries
  /// earlier in the list will sort before the entries later in the list. See
  /// the entries.list method.Log entries with timestamps that are more than the
  /// logs retention period (https://cloud.google.com/logging/quota-policy) in
  /// the past or more than 24 hours in the future will not be available when
  /// calling entries.list. However, those log entries can still be exported
  /// with LogSinks
  /// (https://cloud.google.com/logging/docs/api/tasks/exporting-logs).To
  /// improve throughput and to avoid exceeding the quota limit
  /// (https://cloud.google.com/logging/quota-policy) for calls to
  /// entries.write, you should try to include several log entries in this list,
  /// rather than calling this method for each individual log entry.
  core.List<LogEntry> entries;

  /// Optional. Default labels that are added to the labels field of all log
  /// entries in entries. If a log entry already has a label with the same key
  /// as a label in this parameter, then the log entry's label is not changed.
  /// See LogEntry.
  core.Map<core.String, core.String> labels;

  /// Optional. A default log resource name that is assigned to all log entries
  /// in entries that do not specify a value for log_name:
  /// "projects/[PROJECT_ID]/logs/[LOG_ID]"
  /// "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
  /// "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
  /// "folders/[FOLDER_ID]/logs/[LOG_ID]" [LOG_ID] must be URL-encoded. For
  /// example: "projects/my-project-id/logs/syslog"
  /// "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity"
  /// The permission logging.logEntries.create is needed on each project,
  /// organization, billing account, or folder that is receiving new log
  /// entries, whether the resource is specified in logName or in an individual
  /// log entry.
  core.String logName;

  /// Optional. Whether valid entries should be written even if some other
  /// entries fail due to INVALID_ARGUMENT or PERMISSION_DENIED errors. If any
  /// entry is not written, then the response status is the error associated
  /// with one of the failed entries and the response includes error details
  /// keyed by the entries' zero-based index in the entries.write method.
  core.bool partialSuccess;

  /// Optional. A default monitored resource object that is assigned to all log
  /// entries in entries that do not specify a value for resource. Example: {
  /// "type": "gce_instance", "labels": { "zone": "us-central1-a",
  /// "instance_id": "00000000000000000000" }} See LogEntry.
  MonitoredResource resource;

  WriteLogEntriesRequest();

  WriteLogEntriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('dryRun')) {
      dryRun = _json['dryRun'] as core.bool;
    }
    if (_json.containsKey('entries')) {
      entries = (_json['entries'] as core.List)
          .map<LogEntry>((value) => LogEntry.fromJson(value))
          .toList();
    }
    if (_json.containsKey('labels')) {
      labels = commons.mapMap<core.String, core.String>(
          _json['labels'].cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('logName')) {
      logName = _json['logName'] as core.String;
    }
    if (_json.containsKey('partialSuccess')) {
      partialSuccess = _json['partialSuccess'] as core.bool;
    }
    if (_json.containsKey('resource')) {
      resource = MonitoredResource.fromJson(_json['resource']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dryRun != null) {
      _json['dryRun'] = dryRun;
    }
    if (entries != null) {
      _json['entries'] = entries.map((value) => value.toJson()).toList();
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (logName != null) {
      _json['logName'] = logName;
    }
    if (partialSuccess != null) {
      _json['partialSuccess'] = partialSuccess;
    }
    if (resource != null) {
      _json['resource'] = resource.toJson();
    }
    return _json;
  }
}

/// Result returned from WriteLogEntries.
class WriteLogEntriesResponse {
  WriteLogEntriesResponse();

  WriteLogEntriesResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}
