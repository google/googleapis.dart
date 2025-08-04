// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Admin SDK API - datatransfer_v1
///
/// Admin SDK lets administrators of enterprise domains to view and manage
/// resources like user, groups etc. It also provides audit and usage reports of
/// domain.
///
/// For more information, see <https://developers.google.com/workspace/admin/>
///
/// Create an instance of [DataTransferApi] to access these resources:
///
/// - [ApplicationsResource]
/// - [TransfersResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Admin SDK lets administrators of enterprise domains to view and manage
/// resources like user, groups etc.
///
/// It also provides audit and usage reports of domain.
class DataTransferApi {
  /// View and manage data transfers between users in your organization
  static const adminDatatransferScope =
      'https://www.googleapis.com/auth/admin.datatransfer';

  /// View data transfers between users in your organization
  static const adminDatatransferReadonlyScope =
      'https://www.googleapis.com/auth/admin.datatransfer.readonly';

  final commons.ApiRequester _requester;

  ApplicationsResource get applications => ApplicationsResource(_requester);
  TransfersResource get transfers => TransfersResource(_requester);

  DataTransferApi(
    http.Client client, {
    core.String rootUrl = 'https://admin.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ApplicationsResource {
  final commons.ApiRequester _requester;

  ApplicationsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves information about an application for the given application ID.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - ID of the application resource to be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Application].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Application> get(
    core.String applicationId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'admin/datatransfer/v1/applications/' +
        commons.escapeVariable('$applicationId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Application.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the applications available for data transfer for a customer.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the Google Workspace account.
  ///
  /// [maxResults] - Maximum number of results to return. Default is 100.
  /// Value must be between "1" and "500".
  ///
  /// [pageToken] - Token to specify next page in the list.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApplicationsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApplicationsListResponse> list({
    core.String? customerId,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'admin/datatransfer/v1/applications';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ApplicationsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class TransfersResource {
  final commons.ApiRequester _requester;

  TransfersResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a data transfer request by its resource ID.
  ///
  /// Request parameters:
  ///
  /// [dataTransferId] - ID of the resource to be retrieved. This is returned in
  /// the response from the insert method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataTransfer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataTransfer> get(
    core.String dataTransferId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'admin/datatransfer/v1/transfers/' +
        commons.escapeVariable('$dataTransferId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DataTransfer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Inserts a data transfer request.
  ///
  /// See the
  /// [Transfer parameters](https://developers.google.com/workspace/admin/data-transfer/v1/parameters)
  /// reference for specific application requirements.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataTransfer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataTransfer> insert(
    DataTransfer request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'admin/datatransfer/v1/transfers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DataTransfer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the transfers for a customer by source user, destination user, or
  /// status.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Immutable ID of the Google Workspace account.
  ///
  /// [maxResults] - Maximum number of results to return. Default is 100.
  /// Value must be between "1" and "500".
  ///
  /// [newOwnerUserId] - Destination user's profile ID.
  ///
  /// [oldOwnerUserId] - Source user's profile ID.
  ///
  /// [pageToken] - Token to specify the next page in the list.
  ///
  /// [status] - Status of the transfer.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataTransfersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataTransfersListResponse> list({
    core.String? customerId,
    core.int? maxResults,
    core.String? newOwnerUserId,
    core.String? oldOwnerUserId,
    core.String? pageToken,
    core.String? status,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (newOwnerUserId != null) 'newOwnerUserId': [newOwnerUserId],
      if (oldOwnerUserId != null) 'oldOwnerUserId': [oldOwnerUserId],
      if (pageToken != null) 'pageToken': [pageToken],
      if (status != null) 'status': [status],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'admin/datatransfer/v1/transfers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DataTransfersListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Application resources represent applications installed on the domain that
/// support transferring ownership of user data.
class Application {
  /// Etag of the resource.
  core.String? etag;

  /// The application's ID.
  ///
  /// Retrievable by using the
  /// \[`applications.list()`\](https://developers.google.com/workspace/admin/data-transfer/reference/rest/v1/applications/list)
  /// method.
  core.String? id;

  /// Identifies the resource as a DataTransfer Application Resource.
  core.String? kind;

  /// The application's name.
  core.String? name;

  /// The list of all possible transfer parameters for this application.
  ///
  /// These parameters select which categories of the user's data to transfer.
  core.List<ApplicationTransferParam>? transferParams;

  Application({this.etag, this.id, this.kind, this.name, this.transferParams});

  Application.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        transferParams:
            (json_['transferParams'] as core.List?)
                ?.map(
                  (value) => ApplicationTransferParam.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (etag != null) 'etag': etag!,
    if (id != null) 'id': id!,
    if (kind != null) 'kind': kind!,
    if (name != null) 'name': name!,
    if (transferParams != null) 'transferParams': transferParams!,
  };
}

/// Template to map fields of ApplicationDataTransfer resource.
class ApplicationDataTransfer {
  /// The application's ID.
  core.String? applicationId;

  /// The transfer parameters for the application.
  ///
  /// These parameters are used to select the data which will get transferred in
  /// context of this application. For more information about the specific
  /// values available for each application, see the
  /// [Transfer parameters](https://developers.google.com/workspace/admin/data-transfer/v1/parameters)
  /// reference.
  core.List<ApplicationTransferParam>? applicationTransferParams;

  /// Read-only.
  ///
  /// Current status of transfer for this application.
  core.String? applicationTransferStatus;

  ApplicationDataTransfer({
    this.applicationId,
    this.applicationTransferParams,
    this.applicationTransferStatus,
  });

  ApplicationDataTransfer.fromJson(core.Map json_)
    : this(
        applicationId: json_['applicationId'] as core.String?,
        applicationTransferParams:
            (json_['applicationTransferParams'] as core.List?)
                ?.map(
                  (value) => ApplicationTransferParam.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        applicationTransferStatus:
            json_['applicationTransferStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationId != null) 'applicationId': applicationId!,
    if (applicationTransferParams != null)
      'applicationTransferParams': applicationTransferParams!,
    if (applicationTransferStatus != null)
      'applicationTransferStatus': applicationTransferStatus!,
  };
}

/// Template for application transfer parameters.
class ApplicationTransferParam {
  /// The type of the transfer parameter, such as `PRIVACY_LEVEL`.
  core.String? key;

  /// The value of the transfer parameter, such as `PRIVATE` or `SHARED`.
  core.List<core.String>? value;

  ApplicationTransferParam({this.key, this.value});

  ApplicationTransferParam.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        value:
            (json_['value'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (key != null) 'key': key!,
    if (value != null) 'value': value!,
  };
}

/// Template for a collection of Applications.
class ApplicationsListResponse {
  /// The list of applications that support data transfer and are also installed
  /// for the customer.
  core.List<Application>? applications;

  /// ETag of the resource.
  core.String? etag;

  /// Identifies the resource as a collection of Applications.
  core.String? kind;

  /// Token to specify the next page in the list.
  core.String? nextPageToken;

  ApplicationsListResponse({
    this.applications,
    this.etag,
    this.kind,
    this.nextPageToken,
  });

  ApplicationsListResponse.fromJson(core.Map json_)
    : this(
        applications:
            (json_['applications'] as core.List?)
                ?.map(
                  (value) => Application.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applications != null) 'applications': applications!,
    if (etag != null) 'etag': etag!,
    if (kind != null) 'kind': kind!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// A Transfer resource represents the transfer of the ownership of user data
/// between users.
class DataTransfer {
  /// The list of per-application data transfer resources.
  ///
  /// It contains details of the applications associated with this transfer
  /// resource, and also specifies the applications for which data transfer has
  /// to be done at the time of the transfer resource creation.
  core.List<ApplicationDataTransfer>? applicationDataTransfers;

  /// ETag of the resource.
  core.String? etag;

  /// Read-only.
  ///
  /// The transfer's ID.
  core.String? id;

  /// Identifies the resource as a DataTransfer request.
  core.String? kind;

  /// ID of the user to whom the data is being transferred.
  core.String? newOwnerUserId;

  /// ID of the user whose data is being transferred.
  core.String? oldOwnerUserId;

  /// Read-only.
  ///
  /// Overall transfer status.
  core.String? overallTransferStatusCode;

  /// Read-only.
  ///
  /// The time at which the data transfer was requested.
  core.DateTime? requestTime;

  DataTransfer({
    this.applicationDataTransfers,
    this.etag,
    this.id,
    this.kind,
    this.newOwnerUserId,
    this.oldOwnerUserId,
    this.overallTransferStatusCode,
    this.requestTime,
  });

  DataTransfer.fromJson(core.Map json_)
    : this(
        applicationDataTransfers:
            (json_['applicationDataTransfers'] as core.List?)
                ?.map(
                  (value) => ApplicationDataTransfer.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        newOwnerUserId: json_['newOwnerUserId'] as core.String?,
        oldOwnerUserId: json_['oldOwnerUserId'] as core.String?,
        overallTransferStatusCode:
            json_['overallTransferStatusCode'] as core.String?,
        requestTime:
            json_.containsKey('requestTime')
                ? core.DateTime.parse(json_['requestTime'] as core.String)
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationDataTransfers != null)
      'applicationDataTransfers': applicationDataTransfers!,
    if (etag != null) 'etag': etag!,
    if (id != null) 'id': id!,
    if (kind != null) 'kind': kind!,
    if (newOwnerUserId != null) 'newOwnerUserId': newOwnerUserId!,
    if (oldOwnerUserId != null) 'oldOwnerUserId': oldOwnerUserId!,
    if (overallTransferStatusCode != null)
      'overallTransferStatusCode': overallTransferStatusCode!,
    if (requestTime != null)
      'requestTime': requestTime!.toUtc().toIso8601String(),
  };
}

/// Template for a collection of DataTransfer resources.
class DataTransfersListResponse {
  /// List of data transfer requests.
  core.List<DataTransfer>? dataTransfers;

  /// ETag of the resource.
  core.String? etag;

  /// Identifies the resource as a collection of data transfer requests.
  core.String? kind;

  /// Token to specify the next page in the list.
  core.String? nextPageToken;

  DataTransfersListResponse({
    this.dataTransfers,
    this.etag,
    this.kind,
    this.nextPageToken,
  });

  DataTransfersListResponse.fromJson(core.Map json_)
    : this(
        dataTransfers:
            (json_['dataTransfers'] as core.List?)
                ?.map(
                  (value) => DataTransfer.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataTransfers != null) 'dataTransfers': dataTransfers!,
    if (etag != null) 'etag': etag!,
    if (kind != null) 'kind': kind!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}
