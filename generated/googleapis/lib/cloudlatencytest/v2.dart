// This is a generated file (see the discoveryapis_generator project).

library googleapis.cloudlatencytest.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudlatencytest/v2';

/** Reports latency data. */
class CloudlatencytestApi {
  /** View monitoring data for all of your Google Cloud and API projects */
  static const MonitoringReadonlyScope = "https://www.googleapis.com/auth/monitoring.readonly";


  final commons.ApiRequester _requester;

  StatscollectionResourceApi get statscollection => new StatscollectionResourceApi(_requester);

  CloudlatencytestApi(http.Client client, {core.String rootUrl: "https://cloudlatencytest-pa.googleapis.com/", core.String servicePath: "v2/statscollection/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class StatscollectionResourceApi {
  final commons.ApiRequester _requester;

  StatscollectionResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * RPC to update the new TCP stats.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [AggregatedStatsReply].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AggregatedStatsReply> updateaggregatedstats(AggregatedStats request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'updateaggregatedstats';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AggregatedStatsReply.fromJson(data));
  }

  /**
   * RPC to update the new TCP stats.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [StatsReply].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<StatsReply> updatestats(Stats request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'updatestats';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new StatsReply.fromJson(data));
  }

}



class AggregatedStats {
  core.List<Stats> stats;

  AggregatedStats();

  AggregatedStats.fromJson(core.Map _json) {
    if (_json.containsKey("stats")) {
      stats = _json["stats"].map((value) => new Stats.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (stats != null) {
      _json["stats"] = stats.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class AggregatedStatsReply {
  core.String testValue;

  AggregatedStatsReply();

  AggregatedStatsReply.fromJson(core.Map _json) {
    if (_json.containsKey("testValue")) {
      testValue = _json["testValue"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (testValue != null) {
      _json["testValue"] = testValue;
    }
    return _json;
  }
}

class DoubleValue {
  core.String label;
  core.double value;

  DoubleValue();

  DoubleValue.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (label != null) {
      _json["label"] = label;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class IntValue {
  core.String label;
  core.String value;

  IntValue();

  IntValue.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (label != null) {
      _json["label"] = label;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class Stats {
  core.List<DoubleValue> doubleValues;
  core.List<IntValue> intValues;
  core.List<StringValue> stringValues;
  core.double time;

  Stats();

  Stats.fromJson(core.Map _json) {
    if (_json.containsKey("doubleValues")) {
      doubleValues = _json["doubleValues"].map((value) => new DoubleValue.fromJson(value)).toList();
    }
    if (_json.containsKey("intValues")) {
      intValues = _json["intValues"].map((value) => new IntValue.fromJson(value)).toList();
    }
    if (_json.containsKey("stringValues")) {
      stringValues = _json["stringValues"].map((value) => new StringValue.fromJson(value)).toList();
    }
    if (_json.containsKey("time")) {
      time = _json["time"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (doubleValues != null) {
      _json["doubleValues"] = doubleValues.map((value) => (value).toJson()).toList();
    }
    if (intValues != null) {
      _json["intValues"] = intValues.map((value) => (value).toJson()).toList();
    }
    if (stringValues != null) {
      _json["stringValues"] = stringValues.map((value) => (value).toJson()).toList();
    }
    if (time != null) {
      _json["time"] = time;
    }
    return _json;
  }
}

class StatsReply {
  core.String testValue;

  StatsReply();

  StatsReply.fromJson(core.Map _json) {
    if (_json.containsKey("testValue")) {
      testValue = _json["testValue"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (testValue != null) {
      _json["testValue"] = testValue;
    }
    return _json;
  }
}

class StringValue {
  core.String label;
  core.String value;

  StringValue();

  StringValue.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (label != null) {
      _json["label"] = label;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}
