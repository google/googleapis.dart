library googleapis_beta.cloudmonitoring.v2beta2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/cloudmonitoring/v2beta2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterDeleteMetricDescriptorResponse = 0;
buildDeleteMetricDescriptorResponse() {
  var o = new api.DeleteMetricDescriptorResponse();
  buildCounterDeleteMetricDescriptorResponse++;
  if (buildCounterDeleteMetricDescriptorResponse < 3) {
    o.kind = "foo";
  }
  buildCounterDeleteMetricDescriptorResponse--;
  return o;
}

checkDeleteMetricDescriptorResponse(api.DeleteMetricDescriptorResponse o) {
  buildCounterDeleteMetricDescriptorResponse++;
  if (buildCounterDeleteMetricDescriptorResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDeleteMetricDescriptorResponse--;
}

core.int buildCounterListMetricDescriptorsRequest = 0;
buildListMetricDescriptorsRequest() {
  var o = new api.ListMetricDescriptorsRequest();
  buildCounterListMetricDescriptorsRequest++;
  if (buildCounterListMetricDescriptorsRequest < 3) {
    o.kind = "foo";
  }
  buildCounterListMetricDescriptorsRequest--;
  return o;
}

checkListMetricDescriptorsRequest(api.ListMetricDescriptorsRequest o) {
  buildCounterListMetricDescriptorsRequest++;
  if (buildCounterListMetricDescriptorsRequest < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterListMetricDescriptorsRequest--;
}

buildUnnamed3667() {
  var o = new core.List<api.MetricDescriptor>();
  o.add(buildMetricDescriptor());
  o.add(buildMetricDescriptor());
  return o;
}

checkUnnamed3667(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0]);
  checkMetricDescriptor(o[1]);
}

core.int buildCounterListMetricDescriptorsResponse = 0;
buildListMetricDescriptorsResponse() {
  var o = new api.ListMetricDescriptorsResponse();
  buildCounterListMetricDescriptorsResponse++;
  if (buildCounterListMetricDescriptorsResponse < 3) {
    o.kind = "foo";
    o.metrics = buildUnnamed3667();
    o.nextPageToken = "foo";
  }
  buildCounterListMetricDescriptorsResponse--;
  return o;
}

