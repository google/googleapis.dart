library googleapis.youtubeAnalytics.v1;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/** Retrieve your YouTube Analytics reports. */
class YoutubeAnalyticsApi {
  /** View YouTube Analytics monetary reports for your YouTube content */
  static const YtAnalyticsMonetaryReadonlyScope = "https://www.googleapis.com/auth/yt-analytics-monetary.readonly";

  /** View YouTube Analytics reports for your YouTube content */
  static const YtAnalyticsReadonlyScope = "https://www.googleapis.com/auth/yt-analytics.readonly";


  final common_internal.ApiRequester _requester;

  BatchReportDefinitionsResourceApi get batchReportDefinitions => new BatchReportDefinitionsResourceApi(_requester);
  BatchReportsResourceApi get batchReports => new BatchReportsResourceApi(_requester);
  ReportsResourceApi get reports => new ReportsResourceApi(_requester);

  YoutubeAnalyticsApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "/youtube/analytics/v1/");
}


/** Not documented yet. */
class BatchReportDefinitionsResourceApi {
  final common_internal.ApiRequester _requester;

  BatchReportDefinitionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a list of available batch report definitions.
   *
   * Request parameters:
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter identifies
   * the content owner that the user is acting on behalf of.
   *
   * Completes with a [BatchReportDefinitionList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<BatchReportDefinitionList> list(core.String onBehalfOfContentOwner) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (onBehalfOfContentOwner == null) {
      throw new core.ArgumentError("Parameter onBehalfOfContentOwner is required.");
    }
    _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];


    _url = 'batchReportDefinitions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BatchReportDefinitionList.fromJson(data));
  }

}


/** Not documented yet. */
class BatchReportsResourceApi {
  final common_internal.ApiRequester _requester;

  BatchReportsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a list of processed batch reports.
   *
   * Request parameters:
   *
   * [batchReportDefinitionId] - The batchReportDefinitionId parameter specifies
   * the ID of the batch reportort definition for which you are retrieving
   * reports.
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter identifies
   * the content owner that the user is acting on behalf of.
   *
   * Completes with a [BatchReportList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<BatchReportList> list(core.String batchReportDefinitionId, core.String onBehalfOfContentOwner) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (batchReportDefinitionId == null) {
      throw new core.ArgumentError("Parameter batchReportDefinitionId is required.");
    }
    _queryParams["batchReportDefinitionId"] = [batchReportDefinitionId];
    if (onBehalfOfContentOwner == null) {
      throw new core.ArgumentError("Parameter onBehalfOfContentOwner is required.");
    }
    _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];


    _url = 'batchReports';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BatchReportList.fromJson(data));
  }

}


/** Not documented yet. */
class ReportsResourceApi {
  final common_internal.ApiRequester _requester;

  ReportsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieve your YouTube Analytics reports.
   *
   * Request parameters:
   *
   * [ids] - Identifies the YouTube channel or content owner for which you are
   * retrieving YouTube Analytics data.
   * - To request data for a YouTube user, set the ids parameter value to
   * channel==CHANNEL_ID, where CHANNEL_ID specifies the unique YouTube channel
   * ID.
   * - To request data for a YouTube CMS content owner, set the ids parameter
   * value to contentOwner==OWNER_NAME, where OWNER_NAME is the CMS name of the
   * content owner.
   * Value must have pattern "[a-zA-Z]+==[a-zA-Z0-9_+-]+".
   *
   * [start_date] - The start date for fetching YouTube Analytics data. The
   * value should be in YYYY-MM-DD format.
   * Value must have pattern "[0-9]{4}-[0-9]{2}-[0-9]{2}".
   *
   * [end_date] - The end date for fetching YouTube Analytics data. The value
   * should be in YYYY-MM-DD format.
   * Value must have pattern "[0-9]{4}-[0-9]{2}-[0-9]{2}".
   *
   * [metrics] - A comma-separated list of YouTube Analytics metrics, such as
   * views or likes,dislikes. See the Available Reports document for a list of
   * the reports that you can retrieve and the metrics available in each report,
   * and see the Metrics document for definitions of those metrics.
   * Value must have pattern "[0-9a-zA-Z,]+".
   *
   * [dimensions] - A comma-separated list of YouTube Analytics dimensions, such
   * as views or ageGroup,gender. See the Available Reports document for a list
   * of the reports that you can retrieve and the dimensions used for those
   * reports. Also see the Dimensions document for definitions of those
   * dimensions.
   * Value must have pattern "[0-9a-zA-Z,]+".
   *
   * [filters] - A list of filters that should be applied when retrieving
   * YouTube Analytics data. The Available Reports document identifies the
   * dimensions that can be used to filter each report, and the Dimensions
   * document defines those dimensions. If a request uses multiple filters, join
   * them together with a semicolon (;), and the returned result table will
   * satisfy both filters. For example, a filters parameter value of
   * video==dMH0bHeiRNg;country==IT restricts the result set to include data for
   * the given video in Italy.
   *
   * [max_results] - The maximum number of rows to include in the response.
   *
   * [sort] - A comma-separated list of dimensions or metrics that determine the
   * sort order for YouTube Analytics data. By default the sort order is
   * ascending. The '-' prefix causes descending sort order.
   * Value must have pattern "[-0-9a-zA-Z,]+".
   *
   * [start_index] - An index of the first entity to retrieve. Use this
   * parameter as a pagination mechanism along with the max-results parameter
   * (one-based, inclusive).
   *
   * Completes with a [ResultTable].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ResultTable> query(core.String ids, core.String start_date, core.String end_date, core.String metrics, {core.String dimensions, core.String filters, core.int max_results, core.String sort, core.int start_index}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (ids == null) {
      throw new core.ArgumentError("Parameter ids is required.");
    }
    _queryParams["ids"] = [ids];
    if (start_date == null) {
      throw new core.ArgumentError("Parameter start_date is required.");
    }
    _queryParams["start-date"] = [start_date];
    if (end_date == null) {
      throw new core.ArgumentError("Parameter end_date is required.");
    }
    _queryParams["end-date"] = [end_date];
    if (metrics == null) {
      throw new core.ArgumentError("Parameter metrics is required.");
    }
    _queryParams["metrics"] = [metrics];
    if (dimensions != null) {
      _queryParams["dimensions"] = [dimensions];
    }
    if (filters != null) {
      _queryParams["filters"] = [filters];
    }
    if (max_results != null) {
      _queryParams["max-results"] = ["${max_results}"];
    }
    if (sort != null) {
      _queryParams["sort"] = [sort];
    }
    if (start_index != null) {
      _queryParams["start-index"] = ["${start_index}"];
    }


    _url = 'reports';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ResultTable.fromJson(data));
  }

}



