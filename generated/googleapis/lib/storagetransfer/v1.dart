// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.storagetransfer.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client storagetransfer/v1';

/// Transfers data from external data sources to a Google Cloud Storage bucket
/// or between Google Cloud Storage buckets.
class StoragetransferApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  GoogleServiceAccountsResourceApi get googleServiceAccounts =>
      new GoogleServiceAccountsResourceApi(_requester);
  TransferJobsResourceApi get transferJobs =>
      new TransferJobsResourceApi(_requester);
  TransferOperationsResourceApi get transferOperations =>
      new TransferOperationsResourceApi(_requester);

  StoragetransferApi(http.Client client,
      {core.String rootUrl = "https://storagetransfer.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class GoogleServiceAccountsResourceApi {
  final commons.ApiRequester _requester;

  GoogleServiceAccountsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns the Google service account that is used by Storage Transfer
  /// Service to access buckets in the project where transfers
  /// run or in other projects. Each Google service account is associated
  /// with one Google Cloud Platform Console project. Users
  /// should add this service account to the Google Cloud Storage bucket
  /// ACLs to grant access to Storage Transfer Service. This service
  /// account is created and owned by Storage Transfer Service and can
  /// only be used by Storage Transfer Service.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform Console
  /// project that the
  /// Google service account is associated with.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleServiceAccount> get(core.String projectId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/googleServiceAccounts/' +
        commons.Escaper.ecapeVariable('$projectId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleServiceAccount.fromJson(data));
  }
}

class TransferJobsResourceApi {
  final commons.ApiRequester _requester;

  TransferJobsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a transfer job that runs periodically.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferJob> create(TransferJob request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/transferJobs';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferJob.fromJson(data));
  }

  /// Gets a transfer job.
  ///
  /// Request parameters:
  ///
  /// [jobName] - Required. The job to get.
  /// Value must have pattern "^transferJobs/.+$".
  ///
  /// [projectId] - Required. The ID of the Google Cloud Platform Console
  /// project that owns the
  /// job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferJob> get(core.String jobName,
      {core.String projectId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (jobName == null) {
      throw new core.ArgumentError("Parameter jobName is required.");
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$jobName');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferJob.fromJson(data));
  }

  /// Lists transfer jobs.
  ///
  /// Request parameters:
  ///
  /// [filter] - Required. A list of query parameters specified as JSON text in
  /// the form of:
  /// {"project_id":"my_project_id",
  ///  "job_names":["jobid1","jobid2",...],
  ///  "job_statuses":["status1","status2",...]}.
  /// Since `job_names` and `job_statuses` support multiple values, their values
  /// must be specified with array notation. `project_id` is required.
  /// `job_names` and `job_statuses` are optional.  The valid values for
  /// `job_statuses` are case-insensitive: `ENABLED`, `DISABLED`, and `DELETED`.
  ///
  /// [pageToken] - The list page token.
  ///
  /// [pageSize] - The list page size. The max allowed value is 256.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTransferJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTransferJobsResponse> list(
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/transferJobs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListTransferJobsResponse.fromJson(data));
  }

  /// Updates a transfer job. Updating a job's transfer spec does not affect
  /// transfer operations that are running already. Updating the scheduling
  /// of a job is not allowed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [jobName] - Required. The name of job to update.
  /// Value must have pattern "^transferJobs/.+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferJob> patch(
      UpdateTransferJobRequest request, core.String jobName,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (jobName == null) {
      throw new core.ArgumentError("Parameter jobName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$jobName');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TransferJob.fromJson(data));
  }
}

class TransferOperationsResourceApi {
  final commons.ApiRequester _requester;

  TransferOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Cancels a transfer. Use the get method to check whether the cancellation
  /// succeeded or whether the operation completed despite cancellation.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^transferOperations/.+$".
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
  async.Future<Empty> cancel(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// This method is not supported and the server returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^transferOperations/.+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^transferOperations/.+$".
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
  async.Future<Operation> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// NOTE: the `name` binding allows API services to override the binding
  /// to use different resource name schemes, such as `users / * /operations`.
  /// To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration.
  /// For backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding
  /// is the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The value `transferOperations`.
  /// Value must have pattern "^transferOperations$".
  ///
  /// [filter] - Required. A list of query parameters specified as JSON text in
  /// the form of: {"project_id":"my_project_id",
  ///  "job_names":["jobid1","jobid2",...],
  ///  "operation_names":["opid1","opid2",...],
  ///  "transfer_statuses":["status1","status2",...]}.
  /// Since `job_names`, `operation_names`, and `transfer_statuses` support
  /// multiple values, they must be specified with array notation. `project_id`
  /// is required. `job_names`, `operation_names`, and `transfer_statuses` are
  /// optional. The valid values for `transfer_statuses` are case-insensitive:
  /// `IN_PROGRESS`, `PAUSED`, `SUCCESS`, `FAILED`, and `ABORTED`.
  ///
  /// [pageToken] - The list page token.
  ///
  /// [pageSize] - The list page size. The max allowed value is 256.
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
  async.Future<ListOperationsResponse> list(core.String name,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }

  /// Pauses a transfer operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the transfer operation.
  /// Value must have pattern "^transferOperations/.+$".
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
  async.Future<Empty> pause(
      PauseTransferOperationRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':pause';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Resumes a transfer operation that is paused.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the transfer operation.
  /// Value must have pattern "^transferOperations/.+$".
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
  async.Future<Empty> resume(
      ResumeTransferOperationRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':resume';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }
}

/// AWS access key (see
/// [AWS Security
/// Credentials](http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)).
class AwsAccessKey {
  /// Required. AWS access key ID.
  core.String accessKeyId;

  /// Required. AWS secret access key. This field is not returned in RPC
  /// responses.
  core.String secretAccessKey;

  AwsAccessKey();

  AwsAccessKey.fromJson(core.Map _json) {
    if (_json.containsKey("accessKeyId")) {
      accessKeyId = _json["accessKeyId"];
    }
    if (_json.containsKey("secretAccessKey")) {
      secretAccessKey = _json["secretAccessKey"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessKeyId != null) {
      _json["accessKeyId"] = accessKeyId;
    }
    if (secretAccessKey != null) {
      _json["secretAccessKey"] = secretAccessKey;
    }
    return _json;
  }
}

/// An AwsS3Data resource can be a data source, but not a data sink.
/// In an AwsS3Data resource, an object's name is the S3 object's key name.
class AwsS3Data {
  /// Required. AWS access key used to sign the API requests to the AWS S3
  /// bucket. Permissions on the bucket must be granted to the access ID of the
  /// AWS access key.
  AwsAccessKey awsAccessKey;

  /// Required. S3 Bucket name (see
  /// [Creating a
  /// bucket](http://docs.aws.amazon.com/AmazonS3/latest/dev/create-bucket-get-location-example.html)).
  core.String bucketName;

  AwsS3Data();

  AwsS3Data.fromJson(core.Map _json) {
    if (_json.containsKey("awsAccessKey")) {
      awsAccessKey = new AwsAccessKey.fromJson(_json["awsAccessKey"]);
    }
    if (_json.containsKey("bucketName")) {
      bucketName = _json["bucketName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (awsAccessKey != null) {
      _json["awsAccessKey"] = (awsAccessKey).toJson();
    }
    if (bucketName != null) {
      _json["bucketName"] = bucketName;
    }
    return _json;
  }
}

/// Represents a whole or partial calendar date, e.g. a birthday. The time of
/// day
/// and time zone are either specified elsewhere or are not significant. The
/// date
/// is relative to the Proleptic Gregorian Calendar. This can represent:
///
/// * A full date, with non-zero year, month and day values
/// * A month and day value, with a zero year, e.g. an anniversary
/// * A year on its own, with zero month and day values
/// * A year and month value, with a zero day, e.g. a credit card expiration
/// date
///
/// Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
class Date {
  /// Day of month. Must be from 1 to 31 and valid for the year and month, or 0
  /// if specifying a year by itself or a year and month where the day is not
  /// significant.
  core.int day;

  /// Month of year. Must be from 1 to 12, or 0 if specifying a year without a
  /// month and day.
  core.int month;

  /// Year of date. Must be from 1 to 9999, or 0 if specifying a date without
  /// a year.
  core.int year;

  Date();

  Date.fromJson(core.Map _json) {
    if (_json.containsKey("day")) {
      day = _json["day"];
    }
    if (_json.containsKey("month")) {
      month = _json["month"];
    }
    if (_json.containsKey("year")) {
      year = _json["year"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (day != null) {
      _json["day"] = day;
    }
    if (month != null) {
      _json["month"] = month;
    }
    if (year != null) {
      _json["year"] = year;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// An entry describing an error that has occurred.
class ErrorLogEntry {
  /// A list of messages that carry the error details.
  core.List<core.String> errorDetails;

  /// Required. A URL that refers to the target (a data source, a data sink,
  /// or an object) with which the error is associated.
  core.String url;

  ErrorLogEntry();

  ErrorLogEntry.fromJson(core.Map _json) {
    if (_json.containsKey("errorDetails")) {
      errorDetails = (_json["errorDetails"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errorDetails != null) {
      _json["errorDetails"] = errorDetails;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// A summary of errors by error code, plus a count and sample error log
/// entries.
class ErrorSummary {
  /// Required.
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success
  ///
  /// HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller.
  ///
  /// HTTP Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error.  For example, this error may be returned when
  /// a `Status` value received from another address space belongs to
  /// an error space that is not known in this address space.  Also
  /// errors raised by APIs that do not return enough error information
  /// may be converted to this error.
  ///
  /// HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument.  Note
  /// that this differs
  /// from `FAILED_PRECONDITION`.  `INVALID_ARGUMENT` indicates arguments
  /// that are problematic regardless of the state of the system
  /// (e.g., a malformed file name).
  ///
  /// HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations
  /// that change the state of the system, this error may be returned
  /// even if the operation has completed successfully.  For example, a
  /// successful response from a server could have been delayed long
  /// enough for the deadline to expire.
  ///
  /// HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found.
  ///
  /// Note to server developers: if a request is denied for an entire class
  /// of users, such as gradual feature rollout or undocumented whitelist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within
  /// a class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used.
  ///
  /// HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory)
  /// already exists.
  ///
  /// HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified
  /// operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED`
  /// instead for those errors). `PERMISSION_DENIED` must not be
  /// used if the caller can not be identified (use `UNAUTHENTICATED`
  /// instead for those errors). This error code does not imply the
  /// request is valid or the requested entity exists or satisfies
  /// other pre-conditions.
  ///
  /// HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the
  /// operation.
  ///
  /// HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or
  /// perhaps the entire file system is out of space.
  ///
  /// HTTP Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state
  /// required for the operation's execution.  For example, the directory
  /// to be deleted is non-empty, an rmdir operation is applied to
  /// a non-directory, etc.
  ///
  /// Service implementors can use the following guidelines to decide
  /// between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`:
  ///  (a) Use `UNAVAILABLE` if the client can retry just the failing call.
  ///  (b) Use `ABORTED` if the client should retry at a higher level
  ///      (e.g., when a client-specified test-and-set fails, indicating the
  ///      client should restart a read-modify-write sequence).
  ///  (c) Use `FAILED_PRECONDITION` if the client should not retry until
  ///      the system state has been explicitly fixed.  E.g., if an "rmdir"
  ///      fails because the directory is non-empty, `FAILED_PRECONDITION`
  ///      should be returned since the client should not retry unless
  ///      the files are deleted from the directory.
  ///
  /// HTTP Mapping: 400 Bad Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as
  /// a sequencer check failure or transaction abort.
  ///
  /// See the guidelines above for deciding between `FAILED_PRECONDITION`,
  /// `ABORTED`, and `UNAVAILABLE`.
  ///
  /// HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range.
  /// E.g., seeking or
  /// reading past end-of-file.
  ///
  /// Unlike `INVALID_ARGUMENT`, this error indicates a problem that may
  /// be fixed if the system state changes. For example, a 32-bit file
  /// system will generate `INVALID_ARGUMENT` if asked to read at an
  /// offset that is not in the range [0,2^32-1], but it will generate
  /// `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size.
  ///
  /// There is a fair bit of overlap between `FAILED_PRECONDITION` and
  /// `OUT_OF_RANGE`.  We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through
  /// a space can easily look for an `OUT_OF_RANGE` error to detect when
  /// they are done.
  ///
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this
  /// service.
  ///
  /// HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors.  This means that some invariants expected
  /// by the
  /// underlying system have been broken.  This error code is reserved
  /// for serious errors.
  ///
  /// HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable.  This is most
  /// likely a
  /// transient condition, which can be corrected by retrying with
  /// a backoff. Note that it is not always safe to retry
  /// non-idempotent operations.
  ///
  /// See the guidelines above for deciding between `FAILED_PRECONDITION`,
  /// `ABORTED`, and `UNAVAILABLE`.
  ///
  /// HTTP Mapping: 503 Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption.
  ///
  /// HTTP Mapping: 500 Internal Server Error
  core.String errorCode;

  /// Required. Count of this type of error.
  core.String errorCount;

  /// Error samples.
  ///
  /// No more than 100 error log entries may be recorded for a given
  /// error code for a single task.
  core.List<ErrorLogEntry> errorLogEntries;

  ErrorSummary();

  ErrorSummary.fromJson(core.Map _json) {
    if (_json.containsKey("errorCode")) {
      errorCode = _json["errorCode"];
    }
    if (_json.containsKey("errorCount")) {
      errorCount = _json["errorCount"];
    }
    if (_json.containsKey("errorLogEntries")) {
      errorLogEntries = (_json["errorLogEntries"] as core.List)
          .map<ErrorLogEntry>((value) => new ErrorLogEntry.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errorCode != null) {
      _json["errorCode"] = errorCode;
    }
    if (errorCount != null) {
      _json["errorCount"] = errorCount;
    }
    if (errorLogEntries != null) {
      _json["errorLogEntries"] =
          errorLogEntries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// In a GcsData resource, an object's name is the Google Cloud Storage object's
/// name and its `lastModificationTime` refers to the object's updated time,
/// which changes when the content or the metadata of the object is updated.
class GcsData {
  /// Required. Google Cloud Storage bucket name (see
  /// [Bucket Name
  /// Requirements](https://cloud.google.com/storage/docs/naming#requirements)).
  core.String bucketName;

  GcsData();

  GcsData.fromJson(core.Map _json) {
    if (_json.containsKey("bucketName")) {
      bucketName = _json["bucketName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketName != null) {
      _json["bucketName"] = bucketName;
    }
    return _json;
  }
}

/// Google service account
class GoogleServiceAccount {
  /// Email address of the service account.
  core.String accountEmail;

  GoogleServiceAccount();

  GoogleServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey("accountEmail")) {
      accountEmail = _json["accountEmail"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountEmail != null) {
      _json["accountEmail"] = accountEmail;
    }
    return _json;
  }
}

/// An HttpData resource specifies a list of objects on the web to be
/// transferred
/// over HTTP.  The information of the objects to be transferred is contained in
/// a file referenced by a URL. The first line in the file must be
/// "TsvHttpData-1.0", which specifies the format of the file.  Subsequent lines
/// specify the information of the list of objects, one object per list entry.
/// Each entry has the following tab-delimited fields:
///
/// * HTTP URL - The location of the object.
///
/// * Length - The size of the object in bytes.
///
/// * MD5 - The base64-encoded MD5 hash of the object.
///
/// For an example of a valid TSV file, see
/// [Transferring data from
/// URLs](https://cloud.google.com/storage/transfer/create-url-list).
///
/// When transferring data based on a URL list, keep the following in mind:
///
/// * When an object located at `http(s)://hostname:port/<URL-path>` is
/// transferred to a data sink, the name of the object at the data sink is
/// `<hostname>/<URL-path>`.
///
/// * If the specified size of an object does not match the actual size of the
/// object fetched, the object will not be transferred.
///
/// * If the specified MD5 does not match the MD5 computed from the transferred
/// bytes, the object transfer will fail. For more information, see
/// [Generating MD5 hashes](https://cloud.google.com/storage/transfer/#md5)
///
/// * Ensure that each URL you specify is publicly accessible. For
/// example, in Google Cloud Storage you can
/// [share an object publicly]
/// (https://cloud.google.com/storage/docs/cloud-console#_sharingdata) and get
/// a link to it.
///
/// * Storage Transfer Service obeys `robots.txt` rules and requires the source
/// HTTP server to support `Range` requests and to return a `Content-Length`
/// header in each response.
///
/// * [ObjectConditions](#ObjectConditions) have no effect when filtering
/// objects
/// to transfer.
class HttpData {
  /// Required. The URL that points to the file that stores the object list
  /// entries. This file must allow public access.  Currently, only URLs with
  /// HTTP and HTTPS schemes are supported.
  core.String listUrl;

  HttpData();

  HttpData.fromJson(core.Map _json) {
    if (_json.containsKey("listUrl")) {
      listUrl = _json["listUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (listUrl != null) {
      _json["listUrl"] = listUrl;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response from ListTransferJobs.
class ListTransferJobsResponse {
  /// The list next page token.
  core.String nextPageToken;

  /// A list of transfer jobs.
  core.List<TransferJob> transferJobs;

  ListTransferJobsResponse();

  ListTransferJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("transferJobs")) {
      transferJobs = (_json["transferJobs"] as core.List)
          .map<TransferJob>((value) => new TransferJob.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (transferJobs != null) {
      _json["transferJobs"] =
          transferJobs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Conditions that determine which objects will be transferred. Applies only
/// to S3 and GCS objects.
class ObjectConditions {
  /// `excludePrefixes` must follow the requirements described for
  /// `includePrefixes`.
  ///
  /// The max size of `excludePrefixes` is 1000.
  core.List<core.String> excludePrefixes;

  /// If `includePrefixes` is specified, objects that satisfy the object
  /// conditions must have names that start with one of the `includePrefixes`
  /// and that do not start with any of the `excludePrefixes`. If
  /// `includePrefixes` is not specified, all objects except those that have
  /// names starting with one of the `excludePrefixes` must satisfy the object
  /// conditions.
  ///
  /// Requirements:
  ///
  ///   * Each include-prefix and exclude-prefix can contain any sequence of
  ///     Unicode characters, of max length 1024 bytes when UTF8-encoded, and
  ///     must not contain Carriage Return or Line Feed characters.  Wildcard
  ///     matching and regular expression matching are not supported.
  ///
  ///   * Each include-prefix and exclude-prefix must omit the leading slash.
  ///     For example, to include the `requests.gz` object in a transfer from
  ///     `s3://my-aws-bucket/logs/y=2015/requests.gz`, specify the include
  ///     prefix as `logs/y=2015/requests.gz`.
  ///
  ///   * None of the include-prefix or the exclude-prefix values can be empty,
  ///     if specified.
  ///
  ///   * Each include-prefix must include a distinct portion of the object
  ///     namespace, i.e., no include-prefix may be a prefix of another
  ///     include-prefix.
  ///
  ///   * Each exclude-prefix must exclude a distinct portion of the object
  ///     namespace, i.e., no exclude-prefix may be a prefix of another
  ///     exclude-prefix.
  ///
  /// * If `includePrefixes` is specified, then each exclude-prefix must start
  ///     with the value of a path explicitly included by `includePrefixes`.
  ///
  /// The max size of `includePrefixes` is 1000.
  core.List<core.String> includePrefixes;

  /// If specified, only objects with a `lastModificationTime` on or after
  /// `NOW` - `maxTimeElapsedSinceLastModification` and objects that don't have
  /// a `lastModificationTime` are transferred.
  ///
  /// Note that, for each `TransferOperation` started by this `TransferJob`,
  /// `NOW` refers to the `start_time` of the 'TransferOperation`. Also,
  /// `lastModificationTime` refers to the time of the last change to the
  /// object's content or metadata - specifically, this would be the `updated`
  /// property of GCS objects and the `LastModified` field of S3 objects.
  core.String maxTimeElapsedSinceLastModification;

  /// If specified, only objects with a `lastModificationTime` before
  /// `NOW` - `minTimeElapsedSinceLastModification` and objects that don't have
  /// a
  /// `lastModificationTime` are transferred.
  ///
  /// Note that, for each `TransferOperation` started by this `TransferJob`,
  /// `NOW` refers to the `start_time` of the 'TransferOperation`. Also,
  /// `lastModificationTime` refers to the time of the last change to the
  /// object's content or metadata - specifically, this would be the `updated`
  /// property of GCS objects and the `LastModified` field of S3 objects.
  core.String minTimeElapsedSinceLastModification;

  ObjectConditions();

  ObjectConditions.fromJson(core.Map _json) {
    if (_json.containsKey("excludePrefixes")) {
      excludePrefixes =
          (_json["excludePrefixes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("includePrefixes")) {
      includePrefixes =
          (_json["includePrefixes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("maxTimeElapsedSinceLastModification")) {
      maxTimeElapsedSinceLastModification =
          _json["maxTimeElapsedSinceLastModification"];
    }
    if (_json.containsKey("minTimeElapsedSinceLastModification")) {
      minTimeElapsedSinceLastModification =
          _json["minTimeElapsedSinceLastModification"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (excludePrefixes != null) {
      _json["excludePrefixes"] = excludePrefixes;
    }
    if (includePrefixes != null) {
      _json["includePrefixes"] = includePrefixes;
    }
    if (maxTimeElapsedSinceLastModification != null) {
      _json["maxTimeElapsedSinceLastModification"] =
          maxTimeElapsedSinceLastModification;
    }
    if (minTimeElapsedSinceLastModification != null) {
      _json["minTimeElapsedSinceLastModification"] =
          minTimeElapsedSinceLastModification;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Represents the transfer operation object.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the
  /// `name` should have the format of `transferOperations/some/unique/name`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// Request passed to PauseTransferOperation.
class PauseTransferOperationRequest {
  PauseTransferOperationRequest();

  PauseTransferOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Request passed to ResumeTransferOperation.
class ResumeTransferOperationRequest {
  ResumeTransferOperationRequest();

  ResumeTransferOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Transfers can be scheduled to recur or to run just once.
class Schedule {
  /// The last day the recurring transfer will be run. If `scheduleEndDate`
  /// is the same as `scheduleStartDate`, the transfer will be executed only
  /// once.
  Date scheduleEndDate;

  /// Required. The first day the recurring transfer is scheduled to run. If
  /// `scheduleStartDate` is in the past, the transfer will run for the first
  /// time on the following day.
  Date scheduleStartDate;

  /// The time in UTC at which the transfer will be scheduled to start in a day.
  /// Transfers may start later than this time. If not specified, recurring and
  /// one-time transfers that are scheduled to run today will run immediately;
  /// recurring transfers that are scheduled to run on a future date will start
  /// at approximately midnight UTC on that date. Note that when configuring a
  /// transfer with the Cloud Platform Console, the transfer's start time in a
  /// day is specified in your local timezone.
  TimeOfDay startTimeOfDay;

  Schedule();

  Schedule.fromJson(core.Map _json) {
    if (_json.containsKey("scheduleEndDate")) {
      scheduleEndDate = new Date.fromJson(_json["scheduleEndDate"]);
    }
    if (_json.containsKey("scheduleStartDate")) {
      scheduleStartDate = new Date.fromJson(_json["scheduleStartDate"]);
    }
    if (_json.containsKey("startTimeOfDay")) {
      startTimeOfDay = new TimeOfDay.fromJson(_json["startTimeOfDay"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (scheduleEndDate != null) {
      _json["scheduleEndDate"] = (scheduleEndDate).toJson();
    }
    if (scheduleStartDate != null) {
      _json["scheduleStartDate"] = (scheduleStartDate).toJson();
    }
    if (startTimeOfDay != null) {
      _json["startTimeOfDay"] = (startTimeOfDay).toJson();
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
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
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Represents a time of day. The date and time zone are either not significant
/// or are specified elsewhere. An API may choose to allow leap seconds. Related
/// types are google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDay {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
  /// to allow the value "24:00:00" for scenarios like business closing time.
  core.int hours;

  /// Minutes of hour of day. Must be from 0 to 59.
  core.int minutes;

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  core.int nanos;

  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may
  /// allow the value 60 if it allows leap-seconds.
  core.int seconds;

  TimeOfDay();

  TimeOfDay.fromJson(core.Map _json) {
    if (_json.containsKey("hours")) {
      hours = _json["hours"];
    }
    if (_json.containsKey("minutes")) {
      minutes = _json["minutes"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("seconds")) {
      seconds = _json["seconds"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hours != null) {
      _json["hours"] = hours;
    }
    if (minutes != null) {
      _json["minutes"] = minutes;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (seconds != null) {
      _json["seconds"] = seconds;
    }
    return _json;
  }
}

/// A collection of counters that report the progress of a transfer operation.
class TransferCounters {
  /// Bytes that are copied to the data sink.
  core.String bytesCopiedToSink;

  /// Bytes that are deleted from the data sink.
  core.String bytesDeletedFromSink;

  /// Bytes that are deleted from the data source.
  core.String bytesDeletedFromSource;

  /// Bytes that failed to be deleted from the data sink.
  core.String bytesFailedToDeleteFromSink;

  /// Bytes found in the data source that are scheduled to be transferred,
  /// excluding any that are filtered based on object conditions or skipped due
  /// to sync.
  core.String bytesFoundFromSource;

  /// Bytes found only in the data sink that are scheduled to be deleted.
  core.String bytesFoundOnlyFromSink;

  /// Bytes in the data source that failed to be transferred or that failed to
  /// be deleted after being transferred.
  core.String bytesFromSourceFailed;

  /// Bytes in the data source that are not transferred because they already
  /// exist in the data sink.
  core.String bytesFromSourceSkippedBySync;

  /// Objects that are copied to the data sink.
  core.String objectsCopiedToSink;

  /// Objects that are deleted from the data sink.
  core.String objectsDeletedFromSink;

  /// Objects that are deleted from the data source.
  core.String objectsDeletedFromSource;

  /// Objects that failed to be deleted from the data sink.
  core.String objectsFailedToDeleteFromSink;

  /// Objects found in the data source that are scheduled to be transferred,
  /// excluding any that are filtered based on object conditions or skipped due
  /// to sync.
  core.String objectsFoundFromSource;

  /// Objects found only in the data sink that are scheduled to be deleted.
  core.String objectsFoundOnlyFromSink;

  /// Objects in the data source that failed to be transferred or that failed
  /// to be deleted after being transferred.
  core.String objectsFromSourceFailed;

  /// Objects in the data source that are not transferred because they already
  /// exist in the data sink.
  core.String objectsFromSourceSkippedBySync;

  TransferCounters();

  TransferCounters.fromJson(core.Map _json) {
    if (_json.containsKey("bytesCopiedToSink")) {
      bytesCopiedToSink = _json["bytesCopiedToSink"];
    }
    if (_json.containsKey("bytesDeletedFromSink")) {
      bytesDeletedFromSink = _json["bytesDeletedFromSink"];
    }
    if (_json.containsKey("bytesDeletedFromSource")) {
      bytesDeletedFromSource = _json["bytesDeletedFromSource"];
    }
    if (_json.containsKey("bytesFailedToDeleteFromSink")) {
      bytesFailedToDeleteFromSink = _json["bytesFailedToDeleteFromSink"];
    }
    if (_json.containsKey("bytesFoundFromSource")) {
      bytesFoundFromSource = _json["bytesFoundFromSource"];
    }
    if (_json.containsKey("bytesFoundOnlyFromSink")) {
      bytesFoundOnlyFromSink = _json["bytesFoundOnlyFromSink"];
    }
    if (_json.containsKey("bytesFromSourceFailed")) {
      bytesFromSourceFailed = _json["bytesFromSourceFailed"];
    }
    if (_json.containsKey("bytesFromSourceSkippedBySync")) {
      bytesFromSourceSkippedBySync = _json["bytesFromSourceSkippedBySync"];
    }
    if (_json.containsKey("objectsCopiedToSink")) {
      objectsCopiedToSink = _json["objectsCopiedToSink"];
    }
    if (_json.containsKey("objectsDeletedFromSink")) {
      objectsDeletedFromSink = _json["objectsDeletedFromSink"];
    }
    if (_json.containsKey("objectsDeletedFromSource")) {
      objectsDeletedFromSource = _json["objectsDeletedFromSource"];
    }
    if (_json.containsKey("objectsFailedToDeleteFromSink")) {
      objectsFailedToDeleteFromSink = _json["objectsFailedToDeleteFromSink"];
    }
    if (_json.containsKey("objectsFoundFromSource")) {
      objectsFoundFromSource = _json["objectsFoundFromSource"];
    }
    if (_json.containsKey("objectsFoundOnlyFromSink")) {
      objectsFoundOnlyFromSink = _json["objectsFoundOnlyFromSink"];
    }
    if (_json.containsKey("objectsFromSourceFailed")) {
      objectsFromSourceFailed = _json["objectsFromSourceFailed"];
    }
    if (_json.containsKey("objectsFromSourceSkippedBySync")) {
      objectsFromSourceSkippedBySync = _json["objectsFromSourceSkippedBySync"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bytesCopiedToSink != null) {
      _json["bytesCopiedToSink"] = bytesCopiedToSink;
    }
    if (bytesDeletedFromSink != null) {
      _json["bytesDeletedFromSink"] = bytesDeletedFromSink;
    }
    if (bytesDeletedFromSource != null) {
      _json["bytesDeletedFromSource"] = bytesDeletedFromSource;
    }
    if (bytesFailedToDeleteFromSink != null) {
      _json["bytesFailedToDeleteFromSink"] = bytesFailedToDeleteFromSink;
    }
    if (bytesFoundFromSource != null) {
      _json["bytesFoundFromSource"] = bytesFoundFromSource;
    }
    if (bytesFoundOnlyFromSink != null) {
      _json["bytesFoundOnlyFromSink"] = bytesFoundOnlyFromSink;
    }
    if (bytesFromSourceFailed != null) {
      _json["bytesFromSourceFailed"] = bytesFromSourceFailed;
    }
    if (bytesFromSourceSkippedBySync != null) {
      _json["bytesFromSourceSkippedBySync"] = bytesFromSourceSkippedBySync;
    }
    if (objectsCopiedToSink != null) {
      _json["objectsCopiedToSink"] = objectsCopiedToSink;
    }
    if (objectsDeletedFromSink != null) {
      _json["objectsDeletedFromSink"] = objectsDeletedFromSink;
    }
    if (objectsDeletedFromSource != null) {
      _json["objectsDeletedFromSource"] = objectsDeletedFromSource;
    }
    if (objectsFailedToDeleteFromSink != null) {
      _json["objectsFailedToDeleteFromSink"] = objectsFailedToDeleteFromSink;
    }
    if (objectsFoundFromSource != null) {
      _json["objectsFoundFromSource"] = objectsFoundFromSource;
    }
    if (objectsFoundOnlyFromSink != null) {
      _json["objectsFoundOnlyFromSink"] = objectsFoundOnlyFromSink;
    }
    if (objectsFromSourceFailed != null) {
      _json["objectsFromSourceFailed"] = objectsFromSourceFailed;
    }
    if (objectsFromSourceSkippedBySync != null) {
      _json["objectsFromSourceSkippedBySync"] = objectsFromSourceSkippedBySync;
    }
    return _json;
  }
}

/// This resource represents the configuration of a transfer job that runs
/// periodically.
class TransferJob {
  /// Output only. The time that the transfer job was created.
  core.String creationTime;

  /// Output only. The time that the transfer job was deleted.
  core.String deletionTime;

  /// A description provided by the user for the job. Its max length is 1024
  /// bytes when Unicode-encoded.
  core.String description;

  /// Output only. The time that the transfer job was last modified.
  core.String lastModificationTime;

  /// A globally unique name assigned by Storage Transfer Service when the
  /// job is created. This field should be left empty in requests to create a
  /// new
  /// transfer job; otherwise, the requests result in an `INVALID_ARGUMENT`
  /// error.
  core.String name;

  /// The ID of the Google Cloud Platform Project that owns the job.
  core.String projectId;

  /// Schedule specification.
  Schedule schedule;

  /// Status of the job. This value MUST be specified for
  /// `CreateTransferJobRequests`.
  ///
  /// NOTE: The effect of the new job status takes place during a subsequent job
  /// run. For example, if you change the job status from `ENABLED` to
  /// `DISABLED`, and an operation spawned by the transfer is running, the
  /// status
  /// change would not affect the current operation.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Zero is an illegal value.
  /// - "ENABLED" : New transfers will be performed based on the schedule.
  /// - "DISABLED" : New transfers will not be scheduled.
  /// - "DELETED" : This is a soft delete state. After a transfer job is set to
  /// this
  /// state, the job and all the transfer executions are subject to
  /// garbage collection. Transfer jobs become eligible for garbage collection
  /// 30 days after their status is set to `DELETED`.
  core.String status;

  /// Transfer specification.
  TransferSpec transferSpec;

  TransferJob();

  TransferJob.fromJson(core.Map _json) {
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("deletionTime")) {
      deletionTime = _json["deletionTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("lastModificationTime")) {
      lastModificationTime = _json["lastModificationTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("schedule")) {
      schedule = new Schedule.fromJson(_json["schedule"]);
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("transferSpec")) {
      transferSpec = new TransferSpec.fromJson(_json["transferSpec"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (deletionTime != null) {
      _json["deletionTime"] = deletionTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (lastModificationTime != null) {
      _json["lastModificationTime"] = lastModificationTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (schedule != null) {
      _json["schedule"] = (schedule).toJson();
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (transferSpec != null) {
      _json["transferSpec"] = (transferSpec).toJson();
    }
    return _json;
  }
}

/// A description of the execution of a transfer.
class TransferOperation {
  /// Information about the progress of the transfer operation.
  TransferCounters counters;

  /// End time of this transfer execution.
  core.String endTime;

  /// Summarizes errors encountered with sample error log entries.
  core.List<ErrorSummary> errorBreakdowns;

  /// A globally unique ID assigned by the system.
  core.String name;

  /// The ID of the Google Cloud Platform Project that owns the operation.
  core.String projectId;

  /// Start time of this transfer execution.
  core.String startTime;

  /// Status of the transfer operation.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Zero is an illegal value.
  /// - "IN_PROGRESS" : In progress.
  /// - "PAUSED" : Paused.
  /// - "SUCCESS" : Completed successfully.
  /// - "FAILED" : Terminated due to an unrecoverable failure.
  /// - "ABORTED" : Aborted by the user.
  core.String status;

  /// The name of the transfer job that triggers this transfer operation.
  core.String transferJobName;

  /// Transfer specification.
  TransferSpec transferSpec;

  TransferOperation();

  TransferOperation.fromJson(core.Map _json) {
    if (_json.containsKey("counters")) {
      counters = new TransferCounters.fromJson(_json["counters"]);
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("errorBreakdowns")) {
      errorBreakdowns = (_json["errorBreakdowns"] as core.List)
          .map<ErrorSummary>((value) => new ErrorSummary.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("transferJobName")) {
      transferJobName = _json["transferJobName"];
    }
    if (_json.containsKey("transferSpec")) {
      transferSpec = new TransferSpec.fromJson(_json["transferSpec"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (counters != null) {
      _json["counters"] = (counters).toJson();
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (errorBreakdowns != null) {
      _json["errorBreakdowns"] =
          errorBreakdowns.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (transferJobName != null) {
      _json["transferJobName"] = transferJobName;
    }
    if (transferSpec != null) {
      _json["transferSpec"] = (transferSpec).toJson();
    }
    return _json;
  }
}

/// TransferOptions uses three boolean parameters to define the actions
/// to be performed on objects in a transfer.
class TransferOptions {
  /// Whether objects should be deleted from the source after they are
  /// transferred to the sink.  Note that this option and
  /// `deleteObjectsUniqueInSink` are mutually exclusive.
  core.bool deleteObjectsFromSourceAfterTransfer;

  /// Whether objects that exist only in the sink should be deleted.  Note that
  /// this option and `deleteObjectsFromSourceAfterTransfer` are mutually
  /// exclusive.
  core.bool deleteObjectsUniqueInSink;

  /// Whether overwriting objects that already exist in the sink is allowed.
  core.bool overwriteObjectsAlreadyExistingInSink;

  TransferOptions();

  TransferOptions.fromJson(core.Map _json) {
    if (_json.containsKey("deleteObjectsFromSourceAfterTransfer")) {
      deleteObjectsFromSourceAfterTransfer =
          _json["deleteObjectsFromSourceAfterTransfer"];
    }
    if (_json.containsKey("deleteObjectsUniqueInSink")) {
      deleteObjectsUniqueInSink = _json["deleteObjectsUniqueInSink"];
    }
    if (_json.containsKey("overwriteObjectsAlreadyExistingInSink")) {
      overwriteObjectsAlreadyExistingInSink =
          _json["overwriteObjectsAlreadyExistingInSink"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deleteObjectsFromSourceAfterTransfer != null) {
      _json["deleteObjectsFromSourceAfterTransfer"] =
          deleteObjectsFromSourceAfterTransfer;
    }
    if (deleteObjectsUniqueInSink != null) {
      _json["deleteObjectsUniqueInSink"] = deleteObjectsUniqueInSink;
    }
    if (overwriteObjectsAlreadyExistingInSink != null) {
      _json["overwriteObjectsAlreadyExistingInSink"] =
          overwriteObjectsAlreadyExistingInSink;
    }
    return _json;
  }
}

/// Configuration for running a transfer.
class TransferSpec {
  /// An AWS S3 data source.
  AwsS3Data awsS3DataSource;

  /// A Google Cloud Storage data sink.
  GcsData gcsDataSink;

  /// A Google Cloud Storage data source.
  GcsData gcsDataSource;

  /// An HTTP URL data source.
  HttpData httpDataSource;

  /// Only objects that satisfy these object conditions are included in the set
  /// of data source and data sink objects.  Object conditions based on
  /// objects' `lastModificationTime` do not exclude objects in a data sink.
  ObjectConditions objectConditions;

  /// If the option `deleteObjectsUniqueInSink` is `true`, object conditions
  /// based on objects' `lastModificationTime` are ignored and do not exclude
  /// objects in a data source or a data sink.
  TransferOptions transferOptions;

  TransferSpec();

  TransferSpec.fromJson(core.Map _json) {
    if (_json.containsKey("awsS3DataSource")) {
      awsS3DataSource = new AwsS3Data.fromJson(_json["awsS3DataSource"]);
    }
    if (_json.containsKey("gcsDataSink")) {
      gcsDataSink = new GcsData.fromJson(_json["gcsDataSink"]);
    }
    if (_json.containsKey("gcsDataSource")) {
      gcsDataSource = new GcsData.fromJson(_json["gcsDataSource"]);
    }
    if (_json.containsKey("httpDataSource")) {
      httpDataSource = new HttpData.fromJson(_json["httpDataSource"]);
    }
    if (_json.containsKey("objectConditions")) {
      objectConditions =
          new ObjectConditions.fromJson(_json["objectConditions"]);
    }
    if (_json.containsKey("transferOptions")) {
      transferOptions = new TransferOptions.fromJson(_json["transferOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (awsS3DataSource != null) {
      _json["awsS3DataSource"] = (awsS3DataSource).toJson();
    }
    if (gcsDataSink != null) {
      _json["gcsDataSink"] = (gcsDataSink).toJson();
    }
    if (gcsDataSource != null) {
      _json["gcsDataSource"] = (gcsDataSource).toJson();
    }
    if (httpDataSource != null) {
      _json["httpDataSource"] = (httpDataSource).toJson();
    }
    if (objectConditions != null) {
      _json["objectConditions"] = (objectConditions).toJson();
    }
    if (transferOptions != null) {
      _json["transferOptions"] = (transferOptions).toJson();
    }
    return _json;
  }
}

/// Request passed to UpdateTransferJob.
class UpdateTransferJobRequest {
  /// Required. The ID of the Google Cloud Platform Console project that owns
  /// the
  /// job.
  core.String projectId;

  /// Required. The job to update. `transferJob` is expected to specify only
  /// three fields: `description`, `transferSpec`, and `status`.  An
  /// UpdateTransferJobRequest that specifies other fields will be rejected with
  /// an error `INVALID_ARGUMENT`.
  TransferJob transferJob;

  /// The field mask of the fields in `transferJob` that are to be updated in
  /// this request.  Fields in `transferJob` that can be updated are:
  /// `description`, `transferSpec`, and `status`.  To update the `transferSpec`
  /// of the job, a complete transfer specification has to be provided. An
  /// incomplete specification which misses any required fields will be rejected
  /// with the error `INVALID_ARGUMENT`.
  core.String updateTransferJobFieldMask;

  UpdateTransferJobRequest();

  UpdateTransferJobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("transferJob")) {
      transferJob = new TransferJob.fromJson(_json["transferJob"]);
    }
    if (_json.containsKey("updateTransferJobFieldMask")) {
      updateTransferJobFieldMask = _json["updateTransferJobFieldMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (transferJob != null) {
      _json["transferJob"] = (transferJob).toJson();
    }
    if (updateTransferJobFieldMask != null) {
      _json["updateTransferJobFieldMask"] = updateTransferJobFieldMask;
    }
    return _json;
  }
}
