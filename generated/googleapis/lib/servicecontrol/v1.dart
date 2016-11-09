// This is a generated file (see the discoveryapis_generator project).

library googleapis.servicecontrol.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client servicecontrol/v1';

/**
 * Google Service Control provides control plane functionality to managed
 * services, such as logging, monitoring, and status checks.
 */
class ServicecontrolApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** Manage your Google Service Control data */
  static const ServicecontrolScope = "https://www.googleapis.com/auth/servicecontrol";


  final commons.ApiRequester _requester;

  ServicesResourceApi get services => new ServicesResourceApi(_requester);

  ServicecontrolApi(http.Client client, {core.String rootUrl: "https://servicecontrol.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ServicesResourceApi {
  final commons.ApiRequester _requester;

  ServicesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Checks an operation with Google Service Control to decide whether
   * the given operation should proceed. It should be called before the
   * operation is executed.
   *
   * If feasible, the client should cache the check results and reuse them for
   * up to 60s. In case of server errors, the client may rely on the cached
   * results for longer time.
   *
   * This method requires the `servicemanagement.services.check` permission
   * on the specified service. For more information, see
   * [Google Cloud IAM](https://cloud.google.com/iam).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [serviceName] - The service name as specified in its service configuration.
   * For example,
   * `"pubsub.googleapis.com"`.
   *
   * See google.api.Service for the definition of a service name.
   *
   * Completes with a [CheckResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CheckResponse> check(CheckRequest request, core.String serviceName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (serviceName == null) {
      throw new core.ArgumentError("Parameter serviceName is required.");
    }

    _url = 'v1/services/' + commons.Escaper.ecapeVariable('$serviceName') + ':check';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CheckResponse.fromJson(data));
  }

  /**
   * Reports operations to Google Service Control. It should be called
   * after the operation is completed.
   *
   * If feasible, the client should aggregate reporting data for up to 5s to
   * reduce API traffic. Limiting aggregation to 5s is to reduce data loss
   * during client crashes. Clients should carefully choose the aggregation
   * window to avoid data loss risk more than 0.01% for business and
   * compliance reasons.
   *
   * This method requires the `servicemanagement.services.report` permission
   * on the specified service. For more information, see
   * [Google Cloud IAM](https://cloud.google.com/iam).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [serviceName] - The service name as specified in its service configuration.
   * For example,
   * `"pubsub.googleapis.com"`.
   *
   * See google.api.Service for the definition of a service name.
   *
   * Completes with a [ReportResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ReportResponse> report(ReportRequest request, core.String serviceName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (serviceName == null) {
      throw new core.ArgumentError("Parameter serviceName is required.");
    }

    _url = 'v1/services/' + commons.Escaper.ecapeVariable('$serviceName') + ':report';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ReportResponse.fromJson(data));
  }

}



/**
 * Defines the errors to be returned in
 * google.api.servicecontrol.v1.CheckResponse.check_errors.
 */
class CheckError {
  /**
   * The error code.
   * Possible string values are:
   * - "ERROR_CODE_UNSPECIFIED" : This is never used in `CheckResponse`.
   * - "NOT_FOUND" : The consumer's project id was not found.
   * Same as google.rpc.Code.NOT_FOUND.
   * - "PERMISSION_DENIED" : The consumer doesn't have access to the specified
   * resource.
   * Same as google.rpc.Code.PERMISSION_DENIED.
   * - "RESOURCE_EXHAUSTED" : Quota check failed. Same as
   * google.rpc.Code.RESOURCE_EXHAUSTED.
   * - "SERVICE_NOT_ACTIVATED" : The consumer hasn't activated the service.
   * - "BILLING_DISABLED" : The consumer cannot access the service because
   * billing is disabled.
   * - "PROJECT_DELETED" : The consumer's project has been marked as deleted
   * (soft deletion).
   * - "PROJECT_INVALID" : The consumer's project number or id does not
   * represent a valid project.
   * - "IP_ADDRESS_BLOCKED" : The IP address of the consumer is invalid for the
   * specific consumer
   * project.
   * - "REFERER_BLOCKED" : The referer address of the consumer request is
   * invalid for the specific
   * consumer project.
   * - "CLIENT_APP_BLOCKED" : The client application of the consumer request is
   * invalid for the
   * specific consumer project.
   * - "API_KEY_INVALID" : The consumer's API key is invalid.
   * - "API_KEY_EXPIRED" : The consumer's API Key has expired.
   * - "API_KEY_NOT_FOUND" : The consumer's API Key was not found in config
   * record.
   * - "NAMESPACE_LOOKUP_UNAVAILABLE" : The backend server for looking up
   * project id/number is unavailable.
   * - "SERVICE_STATUS_UNAVAILABLE" : The backend server for checking service
   * status is unavailable.
   * - "BILLING_STATUS_UNAVAILABLE" : The backend server for checking billing
   * status is unavailable.
   */
  core.String code;
  /** Free-form text providing details on the error cause of the error. */
  core.String detail;

  CheckError();

  CheckError.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("detail")) {
      detail = _json["detail"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (detail != null) {
      _json["detail"] = detail;
    }
    return _json;
  }
}

/** Request message for the Check method. */
class CheckRequest {
  /** The operation to be checked. */
  Operation operation;
  /**
   * Specifies which version of service configuration should be used to process
   * the request.
   *
   * If unspecified or no matching version can be found, the
   * latest one will be used.
   */
  core.String serviceConfigId;

  CheckRequest();

  CheckRequest.fromJson(core.Map _json) {
    if (_json.containsKey("operation")) {
      operation = new Operation.fromJson(_json["operation"]);
    }
    if (_json.containsKey("serviceConfigId")) {
      serviceConfigId = _json["serviceConfigId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (operation != null) {
      _json["operation"] = (operation).toJson();
    }
    if (serviceConfigId != null) {
      _json["serviceConfigId"] = serviceConfigId;
    }
    return _json;
  }
}

/** Response message for the Check method. */
class CheckResponse {
  /**
   * Indicate the decision of the check.
   *
   * If no check errors are present, the service should process the operation.
   * Otherwise the service should use the list of errors to determine the
   * appropriate action.
   */
  core.List<CheckError> checkErrors;
  /**
   * The same operation_id value used in the CheckRequest.
   * Used for logging and diagnostics purposes.
   */
  core.String operationId;
  /** The actual config id used to process the request. */
  core.String serviceConfigId;

  CheckResponse();

  CheckResponse.fromJson(core.Map _json) {
    if (_json.containsKey("checkErrors")) {
      checkErrors = _json["checkErrors"].map((value) => new CheckError.fromJson(value)).toList();
    }
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("serviceConfigId")) {
      serviceConfigId = _json["serviceConfigId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (checkErrors != null) {
      _json["checkErrors"] = checkErrors.map((value) => (value).toJson()).toList();
    }
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (serviceConfigId != null) {
      _json["serviceConfigId"] = serviceConfigId;
    }
    return _json;
  }
}

/**
 * Distribution represents a frequency distribution of double-valued sample
 * points. It contains the size of the population of sample points plus
 * additional optional information:
 *
 *   - the arithmetic mean of the samples
 *   - the minimum and maximum of the samples
 *   - the sum-squared-deviation of the samples, used to compute variance
 *   - a histogram of the values of the sample points
 */
class Distribution {
  /**
   * The number of samples in each histogram bucket. `bucket_counts` are
   * optional. If present, they must sum to the `count` value.
   *
   * The buckets are defined below in `bucket_option`. There are N buckets.
   * `bucket_counts[0]` is the number of samples in the underflow bucket.
   * `bucket_counts[1]` to `bucket_counts[N-1]` are the numbers of samples
   * in each of the finite buckets. And `bucket_counts[N] is the number
   * of samples in the overflow bucket. See the comments of `bucket_option`
   * below for more details.
   *
   * Any suffix of trailing zeros may be omitted.
   */
  core.List<core.String> bucketCounts;
  /** The total number of samples in the distribution. Must be >= 0. */
  core.String count;
  /** Buckets with arbitrary user-provided width. */
  ExplicitBuckets explicitBuckets;
  /** Buckets with exponentially growing width. */
  ExponentialBuckets exponentialBuckets;
  /** Buckets with constant width. */
  LinearBuckets linearBuckets;
  /** The maximum of the population of values. Ignored if `count` is zero. */
  core.double maximum;
  /**
   * The arithmetic mean of the samples in the distribution. If `count` is
   * zero then this field must be zero.
   */
  core.double mean;
  /** The minimum of the population of values. Ignored if `count` is zero. */
  core.double minimum;
  /**
   * The sum of squared deviations from the mean:
   *   Sum[i=1..count]((x_i - mean)^2)
   * where each x_i is a sample values. If `count` is zero then this field
   * must be zero, otherwise validation of the request fails.
   */
  core.double sumOfSquaredDeviation;

  Distribution();

  Distribution.fromJson(core.Map _json) {
    if (_json.containsKey("bucketCounts")) {
      bucketCounts = _json["bucketCounts"];
    }
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("explicitBuckets")) {
      explicitBuckets = new ExplicitBuckets.fromJson(_json["explicitBuckets"]);
    }
    if (_json.containsKey("exponentialBuckets")) {
      exponentialBuckets = new ExponentialBuckets.fromJson(_json["exponentialBuckets"]);
    }
    if (_json.containsKey("linearBuckets")) {
      linearBuckets = new LinearBuckets.fromJson(_json["linearBuckets"]);
    }
    if (_json.containsKey("maximum")) {
      maximum = _json["maximum"];
    }
    if (_json.containsKey("mean")) {
      mean = _json["mean"];
    }
    if (_json.containsKey("minimum")) {
      minimum = _json["minimum"];
    }
    if (_json.containsKey("sumOfSquaredDeviation")) {
      sumOfSquaredDeviation = _json["sumOfSquaredDeviation"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bucketCounts != null) {
      _json["bucketCounts"] = bucketCounts;
    }
    if (count != null) {
      _json["count"] = count;
    }
    if (explicitBuckets != null) {
      _json["explicitBuckets"] = (explicitBuckets).toJson();
    }
    if (exponentialBuckets != null) {
      _json["exponentialBuckets"] = (exponentialBuckets).toJson();
    }
    if (linearBuckets != null) {
      _json["linearBuckets"] = (linearBuckets).toJson();
    }
    if (maximum != null) {
      _json["maximum"] = maximum;
    }
    if (mean != null) {
      _json["mean"] = mean;
    }
    if (minimum != null) {
      _json["minimum"] = minimum;
    }
    if (sumOfSquaredDeviation != null) {
      _json["sumOfSquaredDeviation"] = sumOfSquaredDeviation;
    }
    return _json;
  }
}

/** Describing buckets with arbitrary user-provided width. */
class ExplicitBuckets {
  /**
   * 'bound' is a list of strictly increasing boundaries between
   * buckets. Note that a list of length N-1 defines N buckets because
   * of fenceposting. See comments on `bucket_options` for details.
   *
   * The i'th finite bucket covers the interval
   *   [bound[i-1], bound[i])
   * where i ranges from 1 to bound_size() - 1. Note that there are no
   * finite buckets at all if 'bound' only contains a single element; in
   * that special case the single bound defines the boundary between the
   * underflow and overflow buckets.
   *
   * bucket number                   lower bound    upper bound
   *  i == 0 (underflow)              -inf           bound[i]
   *  0 < i < bound_size()            bound[i-1]     bound[i]
   *  i == bound_size() (overflow)    bound[i-1]     +inf
   */
  core.List<core.double> bounds;

  ExplicitBuckets();

  ExplicitBuckets.fromJson(core.Map _json) {
    if (_json.containsKey("bounds")) {
      bounds = _json["bounds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bounds != null) {
      _json["bounds"] = bounds;
    }
    return _json;
  }
}

/** Describing buckets with exponentially growing width. */
class ExponentialBuckets {
  /**
   * The i'th exponential bucket covers the interval
   *   [scale * growth_factor^(i-1), scale * growth_factor^i)
   * where i ranges from 1 to num_finite_buckets inclusive.
   * Must be larger than 1.0.
   */
  core.double growthFactor;
  /**
   * The number of finite buckets. With the underflow and overflow buckets,
   * the total number of buckets is `num_finite_buckets` + 2.
   * See comments on `bucket_options` for details.
   */
  core.int numFiniteBuckets;
  /**
   * The i'th exponential bucket covers the interval
   *   [scale * growth_factor^(i-1), scale * growth_factor^i)
   * where i ranges from 1 to num_finite_buckets inclusive.
   * Must be > 0.
   */
  core.double scale;

  ExponentialBuckets();

  ExponentialBuckets.fromJson(core.Map _json) {
    if (_json.containsKey("growthFactor")) {
      growthFactor = _json["growthFactor"];
    }
    if (_json.containsKey("numFiniteBuckets")) {
      numFiniteBuckets = _json["numFiniteBuckets"];
    }
    if (_json.containsKey("scale")) {
      scale = _json["scale"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (growthFactor != null) {
      _json["growthFactor"] = growthFactor;
    }
    if (numFiniteBuckets != null) {
      _json["numFiniteBuckets"] = numFiniteBuckets;
    }
    if (scale != null) {
      _json["scale"] = scale;
    }
    return _json;
  }
}

/** Describing buckets with constant width. */
class LinearBuckets {
  /**
   * The number of finite buckets. With the underflow and overflow buckets,
   * the total number of buckets is `num_finite_buckets` + 2.
   * See comments on `bucket_options` for details.
   */
  core.int numFiniteBuckets;
  /**
   * The i'th linear bucket covers the interval
   *   [offset + (i-1) * width, offset + i * width)
   * where i ranges from 1 to num_finite_buckets, inclusive.
   */
  core.double offset;
  /**
   * The i'th linear bucket covers the interval
   *   [offset + (i-1) * width, offset + i * width)
   * where i ranges from 1 to num_finite_buckets, inclusive.
   * Must be strictly positive.
   */
  core.double width;

  LinearBuckets();

  LinearBuckets.fromJson(core.Map _json) {
    if (_json.containsKey("numFiniteBuckets")) {
      numFiniteBuckets = _json["numFiniteBuckets"];
    }
    if (_json.containsKey("offset")) {
      offset = _json["offset"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (numFiniteBuckets != null) {
      _json["numFiniteBuckets"] = numFiniteBuckets;
    }
    if (offset != null) {
      _json["offset"] = offset;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/** An individual log entry. */
class LogEntry {
  /**
   * A unique ID for the log entry used for deduplication. If omitted,
   * the implementation will generate one based on operation_id.
   */
  core.String insertId;
  /**
   * A set of user-defined (key, value) data that provides additional
   * information about the log entry.
   */
  core.Map<core.String, core.String> labels;
  /**
   * Required. The log to which this log entry belongs. Examples: `"syslog"`,
   * `"book_log"`.
   */
  core.String name;
  /**
   * The log entry payload, represented as a protocol buffer that is
   * expressed as a JSON object. You can only pass `protoPayload`
   * values that belong to a set of approved types.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> protoPayload;
  /**
   * The severity of the log entry. The default value is
   * `LogSeverity.DEFAULT`.
   * Possible string values are:
   * - "DEFAULT" : (0) The log entry has no assigned severity level.
   * - "DEBUG" : (100) Debug or trace information.
   * - "INFO" : (200) Routine information, such as ongoing status or
   * performance.
   * - "NOTICE" : (300) Normal but significant events, such as start up, shut
   * down, or
   * a configuration change.
   * - "WARNING" : (400) Warning events might cause problems.
   * - "ERROR" : (500) Error events are likely to cause problems.
   * - "CRITICAL" : (600) Critical events cause more severe problems or outages.
   * - "ALERT" : (700) A person must take an action immediately.
   * - "EMERGENCY" : (800) One or more systems are unusable.
   */
  core.String severity;
  /**
   * The log entry payload, represented as a structure that
   * is expressed as a JSON object.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> structPayload;
  /** The log entry payload, represented as a Unicode string (UTF-8). */
  core.String textPayload;
  /**
   * The time the event described by the log entry occurred. If
   * omitted, defaults to operation start time.
   */
  core.String timestamp;

  LogEntry();

  LogEntry.fromJson(core.Map _json) {
    if (_json.containsKey("insertId")) {
      insertId = _json["insertId"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("protoPayload")) {
      protoPayload = _json["protoPayload"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("structPayload")) {
      structPayload = _json["structPayload"];
    }
    if (_json.containsKey("textPayload")) {
      textPayload = _json["textPayload"];
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (insertId != null) {
      _json["insertId"] = insertId;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (protoPayload != null) {
      _json["protoPayload"] = protoPayload;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (structPayload != null) {
      _json["structPayload"] = structPayload;
    }
    if (textPayload != null) {
      _json["textPayload"] = textPayload;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    return _json;
  }
}

/** Represents a single metric value. */
class MetricValue {
  /** A boolean value. */
  core.bool boolValue;
  /** A distribution value. */
  Distribution distributionValue;
  /** A double precision floating point value. */
  core.double doubleValue;
  /**
   * The end of the time period over which this metric value's measurement
   * applies.
   */
  core.String endTime;
  /** A signed 64-bit integer value. */
  core.String int64Value;
  /**
   * The labels describing the metric value.
   * See comments on google.api.servicecontrol.v1.Operation.labels for
   * the overriding relationship.
   */
  core.Map<core.String, core.String> labels;
  /**
   * The start of the time period over which this metric value's measurement
   * applies. The time period has different semantics for different metric
   * types (cumulative, delta, and gauge). See the metric definition
   * documentation in the service configuration for details.
   */
  core.String startTime;
  /** A text string value. */
  core.String stringValue;

  MetricValue();

  MetricValue.fromJson(core.Map _json) {
    if (_json.containsKey("boolValue")) {
      boolValue = _json["boolValue"];
    }
    if (_json.containsKey("distributionValue")) {
      distributionValue = new Distribution.fromJson(_json["distributionValue"]);
    }
    if (_json.containsKey("doubleValue")) {
      doubleValue = _json["doubleValue"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("int64Value")) {
      int64Value = _json["int64Value"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
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
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (int64Value != null) {
      _json["int64Value"] = int64Value;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}

/**
 * Represents a set of metric values in the same metric.
 * Each metric value in the set should have a unique combination of start time,
 * end time, and label values.
 */
class MetricValueSet {
  /** The metric name defined in the service configuration. */
  core.String metricName;
  /** The values in this metric. */
  core.List<MetricValue> metricValues;

  MetricValueSet();

  MetricValueSet.fromJson(core.Map _json) {
    if (_json.containsKey("metricName")) {
      metricName = _json["metricName"];
    }
    if (_json.containsKey("metricValues")) {
      metricValues = _json["metricValues"].map((value) => new MetricValue.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (metricName != null) {
      _json["metricName"] = metricName;
    }
    if (metricValues != null) {
      _json["metricValues"] = metricValues.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Represents information regarding an operation. */
class Operation {
  /**
   * Identity of the consumer who is using the service.
   * This field should be filled in for the operations initiated by a
   * consumer, but not for service-initiated operations that are
   * not related to a specific consumer.
   *
   * This can be in one of the following formats:
   *   project:<project_id>,
   *   project_number:<project_number>,
   *   api_key:<api_key>.
   */
  core.String consumerId;
  /**
   * End time of the operation.
   * Required when the operation is used in ServiceController.Report,
   * but optional when the operation is used in ServiceController.Check.
   */
  core.String endTime;
  /**
   * DO NOT USE. This is an experimental field.
   * Possible string values are:
   * - "LOW" : The API implementation may cache and aggregate the data.
   * The data may be lost when rare and unexpected system failures occur.
   * - "HIGH" : The API implementation doesn't cache and aggregate the data.
   * If the method returns successfully, it's guaranteed that the data has
   * been persisted in durable storage.
   */
  core.String importance;
  /**
   * Labels describing the operation. Only the following labels are allowed:
   *
   * - Labels describing monitored resources as defined in
   *   the service configuration.
   * - Default labels of metric values. When specified, labels defined in the
   *   metric value override these default.
   * - The following labels defined by Google Cloud Platform:
   *     - `cloud.googleapis.com/location` describing the location where the
   *        operation happened,
   *     - `servicecontrol.googleapis.com/user_agent` describing the user agent
   *        of the API request,
   *     - `servicecontrol.googleapis.com/service_agent` describing the service
   *        used to handle the API request (e.g. ESP),
   *     - `servicecontrol.googleapis.com/platform` describing the platform
   *        where the API is served (e.g. GAE, GCE, GKE).
   */
  core.Map<core.String, core.String> labels;
  /** Represents information to be logged. */
  core.List<LogEntry> logEntries;
  /**
   * Represents information about this operation. Each MetricValueSet
   * corresponds to a metric defined in the service configuration.
   * The data type used in the MetricValueSet must agree with
   * the data type specified in the metric definition.
   *
   * Within a single operation, it is not allowed to have more than one
   * MetricValue instances that have the same metric names and identical
   * label value combinations. If a request has such duplicated MetricValue
   * instances, the entire request is rejected with
   * an invalid argument error.
   */
  core.List<MetricValueSet> metricValueSets;
  /**
   * Identity of the operation. This must be unique within the scope of the
   * service that generated the operation. If the service calls
   * Check() and Report() on the same operation, the two calls should carry
   * the same id.
   *
   * UUID version 4 is recommended, though not required.
   * In scenarios where an operation is computed from existing information
   * and an idempotent id is desirable for deduplication purpose, UUID version 5
   * is recommended. See RFC 4122 for details.
   */
  core.String operationId;
  /** Fully qualified name of the operation. Reserved for future use. */
  core.String operationName;
  /** Required. Start time of the operation. */
  core.String startTime;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("consumerId")) {
      consumerId = _json["consumerId"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("importance")) {
      importance = _json["importance"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("logEntries")) {
      logEntries = _json["logEntries"].map((value) => new LogEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("metricValueSets")) {
      metricValueSets = _json["metricValueSets"].map((value) => new MetricValueSet.fromJson(value)).toList();
    }
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("operationName")) {
      operationName = _json["operationName"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (consumerId != null) {
      _json["consumerId"] = consumerId;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (importance != null) {
      _json["importance"] = importance;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (logEntries != null) {
      _json["logEntries"] = logEntries.map((value) => (value).toJson()).toList();
    }
    if (metricValueSets != null) {
      _json["metricValueSets"] = metricValueSets.map((value) => (value).toJson()).toList();
    }
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (operationName != null) {
      _json["operationName"] = operationName;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/** Represents the processing error of one `Operation` in the request. */
class ReportError {
  /** The Operation.operation_id value from the request. */
  core.String operationId;
  /** Details of the error when processing the `Operation`. */
  Status status;

  ReportError();

  ReportError.fromJson(core.Map _json) {
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}

/** Request message for the Report method. */
class ReportRequest {
  /**
   * Operations to be reported.
   *
   * Typically the service should report one operation per request.
   * Putting multiple operations into a single request is allowed, but should
   * be used only when multiple operations are natually available at the time
   * of the report.
   *
   * If multiple operations are in a single request, the total request size
   * should be no larger than 1MB. See ReportResponse.report_errors for
   * partial failure behavior.
   */
  core.List<Operation> operations;
  /**
   * Specifies which version of service config should be used to process the
   * request.
   *
   * If unspecified or no matching version can be found, the
   * latest one will be used.
   */
  core.String serviceConfigId;

  ReportRequest();

  ReportRequest.fromJson(core.Map _json) {
    if (_json.containsKey("operations")) {
      operations = _json["operations"].map((value) => new Operation.fromJson(value)).toList();
    }
    if (_json.containsKey("serviceConfigId")) {
      serviceConfigId = _json["serviceConfigId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (operations != null) {
      _json["operations"] = operations.map((value) => (value).toJson()).toList();
    }
    if (serviceConfigId != null) {
      _json["serviceConfigId"] = serviceConfigId;
    }
    return _json;
  }
}

/** Response message for the Report method. */
class ReportResponse {
  /**
   * Partial failures, one for each `Operation` in the request that failed
   * processing. There are three possible combinations of the RPC status:
   *
   * 1. The combination of a successful RPC status and an empty `report_errors`
   *    list indicates a complete success where all `Operations` in the
   *    request are processed successfully.
   * 2. The combination of a successful RPC status and a non-empty
   *    `report_errors` list indicates a partial success where some
   *    `Operations` in the request succeeded. Each
   *    `Operation` that failed processing has a corresponding item
   *    in this list.
   * 3. A failed RPC status indicates a general non-deterministic failure.
   *    When this happens, it's impossible to know which of the
   *    'Operations' in the request succeeded or failed.
   */
  core.List<ReportError> reportErrors;
  /** The actual config id used to process the request. */
  core.String serviceConfigId;

  ReportResponse();

  ReportResponse.fromJson(core.Map _json) {
    if (_json.containsKey("reportErrors")) {
      reportErrors = _json["reportErrors"].map((value) => new ReportError.fromJson(value)).toList();
    }
    if (_json.containsKey("serviceConfigId")) {
      serviceConfigId = _json["serviceConfigId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (reportErrors != null) {
      _json["reportErrors"] = reportErrors.map((value) => (value).toJson()).toList();
    }
    if (serviceConfigId != null) {
      _json["serviceConfigId"] = serviceConfigId;
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different
 * programming environments, including REST APIs and RPC APIs. It is used by
 * [gRPC](https://github.com/grpc). The error model is designed to be:
 *
 * - Simple to use and understand for most users
 * - Flexible enough to meet unexpected needs
 *
 * # Overview
 *
 * The `Status` message contains three pieces of data: error code, error
 * message,
 * and error details. The error code should be an enum value of
 * google.rpc.Code, but it may accept additional error codes if needed.  The
 * error message should be a developer-facing English message that helps
 * developers *understand* and *resolve* the error. If a localized user-facing
 * error message is needed, put the localized message in the error details or
 * localize it in the client. The optional error details may contain arbitrary
 * information about the error. There is a predefined set of error detail types
 * in the package `google.rpc` which can be used for common error conditions.
 *
 * # Language mapping
 *
 * The `Status` message is the logical representation of the error model, but it
 * is not necessarily the actual wire format. When the `Status` message is
 * exposed in different client libraries and different wire protocols, it can be
 * mapped differently. For example, it will likely be mapped to some exceptions
 * in Java, but more likely mapped to some error codes in C.
 *
 * # Other uses
 *
 * The error model and the `Status` message can be used in a variety of
 * environments, either with or without APIs, to provide a
 * consistent developer experience across different environments.
 *
 * Example uses of this error model include:
 *
 * - Partial errors. If a service needs to return partial errors to the client,
 *     it may embed the `Status` in the normal response to indicate the partial
 *     errors.
 *
 * - Workflow errors. A typical workflow has multiple steps. Each step may
 *     have a `Status` message for error reporting purpose.
 *
 * - Batch operations. If a client uses batch request and batch response, the
 *     `Status` message should be used directly inside batch response, one for
 *     each error sub-response.
 *
 * - Asynchronous operations. If an API call embeds asynchronous operation
 *     results in its response, the status of those operations should be
 *     represented directly using the `Status` message.
 *
 * - Logging. If some API errors are stored in logs, the message `Status` could
 * be used directly after any stripping needed for security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * A list of messages that carry the error details.  There will be a
   * common set of message types for APIs to use.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> details;
  /**
   * A developer-facing error message, which should be in English. Any
   * user-facing error message should be localized and sent in the
   * google.rpc.Status.details field, or localized by the client.
   */
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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