/**
 * A paginated list of batchReportDefinition resources returned in response to a
 * youtubeAnalytics.batchReportDefinitions.list request.
 */
class BatchReportDefinitionList {
  /**
   * A list of batchReportDefinition resources that match the request criteria.
   */
  core.List<BatchReportDefinitionTemplate> items;

  /**
   * This value specifies the type of data included in the API response. For the
   * list method, the kind property value is
   * youtubeAnalytics#batchReportDefinitionList.
   */
  core.String kind;


  BatchReportDefinitionList();

  BatchReportDefinitionList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new BatchReportDefinitionTemplate.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class BatchReportDefinitionTemplateDefaultOutput {
  /** Format of the output. */
  core.String format;

  /** Type of the output. */
  core.String type;


  BatchReportDefinitionTemplateDefaultOutput();

  BatchReportDefinitionTemplateDefaultOutput.fromJson(core.Map _json) {
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (format != null) {
      _json["format"] = format;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Contains single batchReportDefinition resource. */
class BatchReportDefinitionTemplate {
  /** Default report definition's output. */
  core.List<BatchReportDefinitionTemplateDefaultOutput> defaultOutput;

  /**
   * The ID that YouTube assigns and uses to uniquely identify the report
   * definition.
   */
  core.String id;

  /** Name of the report definition. */
  core.String name;

  /** Status of the report definition. */
  core.String status;

  /** Type of the report definition. */
  core.String type;


  BatchReportDefinitionTemplate();

  BatchReportDefinitionTemplate.fromJson(core.Map _json) {
    if (_json.containsKey("defaultOutput")) {
      defaultOutput = _json["defaultOutput"].map((value) => new BatchReportDefinitionTemplateDefaultOutput.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (defaultOutput != null) {
      _json["defaultOutput"] = defaultOutput.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * A paginated list of batchReport resources returned in response to a
 * youtubeAnalytics.batchReport.list request.
 */
class BatchReportList {
  /** A list of batchReport resources that match the request criteria. */
  core.List<BatchReportTemplate> items;

  /**
   * This value specifies the type of data included in the API response. For the
   * list method, the kind property value is youtubeAnalytics#batchReportList.
   */
  core.String kind;


  BatchReportList();

  BatchReportList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new BatchReportTemplate.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class BatchReportTemplateOutputs {
  /**
   * Cloud storage URL to download this report. This URL is valid for 30
   * minutes.
   */
  core.String downloadUrl;

  /** Format of the output. */
  core.String format;

  /** Type of the output. */
  core.String type;


  BatchReportTemplateOutputs();

  BatchReportTemplateOutputs.fromJson(core.Map _json) {
    if (_json.containsKey("downloadUrl")) {
      downloadUrl = _json["downloadUrl"];
    }
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (downloadUrl != null) {
      _json["downloadUrl"] = downloadUrl;
    }
    if (format != null) {
      _json["format"] = format;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * Period included in the report. For reports containing all entities endTime is
 * not set. Both startTime and endTime are inclusive.
 */
class BatchReportTemplateTimeSpan {
  /**
   * End of the period included in the report. Inclusive. For reports containing
   * all entities endTime is not set.
   */
  core.DateTime endTime;

  /** Start of the period included in the report. Inclusive. */
  core.DateTime startTime;


  BatchReportTemplateTimeSpan();

  BatchReportTemplateTimeSpan.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = core.DateTime.parse(_json["endTime"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = core.DateTime.parse(_json["startTime"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endTime != null) {
      _json["endTime"] = (endTime).toIso8601String();
    }
    if (startTime != null) {
      _json["startTime"] = (startTime).toIso8601String();
    }
    return _json;
  }
}


/** Contains single batchReport resource. */
class BatchReportTemplate {
  /** The ID that YouTube assigns and uses to uniquely identify the report. */
  core.String id;

  /** Report outputs. */
  core.List<BatchReportTemplateOutputs> outputs;

  /** The ID of the the report definition. */
  core.String reportId;

  /**
   * Period included in the report. For reports containing all entities endTime
   * is not set. Both startTime and endTime are inclusive.
   */
  BatchReportTemplateTimeSpan timeSpan;

  /** The time when the report was updated. */
  core.DateTime timeUpdated;


  BatchReportTemplate();

  BatchReportTemplate.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("outputs")) {
      outputs = _json["outputs"].map((value) => new BatchReportTemplateOutputs.fromJson(value)).toList();
    }
    if (_json.containsKey("report_id")) {
      reportId = _json["report_id"];
    }
    if (_json.containsKey("timeSpan")) {
      timeSpan = new BatchReportTemplateTimeSpan.fromJson(_json["timeSpan"]);
    }
    if (_json.containsKey("timeUpdated")) {
      timeUpdated = core.DateTime.parse(_json["timeUpdated"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (outputs != null) {
      _json["outputs"] = outputs.map((value) => (value).toJson()).toList();
    }
    if (reportId != null) {
      _json["report_id"] = reportId;
    }
    if (timeSpan != null) {
      _json["timeSpan"] = (timeSpan).toJson();
    }
    if (timeUpdated != null) {
      _json["timeUpdated"] = (timeUpdated).toIso8601String();
    }
    return _json;
  }
}


/** Not documented yet. */
class ResultTableColumnHeaders {
  /** The type of the column (DIMENSION or METRIC). */
  core.String columnType;

  /** The type of the data in the column (STRING, INTEGER, FLOAT, etc.). */
  core.String dataType;

  /** The name of the dimension or metric. */
  core.String name;


  ResultTableColumnHeaders();

  ResultTableColumnHeaders.fromJson(core.Map _json) {
    if (_json.containsKey("columnType")) {
      columnType = _json["columnType"];
    }
    if (_json.containsKey("dataType")) {
      dataType = _json["dataType"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (columnType != null) {
      _json["columnType"] = columnType;
    }
    if (dataType != null) {
      _json["dataType"] = dataType;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/**
 * Contains a single result table. The table is returned as an array of rows
 * that contain the values for the cells of the table. Depending on the metric
 * or dimension, the cell can contain a string (video ID, country code) or a
 * number (number of views or number of likes).
 */
class ResultTable {
  /**
   * This value specifies information about the data returned in the rows
   * fields. Each item in the columnHeaders list identifies a field returned in
   * the rows value, which contains a list of comma-delimited data. The
   * columnHeaders list will begin with the dimensions specified in the API
   * request, which will be followed by the metrics specified in the API
   * request. The order of both dimensions and metrics will match the ordering
   * in the API request. For example, if the API request contains the parameters
   * dimensions=ageGroup,gender&metrics=viewerPercentage, the API response will
   * return columns in this order: ageGroup,gender,viewerPercentage.
   */
  core.List<ResultTableColumnHeaders> columnHeaders;

  /**
   * This value specifies the type of data included in the API response. For the
   * query method, the kind property value will be youtubeAnalytics#resultTable.
   */
  core.String kind;

  /**
   * The list contains all rows of the result table. Each item in the list is an
   * array that contains comma-delimited data corresponding to a single row of
   * data. The order of the comma-delimited data fields will match the order of
   * the columns listed in the columnHeaders field. If no data is available for
   * the given query, the rows element will be omitted from the response. The
   * response for a query with the day dimension will not contain rows for the
   * most recent days.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.List<core.Object>> rows;


  ResultTable();

  ResultTable.fromJson(core.Map _json) {
    if (_json.containsKey("columnHeaders")) {
      columnHeaders = _json["columnHeaders"].map((value) => new ResultTableColumnHeaders.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("rows")) {
      rows = _json["rows"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (columnHeaders != null) {
      _json["columnHeaders"] = columnHeaders.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (rows != null) {
      _json["rows"] = rows;
    }
    return _json;
  }
}


