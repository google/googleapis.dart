library googleapis.remotebuildexecution.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/remotebuildexecution/v2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
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

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterBuildBazelRemoteExecutionV2Action = 0;
buildBuildBazelRemoteExecutionV2Action() {
  var o = new api.BuildBazelRemoteExecutionV2Action();
  buildCounterBuildBazelRemoteExecutionV2Action++;
  if (buildCounterBuildBazelRemoteExecutionV2Action < 3) {
    o.commandDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.doNotCache = true;
    o.inputRootDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.timeout = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2Action--;
  return o;
}

checkBuildBazelRemoteExecutionV2Action(
    api.BuildBazelRemoteExecutionV2Action o) {
  buildCounterBuildBazelRemoteExecutionV2Action++;
  if (buildCounterBuildBazelRemoteExecutionV2Action < 3) {
    checkBuildBazelRemoteExecutionV2Digest(o.commandDigest);
    unittest.expect(o.doNotCache, unittest.isTrue);
    checkBuildBazelRemoteExecutionV2Digest(o.inputRootDigest);
    unittest.expect(o.timeout, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2Action--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities =
    0;
buildBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities() {
  var o = new api.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities();
  buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities <
      3) {
    o.updateEnabled = true;
  }
  buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities--;
  return o;
}

checkBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities(
    api.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities o) {
  buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities <
      3) {
    unittest.expect(o.updateEnabled, unittest.isTrue);
  }
  buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities--;
}

buildUnnamed1266() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2OutputDirectory>();
  o.add(buildBuildBazelRemoteExecutionV2OutputDirectory());
  o.add(buildBuildBazelRemoteExecutionV2OutputDirectory());
  return o;
}

checkUnnamed1266(core.List<api.BuildBazelRemoteExecutionV2OutputDirectory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2OutputDirectory(o[0]);
  checkBuildBazelRemoteExecutionV2OutputDirectory(o[1]);
}

buildUnnamed1267() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2OutputSymlink>();
  o.add(buildBuildBazelRemoteExecutionV2OutputSymlink());
  o.add(buildBuildBazelRemoteExecutionV2OutputSymlink());
  return o;
}

checkUnnamed1267(core.List<api.BuildBazelRemoteExecutionV2OutputSymlink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2OutputSymlink(o[0]);
  checkBuildBazelRemoteExecutionV2OutputSymlink(o[1]);
}

buildUnnamed1268() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2OutputSymlink>();
  o.add(buildBuildBazelRemoteExecutionV2OutputSymlink());
  o.add(buildBuildBazelRemoteExecutionV2OutputSymlink());
  return o;
}

checkUnnamed1268(core.List<api.BuildBazelRemoteExecutionV2OutputSymlink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2OutputSymlink(o[0]);
  checkBuildBazelRemoteExecutionV2OutputSymlink(o[1]);
}

buildUnnamed1269() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2OutputFile>();
  o.add(buildBuildBazelRemoteExecutionV2OutputFile());
  o.add(buildBuildBazelRemoteExecutionV2OutputFile());
  return o;
}

