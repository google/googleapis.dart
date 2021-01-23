// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
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

library googleapis.dns.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client dns/v1';

class DnsApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud Platform services
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// View your DNS records hosted by Google Cloud DNS
  static const ndevClouddnsReadonlyScope =
      'https://www.googleapis.com/auth/ndev.clouddns.readonly';

  /// View and manage your DNS records hosted by Google Cloud DNS
  static const ndevClouddnsReadwriteScope =
      'https://www.googleapis.com/auth/ndev.clouddns.readwrite';

  final commons.ApiRequester _requester;

  ChangesResourceApi get changes => ChangesResourceApi(_requester);
  DnsKeysResourceApi get dnsKeys => DnsKeysResourceApi(_requester);
  ManagedZoneOperationsResourceApi get managedZoneOperations =>
      ManagedZoneOperationsResourceApi(_requester);
  ManagedZonesResourceApi get managedZones =>
      ManagedZonesResourceApi(_requester);
  PoliciesResourceApi get policies => PoliciesResourceApi(_requester);
  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);
  ResourceRecordSetsResourceApi get resourceRecordSets =>
      ResourceRecordSetsResourceApi(_requester);

  DnsApi(http.Client client,
      {core.String rootUrl = 'https://dns.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ChangesResourceApi {
  final commons.ApiRequester _requester;

  ChangesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Atomically update the ResourceRecordSet collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Change].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Change> create(
    Change request,
    core.String project,
    core.String managedZone, {
    core.String clientOperationId,
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
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone') +
        '/changes';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Change.fromJson(data));
  }

  /// Fetch the representation of an existing Change.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [changeId] - The identifier of the requested change, from a previous
  /// ResourceRecordSetsChangeResponse.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Change].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Change> get(
    core.String project,
    core.String managedZone,
    core.String changeId, {
    core.String clientOperationId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (changeId == null) {
      throw core.ArgumentError('Parameter changeId is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone') +
        '/changes/' +
        commons.Escaper.ecapeVariable('$changeId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Change.fromJson(data));
  }

  /// Enumerate Changes to a ResourceRecordSet collection.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server will decide how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [sortBy] - Sorting criterion. The only supported value is change sequence.
  /// Possible string values are:
  /// - "changeSequence"
  ///
  /// [sortOrder] - Sorting order direction: 'ascending' or 'descending'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChangesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChangesListResponse> list(
    core.String project,
    core.String managedZone, {
    core.int maxResults,
    core.String pageToken,
    core.String sortBy,
    core.String sortOrder,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (sortBy != null) {
      _queryParams['sortBy'] = [sortBy];
    }
    if (sortOrder != null) {
      _queryParams['sortOrder'] = [sortOrder];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone') +
        '/changes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ChangesListResponse.fromJson(data));
  }
}

class DnsKeysResourceApi {
  final commons.ApiRequester _requester;

  DnsKeysResourceApi(commons.ApiRequester client) : _requester = client;

  /// Fetch the representation of an existing DnsKey.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [dnsKeyId] - The identifier of the requested DnsKey.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [digestType] - An optional comma-separated list of digest types to compute
  /// and display for key signing keys. If omitted, the recommended digest type
  /// will be computed and displayed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DnsKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DnsKey> get(
    core.String project,
    core.String managedZone,
    core.String dnsKeyId, {
    core.String clientOperationId,
    core.String digestType,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (dnsKeyId == null) {
      throw core.ArgumentError('Parameter dnsKeyId is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if (digestType != null) {
      _queryParams['digestType'] = [digestType];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone') +
        '/dnsKeys/' +
        commons.Escaper.ecapeVariable('$dnsKeyId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => DnsKey.fromJson(data));
  }

  /// Enumerate DnsKeys to a ResourceRecordSet collection.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [digestType] - An optional comma-separated list of digest types to compute
  /// and display for key signing keys. If omitted, the recommended digest type
  /// will be computed and displayed.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server will decide how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DnsKeysListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DnsKeysListResponse> list(
    core.String project,
    core.String managedZone, {
    core.String digestType,
    core.int maxResults,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (digestType != null) {
      _queryParams['digestType'] = [digestType];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone') +
        '/dnsKeys';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => DnsKeysListResponse.fromJson(data));
  }
}

class ManagedZoneOperationsResourceApi {
  final commons.ApiRequester _requester;

  ManagedZoneOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Fetch the representation of an existing Operation.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request.
  ///
  /// [operation] - Identifies the operation addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
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
    core.String project,
    core.String managedZone,
    core.String operation, {
    core.String clientOperationId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (operation == null) {
      throw core.ArgumentError('Parameter operation is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone') +
        '/operations/' +
        commons.Escaper.ecapeVariable('$operation');

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

  /// Enumerate Operations for the given ManagedZone.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server will decide how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [sortBy] - Sorting criterion. The only supported values are START_TIME and
  /// ID.
  /// Possible string values are:
  /// - "startTime"
  /// - "id"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedZoneOperationsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedZoneOperationsListResponse> list(
    core.String project,
    core.String managedZone, {
    core.int maxResults,
    core.String pageToken,
    core.String sortBy,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (sortBy != null) {
      _queryParams['sortBy'] = [sortBy];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone') +
        '/operations';

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
        .then((data) => ManagedZoneOperationsListResponse.fromJson(data));
  }
}

class ManagedZonesResourceApi {
  final commons.ApiRequester _requester;

  ManagedZonesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Create a new ManagedZone.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedZone].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedZone> create(
    ManagedZone request,
    core.String project, {
    core.String clientOperationId,
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
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ManagedZone.fromJson(data));
  }

  /// Delete a previously created ManagedZone.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String project,
    core.String managedZone, {
    core.String clientOperationId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Fetch the representation of an existing ManagedZone.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedZone].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedZone> get(
    core.String project,
    core.String managedZone, {
    core.String clientOperationId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ManagedZone.fromJson(data));
  }

  /// Enumerate ManagedZones that have been created but not yet deleted.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [dnsName] - Restricts the list to return only zones with this domain name.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server will decide how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedZonesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedZonesListResponse> list(
    core.String project, {
    core.String dnsName,
    core.int maxResults,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (dnsName != null) {
      _queryParams['dnsName'] = [dnsName];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ManagedZonesListResponse.fromJson(data));
  }

  /// Apply a partial update to an existing ManagedZone.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
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
    ManagedZone request,
    core.String project,
    core.String managedZone, {
    core.String clientOperationId,
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
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Update an existing ManagedZone.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
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
  async.Future<Operation> update(
    ManagedZone request,
    core.String project,
    core.String managedZone, {
    core.String clientOperationId,
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
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class PoliciesResourceApi {
  final commons.ApiRequester _requester;

  PoliciesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Create a new Policy
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
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
  async.Future<Policy> create(
    Policy request,
    core.String project, {
    core.String clientOperationId,
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
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/policies';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Policy.fromJson(data));
  }

  /// Delete a previously created Policy. Will fail if the policy is still being
  /// referenced by a network.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [policy] - User given friendly name of the policy addressed by this
  /// request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(
    core.String project,
    core.String policy, {
    core.String clientOperationId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (policy == null) {
      throw core.ArgumentError('Parameter policy is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/policies/' +
        commons.Escaper.ecapeVariable('$policy');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => null);
  }

  /// Fetch the representation of an existing Policy.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [policy] - User given friendly name of the policy addressed by this
  /// request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
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
  async.Future<Policy> get(
    core.String project,
    core.String policy, {
    core.String clientOperationId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (policy == null) {
      throw core.ArgumentError('Parameter policy is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/policies/' +
        commons.Escaper.ecapeVariable('$policy');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Policy.fromJson(data));
  }

  /// Enumerate all Policies associated with a project.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server will decide how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PoliciesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PoliciesListResponse> list(
    core.String project, {
    core.int maxResults,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/policies';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PoliciesListResponse.fromJson(data));
  }

  /// Apply a partial update to an existing Policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [policy] - User given friendly name of the policy addressed by this
  /// request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PoliciesPatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PoliciesPatchResponse> patch(
    Policy request,
    core.String project,
    core.String policy, {
    core.String clientOperationId,
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
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (policy == null) {
      throw core.ArgumentError('Parameter policy is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/policies/' +
        commons.Escaper.ecapeVariable('$policy');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PoliciesPatchResponse.fromJson(data));
  }

  /// Update an existing Policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [policy] - User given friendly name of the policy addressed by this
  /// request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PoliciesUpdateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PoliciesUpdateResponse> update(
    Policy request,
    core.String project,
    core.String policy, {
    core.String clientOperationId,
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
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (policy == null) {
      throw core.ArgumentError('Parameter policy is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/policies/' +
        commons.Escaper.ecapeVariable('$policy');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PoliciesUpdateResponse.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Fetch the representation of an existing Project.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Project].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Project> get(
    core.String project, {
    core.String clientOperationId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (clientOperationId != null) {
      _queryParams['clientOperationId'] = [clientOperationId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' + commons.Escaper.ecapeVariable('$project');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Project.fromJson(data));
  }
}

class ResourceRecordSetsResourceApi {
  final commons.ApiRequester _requester;

  ResourceRecordSetsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Enumerate ResourceRecordSets that have been created but not yet deleted.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server will decide how many results to return.
  ///
  /// [name] - Restricts the list to return only records with this fully
  /// qualified domain name.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [type] - Restricts the list to return only records of this type. If
  /// present, the "name" parameter must also be present.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourceRecordSetsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourceRecordSetsListResponse> list(
    core.String project,
    core.String managedZone, {
    core.int maxResults,
    core.String name,
    core.String pageToken,
    core.String type,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (managedZone == null) {
      throw core.ArgumentError('Parameter managedZone is required.');
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (type != null) {
      _queryParams['type'] = [type];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'dns/v1/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/managedZones/' +
        commons.Escaper.ecapeVariable('$managedZone') +
        '/rrsets';

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
        .then((data) => ResourceRecordSetsListResponse.fromJson(data));
  }
}

/// A Change represents a set of ResourceRecordSet additions and deletions
/// applied atomically to a ManagedZone. ResourceRecordSets within a ManagedZone
/// are modified by creating a new Change element in the Changes collection. In
/// turn the Changes collection also records the past modifications to the
/// ResourceRecordSets in a ManagedZone. The current state of the ManagedZone is
/// the sum effect of applying all Change elements in the Changes collection in
/// sequence.
class Change {
  /// Which ResourceRecordSets to add?
  core.List<ResourceRecordSet> additions;

  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  core.List<ResourceRecordSet> deletions;

  /// Unique identifier for the resource; defined by the server (output only).
  core.String id;

  /// If the DNS queries for the zone will be served.
  core.bool isServing;
  core.String kind;

  /// The time that this operation was started by the server (output only). This
  /// is in RFC3339 text format.
  core.String startTime;

  /// Status of the operation (output only). A status of "done" means that the
  /// request to update the authoritative servers has been sent but the servers
  /// might not be updated yet.
  /// Possible string values are:
  /// - "pending"
  /// - "done"
  core.String status;

  Change();

  Change.fromJson(core.Map _json) {
    if (_json.containsKey('additions')) {
      additions = (_json['additions'] as core.List)
          .map<ResourceRecordSet>((value) => ResourceRecordSet.fromJson(value))
          .toList();
    }
    if (_json.containsKey('deletions')) {
      deletions = (_json['deletions'] as core.List)
          .map<ResourceRecordSet>((value) => ResourceRecordSet.fromJson(value))
          .toList();
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('isServing')) {
      isServing = _json['isServing'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
    if (_json.containsKey('status')) {
      status = _json['status'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (additions != null) {
      _json['additions'] = additions.map((value) => value.toJson()).toList();
    }
    if (deletions != null) {
      _json['deletions'] = deletions.map((value) => value.toJson()).toList();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (isServing != null) {
      _json['isServing'] = isServing;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}

/// The response to a request to enumerate Changes to a ResourceRecordSets
/// collection.
class ChangesListResponse {
  /// The requested changes.
  core.List<Change> changes;
  ResponseHeader header;

  /// Type of resource.
  core.String kind;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order. To fetch them,
  /// make another list request using this value as your pagination token. In
  /// this way you can retrieve the complete contents of even very large
  /// collections one page at a time. However, if the contents of the collection
  /// change between the first and last paginated list request, the set of all
  /// elements returned will be an inconsistent view of the collection. There is
  /// no way to retrieve a "snapshot" of collections larger than the maximum
  /// page size.
  core.String nextPageToken;

  ChangesListResponse();

  ChangesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('changes')) {
      changes = (_json['changes'] as core.List)
          .map<Change>((value) => Change.fromJson(value))
          .toList();
    }
    if (_json.containsKey('header')) {
      header = ResponseHeader.fromJson(_json['header']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (changes != null) {
      _json['changes'] = changes.map((value) => value.toJson()).toList();
    }
    if (header != null) {
      _json['header'] = header.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// A DNSSEC key pair.
class DnsKey {
  /// String mnemonic specifying the DNSSEC algorithm of this key. Immutable
  /// after creation time.
  /// Possible string values are:
  /// - "rsasha1"
  /// - "rsasha256"
  /// - "rsasha512"
  /// - "ecdsap256sha256"
  /// - "ecdsap384sha384"
  core.String algorithm;

  /// The time that this resource was created in the control plane. This is in
  /// RFC3339 text format. Output only.
  core.String creationTime;

  /// A mutable string of at most 1024 characters associated with this resource
  /// for the user's convenience. Has no effect on the resource's function.
  core.String description;

  /// Cryptographic hashes of the DNSKEY resource record associated with this
  /// DnsKey. These digests are needed to construct a DS record that points at
  /// this DNS key. Output only.
  core.List<DnsKeyDigest> digests;

  /// Unique identifier for the resource; defined by the server (output only).
  core.String id;

  /// Active keys will be used to sign subsequent changes to the ManagedZone.
  /// Inactive keys will still be present as DNSKEY Resource Records for the use
  /// of resolvers validating existing signatures.
  core.bool isActive;

  /// Length of the key in bits. Specified at creation time then immutable.
  core.int keyLength;

  /// The key tag is a non-cryptographic hash of the a DNSKEY resource record
  /// associated with this DnsKey. The key tag can be used to identify a DNSKEY
  /// more quickly (but it is not a unique identifier). In particular, the key
  /// tag is used in a parent zone's DS record to point at the DNSKEY in this
  /// child ManagedZone. The key tag is a number in the range [0, 65535] and the
  /// algorithm to calculate it is specified in RFC4034 Appendix B. Output only.
  core.int keyTag;
  core.String kind;

  /// Base64 encoded public half of this key. Output only.
  core.String publicKey;

  /// One of "KEY_SIGNING" or "ZONE_SIGNING". Keys of type KEY_SIGNING have the
  /// Secure Entry Point flag set and, when active, will be used to sign only
  /// resource record sets of type DNSKEY. Otherwise, the Secure Entry Point
  /// flag will be cleared and this key will be used to sign only resource
  /// record sets of other types. Immutable after creation time.
  /// Possible string values are:
  /// - "keySigning"
  /// - "zoneSigning"
  core.String type;

  DnsKey();

  DnsKey.fromJson(core.Map _json) {
    if (_json.containsKey('algorithm')) {
      algorithm = _json['algorithm'];
    }
    if (_json.containsKey('creationTime')) {
      creationTime = _json['creationTime'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('digests')) {
      digests = (_json['digests'] as core.List)
          .map<DnsKeyDigest>((value) => DnsKeyDigest.fromJson(value))
          .toList();
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('isActive')) {
      isActive = _json['isActive'];
    }
    if (_json.containsKey('keyLength')) {
      keyLength = _json['keyLength'];
    }
    if (_json.containsKey('keyTag')) {
      keyTag = _json['keyTag'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('publicKey')) {
      publicKey = _json['publicKey'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (algorithm != null) {
      _json['algorithm'] = algorithm;
    }
    if (creationTime != null) {
      _json['creationTime'] = creationTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (digests != null) {
      _json['digests'] = digests.map((value) => value.toJson()).toList();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (isActive != null) {
      _json['isActive'] = isActive;
    }
    if (keyLength != null) {
      _json['keyLength'] = keyLength;
    }
    if (keyTag != null) {
      _json['keyTag'] = keyTag;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (publicKey != null) {
      _json['publicKey'] = publicKey;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

class DnsKeyDigest {
  /// The base-16 encoded bytes of this digest. Suitable for use in a DS
  /// resource record.
  core.String digest;

  /// Specifies the algorithm used to calculate this digest.
  /// Possible string values are:
  /// - "sha1"
  /// - "sha256"
  /// - "sha384"
  core.String type;

  DnsKeyDigest();

  DnsKeyDigest.fromJson(core.Map _json) {
    if (_json.containsKey('digest')) {
      digest = _json['digest'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (digest != null) {
      _json['digest'] = digest;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Parameters for DnsKey key generation. Used for generating initial keys for a
/// new ManagedZone and as default when adding a new DnsKey.
class DnsKeySpec {
  /// String mnemonic specifying the DNSSEC algorithm of this key.
  /// Possible string values are:
  /// - "rsasha1"
  /// - "rsasha256"
  /// - "rsasha512"
  /// - "ecdsap256sha256"
  /// - "ecdsap384sha384"
  core.String algorithm;

  /// Length of the keys in bits.
  core.int keyLength;

  /// Specifies whether this is a key signing key (KSK) or a zone signing key
  /// (ZSK). Key signing keys have the Secure Entry Point flag set and, when
  /// active, will only be used to sign resource record sets of type DNSKEY.
  /// Zone signing keys do not have the Secure Entry Point flag set and will be
  /// used to sign all other types of resource record sets.
  /// Possible string values are:
  /// - "keySigning"
  /// - "zoneSigning"
  core.String keyType;
  core.String kind;

  DnsKeySpec();

  DnsKeySpec.fromJson(core.Map _json) {
    if (_json.containsKey('algorithm')) {
      algorithm = _json['algorithm'];
    }
    if (_json.containsKey('keyLength')) {
      keyLength = _json['keyLength'];
    }
    if (_json.containsKey('keyType')) {
      keyType = _json['keyType'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (algorithm != null) {
      _json['algorithm'] = algorithm;
    }
    if (keyLength != null) {
      _json['keyLength'] = keyLength;
    }
    if (keyType != null) {
      _json['keyType'] = keyType;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// The response to a request to enumerate DnsKeys in a ManagedZone.
class DnsKeysListResponse {
  /// The requested resources.
  core.List<DnsKey> dnsKeys;
  ResponseHeader header;

  /// Type of resource.
  core.String kind;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order. To fetch them,
  /// make another list request using this value as your pagination token. In
  /// this way you can retrieve the complete contents of even very large
  /// collections one page at a time. However, if the contents of the collection
  /// change between the first and last paginated list request, the set of all
  /// elements returned will be an inconsistent view of the collection. There is
  /// no way to retrieve a "snapshot" of collections larger than the maximum
  /// page size.
  core.String nextPageToken;

  DnsKeysListResponse();

  DnsKeysListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('dnsKeys')) {
      dnsKeys = (_json['dnsKeys'] as core.List)
          .map<DnsKey>((value) => DnsKey.fromJson(value))
          .toList();
    }
    if (_json.containsKey('header')) {
      header = ResponseHeader.fromJson(_json['header']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (dnsKeys != null) {
      _json['dnsKeys'] = dnsKeys.map((value) => value.toJson()).toList();
    }
    if (header != null) {
      _json['header'] = header.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// A zone is a subtree of the DNS namespace under one administrative
/// responsibility. A ManagedZone is a resource that represents a DNS zone
/// hosted by the Cloud DNS service.
class ManagedZone {
  /// The time that this resource was created on the server. This is in RFC3339
  /// text format. Output only.
  core.String creationTime;

  /// A mutable string of at most 1024 characters associated with this resource
  /// for the user's convenience. Has no effect on the managed zone's function.
  core.String description;

  /// The DNS name of this managed zone, for instance "example.com.".
  core.String dnsName;

  /// DNSSEC configuration.
  ManagedZoneDnsSecConfig dnssecConfig;

  /// The presence for this field indicates that outbound forwarding is enabled
  /// for this zone. The value of this field contains the set of destinations to
  /// forward to.
  ManagedZoneForwardingConfig forwardingConfig;

  /// Unique identifier for the resource; defined by the server (output only)
  core.String id;
  core.String kind;

  /// User labels.
  core.Map<core.String, core.String> labels;

  /// User assigned name for this resource. Must be unique within the project.
  /// The name must be 1-63 characters long, must begin with a letter, end with
  /// a letter or digit, and only contain lowercase letters, digits or dashes.
  core.String name;

  /// Optionally specifies the NameServerSet for this ManagedZone. A
  /// NameServerSet is a set of DNS name servers that all host the same
  /// ManagedZones. Most users will leave this field unset.
  core.String nameServerSet;

  /// Delegate your managed_zone to these virtual name servers; defined by the
  /// server (output only)
  core.List<core.String> nameServers;

  /// The presence of this field indicates that DNS Peering is enabled for this
  /// zone. The value of this field contains the network to peer with.
  ManagedZonePeeringConfig peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud resources
  /// that the zone is visible from.
  ManagedZonePrivateVisibilityConfig privateVisibilityConfig;

  /// The presence of this field indicates that this is a managed reverse lookup
  /// zone and Cloud DNS will resolve reverse lookup queries using automatically
  /// configured records for VPC resources. This only applies to networks listed
  /// under private_visibility_config.
  ManagedZoneReverseLookupConfig reverseLookupConfig;

  /// The zone's visibility: public zones are exposed to the Internet, while
  /// private zones are visible only to Virtual Private Cloud resources.
  /// Possible string values are:
  /// - "public"
  /// - "private"
  core.String visibility;

  ManagedZone();

  ManagedZone.fromJson(core.Map _json) {
    if (_json.containsKey('creationTime')) {
      creationTime = _json['creationTime'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('dnsName')) {
      dnsName = _json['dnsName'];
    }
    if (_json.containsKey('dnssecConfig')) {
      dnssecConfig = ManagedZoneDnsSecConfig.fromJson(_json['dnssecConfig']);
    }
    if (_json.containsKey('forwardingConfig')) {
      forwardingConfig =
          ManagedZoneForwardingConfig.fromJson(_json['forwardingConfig']);
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('nameServerSet')) {
      nameServerSet = _json['nameServerSet'];
    }
    if (_json.containsKey('nameServers')) {
      nameServers = (_json['nameServers'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('peeringConfig')) {
      peeringConfig = ManagedZonePeeringConfig.fromJson(_json['peeringConfig']);
    }
    if (_json.containsKey('privateVisibilityConfig')) {
      privateVisibilityConfig = ManagedZonePrivateVisibilityConfig.fromJson(
          _json['privateVisibilityConfig']);
    }
    if (_json.containsKey('reverseLookupConfig')) {
      reverseLookupConfig =
          ManagedZoneReverseLookupConfig.fromJson(_json['reverseLookupConfig']);
    }
    if (_json.containsKey('visibility')) {
      visibility = _json['visibility'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (creationTime != null) {
      _json['creationTime'] = creationTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (dnsName != null) {
      _json['dnsName'] = dnsName;
    }
    if (dnssecConfig != null) {
      _json['dnssecConfig'] = dnssecConfig.toJson();
    }
    if (forwardingConfig != null) {
      _json['forwardingConfig'] = forwardingConfig.toJson();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (nameServerSet != null) {
      _json['nameServerSet'] = nameServerSet;
    }
    if (nameServers != null) {
      _json['nameServers'] = nameServers;
    }
    if (peeringConfig != null) {
      _json['peeringConfig'] = peeringConfig.toJson();
    }
    if (privateVisibilityConfig != null) {
      _json['privateVisibilityConfig'] = privateVisibilityConfig.toJson();
    }
    if (reverseLookupConfig != null) {
      _json['reverseLookupConfig'] = reverseLookupConfig.toJson();
    }
    if (visibility != null) {
      _json['visibility'] = visibility;
    }
    return _json;
  }
}

class ManagedZoneDnsSecConfig {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone.
  /// Can only be changed while the state is OFF.
  core.List<DnsKeySpec> defaultKeySpecs;
  core.String kind;

  /// Specifies the mechanism for authenticated denial-of-existence responses.
  /// Can only be changed while the state is OFF.
  /// Possible string values are:
  /// - "nsec"
  /// - "nsec3"
  core.String nonExistence;

  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  /// Possible string values are:
  /// - "off" : DNSSEC is disabled; the zone is not signed.
  /// - "on" : DNSSEC is enabled; the zone is signed and fully managed.
  /// - "transfer" : DNSSEC is enabled, but in a "transfer" mode.
  core.String state;

  ManagedZoneDnsSecConfig();

  ManagedZoneDnsSecConfig.fromJson(core.Map _json) {
    if (_json.containsKey('defaultKeySpecs')) {
      defaultKeySpecs = (_json['defaultKeySpecs'] as core.List)
          .map<DnsKeySpec>((value) => DnsKeySpec.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nonExistence')) {
      nonExistence = _json['nonExistence'];
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (defaultKeySpecs != null) {
      _json['defaultKeySpecs'] =
          defaultKeySpecs.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nonExistence != null) {
      _json['nonExistence'] = nonExistence;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

class ManagedZoneForwardingConfig {
  core.String kind;

  /// List of target name servers to forward to. Cloud DNS will select the best
  /// available name server if more than one target is given.
  core.List<ManagedZoneForwardingConfigNameServerTarget> targetNameServers;

  ManagedZoneForwardingConfig();

  ManagedZoneForwardingConfig.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('targetNameServers')) {
      targetNameServers = (_json['targetNameServers'] as core.List)
          .map<ManagedZoneForwardingConfigNameServerTarget>((value) =>
              ManagedZoneForwardingConfigNameServerTarget.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (targetNameServers != null) {
      _json['targetNameServers'] =
          targetNameServers.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class ManagedZoneForwardingConfigNameServerTarget {
  /// Forwarding path for this NameServerTarget. If unset or set to DEFAULT,
  /// Cloud DNS will make forwarding decision based on address ranges, i.e.
  /// RFC1918 addresses go to the VPC, non-RFC1918 addresses go to the Internet.
  /// When set to PRIVATE, Cloud DNS will always send queries through VPC for
  /// this target.
  /// Possible string values are:
  /// - "default" : Cloud DNS will make forwarding decision based on address
  /// ranges, i.e. RFC1918 addresses forward to the target through the VPC and
  /// non-RFC1918 addresses will forward to the target through the Internet
  /// - "private" : Cloud DNS will always forward to this target through the
  /// VPC.
  core.String forwardingPath;

  /// IPv4 address of a target name server.
  core.String ipv4Address;
  core.String kind;

  ManagedZoneForwardingConfigNameServerTarget();

  ManagedZoneForwardingConfigNameServerTarget.fromJson(core.Map _json) {
    if (_json.containsKey('forwardingPath')) {
      forwardingPath = _json['forwardingPath'];
    }
    if (_json.containsKey('ipv4Address')) {
      ipv4Address = _json['ipv4Address'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (forwardingPath != null) {
      _json['forwardingPath'] = forwardingPath;
    }
    if (ipv4Address != null) {
      _json['ipv4Address'] = ipv4Address;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

class ManagedZoneOperationsListResponse {
  ResponseHeader header;
  core.String kind;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order. To fetch them,
  /// make another list request using this value as your page token. In this way
  /// you can retrieve the complete contents of even very large collections one
  /// page at a time. However, if the contents of the collection change between
  /// the first and last paginated list request, the set of all elements
  /// returned will be an inconsistent view of the collection. There is no way
  /// to retrieve a consistent snapshot of a collection larger than the maximum
  /// page size.
  core.String nextPageToken;

  /// The operation resources.
  core.List<Operation> operations;

  ManagedZoneOperationsListResponse();

  ManagedZoneOperationsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('header')) {
      header = ResponseHeader.fromJson(_json['header']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) => Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (header != null) {
      _json['header'] = header.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class ManagedZonePeeringConfig {
  core.String kind;

  /// The network with which to peer.
  ManagedZonePeeringConfigTargetNetwork targetNetwork;

  ManagedZonePeeringConfig();

  ManagedZonePeeringConfig.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('targetNetwork')) {
      targetNetwork = ManagedZonePeeringConfigTargetNetwork.fromJson(
          _json['targetNetwork']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (targetNetwork != null) {
      _json['targetNetwork'] = targetNetwork.toJson();
    }
    return _json;
  }
}

class ManagedZonePeeringConfigTargetNetwork {
  /// The time at which the zone was deactivated, in RFC 3339 date-time format.
  /// An empty string indicates that the peering connection is active. The
  /// producer network can deactivate a zone. The zone is automatically
  /// deactivated if the producer network that the zone targeted is deleted.
  /// Output only.
  core.String deactivateTime;
  core.String kind;

  /// The fully qualified URL of the VPC network to forward queries to. This
  /// should be formatted like
  /// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  core.String networkUrl;

  ManagedZonePeeringConfigTargetNetwork();

  ManagedZonePeeringConfigTargetNetwork.fromJson(core.Map _json) {
    if (_json.containsKey('deactivateTime')) {
      deactivateTime = _json['deactivateTime'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('networkUrl')) {
      networkUrl = _json['networkUrl'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (deactivateTime != null) {
      _json['deactivateTime'] = deactivateTime;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (networkUrl != null) {
      _json['networkUrl'] = networkUrl;
    }
    return _json;
  }
}

class ManagedZonePrivateVisibilityConfig {
  core.String kind;

  /// The list of VPC networks that can see this zone.
  core.List<ManagedZonePrivateVisibilityConfigNetwork> networks;

  ManagedZonePrivateVisibilityConfig();

  ManagedZonePrivateVisibilityConfig.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('networks')) {
      networks = (_json['networks'] as core.List)
          .map<ManagedZonePrivateVisibilityConfigNetwork>((value) =>
              ManagedZonePrivateVisibilityConfigNetwork.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (networks != null) {
      _json['networks'] = networks.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class ManagedZonePrivateVisibilityConfigNetwork {
  core.String kind;

  /// The fully qualified URL of the VPC network to bind to. This should be
  /// formatted like
  /// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  core.String networkUrl;

  ManagedZonePrivateVisibilityConfigNetwork();

  ManagedZonePrivateVisibilityConfigNetwork.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('networkUrl')) {
      networkUrl = _json['networkUrl'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (networkUrl != null) {
      _json['networkUrl'] = networkUrl;
    }
    return _json;
  }
}

class ManagedZoneReverseLookupConfig {
  core.String kind;

  ManagedZoneReverseLookupConfig();

  ManagedZoneReverseLookupConfig.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

class ManagedZonesListResponse {
  ResponseHeader header;

  /// Type of resource.
  core.String kind;

  /// The managed zone resources.
  core.List<ManagedZone> managedZones;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order. To fetch them,
  /// make another list request using this value as your page token. In this way
  /// you can retrieve the complete contents of even very large collections one
  /// page at a time. However, if the contents of the collection change between
  /// the first and last paginated list request, the set of all elements
  /// returned will be an inconsistent view of the collection. There is no way
  /// to retrieve a consistent snapshot of a collection larger than the maximum
  /// page size.
  core.String nextPageToken;

  ManagedZonesListResponse();

  ManagedZonesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('header')) {
      header = ResponseHeader.fromJson(_json['header']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('managedZones')) {
      managedZones = (_json['managedZones'] as core.List)
          .map<ManagedZone>((value) => ManagedZone.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (header != null) {
      _json['header'] = header.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (managedZones != null) {
      _json['managedZones'] =
          managedZones.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// An operation represents a successful mutation performed on a Cloud DNS
/// resource. Operations provide: - An audit log of server resource mutations. -
/// A way to recover/retry API calls in the case where the response is never
/// received by the caller. Use the caller specified client_operation_id.
class Operation {
  /// Only populated if the operation targeted a DnsKey (output only).
  OperationDnsKeyContext dnsKeyContext;

  /// Unique identifier for the resource. This is the client_operation_id if the
  /// client specified it when the mutation was initiated, otherwise, it is
  /// generated by the server. The name must be 1-63 characters long and match
  /// the regular expression [-a-z0-9]? (output only)
  core.String id;
  core.String kind;

  /// The time that this operation was started by the server. This is in RFC3339
  /// text format (output only).
  core.String startTime;

  /// Status of the operation. Can be one of the following: "PENDING" or "DONE"
  /// (output only). A status of "DONE" means that the request to update the
  /// authoritative servers has been sent, but the servers might not be updated
  /// yet.
  /// Possible string values are:
  /// - "pending"
  /// - "done"
  core.String status;

  /// Type of the operation. Operations include insert, update, and delete
  /// (output only).
  core.String type;

  /// User who requested the operation, for example: user@example.com.
  /// cloud-dns-system for operations automatically done by the system. (output
  /// only)
  core.String user;

  /// Only populated if the operation targeted a ManagedZone (output only).
  OperationManagedZoneContext zoneContext;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('dnsKeyContext')) {
      dnsKeyContext = OperationDnsKeyContext.fromJson(_json['dnsKeyContext']);
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
    if (_json.containsKey('status')) {
      status = _json['status'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
    if (_json.containsKey('user')) {
      user = _json['user'];
    }
    if (_json.containsKey('zoneContext')) {
      zoneContext = OperationManagedZoneContext.fromJson(_json['zoneContext']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (dnsKeyContext != null) {
      _json['dnsKeyContext'] = dnsKeyContext.toJson();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (type != null) {
      _json['type'] = type;
    }
    if (user != null) {
      _json['user'] = user;
    }
    if (zoneContext != null) {
      _json['zoneContext'] = zoneContext.toJson();
    }
    return _json;
  }
}

class OperationDnsKeyContext {
  /// The post-operation DnsKey resource.
  DnsKey newValue;

  /// The pre-operation DnsKey resource.
  DnsKey oldValue;

  OperationDnsKeyContext();

  OperationDnsKeyContext.fromJson(core.Map _json) {
    if (_json.containsKey('newValue')) {
      newValue = DnsKey.fromJson(_json['newValue']);
    }
    if (_json.containsKey('oldValue')) {
      oldValue = DnsKey.fromJson(_json['oldValue']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (newValue != null) {
      _json['newValue'] = newValue.toJson();
    }
    if (oldValue != null) {
      _json['oldValue'] = oldValue.toJson();
    }
    return _json;
  }
}

class OperationManagedZoneContext {
  /// The post-operation ManagedZone resource.
  ManagedZone newValue;

  /// The pre-operation ManagedZone resource.
  ManagedZone oldValue;

  OperationManagedZoneContext();

  OperationManagedZoneContext.fromJson(core.Map _json) {
    if (_json.containsKey('newValue')) {
      newValue = ManagedZone.fromJson(_json['newValue']);
    }
    if (_json.containsKey('oldValue')) {
      oldValue = ManagedZone.fromJson(_json['oldValue']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (newValue != null) {
      _json['newValue'] = newValue.toJson();
    }
    if (oldValue != null) {
      _json['oldValue'] = oldValue.toJson();
    }
    return _json;
  }
}

class PoliciesListResponse {
  ResponseHeader header;

  /// Type of resource.
  core.String kind;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order. To fetch them,
  /// make another list request using this value as your page token. In this way
  /// you can retrieve the complete contents of even very large collections one
  /// page at a time. However, if the contents of the collection change between
  /// the first and last paginated list request, the set of all elements
  /// returned will be an inconsistent view of the collection. There is no way
  /// to retrieve a consistent snapshot of a collection larger than the maximum
  /// page size.
  core.String nextPageToken;

  /// The policy resources.
  core.List<Policy> policies;

  PoliciesListResponse();

  PoliciesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('header')) {
      header = ResponseHeader.fromJson(_json['header']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('policies')) {
      policies = (_json['policies'] as core.List)
          .map<Policy>((value) => Policy.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (header != null) {
      _json['header'] = header.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (policies != null) {
      _json['policies'] = policies.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class PoliciesPatchResponse {
  ResponseHeader header;
  Policy policy;

  PoliciesPatchResponse();

  PoliciesPatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey('header')) {
      header = ResponseHeader.fromJson(_json['header']);
    }
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(_json['policy']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (header != null) {
      _json['header'] = header.toJson();
    }
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    return _json;
  }
}

class PoliciesUpdateResponse {
  ResponseHeader header;
  Policy policy;

  PoliciesUpdateResponse();

  PoliciesUpdateResponse.fromJson(core.Map _json) {
    if (_json.containsKey('header')) {
      header = ResponseHeader.fromJson(_json['header']);
    }
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(_json['policy']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (header != null) {
      _json['header'] = header.toJson();
    }
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    return _json;
  }
}

/// A policy is a collection of DNS rules applied to one or more Virtual Private
/// Cloud resources.
class Policy {
  /// Sets an alternative name server for the associated networks. When
  /// specified, all DNS queries are forwarded to a name server that you choose.
  /// Names such as .internal are not available when an alternative name server
  /// is specified.
  PolicyAlternativeNameServerConfig alternativeNameServerConfig;

  /// A mutable string of at most 1024 characters associated with this resource
  /// for the user's convenience. Has no effect on the policy's function.
  core.String description;

  /// Allows networks bound to this policy to receive DNS queries sent by VMs or
  /// applications over VPN connections. When enabled, a virtual IP address will
  /// be allocated from each of the sub-networks that are bound to this policy.
  core.bool enableInboundForwarding;

  /// Controls whether logging is enabled for the networks bound to this policy.
  /// Defaults to no logging if not set.
  core.bool enableLogging;

  /// Unique identifier for the resource; defined by the server (output only).
  core.String id;
  core.String kind;

  /// User assigned name for this policy.
  core.String name;

  /// List of network names specifying networks to which this policy is applied.
  core.List<PolicyNetwork> networks;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('alternativeNameServerConfig')) {
      alternativeNameServerConfig = PolicyAlternativeNameServerConfig.fromJson(
          _json['alternativeNameServerConfig']);
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('enableInboundForwarding')) {
      enableInboundForwarding = _json['enableInboundForwarding'];
    }
    if (_json.containsKey('enableLogging')) {
      enableLogging = _json['enableLogging'];
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('networks')) {
      networks = (_json['networks'] as core.List)
          .map<PolicyNetwork>((value) => PolicyNetwork.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (alternativeNameServerConfig != null) {
      _json['alternativeNameServerConfig'] =
          alternativeNameServerConfig.toJson();
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (enableInboundForwarding != null) {
      _json['enableInboundForwarding'] = enableInboundForwarding;
    }
    if (enableLogging != null) {
      _json['enableLogging'] = enableLogging;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (networks != null) {
      _json['networks'] = networks.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class PolicyAlternativeNameServerConfig {
  core.String kind;

  /// Sets an alternative name server for the associated networks. When
  /// specified, all DNS queries are forwarded to a name server that you choose.
  /// Names such as .internal are not available when an alternative name server
  /// is specified.
  core.List<PolicyAlternativeNameServerConfigTargetNameServer>
      targetNameServers;

  PolicyAlternativeNameServerConfig();

  PolicyAlternativeNameServerConfig.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('targetNameServers')) {
      targetNameServers = (_json['targetNameServers'] as core.List)
          .map<PolicyAlternativeNameServerConfigTargetNameServer>((value) =>
              PolicyAlternativeNameServerConfigTargetNameServer.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (targetNameServers != null) {
      _json['targetNameServers'] =
          targetNameServers.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class PolicyAlternativeNameServerConfigTargetNameServer {
  /// Forwarding path for this TargetNameServer. If unset or set to DEFAULT,
  /// Cloud DNS will make forwarding decision based on address ranges, i.e.
  /// RFC1918 addresses go to the VPC, non-RFC1918 addresses go to the Internet.
  /// When set to PRIVATE, Cloud DNS will always send queries through VPC for
  /// this target.
  /// Possible string values are:
  /// - "default" : Cloud DNS will make forwarding decision based on address
  /// ranges, i.e. RFC1918 addresses forward to the target through the VPC and
  /// non-RFC1918 addresses will forward to the target through the Internet
  /// - "private" : Cloud DNS will always forward to this target through the
  /// VPC.
  core.String forwardingPath;

  /// IPv4 address to forward to.
  core.String ipv4Address;
  core.String kind;

  PolicyAlternativeNameServerConfigTargetNameServer();

  PolicyAlternativeNameServerConfigTargetNameServer.fromJson(core.Map _json) {
    if (_json.containsKey('forwardingPath')) {
      forwardingPath = _json['forwardingPath'];
    }
    if (_json.containsKey('ipv4Address')) {
      ipv4Address = _json['ipv4Address'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (forwardingPath != null) {
      _json['forwardingPath'] = forwardingPath;
    }
    if (ipv4Address != null) {
      _json['ipv4Address'] = ipv4Address;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

class PolicyNetwork {
  core.String kind;

  /// The fully qualified URL of the VPC network to bind to. This should be
  /// formatted like
  /// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  core.String networkUrl;

  PolicyNetwork();

  PolicyNetwork.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('networkUrl')) {
      networkUrl = _json['networkUrl'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (networkUrl != null) {
      _json['networkUrl'] = networkUrl;
    }
    return _json;
  }
}

/// A project resource. The project is a top level container for resources
/// including Cloud DNS ManagedZones. Projects can be created only in the APIs
/// console.
class Project {
  /// User assigned unique identifier for the resource (output only).
  core.String id;
  core.String kind;

  /// Unique numeric identifier for the resource; defined by the server (output
  /// only).
  core.String number;

  /// Quotas assigned to this project (output only).
  Quota quota;

  Project();

  Project.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('number')) {
      number = _json['number'];
    }
    if (_json.containsKey('quota')) {
      quota = Quota.fromJson(_json['quota']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (number != null) {
      _json['number'] = number;
    }
    if (quota != null) {
      _json['quota'] = quota.toJson();
    }
    return _json;
  }
}

/// Limits associated with a Project.
class Quota {
  /// Maximum allowed number of DnsKeys per ManagedZone.
  core.int dnsKeysPerManagedZone;
  core.String kind;

  /// Maximum allowed number of managed zones in the project.
  core.int managedZones;

  /// Maximum allowed number of managed zones which can be attached to a
  /// network.
  core.int managedZonesPerNetwork;

  /// Maximum allowed number of networks to which a privately scoped zone can be
  /// attached.
  core.int networksPerManagedZone;

  /// Maximum allowed number of networks per policy.
  core.int networksPerPolicy;

  /// Maximum allowed number of policies per project.
  core.int policies;

  /// Maximum allowed number of ResourceRecords per ResourceRecordSet.
  core.int resourceRecordsPerRrset;

  /// Maximum allowed number of ResourceRecordSets to add per
  /// ChangesCreateRequest.
  core.int rrsetAdditionsPerChange;

  /// Maximum allowed number of ResourceRecordSets to delete per
  /// ChangesCreateRequest.
  core.int rrsetDeletionsPerChange;

  /// Maximum allowed number of ResourceRecordSets per zone in the project.
  core.int rrsetsPerManagedZone;

  /// Maximum allowed number of target name servers per managed forwarding zone.
  core.int targetNameServersPerManagedZone;

  /// Maximum allowed number of alternative target name servers per policy.
  core.int targetNameServersPerPolicy;

  /// Maximum allowed size for total rrdata in one ChangesCreateRequest in
  /// bytes.
  core.int totalRrdataSizePerChange;

  /// DNSSEC algorithm and key length types that can be used for DnsKeys.
  core.List<DnsKeySpec> whitelistedKeySpecs;

  Quota();

  Quota.fromJson(core.Map _json) {
    if (_json.containsKey('dnsKeysPerManagedZone')) {
      dnsKeysPerManagedZone = _json['dnsKeysPerManagedZone'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('managedZones')) {
      managedZones = _json['managedZones'];
    }
    if (_json.containsKey('managedZonesPerNetwork')) {
      managedZonesPerNetwork = _json['managedZonesPerNetwork'];
    }
    if (_json.containsKey('networksPerManagedZone')) {
      networksPerManagedZone = _json['networksPerManagedZone'];
    }
    if (_json.containsKey('networksPerPolicy')) {
      networksPerPolicy = _json['networksPerPolicy'];
    }
    if (_json.containsKey('policies')) {
      policies = _json['policies'];
    }
    if (_json.containsKey('resourceRecordsPerRrset')) {
      resourceRecordsPerRrset = _json['resourceRecordsPerRrset'];
    }
    if (_json.containsKey('rrsetAdditionsPerChange')) {
      rrsetAdditionsPerChange = _json['rrsetAdditionsPerChange'];
    }
    if (_json.containsKey('rrsetDeletionsPerChange')) {
      rrsetDeletionsPerChange = _json['rrsetDeletionsPerChange'];
    }
    if (_json.containsKey('rrsetsPerManagedZone')) {
      rrsetsPerManagedZone = _json['rrsetsPerManagedZone'];
    }
    if (_json.containsKey('targetNameServersPerManagedZone')) {
      targetNameServersPerManagedZone =
          _json['targetNameServersPerManagedZone'];
    }
    if (_json.containsKey('targetNameServersPerPolicy')) {
      targetNameServersPerPolicy = _json['targetNameServersPerPolicy'];
    }
    if (_json.containsKey('totalRrdataSizePerChange')) {
      totalRrdataSizePerChange = _json['totalRrdataSizePerChange'];
    }
    if (_json.containsKey('whitelistedKeySpecs')) {
      whitelistedKeySpecs = (_json['whitelistedKeySpecs'] as core.List)
          .map<DnsKeySpec>((value) => DnsKeySpec.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (dnsKeysPerManagedZone != null) {
      _json['dnsKeysPerManagedZone'] = dnsKeysPerManagedZone;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (managedZones != null) {
      _json['managedZones'] = managedZones;
    }
    if (managedZonesPerNetwork != null) {
      _json['managedZonesPerNetwork'] = managedZonesPerNetwork;
    }
    if (networksPerManagedZone != null) {
      _json['networksPerManagedZone'] = networksPerManagedZone;
    }
    if (networksPerPolicy != null) {
      _json['networksPerPolicy'] = networksPerPolicy;
    }
    if (policies != null) {
      _json['policies'] = policies;
    }
    if (resourceRecordsPerRrset != null) {
      _json['resourceRecordsPerRrset'] = resourceRecordsPerRrset;
    }
    if (rrsetAdditionsPerChange != null) {
      _json['rrsetAdditionsPerChange'] = rrsetAdditionsPerChange;
    }
    if (rrsetDeletionsPerChange != null) {
      _json['rrsetDeletionsPerChange'] = rrsetDeletionsPerChange;
    }
    if (rrsetsPerManagedZone != null) {
      _json['rrsetsPerManagedZone'] = rrsetsPerManagedZone;
    }
    if (targetNameServersPerManagedZone != null) {
      _json['targetNameServersPerManagedZone'] =
          targetNameServersPerManagedZone;
    }
    if (targetNameServersPerPolicy != null) {
      _json['targetNameServersPerPolicy'] = targetNameServersPerPolicy;
    }
    if (totalRrdataSizePerChange != null) {
      _json['totalRrdataSizePerChange'] = totalRrdataSizePerChange;
    }
    if (whitelistedKeySpecs != null) {
      _json['whitelistedKeySpecs'] =
          whitelistedKeySpecs.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A unit of data that will be returned by the DNS servers.
class ResourceRecordSet {
  core.String kind;

  /// For example, www.example.com.
  core.String name;

  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see
  /// examples.
  core.List<core.String> rrdatas;

  /// As defined in RFC 4034 (section 3.2).
  core.List<core.String> signatureRrdatas;

  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  core.int ttl;

  /// The identifier of a supported record type. See the list of Supported DNS
  /// record types.
  core.String type;

  ResourceRecordSet();

  ResourceRecordSet.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('rrdatas')) {
      rrdatas = (_json['rrdatas'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('signatureRrdatas')) {
      signatureRrdatas =
          (_json['signatureRrdatas'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('ttl')) {
      ttl = _json['ttl'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (rrdatas != null) {
      _json['rrdatas'] = rrdatas;
    }
    if (signatureRrdatas != null) {
      _json['signatureRrdatas'] = signatureRrdatas;
    }
    if (ttl != null) {
      _json['ttl'] = ttl;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

class ResourceRecordSetsListResponse {
  ResponseHeader header;

  /// Type of resource.
  core.String kind;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order. To fetch them,
  /// make another list request using this value as your pagination token. In
  /// this way you can retrieve the complete contents of even very large
  /// collections one page at a time. However, if the contents of the collection
  /// change between the first and last paginated list request, the set of all
  /// elements returned will be an inconsistent view of the collection. There is
  /// no way to retrieve a consistent snapshot of a collection larger than the
  /// maximum page size.
  core.String nextPageToken;

  /// The resource record set resources.
  core.List<ResourceRecordSet> rrsets;

  ResourceRecordSetsListResponse();

  ResourceRecordSetsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('header')) {
      header = ResponseHeader.fromJson(_json['header']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('rrsets')) {
      rrsets = (_json['rrsets'] as core.List)
          .map<ResourceRecordSet>((value) => ResourceRecordSet.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (header != null) {
      _json['header'] = header.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (rrsets != null) {
      _json['rrsets'] = rrsets.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Elements common to every response.
class ResponseHeader {
  /// For mutating operation requests that completed successfully. This is the
  /// client_operation_id if the client specified it, otherwise it is generated
  /// by the server (output only).
  core.String operationId;

  ResponseHeader();

  ResponseHeader.fromJson(core.Map _json) {
    if (_json.containsKey('operationId')) {
      operationId = _json['operationId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (operationId != null) {
      _json['operationId'] = operationId;
    }
    return _json;
  }
}