checkListMetricDescriptorsResponse(api.ListMetricDescriptorsResponse o) {
  buildCounterListMetricDescriptorsResponse++;
  if (buildCounterListMetricDescriptorsResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3667(o.metrics);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMetricDescriptorsResponse--;
}

core.int buildCounterListTimeseriesDescriptorsRequest = 0;
buildListTimeseriesDescriptorsRequest() {
  var o = new api.ListTimeseriesDescriptorsRequest();
  buildCounterListTimeseriesDescriptorsRequest++;
  if (buildCounterListTimeseriesDescriptorsRequest < 3) {
    o.kind = "foo";
  }
  buildCounterListTimeseriesDescriptorsRequest--;
  return o;
}

checkListTimeseriesDescriptorsRequest(api.ListTimeseriesDescriptorsRequest o) {
  buildCounterListTimeseriesDescriptorsRequest++;
  if (buildCounterListTimeseriesDescriptorsRequest < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterListTimeseriesDescriptorsRequest--;
}

buildUnnamed3668() {
  var o = new core.List<api.TimeseriesDescriptor>();
  o.add(buildTimeseriesDescriptor());
  o.add(buildTimeseriesDescriptor());
  return o;
}

checkUnnamed3668(core.List<api.TimeseriesDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeseriesDescriptor(o[0]);
  checkTimeseriesDescriptor(o[1]);
}

core.int buildCounterListTimeseriesDescriptorsResponse = 0;
buildListTimeseriesDescriptorsResponse() {
  var o = new api.ListTimeseriesDescriptorsResponse();
  buildCounterListTimeseriesDescriptorsResponse++;
  if (buildCounterListTimeseriesDescriptorsResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.oldest = core.DateTime.parse("2002-02-27T14:01:02");
    o.timeseries = buildUnnamed3668();
    o.youngest = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterListTimeseriesDescriptorsResponse--;
  return o;
}

checkListTimeseriesDescriptorsResponse(api.ListTimeseriesDescriptorsResponse o) {
  buildCounterListTimeseriesDescriptorsResponse++;
  if (buildCounterListTimeseriesDescriptorsResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.oldest, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed3668(o.timeseries);
    unittest.expect(o.youngest, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterListTimeseriesDescriptorsResponse--;
}

core.int buildCounterListTimeseriesRequest = 0;
buildListTimeseriesRequest() {
  var o = new api.ListTimeseriesRequest();
  buildCounterListTimeseriesRequest++;
  if (buildCounterListTimeseriesRequest < 3) {
    o.kind = "foo";
  }
  buildCounterListTimeseriesRequest--;
  return o;
}

checkListTimeseriesRequest(api.ListTimeseriesRequest o) {
  buildCounterListTimeseriesRequest++;
  if (buildCounterListTimeseriesRequest < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterListTimeseriesRequest--;
}

buildUnnamed3669() {
  var o = new core.List<api.Timeseries>();
  o.add(buildTimeseries());
  o.add(buildTimeseries());
  return o;
}

checkUnnamed3669(core.List<api.Timeseries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeseries(o[0]);
  checkTimeseries(o[1]);
}

core.int buildCounterListTimeseriesResponse = 0;
buildListTimeseriesResponse() {
  var o = new api.ListTimeseriesResponse();
  buildCounterListTimeseriesResponse++;
  if (buildCounterListTimeseriesResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.oldest = core.DateTime.parse("2002-02-27T14:01:02");
    o.timeseries = buildUnnamed3669();
    o.youngest = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterListTimeseriesResponse--;
  return o;
}

checkListTimeseriesResponse(api.ListTimeseriesResponse o) {
  buildCounterListTimeseriesResponse++;
  if (buildCounterListTimeseriesResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.oldest, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed3669(o.timeseries);
    unittest.expect(o.youngest, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterListTimeseriesResponse--;
}

buildUnnamed3670() {
  var o = new core.List<api.MetricDescriptorLabelDescriptor>();
  o.add(buildMetricDescriptorLabelDescriptor());
  o.add(buildMetricDescriptorLabelDescriptor());
  return o;
}

checkUnnamed3670(core.List<api.MetricDescriptorLabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptorLabelDescriptor(o[0]);
  checkMetricDescriptorLabelDescriptor(o[1]);
}

core.int buildCounterMetricDescriptor = 0;
buildMetricDescriptor() {
  var o = new api.MetricDescriptor();
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    o.description = "foo";
    o.labels = buildUnnamed3670();
    o.name = "foo";
    o.project = "foo";
    o.typeDescriptor = buildMetricDescriptorTypeDescriptor();
  }
  buildCounterMetricDescriptor--;
  return o;
}

checkMetricDescriptor(api.MetricDescriptor o) {
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3670(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.project, unittest.equals('foo'));
    checkMetricDescriptorTypeDescriptor(o.typeDescriptor);
  }
  buildCounterMetricDescriptor--;
}

core.int buildCounterMetricDescriptorLabelDescriptor = 0;
buildMetricDescriptorLabelDescriptor() {
  var o = new api.MetricDescriptorLabelDescriptor();
  buildCounterMetricDescriptorLabelDescriptor++;
  if (buildCounterMetricDescriptorLabelDescriptor < 3) {
    o.description = "foo";
    o.key = "foo";
  }
  buildCounterMetricDescriptorLabelDescriptor--;
  return o;
}

checkMetricDescriptorLabelDescriptor(api.MetricDescriptorLabelDescriptor o) {
  buildCounterMetricDescriptorLabelDescriptor++;
  if (buildCounterMetricDescriptorLabelDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterMetricDescriptorLabelDescriptor--;
}

core.int buildCounterMetricDescriptorTypeDescriptor = 0;
buildMetricDescriptorTypeDescriptor() {
  var o = new api.MetricDescriptorTypeDescriptor();
  buildCounterMetricDescriptorTypeDescriptor++;
  if (buildCounterMetricDescriptorTypeDescriptor < 3) {
    o.metricType = "foo";
    o.valueType = "foo";
  }
  buildCounterMetricDescriptorTypeDescriptor--;
  return o;
}

checkMetricDescriptorTypeDescriptor(api.MetricDescriptorTypeDescriptor o) {
  buildCounterMetricDescriptorTypeDescriptor++;
  if (buildCounterMetricDescriptorTypeDescriptor < 3) {
    unittest.expect(o.metricType, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterMetricDescriptorTypeDescriptor--;
}

core.int buildCounterPoint = 0;
buildPoint() {
  var o = new api.Point();
  buildCounterPoint++;
  if (buildCounterPoint < 3) {
    o.boolValue = true;
    o.distributionValue = buildPointDistribution();
    o.doubleValue = 42.0;
    o.end = core.DateTime.parse("2002-02-27T14:01:02");
    o.int64Value = "foo";
    o.start = core.DateTime.parse("2002-02-27T14:01:02");
    o.stringValue = "foo";
  }
  buildCounterPoint--;
  return o;
}

checkPoint(api.Point o) {
  buildCounterPoint++;
  if (buildCounterPoint < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    checkPointDistribution(o.distributionValue);
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    unittest.expect(o.end, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.int64Value, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterPoint--;
}

buildUnnamed3671() {
  var o = new core.List<api.PointDistributionBucket>();
  o.add(buildPointDistributionBucket());
  o.add(buildPointDistributionBucket());
  return o;
}

checkUnnamed3671(core.List<api.PointDistributionBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPointDistributionBucket(o[0]);
  checkPointDistributionBucket(o[1]);
}

core.int buildCounterPointDistribution = 0;
buildPointDistribution() {
  var o = new api.PointDistribution();
  buildCounterPointDistribution++;
  if (buildCounterPointDistribution < 3) {
    o.buckets = buildUnnamed3671();
    o.overflowBucket = buildPointDistributionOverflowBucket();
    o.underflowBucket = buildPointDistributionUnderflowBucket();
  }
  buildCounterPointDistribution--;
  return o;
}

checkPointDistribution(api.PointDistribution o) {
  buildCounterPointDistribution++;
  if (buildCounterPointDistribution < 3) {
    checkUnnamed3671(o.buckets);
    checkPointDistributionOverflowBucket(o.overflowBucket);
    checkPointDistributionUnderflowBucket(o.underflowBucket);
  }
  buildCounterPointDistribution--;
}

core.int buildCounterPointDistributionBucket = 0;
buildPointDistributionBucket() {
  var o = new api.PointDistributionBucket();
  buildCounterPointDistributionBucket++;
  if (buildCounterPointDistributionBucket < 3) {
    o.count = "foo";
    o.lowerBound = 42.0;
    o.upperBound = 42.0;
  }
  buildCounterPointDistributionBucket--;
  return o;
}

checkPointDistributionBucket(api.PointDistributionBucket o) {
  buildCounterPointDistributionBucket++;
  if (buildCounterPointDistributionBucket < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.lowerBound, unittest.equals(42.0));
    unittest.expect(o.upperBound, unittest.equals(42.0));
  }
  buildCounterPointDistributionBucket--;
}

core.int buildCounterPointDistributionOverflowBucket = 0;
buildPointDistributionOverflowBucket() {
  var o = new api.PointDistributionOverflowBucket();
  buildCounterPointDistributionOverflowBucket++;
  if (buildCounterPointDistributionOverflowBucket < 3) {
    o.count = "foo";
    o.lowerBound = 42.0;
  }
  buildCounterPointDistributionOverflowBucket--;
  return o;
}

checkPointDistributionOverflowBucket(api.PointDistributionOverflowBucket o) {
  buildCounterPointDistributionOverflowBucket++;
  if (buildCounterPointDistributionOverflowBucket < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.lowerBound, unittest.equals(42.0));
  }
  buildCounterPointDistributionOverflowBucket--;
}

core.int buildCounterPointDistributionUnderflowBucket = 0;
buildPointDistributionUnderflowBucket() {
  var o = new api.PointDistributionUnderflowBucket();
  buildCounterPointDistributionUnderflowBucket++;
  if (buildCounterPointDistributionUnderflowBucket < 3) {
    o.count = "foo";
    o.upperBound = 42.0;
  }
  buildCounterPointDistributionUnderflowBucket--;
  return o;
}

checkPointDistributionUnderflowBucket(api.PointDistributionUnderflowBucket o) {
  buildCounterPointDistributionUnderflowBucket++;
  if (buildCounterPointDistributionUnderflowBucket < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.upperBound, unittest.equals(42.0));
  }
  buildCounterPointDistributionUnderflowBucket--;
}

buildUnnamed3672() {
  var o = new core.List<api.Point>();
  o.add(buildPoint());
  o.add(buildPoint());
  return o;
}

checkUnnamed3672(core.List<api.Point> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPoint(o[0]);
  checkPoint(o[1]);
}

core.int buildCounterTimeseries = 0;
buildTimeseries() {
  var o = new api.Timeseries();
  buildCounterTimeseries++;
  if (buildCounterTimeseries < 3) {
    o.points = buildUnnamed3672();
    o.timeseriesDesc = buildTimeseriesDescriptor();
  }
  buildCounterTimeseries--;
  return o;
}

checkTimeseries(api.Timeseries o) {
  buildCounterTimeseries++;
  if (buildCounterTimeseries < 3) {
    checkUnnamed3672(o.points);
    checkTimeseriesDescriptor(o.timeseriesDesc);
  }
  buildCounterTimeseries--;
}

buildUnnamed3673() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3673(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterTimeseriesDescriptor = 0;
buildTimeseriesDescriptor() {
  var o = new api.TimeseriesDescriptor();
  buildCounterTimeseriesDescriptor++;
  if (buildCounterTimeseriesDescriptor < 3) {
    o.labels = buildUnnamed3673();
    o.metric = "foo";
    o.project = "foo";
  }
  buildCounterTimeseriesDescriptor--;
  return o;
}

checkTimeseriesDescriptor(api.TimeseriesDescriptor o) {
  buildCounterTimeseriesDescriptor++;
  if (buildCounterTimeseriesDescriptor < 3) {
    checkUnnamed3673(o.labels);
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.project, unittest.equals('foo'));
  }
  buildCounterTimeseriesDescriptor--;
}

core.int buildCounterTimeseriesDescriptorLabel = 0;
buildTimeseriesDescriptorLabel() {
  var o = new api.TimeseriesDescriptorLabel();
  buildCounterTimeseriesDescriptorLabel++;
  if (buildCounterTimeseriesDescriptorLabel < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterTimeseriesDescriptorLabel--;
  return o;
}

checkTimeseriesDescriptorLabel(api.TimeseriesDescriptorLabel o) {
  buildCounterTimeseriesDescriptorLabel++;
  if (buildCounterTimeseriesDescriptorLabel < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterTimeseriesDescriptorLabel--;
}

core.int buildCounterTimeseriesPoint = 0;
buildTimeseriesPoint() {
  var o = new api.TimeseriesPoint();
  buildCounterTimeseriesPoint++;
  if (buildCounterTimeseriesPoint < 3) {
    o.point = buildPoint();
    o.timeseriesDesc = buildTimeseriesDescriptor();
  }
  buildCounterTimeseriesPoint--;
  return o;
}

checkTimeseriesPoint(api.TimeseriesPoint o) {
  buildCounterTimeseriesPoint++;
  if (buildCounterTimeseriesPoint < 3) {
    checkPoint(o.point);
    checkTimeseriesDescriptor(o.timeseriesDesc);
  }
  buildCounterTimeseriesPoint--;
}

buildUnnamed3674() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3674(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3675() {
  var o = new core.List<api.TimeseriesPoint>();
  o.add(buildTimeseriesPoint());
  o.add(buildTimeseriesPoint());
  return o;
}

checkUnnamed3675(core.List<api.TimeseriesPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeseriesPoint(o[0]);
  checkTimeseriesPoint(o[1]);
}

core.int buildCounterWriteTimeseriesRequest = 0;
buildWriteTimeseriesRequest() {
  var o = new api.WriteTimeseriesRequest();
  buildCounterWriteTimeseriesRequest++;
  if (buildCounterWriteTimeseriesRequest < 3) {
    o.commonLabels = buildUnnamed3674();
    o.timeseries = buildUnnamed3675();
  }
  buildCounterWriteTimeseriesRequest--;
  return o;
}

checkWriteTimeseriesRequest(api.WriteTimeseriesRequest o) {
  buildCounterWriteTimeseriesRequest++;
  if (buildCounterWriteTimeseriesRequest < 3) {
    checkUnnamed3674(o.commonLabels);
    checkUnnamed3675(o.timeseries);
  }
  buildCounterWriteTimeseriesRequest--;
}

core.int buildCounterWriteTimeseriesResponse = 0;
buildWriteTimeseriesResponse() {
  var o = new api.WriteTimeseriesResponse();
  buildCounterWriteTimeseriesResponse++;
  if (buildCounterWriteTimeseriesResponse < 3) {
    o.kind = "foo";
  }
  buildCounterWriteTimeseriesResponse--;
  return o;
}

checkWriteTimeseriesResponse(api.WriteTimeseriesResponse o) {
  buildCounterWriteTimeseriesResponse++;
  if (buildCounterWriteTimeseriesResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterWriteTimeseriesResponse--;
}

buildUnnamed3676() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3676(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3677() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3677(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-DeleteMetricDescriptorResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteMetricDescriptorResponse();
      var od = new api.DeleteMetricDescriptorResponse.fromJson(o.toJson());
      checkDeleteMetricDescriptorResponse(od);
    });
  });


  unittest.group("obj-schema-ListMetricDescriptorsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMetricDescriptorsRequest();
      var od = new api.ListMetricDescriptorsRequest.fromJson(o.toJson());
      checkListMetricDescriptorsRequest(od);
    });
  });


  unittest.group("obj-schema-ListMetricDescriptorsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMetricDescriptorsResponse();
      var od = new api.ListMetricDescriptorsResponse.fromJson(o.toJson());
      checkListMetricDescriptorsResponse(od);
    });
  });


  unittest.group("obj-schema-ListTimeseriesDescriptorsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTimeseriesDescriptorsRequest();
      var od = new api.ListTimeseriesDescriptorsRequest.fromJson(o.toJson());
      checkListTimeseriesDescriptorsRequest(od);
    });
  });


  unittest.group("obj-schema-ListTimeseriesDescriptorsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTimeseriesDescriptorsResponse();
      var od = new api.ListTimeseriesDescriptorsResponse.fromJson(o.toJson());
      checkListTimeseriesDescriptorsResponse(od);
    });
  });


  unittest.group("obj-schema-ListTimeseriesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTimeseriesRequest();
      var od = new api.ListTimeseriesRequest.fromJson(o.toJson());
      checkListTimeseriesRequest(od);
    });
  });


  unittest.group("obj-schema-ListTimeseriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTimeseriesResponse();
      var od = new api.ListTimeseriesResponse.fromJson(o.toJson());
      checkListTimeseriesResponse(od);
    });
  });


  unittest.group("obj-schema-MetricDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricDescriptor();
      var od = new api.MetricDescriptor.fromJson(o.toJson());
      checkMetricDescriptor(od);
    });
  });


  unittest.group("obj-schema-MetricDescriptorLabelDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricDescriptorLabelDescriptor();
      var od = new api.MetricDescriptorLabelDescriptor.fromJson(o.toJson());
      checkMetricDescriptorLabelDescriptor(od);
    });
  });


  unittest.group("obj-schema-MetricDescriptorTypeDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricDescriptorTypeDescriptor();
      var od = new api.MetricDescriptorTypeDescriptor.fromJson(o.toJson());
      checkMetricDescriptorTypeDescriptor(od);
    });
  });


  unittest.group("obj-schema-Point", () {
    unittest.test("to-json--from-json", () {
      var o = buildPoint();
      var od = new api.Point.fromJson(o.toJson());
      checkPoint(od);
    });
  });


  unittest.group("obj-schema-PointDistribution", () {
    unittest.test("to-json--from-json", () {
      var o = buildPointDistribution();
      var od = new api.PointDistribution.fromJson(o.toJson());
      checkPointDistribution(od);
    });
  });


  unittest.group("obj-schema-PointDistributionBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildPointDistributionBucket();
      var od = new api.PointDistributionBucket.fromJson(o.toJson());
      checkPointDistributionBucket(od);
    });
  });


  unittest.group("obj-schema-PointDistributionOverflowBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildPointDistributionOverflowBucket();
      var od = new api.PointDistributionOverflowBucket.fromJson(o.toJson());
      checkPointDistributionOverflowBucket(od);
    });
  });


  unittest.group("obj-schema-PointDistributionUnderflowBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildPointDistributionUnderflowBucket();
      var od = new api.PointDistributionUnderflowBucket.fromJson(o.toJson());
      checkPointDistributionUnderflowBucket(od);
    });
  });


  unittest.group("obj-schema-Timeseries", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeseries();
      var od = new api.Timeseries.fromJson(o.toJson());
      checkTimeseries(od);
    });
  });


  unittest.group("obj-schema-TimeseriesDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeseriesDescriptor();
      var od = new api.TimeseriesDescriptor.fromJson(o.toJson());
      checkTimeseriesDescriptor(od);
    });
  });


  unittest.group("obj-schema-TimeseriesDescriptorLabel", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeseriesDescriptorLabel();
      var od = new api.TimeseriesDescriptorLabel.fromJson(o.toJson());
      checkTimeseriesDescriptorLabel(od);
    });
  });


  unittest.group("obj-schema-TimeseriesPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeseriesPoint();
      var od = new api.TimeseriesPoint.fromJson(o.toJson());
      checkTimeseriesPoint(od);
    });
  });


  unittest.group("obj-schema-WriteTimeseriesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteTimeseriesRequest();
      var od = new api.WriteTimeseriesRequest.fromJson(o.toJson());
      checkWriteTimeseriesRequest(od);
    });
  });


  unittest.group("obj-schema-WriteTimeseriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteTimeseriesResponse();
      var od = new api.WriteTimeseriesResponse.fromJson(o.toJson());
      checkWriteTimeseriesResponse(od);
    });
  });


  unittest.group("resource-MetricDescriptorsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.MetricDescriptorsResourceApi res = new api.CloudmonitoringApi(mock).metricDescriptors;
      var arg_request = buildMetricDescriptor();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.MetricDescriptor.fromJson(json);
        checkMetricDescriptor(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMetricDescriptor());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_project).then(unittest.expectAsync(((api.MetricDescriptor response) {
        checkMetricDescriptor(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.MetricDescriptorsResourceApi res = new api.CloudmonitoringApi(mock).metricDescriptors;
      var arg_project = "foo";
      var arg_metric = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeleteMetricDescriptorResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_metric).then(unittest.expectAsync(((api.DeleteMetricDescriptorResponse response) {
        checkDeleteMetricDescriptorResponse(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.MetricDescriptorsResourceApi res = new api.CloudmonitoringApi(mock).metricDescriptors;
      var arg_request = buildListMetricDescriptorsRequest();
      var arg_project = "foo";
      var arg_count = 42;
      var arg_pageToken = "foo";
      var arg_query = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ListMetricDescriptorsRequest.fromJson(json);
        checkListMetricDescriptorsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["count"].first), unittest.equals(arg_count));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListMetricDescriptorsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_request, arg_project, count: arg_count, pageToken: arg_pageToken, query: arg_query).then(unittest.expectAsync(((api.ListMetricDescriptorsResponse response) {
        checkListMetricDescriptorsResponse(response);
      })));
    });

  });


  unittest.group("resource-TimeseriesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.TimeseriesResourceApi res = new api.CloudmonitoringApi(mock).timeseries;
      var arg_request = buildListTimeseriesRequest();
      var arg_project = "foo";
      var arg_metric = "foo";
      var arg_youngest = "foo";
      var arg_aggregator = "foo";
      var arg_count = 42;
      var arg_labels = buildUnnamed3676();
      var arg_oldest = "foo";
      var arg_pageToken = "foo";
      var arg_timespan = "foo";
      var arg_window = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ListTimeseriesRequest.fromJson(json);
        checkListTimeseriesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["youngest"].first, unittest.equals(arg_youngest));
        unittest.expect(queryMap["aggregator"].first, unittest.equals(arg_aggregator));
        unittest.expect(core.int.parse(queryMap["count"].first), unittest.equals(arg_count));
        unittest.expect(queryMap["labels"], unittest.equals(arg_labels));
        unittest.expect(queryMap["oldest"].first, unittest.equals(arg_oldest));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["timespan"].first, unittest.equals(arg_timespan));
        unittest.expect(queryMap["window"].first, unittest.equals(arg_window));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListTimeseriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_request, arg_project, arg_metric, arg_youngest, aggregator: arg_aggregator, count: arg_count, labels: arg_labels, oldest: arg_oldest, pageToken: arg_pageToken, timespan: arg_timespan, window: arg_window).then(unittest.expectAsync(((api.ListTimeseriesResponse response) {
        checkListTimeseriesResponse(response);
      })));
    });

    unittest.test("method--write", () {

      var mock = new HttpServerMock();
      api.TimeseriesResourceApi res = new api.CloudmonitoringApi(mock).timeseries;
      var arg_request = buildWriteTimeseriesRequest();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.WriteTimeseriesRequest.fromJson(json);
        checkWriteTimeseriesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildWriteTimeseriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.write(arg_request, arg_project).then(unittest.expectAsync(((api.WriteTimeseriesResponse response) {
        checkWriteTimeseriesResponse(response);
      })));
    });

  });


  unittest.group("resource-TimeseriesDescriptorsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.TimeseriesDescriptorsResourceApi res = new api.CloudmonitoringApi(mock).timeseriesDescriptors;
      var arg_request = buildListTimeseriesDescriptorsRequest();
      var arg_project = "foo";
      var arg_metric = "foo";
      var arg_youngest = "foo";
      var arg_aggregator = "foo";
      var arg_count = 42;
      var arg_labels = buildUnnamed3677();
      var arg_oldest = "foo";
      var arg_pageToken = "foo";
      var arg_timespan = "foo";
      var arg_window = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ListTimeseriesDescriptorsRequest.fromJson(json);
        checkListTimeseriesDescriptorsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["youngest"].first, unittest.equals(arg_youngest));
        unittest.expect(queryMap["aggregator"].first, unittest.equals(arg_aggregator));
        unittest.expect(core.int.parse(queryMap["count"].first), unittest.equals(arg_count));
        unittest.expect(queryMap["labels"], unittest.equals(arg_labels));
        unittest.expect(queryMap["oldest"].first, unittest.equals(arg_oldest));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["timespan"].first, unittest.equals(arg_timespan));
        unittest.expect(queryMap["window"].first, unittest.equals(arg_window));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListTimeseriesDescriptorsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_request, arg_project, arg_metric, arg_youngest, aggregator: arg_aggregator, count: arg_count, labels: arg_labels, oldest: arg_oldest, pageToken: arg_pageToken, timespan: arg_timespan, window: arg_window).then(unittest.expectAsync(((api.ListTimeseriesDescriptorsResponse response) {
        checkListTimeseriesDescriptorsResponse(response);
      })));
    });

  });


}