checkUnnamed1269(core.List<api.BuildBazelRemoteExecutionV2OutputFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2OutputFile(o[0]);
  checkBuildBazelRemoteExecutionV2OutputFile(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2ActionResult = 0;
buildBuildBazelRemoteExecutionV2ActionResult() {
  var o = new api.BuildBazelRemoteExecutionV2ActionResult();
  buildCounterBuildBazelRemoteExecutionV2ActionResult++;
  if (buildCounterBuildBazelRemoteExecutionV2ActionResult < 3) {
    o.executionMetadata =
        buildBuildBazelRemoteExecutionV2ExecutedActionMetadata();
    o.exitCode = 42;
    o.outputDirectories = buildUnnamed1266();
    o.outputDirectorySymlinks = buildUnnamed1267();
    o.outputFileSymlinks = buildUnnamed1268();
    o.outputFiles = buildUnnamed1269();
    o.stderrDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.stderrRaw = "foo";
    o.stdoutDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.stdoutRaw = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2ActionResult--;
  return o;
}

checkBuildBazelRemoteExecutionV2ActionResult(
    api.BuildBazelRemoteExecutionV2ActionResult o) {
  buildCounterBuildBazelRemoteExecutionV2ActionResult++;
  if (buildCounterBuildBazelRemoteExecutionV2ActionResult < 3) {
    checkBuildBazelRemoteExecutionV2ExecutedActionMetadata(o.executionMetadata);
    unittest.expect(o.exitCode, unittest.equals(42));
    checkUnnamed1266(o.outputDirectories);
    checkUnnamed1267(o.outputDirectorySymlinks);
    checkUnnamed1268(o.outputFileSymlinks);
    checkUnnamed1269(o.outputFiles);
    checkBuildBazelRemoteExecutionV2Digest(o.stderrDigest);
    unittest.expect(o.stderrRaw, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2Digest(o.stdoutDigest);
    unittest.expect(o.stdoutRaw, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2ActionResult--;
}

buildUnnamed1270() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2Digest>();
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  return o;
}

checkUnnamed1270(core.List<api.BuildBazelRemoteExecutionV2Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2Digest(o[0]);
  checkBuildBazelRemoteExecutionV2Digest(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest = 0;
buildBuildBazelRemoteExecutionV2BatchReadBlobsRequest() {
  var o = new api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest();
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest < 3) {
    o.digests = buildUnnamed1270();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest--;
  return o;
}

checkBuildBazelRemoteExecutionV2BatchReadBlobsRequest(
    api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest o) {
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest < 3) {
    checkUnnamed1270(o.digests);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest--;
}

buildUnnamed1271() {
  var o = new core
      .List<api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse>();
  o.add(buildBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse());
  o.add(buildBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse());
  return o;
}

checkUnnamed1271(
    core.List<api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse(o[0]);
  checkBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse = 0;
buildBuildBazelRemoteExecutionV2BatchReadBlobsResponse() {
  var o = new api.BuildBazelRemoteExecutionV2BatchReadBlobsResponse();
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse < 3) {
    o.responses = buildUnnamed1271();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse--;
  return o;
}

checkBuildBazelRemoteExecutionV2BatchReadBlobsResponse(
    api.BuildBazelRemoteExecutionV2BatchReadBlobsResponse o) {
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse < 3) {
    checkUnnamed1271(o.responses);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse--;
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse =
    0;
buildBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse() {
  var o = new api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse();
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse <
      3) {
    o.data = "foo";
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.status = buildGoogleRpcStatus();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse--;
  return o;
}

checkBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse(
    api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse o) {
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse <
      3) {
    unittest.expect(o.data, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2Digest(o.digest);
    checkGoogleRpcStatus(o.status);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse--;
}

buildUnnamed1272() {
  var o = new core
      .List<api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest>();
  o.add(buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest());
  o.add(buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest());
  return o;
}

checkUnnamed1272(
    core.List<api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest(o[0]);
  checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest = 0;
buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest() {
  var o = new api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest();
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest < 3) {
    o.requests = buildUnnamed1272();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest--;
  return o;
}

checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest(
    api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest o) {
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest < 3) {
    checkUnnamed1272(o.requests);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest--;
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest =
    0;
buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest() {
  var o = new api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest();
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest <
      3) {
    o.data = "foo";
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest--;
  return o;
}

checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest(
    api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest o) {
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest <
      3) {
    unittest.expect(o.data, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2Digest(o.digest);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest--;
}

buildUnnamed1273() {
  var o = new core
      .List<api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse>();
  o.add(buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse());
  o.add(buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse());
  return o;
}

checkUnnamed1273(
    core.List<api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse(o[0]);
  checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse = 0;
buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse() {
  var o = new api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse();
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse < 3) {
    o.responses = buildUnnamed1273();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse--;
  return o;
}

checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse(
    api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse o) {
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse < 3) {
    checkUnnamed1273(o.responses);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse--;
}

core.int
    buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse = 0;
buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse() {
  var o = new api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse();
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse <
      3) {
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.status = buildGoogleRpcStatus();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse--;
  return o;
}

checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse(
    api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse o) {
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse <
      3) {
    checkBuildBazelRemoteExecutionV2Digest(o.digest);
    checkGoogleRpcStatus(o.status);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse--;
}

buildUnnamed1274() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1274(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBuildBazelRemoteExecutionV2CacheCapabilities = 0;
buildBuildBazelRemoteExecutionV2CacheCapabilities() {
  var o = new api.BuildBazelRemoteExecutionV2CacheCapabilities();
  buildCounterBuildBazelRemoteExecutionV2CacheCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2CacheCapabilities < 3) {
    o.actionCacheUpdateCapabilities =
        buildBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities();
    o.cachePriorityCapabilities =
        buildBuildBazelRemoteExecutionV2PriorityCapabilities();
    o.digestFunction = buildUnnamed1274();
    o.maxBatchTotalSizeBytes = "foo";
    o.symlinkAbsolutePathStrategy = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2CacheCapabilities--;
  return o;
}

checkBuildBazelRemoteExecutionV2CacheCapabilities(
    api.BuildBazelRemoteExecutionV2CacheCapabilities o) {
  buildCounterBuildBazelRemoteExecutionV2CacheCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2CacheCapabilities < 3) {
    checkBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities(
        o.actionCacheUpdateCapabilities);
    checkBuildBazelRemoteExecutionV2PriorityCapabilities(
        o.cachePriorityCapabilities);
    checkUnnamed1274(o.digestFunction);
    unittest.expect(o.maxBatchTotalSizeBytes, unittest.equals('foo'));
    unittest.expect(o.symlinkAbsolutePathStrategy, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2CacheCapabilities--;
}

buildUnnamed1275() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1275(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1276() {
  var o = new core
      .List<api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable>();
  o.add(buildBuildBazelRemoteExecutionV2CommandEnvironmentVariable());
  o.add(buildBuildBazelRemoteExecutionV2CommandEnvironmentVariable());
  return o;
}

checkUnnamed1276(
    core.List<api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2CommandEnvironmentVariable(o[0]);
  checkBuildBazelRemoteExecutionV2CommandEnvironmentVariable(o[1]);
}

buildUnnamed1277() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1277(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1278() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1278(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBuildBazelRemoteExecutionV2Command = 0;
buildBuildBazelRemoteExecutionV2Command() {
  var o = new api.BuildBazelRemoteExecutionV2Command();
  buildCounterBuildBazelRemoteExecutionV2Command++;
  if (buildCounterBuildBazelRemoteExecutionV2Command < 3) {
    o.arguments = buildUnnamed1275();
    o.environmentVariables = buildUnnamed1276();
    o.outputDirectories = buildUnnamed1277();
    o.outputFiles = buildUnnamed1278();
    o.platform = buildBuildBazelRemoteExecutionV2Platform();
    o.workingDirectory = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2Command--;
  return o;
}

checkBuildBazelRemoteExecutionV2Command(
    api.BuildBazelRemoteExecutionV2Command o) {
  buildCounterBuildBazelRemoteExecutionV2Command++;
  if (buildCounterBuildBazelRemoteExecutionV2Command < 3) {
    checkUnnamed1275(o.arguments);
    checkUnnamed1276(o.environmentVariables);
    checkUnnamed1277(o.outputDirectories);
    checkUnnamed1278(o.outputFiles);
    checkBuildBazelRemoteExecutionV2Platform(o.platform);
    unittest.expect(o.workingDirectory, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2Command--;
}

core.int buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable = 0;
buildBuildBazelRemoteExecutionV2CommandEnvironmentVariable() {
  var o = new api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable();
  buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable++;
  if (buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable--;
  return o;
}

checkBuildBazelRemoteExecutionV2CommandEnvironmentVariable(
    api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable o) {
  buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable++;
  if (buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable--;
}

core.int buildCounterBuildBazelRemoteExecutionV2Digest = 0;
buildBuildBazelRemoteExecutionV2Digest() {
  var o = new api.BuildBazelRemoteExecutionV2Digest();
  buildCounterBuildBazelRemoteExecutionV2Digest++;
  if (buildCounterBuildBazelRemoteExecutionV2Digest < 3) {
    o.hash = "foo";
    o.sizeBytes = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2Digest--;
  return o;
}

checkBuildBazelRemoteExecutionV2Digest(
    api.BuildBazelRemoteExecutionV2Digest o) {
  buildCounterBuildBazelRemoteExecutionV2Digest++;
  if (buildCounterBuildBazelRemoteExecutionV2Digest < 3) {
    unittest.expect(o.hash, unittest.equals('foo'));
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2Digest--;
}

buildUnnamed1279() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2DirectoryNode>();
  o.add(buildBuildBazelRemoteExecutionV2DirectoryNode());
  o.add(buildBuildBazelRemoteExecutionV2DirectoryNode());
  return o;
}

checkUnnamed1279(core.List<api.BuildBazelRemoteExecutionV2DirectoryNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2DirectoryNode(o[0]);
  checkBuildBazelRemoteExecutionV2DirectoryNode(o[1]);
}

buildUnnamed1280() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2FileNode>();
  o.add(buildBuildBazelRemoteExecutionV2FileNode());
  o.add(buildBuildBazelRemoteExecutionV2FileNode());
  return o;
}

checkUnnamed1280(core.List<api.BuildBazelRemoteExecutionV2FileNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2FileNode(o[0]);
  checkBuildBazelRemoteExecutionV2FileNode(o[1]);
}

buildUnnamed1281() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2SymlinkNode>();
  o.add(buildBuildBazelRemoteExecutionV2SymlinkNode());
  o.add(buildBuildBazelRemoteExecutionV2SymlinkNode());
  return o;
}

checkUnnamed1281(core.List<api.BuildBazelRemoteExecutionV2SymlinkNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2SymlinkNode(o[0]);
  checkBuildBazelRemoteExecutionV2SymlinkNode(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2Directory = 0;
buildBuildBazelRemoteExecutionV2Directory() {
  var o = new api.BuildBazelRemoteExecutionV2Directory();
  buildCounterBuildBazelRemoteExecutionV2Directory++;
  if (buildCounterBuildBazelRemoteExecutionV2Directory < 3) {
    o.directories = buildUnnamed1279();
    o.files = buildUnnamed1280();
    o.symlinks = buildUnnamed1281();
  }
  buildCounterBuildBazelRemoteExecutionV2Directory--;
  return o;
}

checkBuildBazelRemoteExecutionV2Directory(
    api.BuildBazelRemoteExecutionV2Directory o) {
  buildCounterBuildBazelRemoteExecutionV2Directory++;
  if (buildCounterBuildBazelRemoteExecutionV2Directory < 3) {
    checkUnnamed1279(o.directories);
    checkUnnamed1280(o.files);
    checkUnnamed1281(o.symlinks);
  }
  buildCounterBuildBazelRemoteExecutionV2Directory--;
}

core.int buildCounterBuildBazelRemoteExecutionV2DirectoryNode = 0;
buildBuildBazelRemoteExecutionV2DirectoryNode() {
  var o = new api.BuildBazelRemoteExecutionV2DirectoryNode();
  buildCounterBuildBazelRemoteExecutionV2DirectoryNode++;
  if (buildCounterBuildBazelRemoteExecutionV2DirectoryNode < 3) {
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.name = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2DirectoryNode--;
  return o;
}

checkBuildBazelRemoteExecutionV2DirectoryNode(
    api.BuildBazelRemoteExecutionV2DirectoryNode o) {
  buildCounterBuildBazelRemoteExecutionV2DirectoryNode++;
  if (buildCounterBuildBazelRemoteExecutionV2DirectoryNode < 3) {
    checkBuildBazelRemoteExecutionV2Digest(o.digest);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2DirectoryNode--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata = 0;
buildBuildBazelRemoteExecutionV2ExecuteOperationMetadata() {
  var o = new api.BuildBazelRemoteExecutionV2ExecuteOperationMetadata();
  buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata < 3) {
    o.actionDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.stage = "foo";
    o.stderrStreamName = "foo";
    o.stdoutStreamName = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata--;
  return o;
}

checkBuildBazelRemoteExecutionV2ExecuteOperationMetadata(
    api.BuildBazelRemoteExecutionV2ExecuteOperationMetadata o) {
  buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata < 3) {
    checkBuildBazelRemoteExecutionV2Digest(o.actionDigest);
    unittest.expect(o.stage, unittest.equals('foo'));
    unittest.expect(o.stderrStreamName, unittest.equals('foo'));
    unittest.expect(o.stdoutStreamName, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecuteRequest = 0;
buildBuildBazelRemoteExecutionV2ExecuteRequest() {
  var o = new api.BuildBazelRemoteExecutionV2ExecuteRequest();
  buildCounterBuildBazelRemoteExecutionV2ExecuteRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteRequest < 3) {
    o.actionDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.executionPolicy = buildBuildBazelRemoteExecutionV2ExecutionPolicy();
    o.resultsCachePolicy = buildBuildBazelRemoteExecutionV2ResultsCachePolicy();
    o.skipCacheLookup = true;
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteRequest--;
  return o;
}

checkBuildBazelRemoteExecutionV2ExecuteRequest(
    api.BuildBazelRemoteExecutionV2ExecuteRequest o) {
  buildCounterBuildBazelRemoteExecutionV2ExecuteRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteRequest < 3) {
    checkBuildBazelRemoteExecutionV2Digest(o.actionDigest);
    checkBuildBazelRemoteExecutionV2ExecutionPolicy(o.executionPolicy);
    checkBuildBazelRemoteExecutionV2ResultsCachePolicy(o.resultsCachePolicy);
    unittest.expect(o.skipCacheLookup, unittest.isTrue);
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteRequest--;
}

buildUnnamed1282() {
  var o = new core.Map<core.String, api.BuildBazelRemoteExecutionV2LogFile>();
  o["x"] = buildBuildBazelRemoteExecutionV2LogFile();
  o["y"] = buildBuildBazelRemoteExecutionV2LogFile();
  return o;
}

checkUnnamed1282(
    core.Map<core.String, api.BuildBazelRemoteExecutionV2LogFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2LogFile(o["x"]);
  checkBuildBazelRemoteExecutionV2LogFile(o["y"]);
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecuteResponse = 0;
buildBuildBazelRemoteExecutionV2ExecuteResponse() {
  var o = new api.BuildBazelRemoteExecutionV2ExecuteResponse();
  buildCounterBuildBazelRemoteExecutionV2ExecuteResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteResponse < 3) {
    o.cachedResult = true;
    o.message = "foo";
    o.result = buildBuildBazelRemoteExecutionV2ActionResult();
    o.serverLogs = buildUnnamed1282();
    o.status = buildGoogleRpcStatus();
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteResponse--;
  return o;
}

checkBuildBazelRemoteExecutionV2ExecuteResponse(
    api.BuildBazelRemoteExecutionV2ExecuteResponse o) {
  buildCounterBuildBazelRemoteExecutionV2ExecuteResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteResponse < 3) {
    unittest.expect(o.cachedResult, unittest.isTrue);
    unittest.expect(o.message, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2ActionResult(o.result);
    checkUnnamed1282(o.serverLogs);
    checkGoogleRpcStatus(o.status);
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteResponse--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata = 0;
buildBuildBazelRemoteExecutionV2ExecutedActionMetadata() {
  var o = new api.BuildBazelRemoteExecutionV2ExecutedActionMetadata();
  buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata < 3) {
    o.executionCompletedTimestamp = "foo";
    o.executionStartTimestamp = "foo";
    o.inputFetchCompletedTimestamp = "foo";
    o.inputFetchStartTimestamp = "foo";
    o.outputUploadCompletedTimestamp = "foo";
    o.outputUploadStartTimestamp = "foo";
    o.queuedTimestamp = "foo";
    o.worker = "foo";
    o.workerCompletedTimestamp = "foo";
    o.workerStartTimestamp = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata--;
  return o;
}

checkBuildBazelRemoteExecutionV2ExecutedActionMetadata(
    api.BuildBazelRemoteExecutionV2ExecutedActionMetadata o) {
  buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata < 3) {
    unittest.expect(o.executionCompletedTimestamp, unittest.equals('foo'));
    unittest.expect(o.executionStartTimestamp, unittest.equals('foo'));
    unittest.expect(o.inputFetchCompletedTimestamp, unittest.equals('foo'));
    unittest.expect(o.inputFetchStartTimestamp, unittest.equals('foo'));
    unittest.expect(o.outputUploadCompletedTimestamp, unittest.equals('foo'));
    unittest.expect(o.outputUploadStartTimestamp, unittest.equals('foo'));
    unittest.expect(o.queuedTimestamp, unittest.equals('foo'));
    unittest.expect(o.worker, unittest.equals('foo'));
    unittest.expect(o.workerCompletedTimestamp, unittest.equals('foo'));
    unittest.expect(o.workerStartTimestamp, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities = 0;
buildBuildBazelRemoteExecutionV2ExecutionCapabilities() {
  var o = new api.BuildBazelRemoteExecutionV2ExecutionCapabilities();
  buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities < 3) {
    o.digestFunction = "foo";
    o.execEnabled = true;
    o.executionPriorityCapabilities =
        buildBuildBazelRemoteExecutionV2PriorityCapabilities();
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities--;
  return o;
}

checkBuildBazelRemoteExecutionV2ExecutionCapabilities(
    api.BuildBazelRemoteExecutionV2ExecutionCapabilities o) {
  buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities < 3) {
    unittest.expect(o.digestFunction, unittest.equals('foo'));
    unittest.expect(o.execEnabled, unittest.isTrue);
    checkBuildBazelRemoteExecutionV2PriorityCapabilities(
        o.executionPriorityCapabilities);
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy = 0;
buildBuildBazelRemoteExecutionV2ExecutionPolicy() {
  var o = new api.BuildBazelRemoteExecutionV2ExecutionPolicy();
  buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy < 3) {
    o.priority = 42;
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy--;
  return o;
}

checkBuildBazelRemoteExecutionV2ExecutionPolicy(
    api.BuildBazelRemoteExecutionV2ExecutionPolicy o) {
  buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy < 3) {
    unittest.expect(o.priority, unittest.equals(42));
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy--;
}

core.int buildCounterBuildBazelRemoteExecutionV2FileNode = 0;
buildBuildBazelRemoteExecutionV2FileNode() {
  var o = new api.BuildBazelRemoteExecutionV2FileNode();
  buildCounterBuildBazelRemoteExecutionV2FileNode++;
  if (buildCounterBuildBazelRemoteExecutionV2FileNode < 3) {
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.isExecutable = true;
    o.name = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2FileNode--;
  return o;
}

checkBuildBazelRemoteExecutionV2FileNode(
    api.BuildBazelRemoteExecutionV2FileNode o) {
  buildCounterBuildBazelRemoteExecutionV2FileNode++;
  if (buildCounterBuildBazelRemoteExecutionV2FileNode < 3) {
    checkBuildBazelRemoteExecutionV2Digest(o.digest);
    unittest.expect(o.isExecutable, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2FileNode--;
}

buildUnnamed1283() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2Digest>();
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  return o;
}

checkUnnamed1283(core.List<api.BuildBazelRemoteExecutionV2Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2Digest(o[0]);
  checkBuildBazelRemoteExecutionV2Digest(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest = 0;
buildBuildBazelRemoteExecutionV2FindMissingBlobsRequest() {
  var o = new api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest();
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest < 3) {
    o.blobDigests = buildUnnamed1283();
  }
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest--;
  return o;
}

checkBuildBazelRemoteExecutionV2FindMissingBlobsRequest(
    api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest o) {
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest < 3) {
    checkUnnamed1283(o.blobDigests);
  }
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest--;
}

buildUnnamed1284() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2Digest>();
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  return o;
}

checkUnnamed1284(core.List<api.BuildBazelRemoteExecutionV2Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2Digest(o[0]);
  checkBuildBazelRemoteExecutionV2Digest(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse = 0;
buildBuildBazelRemoteExecutionV2FindMissingBlobsResponse() {
  var o = new api.BuildBazelRemoteExecutionV2FindMissingBlobsResponse();
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse < 3) {
    o.missingBlobDigests = buildUnnamed1284();
  }
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse--;
  return o;
}

checkBuildBazelRemoteExecutionV2FindMissingBlobsResponse(
    api.BuildBazelRemoteExecutionV2FindMissingBlobsResponse o) {
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse < 3) {
    checkUnnamed1284(o.missingBlobDigests);
  }
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse--;
}

buildUnnamed1285() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2Directory>();
  o.add(buildBuildBazelRemoteExecutionV2Directory());
  o.add(buildBuildBazelRemoteExecutionV2Directory());
  return o;
}

checkUnnamed1285(core.List<api.BuildBazelRemoteExecutionV2Directory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2Directory(o[0]);
  checkBuildBazelRemoteExecutionV2Directory(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2GetTreeResponse = 0;
buildBuildBazelRemoteExecutionV2GetTreeResponse() {
  var o = new api.BuildBazelRemoteExecutionV2GetTreeResponse();
  buildCounterBuildBazelRemoteExecutionV2GetTreeResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2GetTreeResponse < 3) {
    o.directories = buildUnnamed1285();
    o.nextPageToken = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2GetTreeResponse--;
  return o;
}

checkBuildBazelRemoteExecutionV2GetTreeResponse(
    api.BuildBazelRemoteExecutionV2GetTreeResponse o) {
  buildCounterBuildBazelRemoteExecutionV2GetTreeResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2GetTreeResponse < 3) {
    checkUnnamed1285(o.directories);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2GetTreeResponse--;
}

core.int buildCounterBuildBazelRemoteExecutionV2LogFile = 0;
buildBuildBazelRemoteExecutionV2LogFile() {
  var o = new api.BuildBazelRemoteExecutionV2LogFile();
  buildCounterBuildBazelRemoteExecutionV2LogFile++;
  if (buildCounterBuildBazelRemoteExecutionV2LogFile < 3) {
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.humanReadable = true;
  }
  buildCounterBuildBazelRemoteExecutionV2LogFile--;
  return o;
}

checkBuildBazelRemoteExecutionV2LogFile(
    api.BuildBazelRemoteExecutionV2LogFile o) {
  buildCounterBuildBazelRemoteExecutionV2LogFile++;
  if (buildCounterBuildBazelRemoteExecutionV2LogFile < 3) {
    checkBuildBazelRemoteExecutionV2Digest(o.digest);
    unittest.expect(o.humanReadable, unittest.isTrue);
  }
  buildCounterBuildBazelRemoteExecutionV2LogFile--;
}

core.int buildCounterBuildBazelRemoteExecutionV2OutputDirectory = 0;
buildBuildBazelRemoteExecutionV2OutputDirectory() {
  var o = new api.BuildBazelRemoteExecutionV2OutputDirectory();
  buildCounterBuildBazelRemoteExecutionV2OutputDirectory++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputDirectory < 3) {
    o.path = "foo";
    o.treeDigest = buildBuildBazelRemoteExecutionV2Digest();
  }
  buildCounterBuildBazelRemoteExecutionV2OutputDirectory--;
  return o;
}

checkBuildBazelRemoteExecutionV2OutputDirectory(
    api.BuildBazelRemoteExecutionV2OutputDirectory o) {
  buildCounterBuildBazelRemoteExecutionV2OutputDirectory++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputDirectory < 3) {
    unittest.expect(o.path, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2Digest(o.treeDigest);
  }
  buildCounterBuildBazelRemoteExecutionV2OutputDirectory--;
}

core.int buildCounterBuildBazelRemoteExecutionV2OutputFile = 0;
buildBuildBazelRemoteExecutionV2OutputFile() {
  var o = new api.BuildBazelRemoteExecutionV2OutputFile();
  buildCounterBuildBazelRemoteExecutionV2OutputFile++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputFile < 3) {
    o.contents = "foo";
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.isExecutable = true;
    o.path = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2OutputFile--;
  return o;
}

checkBuildBazelRemoteExecutionV2OutputFile(
    api.BuildBazelRemoteExecutionV2OutputFile o) {
  buildCounterBuildBazelRemoteExecutionV2OutputFile++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputFile < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2Digest(o.digest);
    unittest.expect(o.isExecutable, unittest.isTrue);
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2OutputFile--;
}

core.int buildCounterBuildBazelRemoteExecutionV2OutputSymlink = 0;
buildBuildBazelRemoteExecutionV2OutputSymlink() {
  var o = new api.BuildBazelRemoteExecutionV2OutputSymlink();
  buildCounterBuildBazelRemoteExecutionV2OutputSymlink++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputSymlink < 3) {
    o.path = "foo";
    o.target = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2OutputSymlink--;
  return o;
}

checkBuildBazelRemoteExecutionV2OutputSymlink(
    api.BuildBazelRemoteExecutionV2OutputSymlink o) {
  buildCounterBuildBazelRemoteExecutionV2OutputSymlink++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputSymlink < 3) {
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2OutputSymlink--;
}

buildUnnamed1286() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2PlatformProperty>();
  o.add(buildBuildBazelRemoteExecutionV2PlatformProperty());
  o.add(buildBuildBazelRemoteExecutionV2PlatformProperty());
  return o;
}

checkUnnamed1286(core.List<api.BuildBazelRemoteExecutionV2PlatformProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2PlatformProperty(o[0]);
  checkBuildBazelRemoteExecutionV2PlatformProperty(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2Platform = 0;
buildBuildBazelRemoteExecutionV2Platform() {
  var o = new api.BuildBazelRemoteExecutionV2Platform();
  buildCounterBuildBazelRemoteExecutionV2Platform++;
  if (buildCounterBuildBazelRemoteExecutionV2Platform < 3) {
    o.properties = buildUnnamed1286();
  }
  buildCounterBuildBazelRemoteExecutionV2Platform--;
  return o;
}

checkBuildBazelRemoteExecutionV2Platform(
    api.BuildBazelRemoteExecutionV2Platform o) {
  buildCounterBuildBazelRemoteExecutionV2Platform++;
  if (buildCounterBuildBazelRemoteExecutionV2Platform < 3) {
    checkUnnamed1286(o.properties);
  }
  buildCounterBuildBazelRemoteExecutionV2Platform--;
}

core.int buildCounterBuildBazelRemoteExecutionV2PlatformProperty = 0;
buildBuildBazelRemoteExecutionV2PlatformProperty() {
  var o = new api.BuildBazelRemoteExecutionV2PlatformProperty();
  buildCounterBuildBazelRemoteExecutionV2PlatformProperty++;
  if (buildCounterBuildBazelRemoteExecutionV2PlatformProperty < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2PlatformProperty--;
  return o;
}

checkBuildBazelRemoteExecutionV2PlatformProperty(
    api.BuildBazelRemoteExecutionV2PlatformProperty o) {
  buildCounterBuildBazelRemoteExecutionV2PlatformProperty++;
  if (buildCounterBuildBazelRemoteExecutionV2PlatformProperty < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2PlatformProperty--;
}

buildUnnamed1287() {
  var o = new core
      .List<api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange>();
  o.add(buildBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange());
  o.add(buildBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange());
  return o;
}

checkUnnamed1287(
    core.List<api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange(o[0]);
  checkBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities = 0;
buildBuildBazelRemoteExecutionV2PriorityCapabilities() {
  var o = new api.BuildBazelRemoteExecutionV2PriorityCapabilities();
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities < 3) {
    o.priorities = buildUnnamed1287();
  }
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities--;
  return o;
}

checkBuildBazelRemoteExecutionV2PriorityCapabilities(
    api.BuildBazelRemoteExecutionV2PriorityCapabilities o) {
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities < 3) {
    checkUnnamed1287(o.priorities);
  }
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities--;
}

core.int
    buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange =
    0;
buildBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange() {
  var o =
      new api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange();
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange++;
  if (buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange <
      3) {
    o.maxPriority = 42;
    o.minPriority = 42;
  }
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange--;
  return o;
}

checkBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange(
    api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange o) {
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange++;
  if (buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange <
      3) {
    unittest.expect(o.maxPriority, unittest.equals(42));
    unittest.expect(o.minPriority, unittest.equals(42));
  }
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange--;
}

core.int buildCounterBuildBazelRemoteExecutionV2RequestMetadata = 0;
buildBuildBazelRemoteExecutionV2RequestMetadata() {
  var o = new api.BuildBazelRemoteExecutionV2RequestMetadata();
  buildCounterBuildBazelRemoteExecutionV2RequestMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2RequestMetadata < 3) {
    o.actionId = "foo";
    o.correlatedInvocationsId = "foo";
    o.toolDetails = buildBuildBazelRemoteExecutionV2ToolDetails();
    o.toolInvocationId = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2RequestMetadata--;
  return o;
}

checkBuildBazelRemoteExecutionV2RequestMetadata(
    api.BuildBazelRemoteExecutionV2RequestMetadata o) {
  buildCounterBuildBazelRemoteExecutionV2RequestMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2RequestMetadata < 3) {
    unittest.expect(o.actionId, unittest.equals('foo'));
    unittest.expect(o.correlatedInvocationsId, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2ToolDetails(o.toolDetails);
    unittest.expect(o.toolInvocationId, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2RequestMetadata--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy = 0;
buildBuildBazelRemoteExecutionV2ResultsCachePolicy() {
  var o = new api.BuildBazelRemoteExecutionV2ResultsCachePolicy();
  buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy++;
  if (buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy < 3) {
    o.priority = 42;
  }
  buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy--;
  return o;
}

checkBuildBazelRemoteExecutionV2ResultsCachePolicy(
    api.BuildBazelRemoteExecutionV2ResultsCachePolicy o) {
  buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy++;
  if (buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy < 3) {
    unittest.expect(o.priority, unittest.equals(42));
  }
  buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ServerCapabilities = 0;
buildBuildBazelRemoteExecutionV2ServerCapabilities() {
  var o = new api.BuildBazelRemoteExecutionV2ServerCapabilities();
  buildCounterBuildBazelRemoteExecutionV2ServerCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ServerCapabilities < 3) {
    o.cacheCapabilities = buildBuildBazelRemoteExecutionV2CacheCapabilities();
    o.deprecatedApiVersion = buildBuildBazelSemverSemVer();
    o.executionCapabilities =
        buildBuildBazelRemoteExecutionV2ExecutionCapabilities();
    o.highApiVersion = buildBuildBazelSemverSemVer();
    o.lowApiVersion = buildBuildBazelSemverSemVer();
  }
  buildCounterBuildBazelRemoteExecutionV2ServerCapabilities--;
  return o;
}

checkBuildBazelRemoteExecutionV2ServerCapabilities(
    api.BuildBazelRemoteExecutionV2ServerCapabilities o) {
  buildCounterBuildBazelRemoteExecutionV2ServerCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ServerCapabilities < 3) {
    checkBuildBazelRemoteExecutionV2CacheCapabilities(o.cacheCapabilities);
    checkBuildBazelSemverSemVer(o.deprecatedApiVersion);
    checkBuildBazelRemoteExecutionV2ExecutionCapabilities(
        o.executionCapabilities);
    checkBuildBazelSemverSemVer(o.highApiVersion);
    checkBuildBazelSemverSemVer(o.lowApiVersion);
  }
  buildCounterBuildBazelRemoteExecutionV2ServerCapabilities--;
}

core.int buildCounterBuildBazelRemoteExecutionV2SymlinkNode = 0;
buildBuildBazelRemoteExecutionV2SymlinkNode() {
  var o = new api.BuildBazelRemoteExecutionV2SymlinkNode();
  buildCounterBuildBazelRemoteExecutionV2SymlinkNode++;
  if (buildCounterBuildBazelRemoteExecutionV2SymlinkNode < 3) {
    o.name = "foo";
    o.target = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2SymlinkNode--;
  return o;
}

checkBuildBazelRemoteExecutionV2SymlinkNode(
    api.BuildBazelRemoteExecutionV2SymlinkNode o) {
  buildCounterBuildBazelRemoteExecutionV2SymlinkNode++;
  if (buildCounterBuildBazelRemoteExecutionV2SymlinkNode < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2SymlinkNode--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ToolDetails = 0;
buildBuildBazelRemoteExecutionV2ToolDetails() {
  var o = new api.BuildBazelRemoteExecutionV2ToolDetails();
  buildCounterBuildBazelRemoteExecutionV2ToolDetails++;
  if (buildCounterBuildBazelRemoteExecutionV2ToolDetails < 3) {
    o.toolName = "foo";
    o.toolVersion = "foo";
  }
  buildCounterBuildBazelRemoteExecutionV2ToolDetails--;
  return o;
}

checkBuildBazelRemoteExecutionV2ToolDetails(
    api.BuildBazelRemoteExecutionV2ToolDetails o) {
  buildCounterBuildBazelRemoteExecutionV2ToolDetails++;
  if (buildCounterBuildBazelRemoteExecutionV2ToolDetails < 3) {
    unittest.expect(o.toolName, unittest.equals('foo'));
    unittest.expect(o.toolVersion, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2ToolDetails--;
}

buildUnnamed1288() {
  var o = new core.List<api.BuildBazelRemoteExecutionV2Directory>();
  o.add(buildBuildBazelRemoteExecutionV2Directory());
  o.add(buildBuildBazelRemoteExecutionV2Directory());
  return o;
}

checkUnnamed1288(core.List<api.BuildBazelRemoteExecutionV2Directory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2Directory(o[0]);
  checkBuildBazelRemoteExecutionV2Directory(o[1]);
}

core.int buildCounterBuildBazelRemoteExecutionV2Tree = 0;
buildBuildBazelRemoteExecutionV2Tree() {
  var o = new api.BuildBazelRemoteExecutionV2Tree();
  buildCounterBuildBazelRemoteExecutionV2Tree++;
  if (buildCounterBuildBazelRemoteExecutionV2Tree < 3) {
    o.children = buildUnnamed1288();
    o.root = buildBuildBazelRemoteExecutionV2Directory();
  }
  buildCounterBuildBazelRemoteExecutionV2Tree--;
  return o;
}

checkBuildBazelRemoteExecutionV2Tree(api.BuildBazelRemoteExecutionV2Tree o) {
  buildCounterBuildBazelRemoteExecutionV2Tree++;
  if (buildCounterBuildBazelRemoteExecutionV2Tree < 3) {
    checkUnnamed1288(o.children);
    checkBuildBazelRemoteExecutionV2Directory(o.root);
  }
  buildCounterBuildBazelRemoteExecutionV2Tree--;
}

core.int buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest = 0;
buildBuildBazelRemoteExecutionV2WaitExecutionRequest() {
  var o = new api.BuildBazelRemoteExecutionV2WaitExecutionRequest();
  buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest < 3) {}
  buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest--;
  return o;
}

checkBuildBazelRemoteExecutionV2WaitExecutionRequest(
    api.BuildBazelRemoteExecutionV2WaitExecutionRequest o) {
  buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest < 3) {}
  buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest--;
}

core.int buildCounterBuildBazelSemverSemVer = 0;
buildBuildBazelSemverSemVer() {
  var o = new api.BuildBazelSemverSemVer();
  buildCounterBuildBazelSemverSemVer++;
  if (buildCounterBuildBazelSemverSemVer < 3) {
    o.major = 42;
    o.minor = 42;
    o.patch = 42;
    o.prerelease = "foo";
  }
  buildCounterBuildBazelSemverSemVer--;
  return o;
}

checkBuildBazelSemverSemVer(api.BuildBazelSemverSemVer o) {
  buildCounterBuildBazelSemverSemVer++;
  if (buildCounterBuildBazelSemverSemVer < 3) {
    unittest.expect(o.major, unittest.equals(42));
    unittest.expect(o.minor, unittest.equals(42));
    unittest.expect(o.patch, unittest.equals(42));
    unittest.expect(o.prerelease, unittest.equals('foo'));
  }
  buildCounterBuildBazelSemverSemVer--;
}

core.int buildCounterGoogleDevtoolsRemotebuildbotCommandDurations = 0;
buildGoogleDevtoolsRemotebuildbotCommandDurations() {
  var o = new api.GoogleDevtoolsRemotebuildbotCommandDurations();
  buildCounterGoogleDevtoolsRemotebuildbotCommandDurations++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandDurations < 3) {
    o.dockerPrep = "foo";
    o.download = "foo";
    o.execution = "foo";
    o.isoPrepDone = "foo";
    o.overall = "foo";
    o.stdout = "foo";
    o.upload = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandDurations--;
  return o;
}

checkGoogleDevtoolsRemotebuildbotCommandDurations(
    api.GoogleDevtoolsRemotebuildbotCommandDurations o) {
  buildCounterGoogleDevtoolsRemotebuildbotCommandDurations++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandDurations < 3) {
    unittest.expect(o.dockerPrep, unittest.equals('foo'));
    unittest.expect(o.download, unittest.equals('foo'));
    unittest.expect(o.execution, unittest.equals('foo'));
    unittest.expect(o.isoPrepDone, unittest.equals('foo'));
    unittest.expect(o.overall, unittest.equals('foo'));
    unittest.expect(o.stdout, unittest.equals('foo'));
    unittest.expect(o.upload, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandDurations--;
}

core.int buildCounterGoogleDevtoolsRemotebuildbotCommandEvents = 0;
buildGoogleDevtoolsRemotebuildbotCommandEvents() {
  var o = new api.GoogleDevtoolsRemotebuildbotCommandEvents();
  buildCounterGoogleDevtoolsRemotebuildbotCommandEvents++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandEvents < 3) {
    o.dockerCacheHit = true;
    o.inputCacheMiss = 42.0;
    o.numErrors = "foo";
    o.numWarnings = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandEvents--;
  return o;
}

checkGoogleDevtoolsRemotebuildbotCommandEvents(
    api.GoogleDevtoolsRemotebuildbotCommandEvents o) {
  buildCounterGoogleDevtoolsRemotebuildbotCommandEvents++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandEvents < 3) {
    unittest.expect(o.dockerCacheHit, unittest.isTrue);
    unittest.expect(o.inputCacheMiss, unittest.equals(42.0));
    unittest.expect(o.numErrors, unittest.equals('foo'));
    unittest.expect(o.numWarnings, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandEvents--;
}

core.int buildCounterGoogleDevtoolsRemotebuildbotCommandStatus = 0;
buildGoogleDevtoolsRemotebuildbotCommandStatus() {
  var o = new api.GoogleDevtoolsRemotebuildbotCommandStatus();
  buildCounterGoogleDevtoolsRemotebuildbotCommandStatus++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandStatus < 3) {
    o.code = "foo";
    o.message = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandStatus--;
  return o;
}

checkGoogleDevtoolsRemotebuildbotCommandStatus(
    api.GoogleDevtoolsRemotebuildbotCommandStatus o) {
  buildCounterGoogleDevtoolsRemotebuildbotCommandStatus++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandStatus < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandStatus--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest <
      3) {
    o.instance = buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance();
    o.instanceId = "foo";
    o.parent = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest <
      3) {
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(o.instance);
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest <
      3) {
    o.parent = "foo";
    o.poolId = "foo";
    o.workerPool =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool();
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
        o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest <
      3) {
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.poolId, unittest.equals('foo'));
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(o.workerPool);
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest <
      3) {
    o.name = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest <
      3) {
    o.name = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
        o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest <
      3) {
    o.name = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest <
      3) {
    o.name = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest--;
}

core.int buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance = 0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance() {
  var o = new api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance < 3) {
    o.location = "foo";
    o.loggingEnabled = true;
    o.name = "foo";
    o.state = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.loggingEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest <
      3) {
    o.parent = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest <
      3) {
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest--;
}

buildUnnamed1289() {
  var o = new core
      .List<api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance>();
  o.add(buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance());
  o.add(buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance());
  return o;
}

checkUnnamed1289(
    core.List<api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(o[0]);
  checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(o[1]);
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse <
      3) {
    o.instances = buildUnnamed1289();
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse <
      3) {
    checkUnnamed1289(o.instances);
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest <
      3) {
    o.filter = "foo";
    o.parent = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
        o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest <
      3) {
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest--;
}

buildUnnamed1290() {
  var o = new core
      .List<api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool>();
  o.add(buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool());
  o.add(buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool());
  return o;
}

checkUnnamed1290(
    core.List<api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(o[0]);
  checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(o[1]);
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse <
      3) {
    o.workerPools = buildUnnamed1290();
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
        o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse <
      3) {
    checkUnnamed1290(o.workerPools);
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest() {
  var o = new api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest <
      3) {
    o.updateMask = "foo";
    o.workerPool =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool();
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
        o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest <
      3) {
    unittest.expect(o.updateMask, unittest.equals('foo'));
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(o.workerPool);
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest--;
}

buildUnnamed1291() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1291(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig = 0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig() {
  var o = new api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig <
      3) {
    o.diskSizeGb = "foo";
    o.diskType = "foo";
    o.labels = buildUnnamed1291();
    o.machineType = "foo";
    o.minCpuPlatform = "foo";
    o.reserved = true;
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig <
      3) {
    unittest.expect(o.diskSizeGb, unittest.equals('foo'));
    unittest.expect(o.diskType, unittest.equals('foo'));
    checkUnnamed1291(o.labels);
    unittest.expect(o.machineType, unittest.equals('foo'));
    unittest.expect(o.minCpuPlatform, unittest.equals('foo'));
    unittest.expect(o.reserved, unittest.isTrue);
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig--;
}

core.int buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool =
    0;
buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool() {
  var o = new api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool <
      3) {
    o.name = "foo";
    o.state = "foo";
    o.workerConfig =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig();
    o.workerCount = "foo";
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool--;
  return o;
}

checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig(
        o.workerConfig);
    unittest.expect(o.workerCount, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool--;
}

buildUnnamed1292() {
  var o =
      new core.List<api.GoogleDevtoolsRemoteexecutionV1testOutputDirectory>();
  o.add(buildGoogleDevtoolsRemoteexecutionV1testOutputDirectory());
  o.add(buildGoogleDevtoolsRemoteexecutionV1testOutputDirectory());
  return o;
}

checkUnnamed1292(
    core.List<api.GoogleDevtoolsRemoteexecutionV1testOutputDirectory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteexecutionV1testOutputDirectory(o[0]);
  checkGoogleDevtoolsRemoteexecutionV1testOutputDirectory(o[1]);
}

buildUnnamed1293() {
  var o = new core.List<api.GoogleDevtoolsRemoteexecutionV1testOutputFile>();
  o.add(buildGoogleDevtoolsRemoteexecutionV1testOutputFile());
  o.add(buildGoogleDevtoolsRemoteexecutionV1testOutputFile());
  return o;
}

checkUnnamed1293(
    core.List<api.GoogleDevtoolsRemoteexecutionV1testOutputFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteexecutionV1testOutputFile(o[0]);
  checkGoogleDevtoolsRemoteexecutionV1testOutputFile(o[1]);
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testActionResult = 0;
buildGoogleDevtoolsRemoteexecutionV1testActionResult() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testActionResult();
  buildCounterGoogleDevtoolsRemoteexecutionV1testActionResult++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testActionResult < 3) {
    o.exitCode = 42;
    o.outputDirectories = buildUnnamed1292();
    o.outputFiles = buildUnnamed1293();
    o.stderrDigest = buildGoogleDevtoolsRemoteexecutionV1testDigest();
    o.stderrRaw = "foo";
    o.stdoutDigest = buildGoogleDevtoolsRemoteexecutionV1testDigest();
    o.stdoutRaw = "foo";
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testActionResult--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testActionResult(
    api.GoogleDevtoolsRemoteexecutionV1testActionResult o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testActionResult++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testActionResult < 3) {
    unittest.expect(o.exitCode, unittest.equals(42));
    checkUnnamed1292(o.outputDirectories);
    checkUnnamed1293(o.outputFiles);
    checkGoogleDevtoolsRemoteexecutionV1testDigest(o.stderrDigest);
    unittest.expect(o.stderrRaw, unittest.equals('foo'));
    checkGoogleDevtoolsRemoteexecutionV1testDigest(o.stdoutDigest);
    unittest.expect(o.stdoutRaw, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testActionResult--;
}

buildUnnamed1294() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1294(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1295() {
  var o = new core.List<
      api.GoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable>();
  o.add(buildGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable());
  o.add(buildGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable());
  return o;
}

checkUnnamed1295(
    core.List<api.GoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable(o[0]);
  checkGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable(o[1]);
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testCommand = 0;
buildGoogleDevtoolsRemoteexecutionV1testCommand() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testCommand();
  buildCounterGoogleDevtoolsRemoteexecutionV1testCommand++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testCommand < 3) {
    o.arguments = buildUnnamed1294();
    o.environmentVariables = buildUnnamed1295();
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testCommand--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testCommand(
    api.GoogleDevtoolsRemoteexecutionV1testCommand o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testCommand++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testCommand < 3) {
    checkUnnamed1294(o.arguments);
    checkUnnamed1295(o.environmentVariables);
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testCommand--;
}

core.int
    buildCounterGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable =
    0;
buildGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable() {
  var o =
      new api.GoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable();
  buildCounterGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable <
      3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable(
    api.GoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable--;
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testDigest = 0;
buildGoogleDevtoolsRemoteexecutionV1testDigest() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testDigest();
  buildCounterGoogleDevtoolsRemoteexecutionV1testDigest++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testDigest < 3) {
    o.hash = "foo";
    o.sizeBytes = "foo";
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testDigest--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testDigest(
    api.GoogleDevtoolsRemoteexecutionV1testDigest o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testDigest++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testDigest < 3) {
    unittest.expect(o.hash, unittest.equals('foo'));
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testDigest--;
}

buildUnnamed1296() {
  var o = new core.List<api.GoogleDevtoolsRemoteexecutionV1testDirectoryNode>();
  o.add(buildGoogleDevtoolsRemoteexecutionV1testDirectoryNode());
  o.add(buildGoogleDevtoolsRemoteexecutionV1testDirectoryNode());
  return o;
}

checkUnnamed1296(
    core.List<api.GoogleDevtoolsRemoteexecutionV1testDirectoryNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteexecutionV1testDirectoryNode(o[0]);
  checkGoogleDevtoolsRemoteexecutionV1testDirectoryNode(o[1]);
}

buildUnnamed1297() {
  var o = new core.List<api.GoogleDevtoolsRemoteexecutionV1testFileNode>();
  o.add(buildGoogleDevtoolsRemoteexecutionV1testFileNode());
  o.add(buildGoogleDevtoolsRemoteexecutionV1testFileNode());
  return o;
}

checkUnnamed1297(core.List<api.GoogleDevtoolsRemoteexecutionV1testFileNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteexecutionV1testFileNode(o[0]);
  checkGoogleDevtoolsRemoteexecutionV1testFileNode(o[1]);
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testDirectory = 0;
buildGoogleDevtoolsRemoteexecutionV1testDirectory() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testDirectory();
  buildCounterGoogleDevtoolsRemoteexecutionV1testDirectory++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testDirectory < 3) {
    o.directories = buildUnnamed1296();
    o.files = buildUnnamed1297();
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testDirectory--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testDirectory(
    api.GoogleDevtoolsRemoteexecutionV1testDirectory o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testDirectory++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testDirectory < 3) {
    checkUnnamed1296(o.directories);
    checkUnnamed1297(o.files);
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testDirectory--;
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testDirectoryNode = 0;
buildGoogleDevtoolsRemoteexecutionV1testDirectoryNode() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testDirectoryNode();
  buildCounterGoogleDevtoolsRemoteexecutionV1testDirectoryNode++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testDirectoryNode < 3) {
    o.digest = buildGoogleDevtoolsRemoteexecutionV1testDigest();
    o.name = "foo";
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testDirectoryNode--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testDirectoryNode(
    api.GoogleDevtoolsRemoteexecutionV1testDirectoryNode o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testDirectoryNode++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testDirectoryNode < 3) {
    checkGoogleDevtoolsRemoteexecutionV1testDigest(o.digest);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testDirectoryNode--;
}

core.int
    buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata = 0;
buildGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata();
  buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata <
      3) {
    o.actionDigest = buildGoogleDevtoolsRemoteexecutionV1testDigest();
    o.stage = "foo";
    o.stderrStreamName = "foo";
    o.stdoutStreamName = "foo";
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata(
    api.GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata <
      3) {
    checkGoogleDevtoolsRemoteexecutionV1testDigest(o.actionDigest);
    unittest.expect(o.stage, unittest.equals('foo'));
    unittest.expect(o.stderrStreamName, unittest.equals('foo'));
    unittest.expect(o.stdoutStreamName, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata--;
}

buildUnnamed1298() {
  var o = new core
      .Map<core.String, api.GoogleDevtoolsRemoteexecutionV1testLogFile>();
  o["x"] = buildGoogleDevtoolsRemoteexecutionV1testLogFile();
  o["y"] = buildGoogleDevtoolsRemoteexecutionV1testLogFile();
  return o;
}

checkUnnamed1298(
    core.Map<core.String, api.GoogleDevtoolsRemoteexecutionV1testLogFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteexecutionV1testLogFile(o["x"]);
  checkGoogleDevtoolsRemoteexecutionV1testLogFile(o["y"]);
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteResponse = 0;
buildGoogleDevtoolsRemoteexecutionV1testExecuteResponse() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testExecuteResponse();
  buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteResponse++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteResponse < 3) {
    o.cachedResult = true;
    o.result = buildGoogleDevtoolsRemoteexecutionV1testActionResult();
    o.serverLogs = buildUnnamed1298();
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteResponse--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testExecuteResponse(
    api.GoogleDevtoolsRemoteexecutionV1testExecuteResponse o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteResponse++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteResponse < 3) {
    unittest.expect(o.cachedResult, unittest.isTrue);
    checkGoogleDevtoolsRemoteexecutionV1testActionResult(o.result);
    checkUnnamed1298(o.serverLogs);
    checkGoogleRpcStatus(o.status);
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testExecuteResponse--;
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testFileNode = 0;
buildGoogleDevtoolsRemoteexecutionV1testFileNode() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testFileNode();
  buildCounterGoogleDevtoolsRemoteexecutionV1testFileNode++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testFileNode < 3) {
    o.digest = buildGoogleDevtoolsRemoteexecutionV1testDigest();
    o.isExecutable = true;
    o.name = "foo";
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testFileNode--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testFileNode(
    api.GoogleDevtoolsRemoteexecutionV1testFileNode o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testFileNode++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testFileNode < 3) {
    checkGoogleDevtoolsRemoteexecutionV1testDigest(o.digest);
    unittest.expect(o.isExecutable, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testFileNode--;
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testLogFile = 0;
buildGoogleDevtoolsRemoteexecutionV1testLogFile() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testLogFile();
  buildCounterGoogleDevtoolsRemoteexecutionV1testLogFile++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testLogFile < 3) {
    o.digest = buildGoogleDevtoolsRemoteexecutionV1testDigest();
    o.humanReadable = true;
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testLogFile--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testLogFile(
    api.GoogleDevtoolsRemoteexecutionV1testLogFile o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testLogFile++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testLogFile < 3) {
    checkGoogleDevtoolsRemoteexecutionV1testDigest(o.digest);
    unittest.expect(o.humanReadable, unittest.isTrue);
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testLogFile--;
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testOutputDirectory = 0;
buildGoogleDevtoolsRemoteexecutionV1testOutputDirectory() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testOutputDirectory();
  buildCounterGoogleDevtoolsRemoteexecutionV1testOutputDirectory++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testOutputDirectory < 3) {
    o.digest = buildGoogleDevtoolsRemoteexecutionV1testDigest();
    o.path = "foo";
    o.treeDigest = buildGoogleDevtoolsRemoteexecutionV1testDigest();
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testOutputDirectory--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testOutputDirectory(
    api.GoogleDevtoolsRemoteexecutionV1testOutputDirectory o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testOutputDirectory++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testOutputDirectory < 3) {
    checkGoogleDevtoolsRemoteexecutionV1testDigest(o.digest);
    unittest.expect(o.path, unittest.equals('foo'));
    checkGoogleDevtoolsRemoteexecutionV1testDigest(o.treeDigest);
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testOutputDirectory--;
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testOutputFile = 0;
buildGoogleDevtoolsRemoteexecutionV1testOutputFile() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testOutputFile();
  buildCounterGoogleDevtoolsRemoteexecutionV1testOutputFile++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testOutputFile < 3) {
    o.content = "foo";
    o.digest = buildGoogleDevtoolsRemoteexecutionV1testDigest();
    o.isExecutable = true;
    o.path = "foo";
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testOutputFile--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testOutputFile(
    api.GoogleDevtoolsRemoteexecutionV1testOutputFile o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testOutputFile++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testOutputFile < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkGoogleDevtoolsRemoteexecutionV1testDigest(o.digest);
    unittest.expect(o.isExecutable, unittest.isTrue);
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testOutputFile--;
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testRequestMetadata = 0;
buildGoogleDevtoolsRemoteexecutionV1testRequestMetadata() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testRequestMetadata();
  buildCounterGoogleDevtoolsRemoteexecutionV1testRequestMetadata++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testRequestMetadata < 3) {
    o.actionId = "foo";
    o.correlatedInvocationsId = "foo";
    o.toolDetails = buildGoogleDevtoolsRemoteexecutionV1testToolDetails();
    o.toolInvocationId = "foo";
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testRequestMetadata--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testRequestMetadata(
    api.GoogleDevtoolsRemoteexecutionV1testRequestMetadata o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testRequestMetadata++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testRequestMetadata < 3) {
    unittest.expect(o.actionId, unittest.equals('foo'));
    unittest.expect(o.correlatedInvocationsId, unittest.equals('foo'));
    checkGoogleDevtoolsRemoteexecutionV1testToolDetails(o.toolDetails);
    unittest.expect(o.toolInvocationId, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testRequestMetadata--;
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testToolDetails = 0;
buildGoogleDevtoolsRemoteexecutionV1testToolDetails() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testToolDetails();
  buildCounterGoogleDevtoolsRemoteexecutionV1testToolDetails++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testToolDetails < 3) {
    o.toolName = "foo";
    o.toolVersion = "foo";
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testToolDetails--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testToolDetails(
    api.GoogleDevtoolsRemoteexecutionV1testToolDetails o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testToolDetails++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testToolDetails < 3) {
    unittest.expect(o.toolName, unittest.equals('foo'));
    unittest.expect(o.toolVersion, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testToolDetails--;
}

buildUnnamed1299() {
  var o = new core.List<api.GoogleDevtoolsRemoteexecutionV1testDirectory>();
  o.add(buildGoogleDevtoolsRemoteexecutionV1testDirectory());
  o.add(buildGoogleDevtoolsRemoteexecutionV1testDirectory());
  return o;
}

checkUnnamed1299(
    core.List<api.GoogleDevtoolsRemoteexecutionV1testDirectory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteexecutionV1testDirectory(o[0]);
  checkGoogleDevtoolsRemoteexecutionV1testDirectory(o[1]);
}

core.int buildCounterGoogleDevtoolsRemoteexecutionV1testTree = 0;
buildGoogleDevtoolsRemoteexecutionV1testTree() {
  var o = new api.GoogleDevtoolsRemoteexecutionV1testTree();
  buildCounterGoogleDevtoolsRemoteexecutionV1testTree++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testTree < 3) {
    o.children = buildUnnamed1299();
    o.root = buildGoogleDevtoolsRemoteexecutionV1testDirectory();
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testTree--;
  return o;
}

checkGoogleDevtoolsRemoteexecutionV1testTree(
    api.GoogleDevtoolsRemoteexecutionV1testTree o) {
  buildCounterGoogleDevtoolsRemoteexecutionV1testTree++;
  if (buildCounterGoogleDevtoolsRemoteexecutionV1testTree < 3) {
    checkUnnamed1299(o.children);
    checkGoogleDevtoolsRemoteexecutionV1testDirectory(o.root);
  }
  buildCounterGoogleDevtoolsRemoteexecutionV1testTree--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp = 0;
buildGoogleDevtoolsRemoteworkersV1test2AdminTemp() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2AdminTemp();
  buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp < 3) {
    o.arg = "foo";
    o.command = "foo";
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2AdminTemp(
    api.GoogleDevtoolsRemoteworkersV1test2AdminTemp o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp < 3) {
    unittest.expect(o.arg, unittest.equals('foo'));
    unittest.expect(o.command, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2Blob = 0;
buildGoogleDevtoolsRemoteworkersV1test2Blob() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2Blob();
  buildCounterGoogleDevtoolsRemoteworkersV1test2Blob++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Blob < 3) {
    o.contents = "foo";
    o.digest = buildGoogleDevtoolsRemoteworkersV1test2Digest();
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Blob--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2Blob(
    api.GoogleDevtoolsRemoteworkersV1test2Blob o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2Blob++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Blob < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    checkGoogleDevtoolsRemoteworkersV1test2Digest(o.digest);
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Blob--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs = 0;
buildGoogleDevtoolsRemoteworkersV1test2CommandOutputs() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2CommandOutputs();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs < 3) {
    o.exitCode = 42;
    o.outputs = buildGoogleDevtoolsRemoteworkersV1test2Digest();
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2CommandOutputs(
    api.GoogleDevtoolsRemoteworkersV1test2CommandOutputs o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs < 3) {
    unittest.expect(o.exitCode, unittest.equals(42));
    checkGoogleDevtoolsRemoteworkersV1test2Digest(o.outputs);
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead = 0;
buildGoogleDevtoolsRemoteworkersV1test2CommandOverhead() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2CommandOverhead();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead < 3) {
    o.duration = "foo";
    o.overhead = "foo";
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2CommandOverhead(
    api.GoogleDevtoolsRemoteworkersV1test2CommandOverhead o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead < 3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.overhead, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead--;
}

buildUnnamed1300() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1300(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed1301() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1300());
  o.add(buildUnnamed1300());
  return o;
}

checkUnnamed1301(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1300(o[0]);
  checkUnnamed1300(o[1]);
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult = 0;
buildGoogleDevtoolsRemoteworkersV1test2CommandResult() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2CommandResult();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult < 3) {
    o.duration = "foo";
    o.exitCode = 42;
    o.metadata = buildUnnamed1301();
    o.outputs = buildGoogleDevtoolsRemoteworkersV1test2Digest();
    o.overhead = "foo";
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2CommandResult(
    api.GoogleDevtoolsRemoteworkersV1test2CommandResult o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult < 3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.exitCode, unittest.equals(42));
    checkUnnamed1301(o.metadata);
    checkGoogleDevtoolsRemoteworkersV1test2Digest(o.outputs);
    unittest.expect(o.overhead, unittest.equals('foo'));
    checkGoogleRpcStatus(o.status);
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask = 0;
buildGoogleDevtoolsRemoteworkersV1test2CommandTask() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2CommandTask();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask < 3) {
    o.expectedOutputs =
        buildGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs();
    o.inputs = buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs();
    o.timeouts = buildGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts();
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2CommandTask(
    api.GoogleDevtoolsRemoteworkersV1test2CommandTask o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask < 3) {
    checkGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs(
        o.expectedOutputs);
    checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs(o.inputs);
    checkGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts(o.timeouts);
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask--;
}

buildUnnamed1302() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1302(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1303() {
  var o = new core.List<
      api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable>();
  o.add(
      buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable());
  o.add(
      buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable());
  return o;
}

checkUnnamed1303(
    core.List<
            api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable(
      o[0]);
  checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable(
      o[1]);
}

buildUnnamed1304() {
  var o = new core.List<api.GoogleDevtoolsRemoteworkersV1test2Digest>();
  o.add(buildGoogleDevtoolsRemoteworkersV1test2Digest());
  o.add(buildGoogleDevtoolsRemoteworkersV1test2Digest());
  return o;
}

checkUnnamed1304(core.List<api.GoogleDevtoolsRemoteworkersV1test2Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteworkersV1test2Digest(o[0]);
  checkGoogleDevtoolsRemoteworkersV1test2Digest(o[1]);
}

buildUnnamed1305() {
  var o = new core.List<api.GoogleDevtoolsRemoteworkersV1test2Blob>();
  o.add(buildGoogleDevtoolsRemoteworkersV1test2Blob());
  o.add(buildGoogleDevtoolsRemoteworkersV1test2Blob());
  return o;
}

checkUnnamed1305(core.List<api.GoogleDevtoolsRemoteworkersV1test2Blob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteworkersV1test2Blob(o[0]);
  checkGoogleDevtoolsRemoteworkersV1test2Blob(o[1]);
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs = 0;
buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs < 3) {
    o.arguments = buildUnnamed1302();
    o.environmentVariables = buildUnnamed1303();
    o.files = buildUnnamed1304();
    o.inlineBlobs = buildUnnamed1305();
    o.workingDirectory = "foo";
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs(
    api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs < 3) {
    checkUnnamed1302(o.arguments);
    checkUnnamed1303(o.environmentVariables);
    checkUnnamed1304(o.files);
    checkUnnamed1305(o.inlineBlobs);
    unittest.expect(o.workingDirectory, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs--;
}

core.int
    buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable =
    0;
buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable() {
  var o = new api
      .GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable <
      3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable(
    api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
        o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable--;
}

buildUnnamed1306() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1306(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1307() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1307(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs = 0;
buildGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs < 3) {
    o.directories = buildUnnamed1306();
    o.files = buildUnnamed1307();
    o.stderrDestination = "foo";
    o.stdoutDestination = "foo";
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs(
    api.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs < 3) {
    checkUnnamed1306(o.directories);
    checkUnnamed1307(o.files);
    unittest.expect(o.stderrDestination, unittest.equals('foo'));
    unittest.expect(o.stdoutDestination, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts = 0;
buildGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts < 3) {
    o.execution = "foo";
    o.idle = "foo";
    o.shutdown = "foo";
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts(
    api.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts < 3) {
    unittest.expect(o.execution, unittest.equals('foo'));
    unittest.expect(o.idle, unittest.equals('foo'));
    unittest.expect(o.shutdown, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2Digest = 0;
buildGoogleDevtoolsRemoteworkersV1test2Digest() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2Digest();
  buildCounterGoogleDevtoolsRemoteworkersV1test2Digest++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Digest < 3) {
    o.hash = "foo";
    o.sizeBytes = "foo";
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Digest--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2Digest(
    api.GoogleDevtoolsRemoteworkersV1test2Digest o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2Digest++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Digest < 3) {
    unittest.expect(o.hash, unittest.equals('foo'));
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Digest--;
}

buildUnnamed1308() {
  var o =
      new core.List<api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata>();
  o.add(buildGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata());
  o.add(buildGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata());
  return o;
}

checkUnnamed1308(
    core.List<api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata(o[0]);
  checkGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata(o[1]);
}

buildUnnamed1309() {
  var o = new core.List<api.GoogleDevtoolsRemoteworkersV1test2FileMetadata>();
  o.add(buildGoogleDevtoolsRemoteworkersV1test2FileMetadata());
  o.add(buildGoogleDevtoolsRemoteworkersV1test2FileMetadata());
  return o;
}

checkUnnamed1309(
    core.List<api.GoogleDevtoolsRemoteworkersV1test2FileMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteworkersV1test2FileMetadata(o[0]);
  checkGoogleDevtoolsRemoteworkersV1test2FileMetadata(o[1]);
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2Directory = 0;
buildGoogleDevtoolsRemoteworkersV1test2Directory() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2Directory();
  buildCounterGoogleDevtoolsRemoteworkersV1test2Directory++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Directory < 3) {
    o.directories = buildUnnamed1308();
    o.files = buildUnnamed1309();
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Directory--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2Directory(
    api.GoogleDevtoolsRemoteworkersV1test2Directory o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2Directory++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Directory < 3) {
    checkUnnamed1308(o.directories);
    checkUnnamed1309(o.files);
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Directory--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata = 0;
buildGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata();
  buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata < 3) {
    o.digest = buildGoogleDevtoolsRemoteworkersV1test2Digest();
    o.path = "foo";
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata(
    api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata < 3) {
    checkGoogleDevtoolsRemoteworkersV1test2Digest(o.digest);
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata = 0;
buildGoogleDevtoolsRemoteworkersV1test2FileMetadata() {
  var o = new api.GoogleDevtoolsRemoteworkersV1test2FileMetadata();
  buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata < 3) {
    o.contents = "foo";
    o.digest = buildGoogleDevtoolsRemoteworkersV1test2Digest();
    o.isExecutable = true;
    o.path = "foo";
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata--;
  return o;
}

checkGoogleDevtoolsRemoteworkersV1test2FileMetadata(
    api.GoogleDevtoolsRemoteworkersV1test2FileMetadata o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    checkGoogleDevtoolsRemoteworkersV1test2Digest(o.digest);
    unittest.expect(o.isExecutable, unittest.isTrue);
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata--;
}

buildUnnamed1310() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1310(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

buildUnnamed1311() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1311(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed1310();
    o.name = "foo";
    o.response = buildUnnamed1311();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed1310(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1311(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

buildUnnamed1312() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1312(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

buildUnnamed1313() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1312());
  o.add(buildUnnamed1312());
  return o;
}

checkUnnamed1313(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1312(o[0]);
  checkUnnamed1312(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1313();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1313(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

buildUnnamed1314() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1314(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-BuildBazelRemoteExecutionV2Action", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2Action();
      var od = new api.BuildBazelRemoteExecutionV2Action.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Action(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities();
      var od = new api
              .BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2ActionResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ActionResult();
      var od =
          new api.BuildBazelRemoteExecutionV2ActionResult.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2ActionResult(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2BatchReadBlobsRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2BatchReadBlobsRequest();
      var od =
          new api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2BatchReadBlobsRequest(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2BatchReadBlobsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2BatchReadBlobsResponse();
      var od =
          new api.BuildBazelRemoteExecutionV2BatchReadBlobsResponse.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2BatchReadBlobsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse();
      var od = new api
              .BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest();
      var od =
          new api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest();
      var od = new api
              .BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse();
      var od =
          new api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse();
      var od = new api
              .BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2CacheCapabilities", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2CacheCapabilities();
      var od = new api.BuildBazelRemoteExecutionV2CacheCapabilities.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2CacheCapabilities(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2Command", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2Command();
      var od = new api.BuildBazelRemoteExecutionV2Command.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Command(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2CommandEnvironmentVariable", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2CommandEnvironmentVariable();
      var od = new api
              .BuildBazelRemoteExecutionV2CommandEnvironmentVariable.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2CommandEnvironmentVariable(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2Digest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2Digest();
      var od = new api.BuildBazelRemoteExecutionV2Digest.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Digest(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2Directory", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2Directory();
      var od =
          new api.BuildBazelRemoteExecutionV2Directory.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Directory(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2DirectoryNode", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2DirectoryNode();
      var od =
          new api.BuildBazelRemoteExecutionV2DirectoryNode.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2DirectoryNode(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2ExecuteOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ExecuteOperationMetadata();
      var od =
          new api.BuildBazelRemoteExecutionV2ExecuteOperationMetadata.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2ExecuteOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2ExecuteRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ExecuteRequest();
      var od = new api.BuildBazelRemoteExecutionV2ExecuteRequest.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ExecuteRequest(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2ExecuteResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ExecuteResponse();
      var od = new api.BuildBazelRemoteExecutionV2ExecuteResponse.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ExecuteResponse(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2ExecutedActionMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ExecutedActionMetadata();
      var od =
          new api.BuildBazelRemoteExecutionV2ExecutedActionMetadata.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2ExecutedActionMetadata(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2ExecutionCapabilities",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ExecutionCapabilities();
      var od =
          new api.BuildBazelRemoteExecutionV2ExecutionCapabilities.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2ExecutionCapabilities(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2ExecutionPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ExecutionPolicy();
      var od = new api.BuildBazelRemoteExecutionV2ExecutionPolicy.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ExecutionPolicy(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2FileNode", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2FileNode();
      var od = new api.BuildBazelRemoteExecutionV2FileNode.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2FileNode(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2FindMissingBlobsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2FindMissingBlobsRequest();
      var od =
          new api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2FindMissingBlobsRequest(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2FindMissingBlobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2FindMissingBlobsResponse();
      var od =
          new api.BuildBazelRemoteExecutionV2FindMissingBlobsResponse.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2FindMissingBlobsResponse(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2GetTreeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2GetTreeResponse();
      var od = new api.BuildBazelRemoteExecutionV2GetTreeResponse.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2GetTreeResponse(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2LogFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2LogFile();
      var od = new api.BuildBazelRemoteExecutionV2LogFile.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2LogFile(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2OutputDirectory", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2OutputDirectory();
      var od = new api.BuildBazelRemoteExecutionV2OutputDirectory.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2OutputDirectory(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2OutputFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2OutputFile();
      var od =
          new api.BuildBazelRemoteExecutionV2OutputFile.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2OutputFile(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2OutputSymlink", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2OutputSymlink();
      var od =
          new api.BuildBazelRemoteExecutionV2OutputSymlink.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2OutputSymlink(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2Platform", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2Platform();
      var od = new api.BuildBazelRemoteExecutionV2Platform.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Platform(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2PlatformProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2PlatformProperty();
      var od = new api.BuildBazelRemoteExecutionV2PlatformProperty.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2PlatformProperty(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2PriorityCapabilities",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2PriorityCapabilities();
      var od = new api.BuildBazelRemoteExecutionV2PriorityCapabilities.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2PriorityCapabilities(od);
    });
  });

  unittest.group(
      "obj-schema-BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange();
      var od = new api
              .BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2RequestMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2RequestMetadata();
      var od = new api.BuildBazelRemoteExecutionV2RequestMetadata.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2RequestMetadata(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2ResultsCachePolicy",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ResultsCachePolicy();
      var od = new api.BuildBazelRemoteExecutionV2ResultsCachePolicy.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ResultsCachePolicy(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2ServerCapabilities",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ServerCapabilities();
      var od = new api.BuildBazelRemoteExecutionV2ServerCapabilities.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ServerCapabilities(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2SymlinkNode", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2SymlinkNode();
      var od =
          new api.BuildBazelRemoteExecutionV2SymlinkNode.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2SymlinkNode(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2ToolDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2ToolDetails();
      var od =
          new api.BuildBazelRemoteExecutionV2ToolDetails.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2ToolDetails(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2Tree", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2Tree();
      var od = new api.BuildBazelRemoteExecutionV2Tree.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Tree(od);
    });
  });

  unittest.group("obj-schema-BuildBazelRemoteExecutionV2WaitExecutionRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelRemoteExecutionV2WaitExecutionRequest();
      var od = new api.BuildBazelRemoteExecutionV2WaitExecutionRequest.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2WaitExecutionRequest(od);
    });
  });

  unittest.group("obj-schema-BuildBazelSemverSemVer", () {
    unittest.test("to-json--from-json", () {
      var o = buildBuildBazelSemverSemVer();
      var od = new api.BuildBazelSemverSemVer.fromJson(o.toJson());
      checkBuildBazelSemverSemVer(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemotebuildbotCommandDurations", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemotebuildbotCommandDurations();
      var od = new api.GoogleDevtoolsRemotebuildbotCommandDurations.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildbotCommandDurations(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemotebuildbotCommandEvents", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemotebuildbotCommandEvents();
      var od = new api.GoogleDevtoolsRemotebuildbotCommandEvents.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildbotCommandEvents(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemotebuildbotCommandStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemotebuildbotCommandStatus();
      var od = new api.GoogleDevtoolsRemotebuildbotCommandStatus.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildbotCommandStatus(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool();
      var od = new api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteexecutionV1testActionResult",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testActionResult();
      var od = new api.GoogleDevtoolsRemoteexecutionV1testActionResult.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testActionResult(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteexecutionV1testCommand", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testCommand();
      var od = new api.GoogleDevtoolsRemoteexecutionV1testCommand.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testCommand(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable();
      var od = new api
              .GoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteexecutionV1testDigest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testDigest();
      var od = new api.GoogleDevtoolsRemoteexecutionV1testDigest.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testDigest(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteexecutionV1testDirectory", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testDirectory();
      var od = new api.GoogleDevtoolsRemoteexecutionV1testDirectory.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testDirectory(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteexecutionV1testDirectoryNode",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testDirectoryNode();
      var od =
          new api.GoogleDevtoolsRemoteexecutionV1testDirectoryNode.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testDirectoryNode(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata();
      var od = new api
              .GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemoteexecutionV1testExecuteResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testExecuteResponse();
      var od =
          new api.GoogleDevtoolsRemoteexecutionV1testExecuteResponse.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testExecuteResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteexecutionV1testFileNode", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testFileNode();
      var od = new api.GoogleDevtoolsRemoteexecutionV1testFileNode.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testFileNode(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteexecutionV1testLogFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testLogFile();
      var od = new api.GoogleDevtoolsRemoteexecutionV1testLogFile.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testLogFile(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemoteexecutionV1testOutputDirectory", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testOutputDirectory();
      var od =
          new api.GoogleDevtoolsRemoteexecutionV1testOutputDirectory.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testOutputDirectory(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteexecutionV1testOutputFile",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testOutputFile();
      var od = new api.GoogleDevtoolsRemoteexecutionV1testOutputFile.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testOutputFile(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemoteexecutionV1testRequestMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testRequestMetadata();
      var od =
          new api.GoogleDevtoolsRemoteexecutionV1testRequestMetadata.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testRequestMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteexecutionV1testToolDetails",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testToolDetails();
      var od = new api.GoogleDevtoolsRemoteexecutionV1testToolDetails.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testToolDetails(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteexecutionV1testTree", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteexecutionV1testTree();
      var od =
          new api.GoogleDevtoolsRemoteexecutionV1testTree.fromJson(o.toJson());
      checkGoogleDevtoolsRemoteexecutionV1testTree(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteworkersV1test2AdminTemp", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2AdminTemp();
      var od = new api.GoogleDevtoolsRemoteworkersV1test2AdminTemp.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2AdminTemp(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteworkersV1test2Blob", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2Blob();
      var od =
          new api.GoogleDevtoolsRemoteworkersV1test2Blob.fromJson(o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2Blob(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandOutputs",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandOutputs();
      var od =
          new api.GoogleDevtoolsRemoteworkersV1test2CommandOutputs.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandOutputs(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandOverhead",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandOverhead();
      var od =
          new api.GoogleDevtoolsRemoteworkersV1test2CommandOverhead.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandOverhead(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandResult",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandResult();
      var od = new api.GoogleDevtoolsRemoteworkersV1test2CommandResult.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandResult(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandTask",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandTask();
      var od = new api.GoogleDevtoolsRemoteworkersV1test2CommandTask.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandTask(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs();
      var od =
          new api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable();
      var od = new api
              .GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs();
      var od =
          new api.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts();
      var od = new api
              .GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteworkersV1test2Digest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2Digest();
      var od =
          new api.GoogleDevtoolsRemoteworkersV1test2Digest.fromJson(o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2Digest(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteworkersV1test2Directory", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2Directory();
      var od = new api.GoogleDevtoolsRemoteworkersV1test2Directory.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2Directory(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata();
      var od =
          new api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleDevtoolsRemoteworkersV1test2FileMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2FileMetadata();
      var od = new api.GoogleDevtoolsRemoteworkersV1test2FileMetadata.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2FileMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group("resource-ActionResultsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ActionResultsResourceApi res =
          new api.RemotebuildexecutionApi(mock).actionResults;
      var arg_instanceName = "foo";
      var arg_hash = "foo";
      var arg_sizeBytes = "foo";
      var arg_inlineOutputFiles = buildUnnamed1314();
      var arg_inlineStdout = true;
      var arg_inlineStderr = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["inlineOutputFiles"],
            unittest.equals(arg_inlineOutputFiles));
        unittest.expect(queryMap["inlineStdout"].first,
            unittest.equals("$arg_inlineStdout"));
        unittest.expect(queryMap["inlineStderr"].first,
            unittest.equals("$arg_inlineStderr"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildBuildBazelRemoteExecutionV2ActionResult());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_instanceName, arg_hash, arg_sizeBytes,
              inlineOutputFiles: arg_inlineOutputFiles,
              inlineStdout: arg_inlineStdout,
              inlineStderr: arg_inlineStderr,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2ActionResult(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ActionResultsResourceApi res =
          new api.RemotebuildexecutionApi(mock).actionResults;
      var arg_request = buildBuildBazelRemoteExecutionV2ActionResult();
      var arg_instanceName = "foo";
      var arg_hash = "foo";
      var arg_sizeBytes = "foo";
      var arg_resultsCachePolicy_priority = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.BuildBazelRemoteExecutionV2ActionResult.fromJson(json);
        checkBuildBazelRemoteExecutionV2ActionResult(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            core.int.parse(queryMap["resultsCachePolicy.priority"].first),
            unittest.equals(arg_resultsCachePolicy_priority));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildBuildBazelRemoteExecutionV2ActionResult());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_instanceName, arg_hash, arg_sizeBytes,
              resultsCachePolicy_priority: arg_resultsCachePolicy_priority,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2ActionResult(response);
      })));
    });
  });

  unittest.group("resource-ActionsResourceApi", () {
    unittest.test("method--execute", () {
      var mock = new HttpServerMock();
      api.ActionsResourceApi res =
          new api.RemotebuildexecutionApi(mock).actions;
      var arg_request = buildBuildBazelRemoteExecutionV2ExecuteRequest();
      var arg_instanceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.BuildBazelRemoteExecutionV2ExecuteRequest.fromJson(json);
        checkBuildBazelRemoteExecutionV2ExecuteRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .execute(arg_request, arg_instanceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-BlobsResourceApi", () {
    unittest.test("method--batchRead", () {
      var mock = new HttpServerMock();
      api.BlobsResourceApi res = new api.RemotebuildexecutionApi(mock).blobs;
      var arg_request = buildBuildBazelRemoteExecutionV2BatchReadBlobsRequest();
      var arg_instanceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest.fromJson(
                json);
        checkBuildBazelRemoteExecutionV2BatchReadBlobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildBuildBazelRemoteExecutionV2BatchReadBlobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchRead(arg_request, arg_instanceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2BatchReadBlobsResponse(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.BlobsResourceApi res = new api.RemotebuildexecutionApi(mock).blobs;
      var arg_request =
          buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest();
      var arg_instanceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest.fromJson(
                json);
        checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_instanceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse(response);
      })));
    });

    unittest.test("method--findMissing", () {
      var mock = new HttpServerMock();
      api.BlobsResourceApi res = new api.RemotebuildexecutionApi(mock).blobs;
      var arg_request =
          buildBuildBazelRemoteExecutionV2FindMissingBlobsRequest();
      var arg_instanceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest.fromJson(
                json);
        checkBuildBazelRemoteExecutionV2FindMissingBlobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildBuildBazelRemoteExecutionV2FindMissingBlobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findMissing(arg_request, arg_instanceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2FindMissingBlobsResponse(response);
      })));
    });

    unittest.test("method--getTree", () {
      var mock = new HttpServerMock();
      api.BlobsResourceApi res = new api.RemotebuildexecutionApi(mock).blobs;
      var arg_instanceName = "foo";
      var arg_hash = "foo";
      var arg_sizeBytes = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildBuildBazelRemoteExecutionV2GetTreeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getTree(arg_instanceName, arg_hash, arg_sizeBytes,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2GetTreeResponse(response);
      })));
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--waitExecution", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.RemotebuildexecutionApi(mock).operations;
      var arg_request = buildBuildBazelRemoteExecutionV2WaitExecutionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.BuildBazelRemoteExecutionV2WaitExecutionRequest.fromJson(
                json);
        checkBuildBazelRemoteExecutionV2WaitExecutionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .waitExecution(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-V2ResourceApi", () {
    unittest.test("method--getCapabilities", () {
      var mock = new HttpServerMock();
      api.V2ResourceApi res = new api.RemotebuildexecutionApi(mock).v2;
      var arg_instanceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildBuildBazelRemoteExecutionV2ServerCapabilities());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getCapabilities(arg_instanceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2ServerCapabilities(response);
      })));
    });
  });
}
