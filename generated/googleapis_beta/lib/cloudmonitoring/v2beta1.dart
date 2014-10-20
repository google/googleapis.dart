library googleapis_beta.cloudmonitoring.v2beta1;

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

/** API for accessing Google Cloud and API monitoring data. */
class CloudmonitoringApi {
  /** View monitoring data for all of your Google Cloud and API projects */
  static const MonitoringReadonlyScope = "https://www.googleapis.com/auth/monitoring.readonly";


  final common_internal.ApiRequester _requester;

  MetricDescriptorsResourceApi get metricDescriptors => new MetricDescriptorsResourceApi(_requester);
  TimeseriesResourceApi get timeseries => new TimeseriesResourceApi(_requester);
  TimeseriesDescriptorsResourceApi get timeseriesDescriptors => new TimeseriesDescriptorsResourceApi(_requester);

  CloudmonitoringApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "cloudmonitoring/v2beta1/projects/");
}


/** Not documented yet. */
class MetricDescriptorsResourceApi {
  final common_internal.ApiRequester _requester;

  MetricDescriptorsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * List metric descriptors that match the query. If the query is not set, then
   * all of the metric descriptors will be returned. Large responses will be
   * paginated, use the nextPageToken returned in the response to request
   * subsequent pages of results by setting the pageToken query parameter to the
   * value of the nextPageToken.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project id. The value can be the numeric project ID or
   * string-based project name.
   *
   * [count] - Maximum number of metric descriptors per page. Used for
   * pagination. If not specified, count = 100.
   * Value must be between "1" and "1000".
   *
   * [pageToken] - The pagination token, which is used to page through large
   * result sets. Set this value to the value of the nextPageToken to retrieve
   * the next page of results.
   *
   * [query] - The query used to search against existing metrics. Separate
   * keywords with a space; the service joins all keywords with AND, meaning
   * that all keywords must match for a metric to be returned. If this field is
   * omitted, all metrics are returned. If an empty string is passed with this
   * field, no metrics are returned.
   *
   * Completes with a [ListMetricDescriptorsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListMetricDescriptorsResponse> list(ListMetricDescriptorsRequest request, core.String project, {core.int count, core.String pageToken, core.String query}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (count != null) {
      _queryParams["count"] = ["${count}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/metricDescriptors';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListMetricDescriptorsResponse.fromJson(data));
  }

}


/** Not documented yet. */
class TimeseriesResourceApi {
  final common_internal.ApiRequester _requester;

  TimeseriesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * List the data points of the time series that match the metric and labels
   * values and that have data points in the interval. Large responses are
   * paginated; use the nextPageToken returned in the response to request
   * subsequent pages of results by setting the pageToken query parameter to the
   * value of the nextPageToken.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID to which this time series belongs. The value can
   * be the numeric project ID or string-based project name.
   *
   * [metric] - Metric names are protocol-free URLs as listed in the Supported
   * Metrics page. For example,
   * compute.googleapis.com/instance/disk/read_ops_count.
   *
   * [youngest] - End of the time interval (inclusive), which is expressed as an
   * RFC 3339 timestamp.
   *
   * [count] - Maximum number of data points per page, which is used for
   * pagination of results.
   * Value must be between "1" and "12000".
   *
   * [labels] - A collection of labels for the matching time series, which are
   * represented as:
   * - key==value: key equals the value
   * - key=~value: key regex matches the value
   * - key!=value: key does not equal the value
   * - key!~value: key regex does not match the value  For example, to list all
   * of the time series descriptors for the region us-central1, you could
   * specify:
   * label=cloud.googleapis.com%2Flocation=~us-central1.*
   * Value must have pattern "(.+?)(==|=~|!=|!~)(.+)".
   *
   * [oldest] - Start of the time interval (exclusive), which is expressed as an
   * RFC 3339 timestamp. If neither oldest nor timespan is specified, the
   * default time interval will be (youngest - 4 hours, youngest]
   *
   * [pageToken] - The pagination token, which is used to page through large
   * result sets. Set this value to the value of the nextPageToken to retrieve
   * the next page of results.
   *
   * [timespan] - Length of the time interval to query, which is an alternative
   * way to declare the interval: (youngest - timespan, youngest]. The timespan
   * and oldest parameters should not be used together. Units:
   * - s: second
   * - m: minute
   * - h: hour
   * - d: day
   * - w: week  Examples: 2s, 3m, 4w. Only one unit is allowed, for example:
   * 2w3d is not allowed; you should use 17d instead.
   *
   * If neither oldest nor timespan is specified, the default time interval will
   * be (youngest - 4 hours, youngest].
   * Value must have pattern "[0-9]+[smhdw]?".
   *
   * Completes with a [ListTimeseriesResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListTimeseriesResponse> list(ListTimeseriesRequest request, core.String project, core.String metric, core.String youngest, {core.int count, core.List<core.String> labels, core.String oldest, core.String pageToken, core.String timespan}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (metric == null) {
      throw new core.ArgumentError("Parameter metric is required.");
    }
    if (youngest == null) {
      throw new core.ArgumentError("Parameter youngest is required.");
    }
    _queryParams["youngest"] = [youngest];
    if (count != null) {
      _queryParams["count"] = ["${count}"];
    }
    if (labels != null) {
      _queryParams["labels"] = labels;
    }
    if (oldest != null) {
      _queryParams["oldest"] = [oldest];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (timespan != null) {
      _queryParams["timespan"] = [timespan];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/timeseries/' + common_internal.Escaper.ecapeVariable('$metric');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTimeseriesResponse.fromJson(data));
  }

}


/** Not documented yet. */
class TimeseriesDescriptorsResourceApi {
  final common_internal.ApiRequester _requester;

  TimeseriesDescriptorsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * List the descriptors of the time series that match the metric and labels
   * values and that have data points in the interval. Large responses are
   * paginated; use the nextPageToken returned in the response to request
   * subsequent pages of results by setting the pageToken query parameter to the
   * value of the nextPageToken.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID to which this time series belongs. The value can
   * be the numeric project ID or string-based project name.
   *
   * [metric] - Metric names are protocol-free URLs as listed in the Supported
   * Metrics page. For example,
   * compute.googleapis.com/instance/disk/read_ops_count.
   *
   * [youngest] - End of the time interval (inclusive), which is expressed as an
   * RFC 3339 timestamp.
   *
   * [count] - Maximum number of time series descriptors per page. Used for
   * pagination. If not specified, count = 100.
   * Value must be between "1" and "1000".
   *
   * [labels] - A collection of labels for the matching time series, which are
   * represented as:
   * - key==value: key equals the value
   * - key=~value: key regex matches the value
   * - key!=value: key does not equal the value
   * - key!~value: key regex does not match the value  For example, to list all
   * of the time series descriptors for the region us-central1, you could
   * specify:
   * label=cloud.googleapis.com%2Flocation=~us-central1.*
   * Value must have pattern "(.+?)(==|=~|!=|!~)(.+)".
   *
   * [oldest] - Start of the time interval (exclusive), which is expressed as an
   * RFC 3339 timestamp. If neither oldest nor timespan is specified, the
   * default time interval will be (youngest - 4 hours, youngest]
   *
   * [pageToken] - The pagination token, which is used to page through large
   * result sets. Set this value to the value of the nextPageToken to retrieve
   * the next page of results.
   *
   * [timespan] - Length of the time interval to query, which is an alternative
   * way to declare the interval: (youngest - timespan, youngest]. The timespan
   * and oldest parameters should not be used together. Units:
   * - s: second
   * - m: minute
   * - h: hour
   * - d: day
   * - w: week  Examples: 2s, 3m, 4w. Only one unit is allowed, for example:
   * 2w3d is not allowed; you should use 17d instead.
   *
   * If neither oldest nor timespan is specified, the default time interval will
   * be (youngest - 4 hours, youngest].
   * Value must have pattern "[0-9]+[smhdw]?".
   *
   * Completes with a [ListTimeseriesDescriptorsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListTimeseriesDescriptorsResponse> list(ListTimeseriesDescriptorsRequest request, core.String project, core.String metric, core.String youngest, {core.int count, core.List<core.String> labels, core.String oldest, core.String pageToken, core.String timespan}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (metric == null) {
      throw new core.ArgumentError("Parameter metric is required.");
    }
    if (youngest == null) {
      throw new core.ArgumentError("Parameter youngest is required.");
    }
    _queryParams["youngest"] = [youngest];
    if (count != null) {
      _queryParams["count"] = ["${count}"];
    }
    if (labels != null) {
      _queryParams["labels"] = labels;
    }
    if (oldest != null) {
      _queryParams["oldest"] = [oldest];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (timespan != null) {
      _queryParams["timespan"] = [timespan];
    }


    _url = common_internal.Escaper.ecapeVariable('$project') + '/timeseriesDescriptors/' + common_internal.Escaper.ecapeVariable('$metric');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTimeseriesDescriptorsResponse.fromJson(data));
  }

}



/** The request of cloudmonitoring.metricDescriptors.list. */
class ListMetricDescriptorsRequest {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "cloudmonitoring#listMetricDescriptorsRequest".
   */
  core.String kind;


  ListMetricDescriptorsRequest();

  ListMetricDescriptorsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** The response of cloudmonitoring.metricDescriptors.list. */
class ListMetricDescriptorsResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "cloudmonitoring#listMetricDescriptorsResponse".
   */
  core.String kind;

  /** The returned metric descriptors. */
  core.List<MetricDescriptor> metrics;

  /**
   * Pagination token. If present, indicates that additional results are
   * available for retrieval. To access the results past the pagination limit,
   * pass this value to the pageToken query parameter.
   */
  core.String nextPageToken;


  ListMetricDescriptorsResponse();

  ListMetricDescriptorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("metrics")) {
      metrics = _json["metrics"].map((value) => new MetricDescriptor.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** The request of cloudmonitoring.timeseriesDescriptors.list */
class ListTimeseriesDescriptorsRequest {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "cloudmonitoring#listTimeseriesDescriptorsRequest".
   */
  core.String kind;


  ListTimeseriesDescriptorsRequest();

  ListTimeseriesDescriptorsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** The response of cloudmonitoring.timeseriesDescriptors.list */
class ListTimeseriesDescriptorsResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "cloudmonitoring#listTimeseriesDescriptorsResponse".
   */
  core.String kind;

  /**
   * Pagination token. If present, indicates that additional results are
   * available for retrieval. To access the results past the pagination limit,
   * set this value to the pageToken query parameter.
   */
  core.String nextPageToken;

  /**
   * The oldest timestamp of the interval of this query, as an RFC 3339 string.
   */
  core.DateTime oldest;

  /** The returned time series descriptors. */
  core.List<TimeseriesDescriptor> timeseries;

  /**
   * The youngest timestamp of the interval of this query, as an RFC 3339
   * string.
   */
  core.DateTime youngest;


  ListTimeseriesDescriptorsResponse();

  ListTimeseriesDescriptorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("oldest")) {
      oldest = core.DateTime.parse(_json["oldest"]);
    }
    if (_json.containsKey("timeseries")) {
      timeseries = _json["timeseries"].map((value) => new TimeseriesDescriptor.fromJson(value)).toList();
    }
    if (_json.containsKey("youngest")) {
      youngest = core.DateTime.parse(_json["youngest"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (oldest != null) {
      _json["oldest"] = (oldest).toIso8601String();
    }
    if (timeseries != null) {
      _json["timeseries"] = timeseries.map((value) => (value).toJson()).toList();
    }
    if (youngest != null) {
      _json["youngest"] = (youngest).toIso8601String();
    }
    return _json;
  }
}


/** The request of cloudmonitoring.timeseries.list */
class ListTimeseriesRequest {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "cloudmonitoring#listTimeseriesRequest".
   */
  core.String kind;


  ListTimeseriesRequest();

  ListTimeseriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** The response of cloudmonitoring.timeseries.list */
class ListTimeseriesResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "cloudmonitoring#listTimeseriesResponse".
   */
  core.String kind;

  /**
   * Pagination token. If present, indicates that additional results are
   * available for retrieval. To access the results past the pagination limit,
   * set the pageToken query parameter to this value. All of the points of a
   * time series will be returned before returning any point of the subsequent
   * time series.
   */
  core.String nextPageToken;

  /**
   * The oldest timestamp of the interval of this query as an RFC 3339 string.
   */
  core.DateTime oldest;

  /** The returned time series. */
  core.List<Timeseries> timeseries;

  /**
   * The youngest timestamp of the interval of this query as an RFC 3339 string.
   */
  core.DateTime youngest;


  ListTimeseriesResponse();

  ListTimeseriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("oldest")) {
      oldest = core.DateTime.parse(_json["oldest"]);
    }
    if (_json.containsKey("timeseries")) {
      timeseries = _json["timeseries"].map((value) => new Timeseries.fromJson(value)).toList();
    }
    if (_json.containsKey("youngest")) {
      youngest = core.DateTime.parse(_json["youngest"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (oldest != null) {
      _json["oldest"] = (oldest).toIso8601String();
    }
    if (timeseries != null) {
      _json["timeseries"] = timeseries.map((value) => (value).toJson()).toList();
    }
    if (youngest != null) {
      _json["youngest"] = (youngest).toIso8601String();
    }
    return _json;
  }
}


/**
 * A metricDescriptor defines the name, label keys, and data type of a
 * particular metric.
 */
class MetricDescriptor {
  /** Description of this metric. */
  core.String description;

  /** Labels defined for this metric. */
  core.List<MetricDescriptorLabelDescriptor> labels;

  /** The name of this metric. */
  core.String name;

  /** The project ID to which the metric belongs. */
  core.String project;

  /** Type description for this metric. */
  MetricDescriptorTypeDescriptor typeDescriptor;


  MetricDescriptor();

  MetricDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"].map((value) => new MetricDescriptorLabelDescriptor.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("project")) {
      project = _json["project"];
    }
    if (_json.containsKey("typeDescriptor")) {
      typeDescriptor = new MetricDescriptorTypeDescriptor.fromJson(_json["typeDescriptor"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (project != null) {
      _json["project"] = project;
    }
    if (typeDescriptor != null) {
      _json["typeDescriptor"] = (typeDescriptor).toJson();
    }
    return _json;
  }
}


/**
 * A label in a metric is a description of this metric, including the key of
 * this description (what the description is), and the value for this
 * description.
 */
class MetricDescriptorLabelDescriptor {
  /** Label description. */
  core.String description;

  /** Label key. */
  core.String key;


  MetricDescriptorLabelDescriptor();

  MetricDescriptorLabelDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (key != null) {
      _json["key"] = key;
    }
    return _json;
  }
}


/**
 * A type in a metric contains information about how the metric is collected and
 * what its data points look like.
 */
class MetricDescriptorTypeDescriptor {
  /** The method of collecting data for the metric. */
  core.String metricType;

  /**
   * The type of data that is written to a timeseries point for this metric.
   */
  core.String valueType;


  MetricDescriptorTypeDescriptor();

  MetricDescriptorTypeDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("metricType")) {
      metricType = _json["metricType"];
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (metricType != null) {
      _json["metricType"] = metricType;
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}


/**
 * Point is a single point in a time series. It consists of a start time, an end
 * time, and a value.
 */
class Point {
  /** The value of this data point. Either "true" or "false". */
  core.bool boolValue;

  /**
   * The value of this data point as a distribution. A distribution value can
   * contain a list of buckets and/or an underflowBucket and an overflowBucket.
   * The values of these points can be used to create a histogram.
   */
  PointDistribution distributionValue;

  /**
   * The value of this data point as a double-precision floating-point number.
   */
  core.double doubleValue;

  /**
   * The interval [start, end] is the time period to which the point's value
   * applies. For gauge metrics, whose values are instantaneous measurements,
   * this interval should be empty (start should equal end). For cumulative
   * metrics (of which deltas and rates are special cases), the interval should
   * be non-empty. Both start and end are RFC 3339 strings.
   */
  core.DateTime end;

  /** The value of this data point as a 64-bit integer. */
  core.String int64Value;

  /**
   * The interval [start, end] is the time period to which the point's value
   * applies. For gauge metrics, whose values are instantaneous measurements,
   * this interval should be empty (start should equal end). For cumulative
   * metrics (of which deltas and rates are special cases), the interval should
   * be non-empty. Both start and end are RFC 3339 strings.
   */
  core.DateTime start;

  /** The value of this data point in string format. */
  core.String stringValue;


  Point();

  Point.fromJson(core.Map _json) {
    if (_json.containsKey("boolValue")) {
      boolValue = _json["boolValue"];
    }
    if (_json.containsKey("distributionValue")) {
      distributionValue = new PointDistribution.fromJson(_json["distributionValue"]);
    }
    if (_json.containsKey("doubleValue")) {
      doubleValue = _json["doubleValue"];
    }
    if (_json.containsKey("end")) {
      end = core.DateTime.parse(_json["end"]);
    }
    if (_json.containsKey("int64Value")) {
      int64Value = _json["int64Value"];
    }
    if (_json.containsKey("start")) {
      start = core.DateTime.parse(_json["start"]);
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (boolValue != null) {
      _json["boolValue"] = boolValue;
    }
    if (distributionValue != null) {
      _json["distributionValue"] = (distributionValue).toJson();
    }
    if (doubleValue != null) {
      _json["doubleValue"] = doubleValue;
    }
    if (end != null) {
      _json["end"] = (end).toIso8601String();
    }
    if (int64Value != null) {
      _json["int64Value"] = int64Value;
    }
    if (start != null) {
      _json["start"] = (start).toIso8601String();
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}


/**
 * Distribution data point value type. When writing distribution points, try to
 * be consistent with the boundaries of your buckets. If you must modify the
 * bucket boundaries, then do so by merging, partitioning, or appending rather
 * than skewing them.
 */
class PointDistribution {
  /** The finite buckets. */
  core.List<PointDistributionBucket> buckets;

  /** The overflow bucket. */
  PointDistributionOverflowBucket overflowBucket;

  /** The underflow bucket. */
  PointDistributionUnderflowBucket underflowBucket;


  PointDistribution();

  PointDistribution.fromJson(core.Map _json) {
    if (_json.containsKey("buckets")) {
      buckets = _json["buckets"].map((value) => new PointDistributionBucket.fromJson(value)).toList();
    }
    if (_json.containsKey("overflowBucket")) {
      overflowBucket = new PointDistributionOverflowBucket.fromJson(_json["overflowBucket"]);
    }
    if (_json.containsKey("underflowBucket")) {
      underflowBucket = new PointDistributionUnderflowBucket.fromJson(_json["underflowBucket"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (buckets != null) {
      _json["buckets"] = buckets.map((value) => (value).toJson()).toList();
    }
    if (overflowBucket != null) {
      _json["overflowBucket"] = (overflowBucket).toJson();
    }
    if (underflowBucket != null) {
      _json["underflowBucket"] = (underflowBucket).toJson();
    }
    return _json;
  }
}


/**
 * The histogram's bucket. Buckets that form the histogram of a distribution
 * value. If the upper bound of a bucket, say U1, does not equal the lower bound
 * of the next bucket, say L2, this means that there is no event in [U1, L2).
 */
class PointDistributionBucket {
  /**
   * The number of events whose values are in the interval defined by this
   * bucket.
   */
  core.String count;

  /** The lower bound of the value interval of this bucket (inclusive). */
  core.double lowerBound;

  /** The upper bound of the value interval of this bucket (exclusive). */
  core.double upperBound;


  PointDistributionBucket();

  PointDistributionBucket.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("lowerBound")) {
      lowerBound = _json["lowerBound"];
    }
    if (_json.containsKey("upperBound")) {
      upperBound = _json["upperBound"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (count != null) {
      _json["count"] = count;
    }
    if (lowerBound != null) {
      _json["lowerBound"] = lowerBound;
    }
    if (upperBound != null) {
      _json["upperBound"] = upperBound;
    }
    return _json;
  }
}


/**
 * The overflow bucket is a special bucket that does not have the upperBound
 * field; it includes all of the events that are no less than its lower bound.
 */
class PointDistributionOverflowBucket {
  /**
   * The number of events whose values are in the interval defined by this
   * bucket.
   */
  core.String count;

  /** The lower bound of the value interval of this bucket (inclusive). */
  core.double lowerBound;


  PointDistributionOverflowBucket();

  PointDistributionOverflowBucket.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("lowerBound")) {
      lowerBound = _json["lowerBound"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (count != null) {
      _json["count"] = count;
    }
    if (lowerBound != null) {
      _json["lowerBound"] = lowerBound;
    }
    return _json;
  }
}


/**
 * The underflow bucket is a special bucket that does not have the lowerBound
 * field; it includes all of the events that are less than its upper bound.
 */
class PointDistributionUnderflowBucket {
  /**
   * The number of events whose values are in the interval defined by this
   * bucket.
   */
  core.String count;

  /** The upper bound of the value interval of this bucket (exclusive). */
  core.double upperBound;


  PointDistributionUnderflowBucket();

  PointDistributionUnderflowBucket.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("upperBound")) {
      upperBound = _json["upperBound"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (count != null) {
      _json["count"] = count;
    }
    if (upperBound != null) {
      _json["upperBound"] = upperBound;
    }
    return _json;
  }
}


/**
 * The monitoring data is organized as metrics and stored as data points that
 * are recorded over time. Each data point represents information like the CPU
 * utilization of your virtual machine. A historical record of these data points
 * is called a time series.
 */
class Timeseries {
  /**
   * The data points of this time series. The points are listed in order of
   * their end timestamp, from younger to older.
   */
  core.List<Point> points;

  /** The descriptor of this time series. */
  TimeseriesDescriptor timeseriesDesc;


  Timeseries();

  Timeseries.fromJson(core.Map _json) {
    if (_json.containsKey("points")) {
      points = _json["points"].map((value) => new Point.fromJson(value)).toList();
    }
    if (_json.containsKey("timeseriesDesc")) {
      timeseriesDesc = new TimeseriesDescriptor.fromJson(_json["timeseriesDesc"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (points != null) {
      _json["points"] = points.map((value) => (value).toJson()).toList();
    }
    if (timeseriesDesc != null) {
      _json["timeseriesDesc"] = (timeseriesDesc).toJson();
    }
    return _json;
  }
}


/** TimeseriesDescriptor identifies a single time series. */
class TimeseriesDescriptor {
  /** The label's name. */
  core.Map<core.String, core.String> labels;

  /** The name of the metric. */
  core.String metric;

  /**
   * The Developers Console project number to which this time series belongs.
   */
  core.String project;


  TimeseriesDescriptor();

  TimeseriesDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("metric")) {
      metric = _json["metric"];
    }
    if (_json.containsKey("project")) {
      project = _json["project"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (metric != null) {
      _json["metric"] = metric;
    }
    if (project != null) {
      _json["project"] = project;
    }
    return _json;
  }
}


/** Not documented yet. */
class TimeseriesDescriptorLabel {
  /** The label's name. */
  core.String key;

  /** The label's value. */
  core.String value;


  TimeseriesDescriptorLabel();

  TimeseriesDescriptorLabel.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


