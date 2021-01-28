// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
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

/// DoubleClick Bid Manager API - v1.1
///
/// DoubleClick Bid Manager API allows users to manage and create campaigns and
/// reports.
///
/// For more information, see <https://developers.google.com/bid-manager/>
library doubleclickbidmanager.v1_1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// DoubleClick Bid Manager API allows users to manage and create campaigns and
/// reports.
class DoubleClickBidManagerApi {
  /// View and manage your reports in DoubleClick Bid Manager
  static const doubleclickbidmanagerScope =
      'https://www.googleapis.com/auth/doubleclickbidmanager';

  final commons.ApiRequester _requester;

  LineitemsResourceApi get lineitems => LineitemsResourceApi(_requester);
  QueriesResourceApi get queries => QueriesResourceApi(_requester);
  ReportsResourceApi get reports => ReportsResourceApi(_requester);
  SdfResourceApi get sdf => SdfResourceApi(_requester);

  DoubleClickBidManagerApi(http.Client client,
      {core.String rootUrl = 'https://doubleclickbidmanager.googleapis.com/',
      core.String servicePath = 'doubleclickbidmanager/v1.1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class LineitemsResourceApi {
  final commons.ApiRequester _requester;

  LineitemsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves line items in CSV format. YouTube & partners line items are not
  /// supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DownloadLineItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DownloadLineItemsResponse> downloadlineitems(
    DownloadLineItemsRequest request, {
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

    _url = 'lineitems/downloadlineitems';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => DownloadLineItemsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Uploads line items in CSV format. YouTube & partners line items are not
  /// supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UploadLineItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UploadLineItemsResponse> uploadlineitems(
    UploadLineItemsRequest request, {
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

    _url = 'lineitems/uploadlineitems';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => UploadLineItemsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class QueriesResourceApi {
  final commons.ApiRequester _requester;

  QueriesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [asynchronous] - If true, tries to run the query asynchronously. Only
  /// applicable when the frequency is ONE_TIME.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Query].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Query> createquery(
    Query request, {
    core.bool asynchronous,
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
    if (asynchronous != null) {
      _queryParams['asynchronous'] = ['${asynchronous}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'query';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Query.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a stored query as well as the associated stored reports.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Query ID to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future deletequery(
    core.String queryId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (queryId == null) {
      throw core.ArgumentError('Parameter queryId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'query/' + commons.Escaper.ecapeVariable('$queryId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => null,
    );
  }

  /// Retrieves a stored query.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Query ID to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Query].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Query> getquery(
    core.String queryId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (queryId == null) {
      throw core.ArgumentError('Parameter queryId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'query/' + commons.Escaper.ecapeVariable('$queryId');

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
      (data) => Query.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Retrieves stored queries.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Maximum number of results per page. Must be between 1 and
  /// 100. Defaults to 100 if unspecified.
  ///
  /// [pageToken] - Optional pagination token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListQueriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListQueriesResponse> listqueries({
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

    _url = 'queries';

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
      (data) => ListQueriesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Runs a stored query to generate a report.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Query ID to run.
  ///
  /// [asynchronous] - If true, tries to run the query asynchronously.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future runquery(
    RunQueryRequest request,
    core.String queryId, {
    core.bool asynchronous,
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
    if (queryId == null) {
      throw core.ArgumentError('Parameter queryId is required.');
    }
    if (asynchronous != null) {
      _queryParams['asynchronous'] = ['${asynchronous}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _downloadOptions = null;

    _url = 'query/' + commons.Escaper.ecapeVariable('$queryId');

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => null,
    );
  }
}

class ReportsResourceApi {
  final commons.ApiRequester _requester;

  ReportsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves stored reports.
  ///
  /// Request parameters:
  ///
  /// [queryId] - Query ID with which the reports are associated.
  ///
  /// [pageSize] - Maximum number of results per page. Must be between 1 and
  /// 100. Defaults to 100 if unspecified.
  ///
  /// [pageToken] - Optional pagination token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReportsResponse> listreports(
    core.String queryId, {
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

    if (queryId == null) {
      throw core.ArgumentError('Parameter queryId is required.');
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

    _url = 'queries/' + commons.Escaper.ecapeVariable('$queryId') + '/reports';

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
      (data) => ListReportsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class SdfResourceApi {
  final commons.ApiRequester _requester;

  SdfResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves entities in SDF format.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DownloadResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DownloadResponse> download(
    DownloadRequest request, {
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

    _url = 'sdf/download';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => DownloadResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// A channel grouping defines a set of rules that can be used to categorize
/// events in a path report.
class ChannelGrouping {
  /// The name to apply to an event that does not match any of the rules in the
  /// channel grouping.
  core.String fallbackName;

  /// Channel Grouping name.
  core.String name;

  /// Rules within Channel Grouping. There is a limit of 100 rules that can be
  /// set per channel grouping.
  core.List<Rule> rules;

  ChannelGrouping();

  ChannelGrouping.fromJson(core.Map _json) {
    if (_json.containsKey('fallbackName')) {
      fallbackName = _json['fallbackName'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('rules')) {
      rules = (_json['rules'] as core.List)
          .map<Rule>((value) =>
              Rule.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fallbackName != null) {
      _json['fallbackName'] = fallbackName;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (rules != null) {
      _json['rules'] = rules.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// DisjunctiveMatchStatement that OR's all contained filters.
class DisjunctiveMatchStatement {
  /// Filters. There is a limit of 100 filters that can be set per disjunctive
  /// match statement.
  core.List<EventFilter> eventFilters;

  DisjunctiveMatchStatement();

  DisjunctiveMatchStatement.fromJson(core.Map _json) {
    if (_json.containsKey('eventFilters')) {
      eventFilters = (_json['eventFilters'] as core.List)
          .map<EventFilter>((value) => EventFilter.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (eventFilters != null) {
      _json['eventFilters'] =
          eventFilters.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request to fetch stored line items.
class DownloadLineItemsRequest {
  /// File specification (column names, types, order) in which the line items
  /// will be returned. Default to EWF.
  /// Possible string values are:
  /// - "EWF"
  core.String fileSpec;

  /// Ids of the specified filter type used to filter line items to fetch. If
  /// omitted, all the line items will be returned.
  core.List<core.String> filterIds;

  /// Filter type used to filter line items to fetch.
  /// Possible string values are:
  /// - "ADVERTISER_ID"
  /// - "INSERTION_ORDER_ID"
  /// - "LINE_ITEM_ID"
  core.String filterType;

  /// Format in which the line items will be returned. Default to CSV.
  /// Possible string values are:
  /// - "CSV"
  core.String format;

  DownloadLineItemsRequest();

  DownloadLineItemsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('fileSpec')) {
      fileSpec = _json['fileSpec'] as core.String;
    }
    if (_json.containsKey('filterIds')) {
      filterIds = (_json['filterIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('filterType')) {
      filterType = _json['filterType'] as core.String;
    }
    if (_json.containsKey('format')) {
      format = _json['format'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fileSpec != null) {
      _json['fileSpec'] = fileSpec;
    }
    if (filterIds != null) {
      _json['filterIds'] = filterIds;
    }
    if (filterType != null) {
      _json['filterType'] = filterType;
    }
    if (format != null) {
      _json['format'] = format;
    }
    return _json;
  }
}

/// Download line items response.
class DownloadLineItemsResponse {
  /// Retrieved line items in CSV format. For more information about file
  /// formats, see Entity Write File Format.
  core.String lineItems;

  DownloadLineItemsResponse();

  DownloadLineItemsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('lineItems')) {
      lineItems = _json['lineItems'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (lineItems != null) {
      _json['lineItems'] = lineItems;
    }
    return _json;
  }
}

/// Request to fetch stored inventory sources, campaigns, insertion orders, line
/// items, YouTube ad groups and ads.
class DownloadRequest {
  /// File types that will be returned. If INVENTORY_SOURCE is requested, no
  /// other file types may be requested. Acceptable values are: - "AD" -
  /// "AD_GROUP" - "CAMPAIGN" - "INSERTION_ORDER" - "INVENTORY_SOURCE" -
  /// "LINE_ITEM"
  core.List<core.String> fileTypes;

  /// The IDs of the specified filter type. This is used to filter entities to
  /// fetch. At least one ID must be specified.
  core.List<core.String> filterIds;

  /// Filter type used to filter entities to fetch. PARTNER_ID and
  /// INVENTORY_SOURCE_ID may only be used when downloading inventory sources.
  /// Possible string values are:
  /// - "ADVERTISER_ID"
  /// - "INSERTION_ORDER_ID"
  /// - "LINE_ITEM_ID"
  /// - "CAMPAIGN_ID"
  /// - "INVENTORY_SOURCE_ID"
  /// - "PARTNER_ID"
  core.String filterType;

  /// SDF Version (column names, types, order) in which the entities will be
  /// returned. Default to 5.
  core.String version;

  DownloadRequest();

  DownloadRequest.fromJson(core.Map _json) {
    if (_json.containsKey('fileTypes')) {
      fileTypes = (_json['fileTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('filterIds')) {
      filterIds = (_json['filterIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('filterType')) {
      filterType = _json['filterType'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fileTypes != null) {
      _json['fileTypes'] = fileTypes;
    }
    if (filterIds != null) {
      _json['filterIds'] = filterIds;
    }
    if (filterType != null) {
      _json['filterType'] = filterType;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Download response.
class DownloadResponse {
  /// Retrieved ad groups in SDF format.
  core.String adGroups;

  /// Retrieved ads in SDF format.
  core.String ads;

  /// Retrieved campaigns in SDF format.
  core.String campaigns;

  /// Retrieved insertion orders in SDF format.
  core.String insertionOrders;
  core.String inventorySources;

  /// Retrieved line items in SDF format.
  core.String lineItems;

  DownloadResponse();

  DownloadResponse.fromJson(core.Map _json) {
    if (_json.containsKey('adGroups')) {
      adGroups = _json['adGroups'] as core.String;
    }
    if (_json.containsKey('ads')) {
      ads = _json['ads'] as core.String;
    }
    if (_json.containsKey('campaigns')) {
      campaigns = _json['campaigns'] as core.String;
    }
    if (_json.containsKey('insertionOrders')) {
      insertionOrders = _json['insertionOrders'] as core.String;
    }
    if (_json.containsKey('inventorySources')) {
      inventorySources = _json['inventorySources'] as core.String;
    }
    if (_json.containsKey('lineItems')) {
      lineItems = _json['lineItems'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (adGroups != null) {
      _json['adGroups'] = adGroups;
    }
    if (ads != null) {
      _json['ads'] = ads;
    }
    if (campaigns != null) {
      _json['campaigns'] = campaigns;
    }
    if (insertionOrders != null) {
      _json['insertionOrders'] = insertionOrders;
    }
    if (inventorySources != null) {
      _json['inventorySources'] = inventorySources;
    }
    if (lineItems != null) {
      _json['lineItems'] = lineItems;
    }
    return _json;
  }
}

/// Defines the type of filter to be applied to the path, a DV360 event
/// dimension filter.
class EventFilter {
  /// Filter on a dimension.
  PathQueryOptionsFilter dimensionFilter;

  EventFilter();

  EventFilter.fromJson(core.Map _json) {
    if (_json.containsKey('dimensionFilter')) {
      dimensionFilter = PathQueryOptionsFilter.fromJson(
          _json['dimensionFilter'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dimensionFilter != null) {
      _json['dimensionFilter'] = dimensionFilter.toJson();
    }
    return _json;
  }
}

/// Filter used to match traffic data in your report.
class FilterPair {
  /// Filter type.
  /// Possible string values are:
  /// - "FILTER_UNKNOWN"
  /// - "FILTER_DATE"
  /// - "FILTER_DAY_OF_WEEK"
  /// - "FILTER_WEEK"
  /// - "FILTER_MONTH"
  /// - "FILTER_YEAR"
  /// - "FILTER_TIME_OF_DAY"
  /// - "FILTER_CONVERSION_DELAY"
  /// - "FILTER_CREATIVE_ID"
  /// - "FILTER_CREATIVE_SIZE"
  /// - "FILTER_CREATIVE_TYPE"
  /// - "FILTER_EXCHANGE_ID"
  /// - "FILTER_AD_POSITION"
  /// - "FILTER_PUBLIC_INVENTORY"
  /// - "FILTER_INVENTORY_SOURCE"
  /// - "FILTER_CITY"
  /// - "FILTER_REGION"
  /// - "FILTER_DMA"
  /// - "FILTER_COUNTRY"
  /// - "FILTER_SITE_ID"
  /// - "FILTER_CHANNEL_ID"
  /// - "FILTER_PARTNER"
  /// - "FILTER_ADVERTISER"
  /// - "FILTER_INSERTION_ORDER"
  /// - "FILTER_LINE_ITEM"
  /// - "FILTER_PARTNER_CURRENCY"
  /// - "FILTER_ADVERTISER_CURRENCY"
  /// - "FILTER_ADVERTISER_TIMEZONE"
  /// - "FILTER_LINE_ITEM_TYPE"
  /// - "FILTER_USER_LIST"
  /// - "FILTER_USER_LIST_FIRST_PARTY"
  /// - "FILTER_USER_LIST_THIRD_PARTY"
  /// - "FILTER_TARGETED_USER_LIST"
  /// - "FILTER_DATA_PROVIDER"
  /// - "FILTER_ORDER_ID"
  /// - "FILTER_VIDEO_PLAYER_SIZE"
  /// - "FILTER_VIDEO_DURATION_SECONDS"
  /// - "FILTER_KEYWORD"
  /// - "FILTER_PAGE_CATEGORY"
  /// - "FILTER_CAMPAIGN_DAILY_FREQUENCY"
  /// - "FILTER_LINE_ITEM_DAILY_FREQUENCY"
  /// - "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
  /// - "FILTER_OS"
  /// - "FILTER_BROWSER"
  /// - "FILTER_CARRIER"
  /// - "FILTER_SITE_LANGUAGE"
  /// - "FILTER_INVENTORY_FORMAT"
  /// - "FILTER_ZIP_CODE"
  /// - "FILTER_VIDEO_RATING_TIER"
  /// - "FILTER_VIDEO_FORMAT_SUPPORT"
  /// - "FILTER_VIDEO_SKIPPABLE_SUPPORT"
  /// - "FILTER_VIDEO_VPAID_SUPPORT"
  /// - "FILTER_VIDEO_CREATIVE_DURATION"
  /// - "FILTER_PAGE_LAYOUT"
  /// - "FILTER_VIDEO_AD_POSITION_IN_STREAM"
  /// - "FILTER_AGE"
  /// - "FILTER_GENDER"
  /// - "FILTER_QUARTER"
  /// - "FILTER_TRUEVIEW_CONVERSION_TYPE"
  /// - "FILTER_MOBILE_GEO"
  /// - "FILTER_MRAID_SUPPORT"
  /// - "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
  /// - "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
  /// - "FILTER_NIELSEN_COUNTRY_CODE"
  /// - "FILTER_NIELSEN_DEVICE_ID"
  /// - "FILTER_NIELSEN_GENDER"
  /// - "FILTER_NIELSEN_AGE"
  /// - "FILTER_INVENTORY_SOURCE_TYPE"
  /// - "FILTER_CREATIVE_WIDTH"
  /// - "FILTER_CREATIVE_HEIGHT"
  /// - "FILTER_DFP_ORDER_ID"
  /// - "FILTER_TRUEVIEW_AGE"
  /// - "FILTER_TRUEVIEW_GENDER"
  /// - "FILTER_TRUEVIEW_PARENTAL_STATUS"
  /// - "FILTER_TRUEVIEW_REMARKETING_LIST"
  /// - "FILTER_TRUEVIEW_INTEREST"
  /// - "FILTER_TRUEVIEW_AD_GROUP_ID"
  /// - "FILTER_TRUEVIEW_AD_GROUP_AD_ID"
  /// - "FILTER_TRUEVIEW_IAR_LANGUAGE"
  /// - "FILTER_TRUEVIEW_IAR_GENDER"
  /// - "FILTER_TRUEVIEW_IAR_AGE"
  /// - "FILTER_TRUEVIEW_IAR_CATEGORY"
  /// - "FILTER_TRUEVIEW_IAR_COUNTRY"
  /// - "FILTER_TRUEVIEW_IAR_CITY"
  /// - "FILTER_TRUEVIEW_IAR_REGION"
  /// - "FILTER_TRUEVIEW_IAR_ZIPCODE"
  /// - "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"
  /// - "FILTER_TRUEVIEW_IAR_INTEREST"
  /// - "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"
  /// - "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"
  /// - "FILTER_TRUEVIEW_CUSTOM_AFFINITY"
  /// - "FILTER_TRUEVIEW_CATEGORY"
  /// - "FILTER_TRUEVIEW_KEYWORD"
  /// - "FILTER_TRUEVIEW_PLACEMENT"
  /// - "FILTER_TRUEVIEW_URL"
  /// - "FILTER_TRUEVIEW_COUNTRY"
  /// - "FILTER_TRUEVIEW_REGION"
  /// - "FILTER_TRUEVIEW_CITY"
  /// - "FILTER_TRUEVIEW_DMA"
  /// - "FILTER_TRUEVIEW_ZIPCODE"
  /// - "FILTER_NOT_SUPPORTED"
  /// - "FILTER_MEDIA_PLAN"
  /// - "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"
  /// - "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"
  /// - "FILTER_SKIPPABLE_SUPPORT"
  /// - "FILTER_COMPANION_CREATIVE_ID"
  /// - "FILTER_BUDGET_SEGMENT_DESCRIPTION"
  /// - "FILTER_FLOODLIGHT_ACTIVITY_ID"
  /// - "FILTER_DEVICE_MODEL"
  /// - "FILTER_DEVICE_MAKE"
  /// - "FILTER_DEVICE_TYPE"
  /// - "FILTER_CREATIVE_ATTRIBUTE"
  /// - "FILTER_INVENTORY_COMMITMENT_TYPE"
  /// - "FILTER_INVENTORY_RATE_TYPE"
  /// - "FILTER_INVENTORY_DELIVERY_METHOD"
  /// - "FILTER_INVENTORY_SOURCE_EXTERNAL_ID"
  /// - "FILTER_AUTHORIZED_SELLER_STATE"
  /// - "FILTER_VIDEO_DURATION_SECONDS_RANGE"
  /// - "FILTER_PARTNER_NAME"
  /// - "FILTER_PARTNER_STATUS"
  /// - "FILTER_ADVERTISER_NAME"
  /// - "FILTER_ADVERTISER_INTEGRATION_CODE"
  /// - "FILTER_ADVERTISER_INTEGRATION_STATUS"
  /// - "FILTER_CARRIER_NAME"
  /// - "FILTER_CHANNEL_NAME"
  /// - "FILTER_CITY_NAME"
  /// - "FILTER_COMPANION_CREATIVE_NAME"
  /// - "FILTER_USER_LIST_FIRST_PARTY_NAME"
  /// - "FILTER_USER_LIST_THIRD_PARTY_NAME"
  /// - "FILTER_NIELSEN_RESTATEMENT_DATE"
  /// - "FILTER_NIELSEN_DATE_RANGE"
  /// - "FILTER_INSERTION_ORDER_NAME"
  /// - "FILTER_REGION_NAME"
  /// - "FILTER_DMA_NAME"
  /// - "FILTER_TRUEVIEW_IAR_REGION_NAME"
  /// - "FILTER_TRUEVIEW_DMA_NAME"
  /// - "FILTER_TRUEVIEW_REGION_NAME"
  /// - "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID"
  /// - "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME"
  /// - "FILTER_AD_TYPE"
  /// - "FILTER_ALGORITHM"
  /// - "FILTER_ALGORITHM_ID"
  /// - "FILTER_AMP_PAGE_REQUEST"
  /// - "FILTER_ANONYMOUS_INVENTORY_MODELING"
  /// - "FILTER_APP_URL"
  /// - "FILTER_APP_URL_EXCLUDED"
  /// - "FILTER_ATTRIBUTED_USERLIST"
  /// - "FILTER_ATTRIBUTED_USERLIST_COST"
  /// - "FILTER_ATTRIBUTED_USERLIST_TYPE"
  /// - "FILTER_ATTRIBUTION_MODEL"
  /// - "FILTER_AUDIENCE_LIST"
  /// - "FILTER_AUDIENCE_LIST_COST"
  /// - "FILTER_AUDIENCE_LIST_TYPE"
  /// - "FILTER_AUDIENCE_NAME"
  /// - "FILTER_AUDIENCE_TYPE"
  /// - "FILTER_BILLABLE_OUTCOME"
  /// - "FILTER_BRAND_LIFT_TYPE"
  /// - "FILTER_CHANNEL_TYPE"
  /// - "FILTER_CM_PLACEMENT_ID"
  /// - "FILTER_CONVERSION_SOURCE"
  /// - "FILTER_CONVERSION_SOURCE_ID"
  /// - "FILTER_COUNTRY_ID"
  /// - "FILTER_CREATIVE"
  /// - "FILTER_CREATIVE_ASSET"
  /// - "FILTER_CREATIVE_INTEGRATION_CODE"
  /// - "FILTER_CREATIVE_RENDERED_IN_AMP"
  /// - "FILTER_CREATIVE_SOURCE"
  /// - "FILTER_CREATIVE_STATUS"
  /// - "FILTER_DATA_PROVIDER_NAME"
  /// - "FILTER_DETAILED_DEMOGRAPHICS"
  /// - "FILTER_DETAILED_DEMOGRAPHICS_ID"
  /// - "FILTER_DEVICE"
  /// - "FILTER_GAM_INSERTION_ORDER"
  /// - "FILTER_GAM_LINE_ITEM"
  /// - "FILTER_GAM_LINE_ITEM_ID"
  /// - "FILTER_DIGITAL_CONTENT_LABEL"
  /// - "FILTER_DOMAIN"
  /// - "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST"
  /// - "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST"
  /// - "FILTER_EXCHANGE"
  /// - "FILTER_EXCHANGE_CODE"
  /// - "FILTER_EXTENSION"
  /// - "FILTER_EXTENSION_STATUS"
  /// - "FILTER_EXTENSION_TYPE"
  /// - "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST"
  /// - "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE"
  /// - "FILTER_FLOODLIGHT_ACTIVITY"
  /// - "FILTER_FORMAT"
  /// - "FILTER_GMAIL_AGE"
  /// - "FILTER_GMAIL_CITY"
  /// - "FILTER_GMAIL_COUNTRY"
  /// - "FILTER_GMAIL_COUNTRY_NAME"
  /// - "FILTER_GMAIL_DEVICE_TYPE"
  /// - "FILTER_GMAIL_DEVICE_TYPE_NAME"
  /// - "FILTER_GMAIL_GENDER"
  /// - "FILTER_GMAIL_REGION"
  /// - "FILTER_GMAIL_REMARKETING_LIST"
  /// - "FILTER_HOUSEHOLD_INCOME"
  /// - "FILTER_IMPRESSION_COUNTING_METHOD"
  /// - "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER"
  /// - "FILTER_INSERTION_ORDER_INTEGRATION_CODE"
  /// - "FILTER_INSERTION_ORDER_STATUS"
  /// - "FILTER_INTEREST"
  /// - "FILTER_INVENTORY_SOURCE_GROUP"
  /// - "FILTER_INVENTORY_SOURCE_GROUP_ID"
  /// - "FILTER_INVENTORY_SOURCE_ID"
  /// - "FILTER_INVENTORY_SOURCE_NAME"
  /// - "FILTER_LIFE_EVENT"
  /// - "FILTER_LIFE_EVENTS"
  /// - "FILTER_LINE_ITEM_INTEGRATION_CODE"
  /// - "FILTER_LINE_ITEM_NAME"
  /// - "FILTER_LINE_ITEM_STATUS"
  /// - "FILTER_MATCH_RATIO"
  /// - "FILTER_MEASUREMENT_SOURCE"
  /// - "FILTER_MEDIA_PLAN_NAME"
  /// - "FILTER_PARENTAL_STATUS"
  /// - "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS"
  /// - "FILTER_PLATFORM"
  /// - "FILTER_PLAYBACK_METHOD"
  /// - "FILTER_POSITION_IN_CONTENT"
  /// - "FILTER_PUBLISHER_PROPERTY"
  /// - "FILTER_PUBLISHER_PROPERTY_ID"
  /// - "FILTER_PUBLISHER_PROPERTY_SECTION"
  /// - "FILTER_PUBLISHER_PROPERTY_SECTION_ID"
  /// - "FILTER_REFUND_REASON"
  /// - "FILTER_REMARKETING_LIST"
  /// - "FILTER_REWARDED"
  /// - "FILTER_SENSITIVE_CATEGORY"
  /// - "FILTER_SERVED_PIXEL_DENSITY"
  /// - "FILTER_TARGETED_DATA_PROVIDERS"
  /// - "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST"
  /// - "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE"
  /// - "FILTER_TRUEVIEW_AD"
  /// - "FILTER_TRUEVIEW_AD_GROUP"
  /// - "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS"
  /// - "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID"
  /// - "FILTER_TRUEVIEW_HOUSEHOLD_INCOME"
  /// - "FILTER_TRUEVIEW_IAR_COUNTRY_NAME"
  /// - "FILTER_TRUEVIEW_REMARKETING_LIST_NAME"
  /// - "FILTER_VARIANT_ID"
  /// - "FILTER_VARIANT_NAME"
  /// - "FILTER_VARIANT_VERSION"
  /// - "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE"
  /// - "FILTER_VERIFICATION_VIDEO_POSITION"
  /// - "FILTER_VIDEO_COMPANION_CREATIVE_SIZE"
  /// - "FILTER_VIDEO_CONTINUOUS_PLAY"
  /// - "FILTER_VIDEO_DURATION"
  /// - "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST"
  /// - "FILTER_YOUTUBE_AD_VIDEO"
  /// - "FILTER_YOUTUBE_AD_VIDEO_ID"
  /// - "FILTER_YOUTUBE_CHANNEL"
  /// - "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER"
  /// - "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER"
  /// - "FILTER_YOUTUBE_VIDEO"
  /// - "FILTER_ZIP_POSTAL_CODE"
  /// - "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS"
  /// - "FILTER_TRUEVIEW_PLACEMENT_ID"
  /// - "FILTER_PATH_PATTERN_ID"
  /// - "FILTER_PATH_EVENT_INDEX"
  /// - "FILTER_EVENT_TYPE"
  /// - "FILTER_CHANNEL_GROUPING"
  core.String type;

  /// Filter value.
  core.String value;

  FilterPair();

  FilterPair.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// List queries response.
class ListQueriesResponse {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "doubleclickbidmanager#listQueriesResponse".
  core.String kind;

  /// Next page's pagination token if one exists.
  core.String nextPageToken;

  /// Retrieved queries.
  core.List<Query> queries;

  ListQueriesResponse();

  ListQueriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('queries')) {
      queries = (_json['queries'] as core.List)
          .map<Query>((value) =>
              Query.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (queries != null) {
      _json['queries'] = queries.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// List reports response.
class ListReportsResponse {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "doubleclickbidmanager#listReportsResponse".
  core.String kind;

  /// Next page's pagination token if one exists.
  core.String nextPageToken;

  /// Retrieved reports.
  core.List<Report> reports;

  ListReportsResponse();

  ListReportsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('reports')) {
      reports = (_json['reports'] as core.List)
          .map<Report>((value) =>
              Report.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (reports != null) {
      _json['reports'] = reports.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Additional query options.
class Options {
  /// Set to true and filter your report by `FILTER_INSERTION_ORDER` or
  /// `FILTER_LINE_ITEM` to include data for audience lists specifically
  /// targeted by those items.
  core.bool includeOnlyTargetedUserLists;

  /// Options that contain Path Filters and Custom Channel Groupings.
  PathQueryOptions pathQueryOptions;

  Options();

  Options.fromJson(core.Map _json) {
    if (_json.containsKey('includeOnlyTargetedUserLists')) {
      includeOnlyTargetedUserLists =
          _json['includeOnlyTargetedUserLists'] as core.bool;
    }
    if (_json.containsKey('pathQueryOptions')) {
      pathQueryOptions = PathQueryOptions.fromJson(
          _json['pathQueryOptions'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (includeOnlyTargetedUserLists != null) {
      _json['includeOnlyTargetedUserLists'] = includeOnlyTargetedUserLists;
    }
    if (pathQueryOptions != null) {
      _json['pathQueryOptions'] = pathQueryOptions.toJson();
    }
    return _json;
  }
}

/// Parameters of a query or report.
class Parameters {
  /// Filters used to match traffic data in your report.
  core.List<FilterPair> filters;

  /// Data is grouped by the filters listed in this field.
  core.List<core.String> groupBys;

  /// Deprecated. This field is no longer in use.
  core.bool includeInviteData;

  /// Metrics to include as columns in your report.
  core.List<core.String> metrics;

  /// Additional query options.
  Options options;

  /// Report type.
  /// Possible string values are:
  /// - "TYPE_GENERAL"
  /// - "TYPE_AUDIENCE_PERFORMANCE"
  /// - "TYPE_INVENTORY_AVAILABILITY"
  /// - "TYPE_KEYWORD"
  /// - "TYPE_PIXEL_LOAD"
  /// - "TYPE_AUDIENCE_COMPOSITION"
  /// - "TYPE_CROSS_PARTNER"
  /// - "TYPE_PAGE_CATEGORY"
  /// - "TYPE_THIRD_PARTY_DATA_PROVIDER"
  /// - "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER"
  /// - "TYPE_CLIENT_SAFE"
  /// - "TYPE_ORDER_ID"
  /// - "TYPE_FEE"
  /// - "TYPE_CROSS_FEE"
  /// - "TYPE_ACTIVE_GRP"
  /// - "TYPE_YOUTUBE_VERTICAL"
  /// - "TYPE_COMSCORE_VCE"
  /// - "TYPE_TRUEVIEW"
  /// - "TYPE_NIELSEN_AUDIENCE_PROFILE"
  /// - "TYPE_NIELSEN_DAILY_REACH_BUILD"
  /// - "TYPE_NIELSEN_SITE"
  /// - "TYPE_REACH_AND_FREQUENCY"
  /// - "TYPE_ESTIMATED_CONVERSION"
  /// - "TYPE_VERIFICATION"
  /// - "TYPE_TRUEVIEW_IAR"
  /// - "TYPE_NIELSEN_ONLINE_GLOBAL_MARKET"
  /// - "TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE"
  /// - "TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD"
  /// - "TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET"
  /// - "TYPE_NOT_SUPPORTED"
  /// - "TYPE_REACH_AUDIENCE"
  /// - "TYPE_LINEAR_TV_SEARCH_LIFT"
  /// - "TYPE_PATH"
  /// - "TYPE_PATH_ATTRIBUTION"
  core.String type;

  Parameters();

  Parameters.fromJson(core.Map _json) {
    if (_json.containsKey('filters')) {
      filters = (_json['filters'] as core.List)
          .map<FilterPair>((value) =>
              FilterPair.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('groupBys')) {
      groupBys = (_json['groupBys'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('includeInviteData')) {
      includeInviteData = _json['includeInviteData'] as core.bool;
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('options')) {
      options = Options.fromJson(
          _json['options'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (filters != null) {
      _json['filters'] = filters.map((value) => value.toJson()).toList();
    }
    if (groupBys != null) {
      _json['groupBys'] = groupBys;
    }
    if (includeInviteData != null) {
      _json['includeInviteData'] = includeInviteData;
    }
    if (metrics != null) {
      _json['metrics'] = metrics;
    }
    if (options != null) {
      _json['options'] = options.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Path filters specify which paths to include in a report. A path is the
/// result of combining DV360 events based on User ID to create a workflow of
/// users' actions. When a path filter is set, the resulting report will only
/// include paths that match the specified event at the specified position. All
/// other paths will be excluded.
class PathFilter {
  /// Filter on an event to be applied to some part of the path.
  core.List<EventFilter> eventFilters;

  /// Indicates the position of the path the filter should match to (first,
  /// last, or any event in path).
  /// Possible string values are:
  /// - "ANY"
  /// - "FIRST"
  /// - "LAST"
  core.String pathMatchPosition;

  PathFilter();

  PathFilter.fromJson(core.Map _json) {
    if (_json.containsKey('eventFilters')) {
      eventFilters = (_json['eventFilters'] as core.List)
          .map<EventFilter>((value) => EventFilter.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('pathMatchPosition')) {
      pathMatchPosition = _json['pathMatchPosition'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (eventFilters != null) {
      _json['eventFilters'] =
          eventFilters.map((value) => value.toJson()).toList();
    }
    if (pathMatchPosition != null) {
      _json['pathMatchPosition'] = pathMatchPosition;
    }
    return _json;
  }
}

/// Path Query Options for Report Options.
class PathQueryOptions {
  /// Custom Channel Groupings.
  ChannelGrouping channelGrouping;

  /// Path Filters. There is a limit of 100 path filters that can be set per
  /// report.
  core.List<PathFilter> pathFilters;

  PathQueryOptions();

  PathQueryOptions.fromJson(core.Map _json) {
    if (_json.containsKey('channelGrouping')) {
      channelGrouping = ChannelGrouping.fromJson(
          _json['channelGrouping'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pathFilters')) {
      pathFilters = (_json['pathFilters'] as core.List)
          .map<PathFilter>((value) =>
              PathFilter.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channelGrouping != null) {
      _json['channelGrouping'] = channelGrouping.toJson();
    }
    if (pathFilters != null) {
      _json['pathFilters'] =
          pathFilters.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Dimension Filter on path events.
class PathQueryOptionsFilter {
  /// Dimension the filter is applied to.
  /// Possible string values are:
  /// - "FILTER_UNKNOWN"
  /// - "FILTER_DATE"
  /// - "FILTER_DAY_OF_WEEK"
  /// - "FILTER_WEEK"
  /// - "FILTER_MONTH"
  /// - "FILTER_YEAR"
  /// - "FILTER_TIME_OF_DAY"
  /// - "FILTER_CONVERSION_DELAY"
  /// - "FILTER_CREATIVE_ID"
  /// - "FILTER_CREATIVE_SIZE"
  /// - "FILTER_CREATIVE_TYPE"
  /// - "FILTER_EXCHANGE_ID"
  /// - "FILTER_AD_POSITION"
  /// - "FILTER_PUBLIC_INVENTORY"
  /// - "FILTER_INVENTORY_SOURCE"
  /// - "FILTER_CITY"
  /// - "FILTER_REGION"
  /// - "FILTER_DMA"
  /// - "FILTER_COUNTRY"
  /// - "FILTER_SITE_ID"
  /// - "FILTER_CHANNEL_ID"
  /// - "FILTER_PARTNER"
  /// - "FILTER_ADVERTISER"
  /// - "FILTER_INSERTION_ORDER"
  /// - "FILTER_LINE_ITEM"
  /// - "FILTER_PARTNER_CURRENCY"
  /// - "FILTER_ADVERTISER_CURRENCY"
  /// - "FILTER_ADVERTISER_TIMEZONE"
  /// - "FILTER_LINE_ITEM_TYPE"
  /// - "FILTER_USER_LIST"
  /// - "FILTER_USER_LIST_FIRST_PARTY"
  /// - "FILTER_USER_LIST_THIRD_PARTY"
  /// - "FILTER_TARGETED_USER_LIST"
  /// - "FILTER_DATA_PROVIDER"
  /// - "FILTER_ORDER_ID"
  /// - "FILTER_VIDEO_PLAYER_SIZE"
  /// - "FILTER_VIDEO_DURATION_SECONDS"
  /// - "FILTER_KEYWORD"
  /// - "FILTER_PAGE_CATEGORY"
  /// - "FILTER_CAMPAIGN_DAILY_FREQUENCY"
  /// - "FILTER_LINE_ITEM_DAILY_FREQUENCY"
  /// - "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"
  /// - "FILTER_OS"
  /// - "FILTER_BROWSER"
  /// - "FILTER_CARRIER"
  /// - "FILTER_SITE_LANGUAGE"
  /// - "FILTER_INVENTORY_FORMAT"
  /// - "FILTER_ZIP_CODE"
  /// - "FILTER_VIDEO_RATING_TIER"
  /// - "FILTER_VIDEO_FORMAT_SUPPORT"
  /// - "FILTER_VIDEO_SKIPPABLE_SUPPORT"
  /// - "FILTER_VIDEO_VPAID_SUPPORT"
  /// - "FILTER_VIDEO_CREATIVE_DURATION"
  /// - "FILTER_PAGE_LAYOUT"
  /// - "FILTER_VIDEO_AD_POSITION_IN_STREAM"
  /// - "FILTER_AGE"
  /// - "FILTER_GENDER"
  /// - "FILTER_QUARTER"
  /// - "FILTER_TRUEVIEW_CONVERSION_TYPE"
  /// - "FILTER_MOBILE_GEO"
  /// - "FILTER_MRAID_SUPPORT"
  /// - "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"
  /// - "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"
  /// - "FILTER_NIELSEN_COUNTRY_CODE"
  /// - "FILTER_NIELSEN_DEVICE_ID"
  /// - "FILTER_NIELSEN_GENDER"
  /// - "FILTER_NIELSEN_AGE"
  /// - "FILTER_INVENTORY_SOURCE_TYPE"
  /// - "FILTER_CREATIVE_WIDTH"
  /// - "FILTER_CREATIVE_HEIGHT"
  /// - "FILTER_DFP_ORDER_ID"
  /// - "FILTER_TRUEVIEW_AGE"
  /// - "FILTER_TRUEVIEW_GENDER"
  /// - "FILTER_TRUEVIEW_PARENTAL_STATUS"
  /// - "FILTER_TRUEVIEW_REMARKETING_LIST"
  /// - "FILTER_TRUEVIEW_INTEREST"
  /// - "FILTER_TRUEVIEW_AD_GROUP_ID"
  /// - "FILTER_TRUEVIEW_AD_GROUP_AD_ID"
  /// - "FILTER_TRUEVIEW_IAR_LANGUAGE"
  /// - "FILTER_TRUEVIEW_IAR_GENDER"
  /// - "FILTER_TRUEVIEW_IAR_AGE"
  /// - "FILTER_TRUEVIEW_IAR_CATEGORY"
  /// - "FILTER_TRUEVIEW_IAR_COUNTRY"
  /// - "FILTER_TRUEVIEW_IAR_CITY"
  /// - "FILTER_TRUEVIEW_IAR_REGION"
  /// - "FILTER_TRUEVIEW_IAR_ZIPCODE"
  /// - "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"
  /// - "FILTER_TRUEVIEW_IAR_INTEREST"
  /// - "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"
  /// - "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"
  /// - "FILTER_TRUEVIEW_CUSTOM_AFFINITY"
  /// - "FILTER_TRUEVIEW_CATEGORY"
  /// - "FILTER_TRUEVIEW_KEYWORD"
  /// - "FILTER_TRUEVIEW_PLACEMENT"
  /// - "FILTER_TRUEVIEW_URL"
  /// - "FILTER_TRUEVIEW_COUNTRY"
  /// - "FILTER_TRUEVIEW_REGION"
  /// - "FILTER_TRUEVIEW_CITY"
  /// - "FILTER_TRUEVIEW_DMA"
  /// - "FILTER_TRUEVIEW_ZIPCODE"
  /// - "FILTER_NOT_SUPPORTED"
  /// - "FILTER_MEDIA_PLAN"
  /// - "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"
  /// - "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"
  /// - "FILTER_SKIPPABLE_SUPPORT"
  /// - "FILTER_COMPANION_CREATIVE_ID"
  /// - "FILTER_BUDGET_SEGMENT_DESCRIPTION"
  /// - "FILTER_FLOODLIGHT_ACTIVITY_ID"
  /// - "FILTER_DEVICE_MODEL"
  /// - "FILTER_DEVICE_MAKE"
  /// - "FILTER_DEVICE_TYPE"
  /// - "FILTER_CREATIVE_ATTRIBUTE"
  /// - "FILTER_INVENTORY_COMMITMENT_TYPE"
  /// - "FILTER_INVENTORY_RATE_TYPE"
  /// - "FILTER_INVENTORY_DELIVERY_METHOD"
  /// - "FILTER_INVENTORY_SOURCE_EXTERNAL_ID"
  /// - "FILTER_AUTHORIZED_SELLER_STATE"
  /// - "FILTER_VIDEO_DURATION_SECONDS_RANGE"
  /// - "FILTER_PARTNER_NAME"
  /// - "FILTER_PARTNER_STATUS"
  /// - "FILTER_ADVERTISER_NAME"
  /// - "FILTER_ADVERTISER_INTEGRATION_CODE"
  /// - "FILTER_ADVERTISER_INTEGRATION_STATUS"
  /// - "FILTER_CARRIER_NAME"
  /// - "FILTER_CHANNEL_NAME"
  /// - "FILTER_CITY_NAME"
  /// - "FILTER_COMPANION_CREATIVE_NAME"
  /// - "FILTER_USER_LIST_FIRST_PARTY_NAME"
  /// - "FILTER_USER_LIST_THIRD_PARTY_NAME"
  /// - "FILTER_NIELSEN_RESTATEMENT_DATE"
  /// - "FILTER_NIELSEN_DATE_RANGE"
  /// - "FILTER_INSERTION_ORDER_NAME"
  /// - "FILTER_REGION_NAME"
  /// - "FILTER_DMA_NAME"
  /// - "FILTER_TRUEVIEW_IAR_REGION_NAME"
  /// - "FILTER_TRUEVIEW_DMA_NAME"
  /// - "FILTER_TRUEVIEW_REGION_NAME"
  /// - "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID"
  /// - "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME"
  /// - "FILTER_AD_TYPE"
  /// - "FILTER_ALGORITHM"
  /// - "FILTER_ALGORITHM_ID"
  /// - "FILTER_AMP_PAGE_REQUEST"
  /// - "FILTER_ANONYMOUS_INVENTORY_MODELING"
  /// - "FILTER_APP_URL"
  /// - "FILTER_APP_URL_EXCLUDED"
  /// - "FILTER_ATTRIBUTED_USERLIST"
  /// - "FILTER_ATTRIBUTED_USERLIST_COST"
  /// - "FILTER_ATTRIBUTED_USERLIST_TYPE"
  /// - "FILTER_ATTRIBUTION_MODEL"
  /// - "FILTER_AUDIENCE_LIST"
  /// - "FILTER_AUDIENCE_LIST_COST"
  /// - "FILTER_AUDIENCE_LIST_TYPE"
  /// - "FILTER_AUDIENCE_NAME"
  /// - "FILTER_AUDIENCE_TYPE"
  /// - "FILTER_BILLABLE_OUTCOME"
  /// - "FILTER_BRAND_LIFT_TYPE"
  /// - "FILTER_CHANNEL_TYPE"
  /// - "FILTER_CM_PLACEMENT_ID"
  /// - "FILTER_CONVERSION_SOURCE"
  /// - "FILTER_CONVERSION_SOURCE_ID"
  /// - "FILTER_COUNTRY_ID"
  /// - "FILTER_CREATIVE"
  /// - "FILTER_CREATIVE_ASSET"
  /// - "FILTER_CREATIVE_INTEGRATION_CODE"
  /// - "FILTER_CREATIVE_RENDERED_IN_AMP"
  /// - "FILTER_CREATIVE_SOURCE"
  /// - "FILTER_CREATIVE_STATUS"
  /// - "FILTER_DATA_PROVIDER_NAME"
  /// - "FILTER_DETAILED_DEMOGRAPHICS"
  /// - "FILTER_DETAILED_DEMOGRAPHICS_ID"
  /// - "FILTER_DEVICE"
  /// - "FILTER_GAM_INSERTION_ORDER"
  /// - "FILTER_GAM_LINE_ITEM"
  /// - "FILTER_GAM_LINE_ITEM_ID"
  /// - "FILTER_DIGITAL_CONTENT_LABEL"
  /// - "FILTER_DOMAIN"
  /// - "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST"
  /// - "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST"
  /// - "FILTER_EXCHANGE"
  /// - "FILTER_EXCHANGE_CODE"
  /// - "FILTER_EXTENSION"
  /// - "FILTER_EXTENSION_STATUS"
  /// - "FILTER_EXTENSION_TYPE"
  /// - "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST"
  /// - "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE"
  /// - "FILTER_FLOODLIGHT_ACTIVITY"
  /// - "FILTER_FORMAT"
  /// - "FILTER_GMAIL_AGE"
  /// - "FILTER_GMAIL_CITY"
  /// - "FILTER_GMAIL_COUNTRY"
  /// - "FILTER_GMAIL_COUNTRY_NAME"
  /// - "FILTER_GMAIL_DEVICE_TYPE"
  /// - "FILTER_GMAIL_DEVICE_TYPE_NAME"
  /// - "FILTER_GMAIL_GENDER"
  /// - "FILTER_GMAIL_REGION"
  /// - "FILTER_GMAIL_REMARKETING_LIST"
  /// - "FILTER_HOUSEHOLD_INCOME"
  /// - "FILTER_IMPRESSION_COUNTING_METHOD"
  /// - "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER"
  /// - "FILTER_INSERTION_ORDER_INTEGRATION_CODE"
  /// - "FILTER_INSERTION_ORDER_STATUS"
  /// - "FILTER_INTEREST"
  /// - "FILTER_INVENTORY_SOURCE_GROUP"
  /// - "FILTER_INVENTORY_SOURCE_GROUP_ID"
  /// - "FILTER_INVENTORY_SOURCE_ID"
  /// - "FILTER_INVENTORY_SOURCE_NAME"
  /// - "FILTER_LIFE_EVENT"
  /// - "FILTER_LIFE_EVENTS"
  /// - "FILTER_LINE_ITEM_INTEGRATION_CODE"
  /// - "FILTER_LINE_ITEM_NAME"
  /// - "FILTER_LINE_ITEM_STATUS"
  /// - "FILTER_MATCH_RATIO"
  /// - "FILTER_MEASUREMENT_SOURCE"
  /// - "FILTER_MEDIA_PLAN_NAME"
  /// - "FILTER_PARENTAL_STATUS"
  /// - "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS"
  /// - "FILTER_PLATFORM"
  /// - "FILTER_PLAYBACK_METHOD"
  /// - "FILTER_POSITION_IN_CONTENT"
  /// - "FILTER_PUBLISHER_PROPERTY"
  /// - "FILTER_PUBLISHER_PROPERTY_ID"
  /// - "FILTER_PUBLISHER_PROPERTY_SECTION"
  /// - "FILTER_PUBLISHER_PROPERTY_SECTION_ID"
  /// - "FILTER_REFUND_REASON"
  /// - "FILTER_REMARKETING_LIST"
  /// - "FILTER_REWARDED"
  /// - "FILTER_SENSITIVE_CATEGORY"
  /// - "FILTER_SERVED_PIXEL_DENSITY"
  /// - "FILTER_TARGETED_DATA_PROVIDERS"
  /// - "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST"
  /// - "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE"
  /// - "FILTER_TRUEVIEW_AD"
  /// - "FILTER_TRUEVIEW_AD_GROUP"
  /// - "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS"
  /// - "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID"
  /// - "FILTER_TRUEVIEW_HOUSEHOLD_INCOME"
  /// - "FILTER_TRUEVIEW_IAR_COUNTRY_NAME"
  /// - "FILTER_TRUEVIEW_REMARKETING_LIST_NAME"
  /// - "FILTER_VARIANT_ID"
  /// - "FILTER_VARIANT_NAME"
  /// - "FILTER_VARIANT_VERSION"
  /// - "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE"
  /// - "FILTER_VERIFICATION_VIDEO_POSITION"
  /// - "FILTER_VIDEO_COMPANION_CREATIVE_SIZE"
  /// - "FILTER_VIDEO_CONTINUOUS_PLAY"
  /// - "FILTER_VIDEO_DURATION"
  /// - "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST"
  /// - "FILTER_YOUTUBE_AD_VIDEO"
  /// - "FILTER_YOUTUBE_AD_VIDEO_ID"
  /// - "FILTER_YOUTUBE_CHANNEL"
  /// - "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER"
  /// - "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER"
  /// - "FILTER_YOUTUBE_VIDEO"
  /// - "FILTER_ZIP_POSTAL_CODE"
  /// - "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS"
  /// - "FILTER_TRUEVIEW_PLACEMENT_ID"
  /// - "FILTER_PATH_PATTERN_ID"
  /// - "FILTER_PATH_EVENT_INDEX"
  /// - "FILTER_EVENT_TYPE"
  /// - "FILTER_CHANNEL_GROUPING"
  core.String filter;

  /// Indicates how the filter should be matched to the value.
  /// Possible string values are:
  /// - "UNKNOWN"
  /// - "EXACT"
  /// - "PARTIAL"
  /// - "BEGINS_WITH"
  /// - "WILDCARD_EXPRESSION"
  core.String match;

  /// Value to filter on.
  core.List<core.String> values;

  PathQueryOptionsFilter();

  PathQueryOptionsFilter.fromJson(core.Map _json) {
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('match')) {
      match = _json['match'] as core.String;
    }
    if (_json.containsKey('values')) {
      values = (_json['values'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (match != null) {
      _json['match'] = match;
    }
    if (values != null) {
      _json['values'] = values;
    }
    return _json;
  }
}

/// Represents a query.
class Query {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "doubleclickbidmanager#query".
  core.String kind;

  /// Query metadata.
  QueryMetadata metadata;

  /// Query parameters.
  Parameters params;

  /// Query ID.
  core.String queryId;

  /// The ending time for the data that is shown in the report. Note,
  /// reportDataEndTimeMs is required if metadata.dataRange is CUSTOM_DATES and
  /// ignored otherwise.
  core.String reportDataEndTimeMs;

  /// The starting time for the data that is shown in the report. Note,
  /// reportDataStartTimeMs is required if metadata.dataRange is CUSTOM_DATES
  /// and ignored otherwise.
  core.String reportDataStartTimeMs;

  /// Information on how often and when to run a query.
  QuerySchedule schedule;

  /// Canonical timezone code for report data time. Defaults to
  /// America/New_York.
  core.String timezoneCode;

  Query();

  Query.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata = QueryMetadata.fromJson(
          _json['metadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('params')) {
      params = Parameters.fromJson(
          _json['params'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('queryId')) {
      queryId = _json['queryId'] as core.String;
    }
    if (_json.containsKey('reportDataEndTimeMs')) {
      reportDataEndTimeMs = _json['reportDataEndTimeMs'] as core.String;
    }
    if (_json.containsKey('reportDataStartTimeMs')) {
      reportDataStartTimeMs = _json['reportDataStartTimeMs'] as core.String;
    }
    if (_json.containsKey('schedule')) {
      schedule = QuerySchedule.fromJson(
          _json['schedule'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('timezoneCode')) {
      timezoneCode = _json['timezoneCode'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (metadata != null) {
      _json['metadata'] = metadata.toJson();
    }
    if (params != null) {
      _json['params'] = params.toJson();
    }
    if (queryId != null) {
      _json['queryId'] = queryId;
    }
    if (reportDataEndTimeMs != null) {
      _json['reportDataEndTimeMs'] = reportDataEndTimeMs;
    }
    if (reportDataStartTimeMs != null) {
      _json['reportDataStartTimeMs'] = reportDataStartTimeMs;
    }
    if (schedule != null) {
      _json['schedule'] = schedule.toJson();
    }
    if (timezoneCode != null) {
      _json['timezoneCode'] = timezoneCode;
    }
    return _json;
  }
}

/// Query metadata.
class QueryMetadata {
  /// Range of report data.
  /// Possible string values are:
  /// - "CUSTOM_DATES"
  /// - "CURRENT_DAY"
  /// - "PREVIOUS_DAY"
  /// - "WEEK_TO_DATE"
  /// - "MONTH_TO_DATE"
  /// - "QUARTER_TO_DATE"
  /// - "YEAR_TO_DATE"
  /// - "PREVIOUS_WEEK"
  /// - "PREVIOUS_HALF_MONTH"
  /// - "PREVIOUS_MONTH"
  /// - "PREVIOUS_QUARTER"
  /// - "PREVIOUS_YEAR"
  /// - "LAST_7_DAYS"
  /// - "LAST_30_DAYS"
  /// - "LAST_90_DAYS"
  /// - "LAST_365_DAYS"
  /// - "ALL_TIME"
  /// - "LAST_14_DAYS"
  /// - "TYPE_NOT_SUPPORTED"
  /// - "LAST_60_DAYS"
  core.String dataRange;

  /// Format of the generated report.
  /// Possible string values are:
  /// - "CSV"
  /// - "EXCEL_CSV"
  /// - "XLSX"
  core.String format;

  /// The path to the location in Google Cloud Storage where the latest report
  /// is stored.
  core.String googleCloudStoragePathForLatestReport;

  /// The path in Google Drive for the latest report.
  core.String googleDrivePathForLatestReport;

  /// The time when the latest report started to run.
  core.String latestReportRunTimeMs;

  /// Locale of the generated reports. Valid values are cs CZECH de GERMAN en
  /// ENGLISH es SPANISH fr FRENCH it ITALIAN ja JAPANESE ko KOREAN pl POLISH
  /// pt-BR BRAZILIAN_PORTUGUESE ru RUSSIAN tr TURKISH uk UKRAINIAN zh-CN
  /// CHINA_CHINESE zh-TW TAIWAN_CHINESE An locale string not in the list above
  /// will generate reports in English.
  core.String locale;

  /// Number of reports that have been generated for the query.
  core.int reportCount;

  /// Whether the latest report is currently running.
  core.bool running;

  /// Whether to send an email notification when a report is ready. Default to
  /// false.
  core.bool sendNotification;

  /// List of email addresses which are sent email notifications when the report
  /// is finished. Separate from sendNotification.
  core.List<core.String> shareEmailAddress;

  /// Query title. It is used to name the reports generated from this query.
  core.String title;

  QueryMetadata();

  QueryMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('dataRange')) {
      dataRange = _json['dataRange'] as core.String;
    }
    if (_json.containsKey('format')) {
      format = _json['format'] as core.String;
    }
    if (_json.containsKey('googleCloudStoragePathForLatestReport')) {
      googleCloudStoragePathForLatestReport =
          _json['googleCloudStoragePathForLatestReport'] as core.String;
    }
    if (_json.containsKey('googleDrivePathForLatestReport')) {
      googleDrivePathForLatestReport =
          _json['googleDrivePathForLatestReport'] as core.String;
    }
    if (_json.containsKey('latestReportRunTimeMs')) {
      latestReportRunTimeMs = _json['latestReportRunTimeMs'] as core.String;
    }
    if (_json.containsKey('locale')) {
      locale = _json['locale'] as core.String;
    }
    if (_json.containsKey('reportCount')) {
      reportCount = _json['reportCount'] as core.int;
    }
    if (_json.containsKey('running')) {
      running = _json['running'] as core.bool;
    }
    if (_json.containsKey('sendNotification')) {
      sendNotification = _json['sendNotification'] as core.bool;
    }
    if (_json.containsKey('shareEmailAddress')) {
      shareEmailAddress = (_json['shareEmailAddress'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dataRange != null) {
      _json['dataRange'] = dataRange;
    }
    if (format != null) {
      _json['format'] = format;
    }
    if (googleCloudStoragePathForLatestReport != null) {
      _json['googleCloudStoragePathForLatestReport'] =
          googleCloudStoragePathForLatestReport;
    }
    if (googleDrivePathForLatestReport != null) {
      _json['googleDrivePathForLatestReport'] = googleDrivePathForLatestReport;
    }
    if (latestReportRunTimeMs != null) {
      _json['latestReportRunTimeMs'] = latestReportRunTimeMs;
    }
    if (locale != null) {
      _json['locale'] = locale;
    }
    if (reportCount != null) {
      _json['reportCount'] = reportCount;
    }
    if (running != null) {
      _json['running'] = running;
    }
    if (sendNotification != null) {
      _json['sendNotification'] = sendNotification;
    }
    if (shareEmailAddress != null) {
      _json['shareEmailAddress'] = shareEmailAddress;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Information on how frequently and when to run a query.
class QuerySchedule {
  /// Datetime to periodically run the query until.
  core.String endTimeMs;

  /// How often the query is run.
  /// Possible string values are:
  /// - "ONE_TIME"
  /// - "DAILY"
  /// - "WEEKLY"
  /// - "SEMI_MONTHLY"
  /// - "MONTHLY"
  /// - "QUARTERLY"
  core.String frequency;

  /// Deprecated. This field has no effect.
  core.int nextRunMinuteOfDay;

  /// Canonical timezone code for report generation time. Defaults to
  /// America/New_York.
  core.String nextRunTimezoneCode;

  /// When to start running the query. Not applicable to `ONE_TIME` frequency.
  core.String startTimeMs;

  QuerySchedule();

  QuerySchedule.fromJson(core.Map _json) {
    if (_json.containsKey('endTimeMs')) {
      endTimeMs = _json['endTimeMs'] as core.String;
    }
    if (_json.containsKey('frequency')) {
      frequency = _json['frequency'] as core.String;
    }
    if (_json.containsKey('nextRunMinuteOfDay')) {
      nextRunMinuteOfDay = _json['nextRunMinuteOfDay'] as core.int;
    }
    if (_json.containsKey('nextRunTimezoneCode')) {
      nextRunTimezoneCode = _json['nextRunTimezoneCode'] as core.String;
    }
    if (_json.containsKey('startTimeMs')) {
      startTimeMs = _json['startTimeMs'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endTimeMs != null) {
      _json['endTimeMs'] = endTimeMs;
    }
    if (frequency != null) {
      _json['frequency'] = frequency;
    }
    if (nextRunMinuteOfDay != null) {
      _json['nextRunMinuteOfDay'] = nextRunMinuteOfDay;
    }
    if (nextRunTimezoneCode != null) {
      _json['nextRunTimezoneCode'] = nextRunTimezoneCode;
    }
    if (startTimeMs != null) {
      _json['startTimeMs'] = startTimeMs;
    }
    return _json;
  }
}

/// Represents a report.
class Report {
  /// Key used to identify a report.
  ReportKey key;

  /// Report metadata.
  ReportMetadata metadata;

  /// Report parameters.
  Parameters params;

  Report();

  Report.fromJson(core.Map _json) {
    if (_json.containsKey('key')) {
      key = ReportKey.fromJson(
          _json['key'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata = ReportMetadata.fromJson(
          _json['metadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('params')) {
      params = Parameters.fromJson(
          _json['params'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (key != null) {
      _json['key'] = key.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata.toJson();
    }
    if (params != null) {
      _json['params'] = params.toJson();
    }
    return _json;
  }
}

/// An explanation of a report failure.
class ReportFailure {
  /// Error code that shows why the report was not created.
  /// Possible string values are:
  /// - "AUTHENTICATION_ERROR"
  /// - "UNAUTHORIZED_API_ACCESS"
  /// - "SERVER_ERROR"
  /// - "VALIDATION_ERROR"
  /// - "REPORTING_FATAL_ERROR"
  /// - "REPORTING_TRANSIENT_ERROR"
  /// - "REPORTING_IMCOMPATIBLE_METRICS"
  /// - "REPORTING_ILLEGAL_FILENAME"
  /// - "REPORTING_QUERY_NOT_FOUND"
  /// - "REPORTING_BUCKET_NOT_FOUND"
  /// - "REPORTING_CREATE_BUCKET_FAILED"
  /// - "REPORTING_DELETE_BUCKET_FAILED"
  /// - "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED"
  /// - "REPORTING_WRITE_BUCKET_OBJECT_FAILED"
  /// - "DEPRECATED_REPORTING_INVALID_QUERY"
  /// - "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS"
  /// - "REPORTING_INVALID_QUERY_TITLE_MISSING"
  /// - "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS"
  core.String errorCode;

  ReportFailure();

  ReportFailure.fromJson(core.Map _json) {
    if (_json.containsKey('errorCode')) {
      errorCode = _json['errorCode'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (errorCode != null) {
      _json['errorCode'] = errorCode;
    }
    return _json;
  }
}

/// Key used to identify a report.
class ReportKey {
  /// Query ID.
  core.String queryId;

  /// Report ID.
  core.String reportId;

  ReportKey();

  ReportKey.fromJson(core.Map _json) {
    if (_json.containsKey('queryId')) {
      queryId = _json['queryId'] as core.String;
    }
    if (_json.containsKey('reportId')) {
      reportId = _json['reportId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (queryId != null) {
      _json['queryId'] = queryId;
    }
    if (reportId != null) {
      _json['reportId'] = reportId;
    }
    return _json;
  }
}

/// Report metadata.
class ReportMetadata {
  /// The path to the location in Google Cloud Storage where the report is
  /// stored.
  core.String googleCloudStoragePath;

  /// The ending time for the data that is shown in the report.
  core.String reportDataEndTimeMs;

  /// The starting time for the data that is shown in the report.
  core.String reportDataStartTimeMs;

  /// Report status.
  ReportStatus status;

  ReportMetadata();

  ReportMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('googleCloudStoragePath')) {
      googleCloudStoragePath = _json['googleCloudStoragePath'] as core.String;
    }
    if (_json.containsKey('reportDataEndTimeMs')) {
      reportDataEndTimeMs = _json['reportDataEndTimeMs'] as core.String;
    }
    if (_json.containsKey('reportDataStartTimeMs')) {
      reportDataStartTimeMs = _json['reportDataStartTimeMs'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = ReportStatus.fromJson(
          _json['status'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (googleCloudStoragePath != null) {
      _json['googleCloudStoragePath'] = googleCloudStoragePath;
    }
    if (reportDataEndTimeMs != null) {
      _json['reportDataEndTimeMs'] = reportDataEndTimeMs;
    }
    if (reportDataStartTimeMs != null) {
      _json['reportDataStartTimeMs'] = reportDataStartTimeMs;
    }
    if (status != null) {
      _json['status'] = status.toJson();
    }
    return _json;
  }
}

/// Report status.
class ReportStatus {
  /// If the report failed, this records the cause.
  ReportFailure failure;

  /// The time when this report either completed successfully or failed.
  core.String finishTimeMs;

  /// The file type of the report.
  /// Possible string values are:
  /// - "CSV"
  /// - "EXCEL_CSV"
  /// - "XLSX"
  core.String format;

  /// The state of the report.
  /// Possible string values are:
  /// - "RUNNING"
  /// - "DONE"
  /// - "FAILED"
  core.String state;

  ReportStatus();

  ReportStatus.fromJson(core.Map _json) {
    if (_json.containsKey('failure')) {
      failure = ReportFailure.fromJson(
          _json['failure'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('finishTimeMs')) {
      finishTimeMs = _json['finishTimeMs'] as core.String;
    }
    if (_json.containsKey('format')) {
      format = _json['format'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (failure != null) {
      _json['failure'] = failure.toJson();
    }
    if (finishTimeMs != null) {
      _json['finishTimeMs'] = finishTimeMs;
    }
    if (format != null) {
      _json['format'] = format;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// Represents the upload status of a row in the request.
class RowStatus {
  /// Whether the stored entity is changed as a result of upload.
  core.bool changed;

  /// Entity Id.
  core.String entityId;

  /// Entity name.
  core.String entityName;

  /// Reasons why the entity can't be uploaded.
  core.List<core.String> errors;

  /// Whether the entity is persisted.
  core.bool persisted;

  /// Row number.
  core.int rowNumber;

  RowStatus();

  RowStatus.fromJson(core.Map _json) {
    if (_json.containsKey('changed')) {
      changed = _json['changed'] as core.bool;
    }
    if (_json.containsKey('entityId')) {
      entityId = _json['entityId'] as core.String;
    }
    if (_json.containsKey('entityName')) {
      entityName = _json['entityName'] as core.String;
    }
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('persisted')) {
      persisted = _json['persisted'] as core.bool;
    }
    if (_json.containsKey('rowNumber')) {
      rowNumber = _json['rowNumber'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (changed != null) {
      _json['changed'] = changed;
    }
    if (entityId != null) {
      _json['entityId'] = entityId;
    }
    if (entityName != null) {
      _json['entityName'] = entityName;
    }
    if (errors != null) {
      _json['errors'] = errors;
    }
    if (persisted != null) {
      _json['persisted'] = persisted;
    }
    if (rowNumber != null) {
      _json['rowNumber'] = rowNumber;
    }
    return _json;
  }
}

/// A Rule defines a name, and a boolean expression in [conjunctive normal
/// form](http: //mathworld.wolfram.com/ConjunctiveNormalForm.html){.external}
/// that can be // applied to a path event to determine if that name should be
/// applied.
class Rule {
  core.List<DisjunctiveMatchStatement> disjunctiveMatchStatements;

  /// Rule name.
  core.String name;

  Rule();

  Rule.fromJson(core.Map _json) {
    if (_json.containsKey('disjunctiveMatchStatements')) {
      disjunctiveMatchStatements =
          (_json['disjunctiveMatchStatements'] as core.List)
              .map<DisjunctiveMatchStatement>((value) =>
                  DisjunctiveMatchStatement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (disjunctiveMatchStatements != null) {
      _json['disjunctiveMatchStatements'] =
          disjunctiveMatchStatements.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Request to run a stored query to generate a report.
class RunQueryRequest {
  /// Report data range used to generate the report.
  /// Possible string values are:
  /// - "CUSTOM_DATES"
  /// - "CURRENT_DAY"
  /// - "PREVIOUS_DAY"
  /// - "WEEK_TO_DATE"
  /// - "MONTH_TO_DATE"
  /// - "QUARTER_TO_DATE"
  /// - "YEAR_TO_DATE"
  /// - "PREVIOUS_WEEK"
  /// - "PREVIOUS_HALF_MONTH"
  /// - "PREVIOUS_MONTH"
  /// - "PREVIOUS_QUARTER"
  /// - "PREVIOUS_YEAR"
  /// - "LAST_7_DAYS"
  /// - "LAST_30_DAYS"
  /// - "LAST_90_DAYS"
  /// - "LAST_365_DAYS"
  /// - "ALL_TIME"
  /// - "LAST_14_DAYS"
  /// - "TYPE_NOT_SUPPORTED"
  /// - "LAST_60_DAYS"
  core.String dataRange;

  /// The ending time for the data that is shown in the report. Note,
  /// reportDataEndTimeMs is required if dataRange is CUSTOM_DATES and ignored
  /// otherwise.
  core.String reportDataEndTimeMs;

  /// The starting time for the data that is shown in the report. Note,
  /// reportDataStartTimeMs is required if dataRange is CUSTOM_DATES and ignored
  /// otherwise.
  core.String reportDataStartTimeMs;

  /// Canonical timezone code for report data time. Defaults to
  /// America/New_York.
  core.String timezoneCode;

  RunQueryRequest();

  RunQueryRequest.fromJson(core.Map _json) {
    if (_json.containsKey('dataRange')) {
      dataRange = _json['dataRange'] as core.String;
    }
    if (_json.containsKey('reportDataEndTimeMs')) {
      reportDataEndTimeMs = _json['reportDataEndTimeMs'] as core.String;
    }
    if (_json.containsKey('reportDataStartTimeMs')) {
      reportDataStartTimeMs = _json['reportDataStartTimeMs'] as core.String;
    }
    if (_json.containsKey('timezoneCode')) {
      timezoneCode = _json['timezoneCode'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dataRange != null) {
      _json['dataRange'] = dataRange;
    }
    if (reportDataEndTimeMs != null) {
      _json['reportDataEndTimeMs'] = reportDataEndTimeMs;
    }
    if (reportDataStartTimeMs != null) {
      _json['reportDataStartTimeMs'] = reportDataStartTimeMs;
    }
    if (timezoneCode != null) {
      _json['timezoneCode'] = timezoneCode;
    }
    return _json;
  }
}

/// Request to upload line items.
class UploadLineItemsRequest {
  /// Set to true to get upload status without actually persisting the line
  /// items.
  core.bool dryRun;

  /// Format the line items are in. Default to CSV.
  /// Possible string values are:
  /// - "CSV"
  core.String format;

  /// Line items in CSV to upload. Refer to Entity Write File Format for more
  /// information on file format.
  core.String lineItems;

  UploadLineItemsRequest();

  UploadLineItemsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('dryRun')) {
      dryRun = _json['dryRun'] as core.bool;
    }
    if (_json.containsKey('format')) {
      format = _json['format'] as core.String;
    }
    if (_json.containsKey('lineItems')) {
      lineItems = _json['lineItems'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dryRun != null) {
      _json['dryRun'] = dryRun;
    }
    if (format != null) {
      _json['format'] = format;
    }
    if (lineItems != null) {
      _json['lineItems'] = lineItems;
    }
    return _json;
  }
}

/// Upload line items response.
class UploadLineItemsResponse {
  /// Status of upload.
  UploadStatus uploadStatus;

  UploadLineItemsResponse();

  UploadLineItemsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('uploadStatus')) {
      uploadStatus = UploadStatus.fromJson(
          _json['uploadStatus'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (uploadStatus != null) {
      _json['uploadStatus'] = uploadStatus.toJson();
    }
    return _json;
  }
}

/// Represents the status of upload.
class UploadStatus {
  /// Reasons why upload can't be completed.
  core.List<core.String> errors;

  /// Per-row upload status.
  core.List<RowStatus> rowStatus;

  UploadStatus();

  UploadStatus.fromJson(core.Map _json) {
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('rowStatus')) {
      rowStatus = (_json['rowStatus'] as core.List)
          .map<RowStatus>((value) =>
              RowStatus.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (errors != null) {
      _json['errors'] = errors;
    }
    if (rowStatus != null) {
      _json['rowStatus'] = rowStatus.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}
