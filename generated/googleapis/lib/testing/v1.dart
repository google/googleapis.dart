// This is a generated file (see the discoveryapis_generator project).

library googleapis.testing.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client testing/v1';

/// Allows developers to run automated tests for their mobile applications on
/// Google infrastructure.
class TestingApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View your data across Google Cloud Platform services
  static const CloudPlatformReadOnlyScope =
      "https://www.googleapis.com/auth/cloud-platform.read-only";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  TestEnvironmentCatalogResourceApi get testEnvironmentCatalog =>
      new TestEnvironmentCatalogResourceApi(_requester);

  TestingApi(http.Client client,
      {core.String rootUrl: "https://testing.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTestMatricesResourceApi get testMatrices =>
      new ProjectsTestMatricesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsTestMatricesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTestMatricesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Cancels unfinished test executions in a test matrix.
  /// This call returns immediately and cancellation proceeds asychronously.
  /// If the matrix is already final, this operation will have no effect.
  ///
  /// May return any of the following canonical error codes:
  ///
  /// - PERMISSION_DENIED - if the user is not authorized to read project
  /// - INVALID_ARGUMENT - if the request is malformed
  /// - NOT_FOUND - if the Test Matrix does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - Cloud project that owns the test.
  ///
  /// [testMatrixId] - Test matrix that will be canceled.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CancelTestMatrixResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CancelTestMatrixResponse> cancel(
      core.String projectId, core.String testMatrixId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (testMatrixId == null) {
      throw new core.ArgumentError("Parameter testMatrixId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/testMatrices/' +
        commons.Escaper.ecapeVariable('$testMatrixId') +
        ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new CancelTestMatrixResponse.fromJson(data));
  }

  /// Request to run a matrix of tests according to the given specifications.
  /// Unsupported environments will be returned in the state UNSUPPORTED.
  /// Matrices are limited to at most 200 supported executions.
  ///
  /// May return any of the following canonical error codes:
  ///
  /// - PERMISSION_DENIED - if the user is not authorized to write to project
  /// - INVALID_ARGUMENT - if the request is malformed or if the matrix expands
  ///                      to more than 200 supported executions
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The GCE project under which this job will run.
  ///
  /// [requestId] - A string id used to detect duplicated requests.
  /// Ids are automatically scoped to a project, so
  /// users should ensure the ID is unique per-project.
  /// A UUID is recommended.
  ///
  /// Optional, but strongly recommended.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestMatrix].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestMatrix> create(TestMatrix request, core.String projectId,
      {core.String requestId, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (requestId != null) {
      _queryParams["requestId"] = [requestId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/testMatrices';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TestMatrix.fromJson(data));
  }

  /// Check the status of a test matrix.
  ///
  /// May return any of the following canonical error codes:
  ///
  /// - PERMISSION_DENIED - if the user is not authorized to read project
  /// - INVALID_ARGUMENT - if the request is malformed
  /// - NOT_FOUND - if the Test Matrix does not exist
  ///
  /// Request parameters:
  ///
  /// [projectId] - Cloud project that owns the test matrix.
  ///
  /// [testMatrixId] - Unique test matrix id which was assigned by the service.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestMatrix].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestMatrix> get(core.String projectId, core.String testMatrixId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (testMatrixId == null) {
      throw new core.ArgumentError("Parameter testMatrixId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$projectId') +
        '/testMatrices/' +
        commons.Escaper.ecapeVariable('$testMatrixId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TestMatrix.fromJson(data));
  }
}

class TestEnvironmentCatalogResourceApi {
  final commons.ApiRequester _requester;

  TestEnvironmentCatalogResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Get the catalog of supported test environments.
  ///
  /// May return any of the following canonical error codes:
  ///
  /// - INVALID_ARGUMENT - if the request is malformed
  /// - NOT_FOUND - if the environment type does not exist
  /// - INTERNAL - if an internal error occurred
  ///
  /// Request parameters:
  ///
  /// [environmentType] - The type of environment that should be listed.
  /// Required
  /// Possible string values are:
  /// - "ENVIRONMENT_TYPE_UNSPECIFIED" : A ENVIRONMENT_TYPE_UNSPECIFIED.
  /// - "ANDROID" : A ANDROID.
  /// - "NETWORK_CONFIGURATION" : A NETWORK_CONFIGURATION.
  ///
  /// [projectId] - For authorization, the cloud project requesting the
  /// TestEnvironmentCatalog.
  /// Optional
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestEnvironmentCatalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestEnvironmentCatalog> get(core.String environmentType,
      {core.String projectId, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (environmentType == null) {
      throw new core.ArgumentError("Parameter environmentType is required.");
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/testEnvironmentCatalog/' +
        commons.Escaper.ecapeVariable('$environmentType');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TestEnvironmentCatalog.fromJson(data));
  }
}

/// Identifies an account and how to log into it
class Account {
  /// An automatic google login account
  GoogleAuto googleAuto;

  Account();

  Account.fromJson(core.Map _json) {
    if (_json.containsKey("googleAuto")) {
      googleAuto = new GoogleAuto.fromJson(_json["googleAuto"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (googleAuto != null) {
      _json["googleAuto"] = (googleAuto).toJson();
    }
    return _json;
  }
}

/// A single Android device.
class AndroidDevice {
  /// The id of the Android device to be used.
  /// Use the EnvironmentDiscoveryService to get supported options.
  /// Required
  core.String androidModelId;

  /// The id of the Android OS version to be used.
  /// Use the EnvironmentDiscoveryService to get supported options.
  /// Required
  core.String androidVersionId;

  /// The locale the test device used for testing.
  /// Use the EnvironmentDiscoveryService to get supported options.
  /// Required
  core.String locale;

  /// How the device is oriented during the test.
  /// Use the EnvironmentDiscoveryService to get supported options.
  /// Required
  core.String orientation;

  AndroidDevice();

  AndroidDevice.fromJson(core.Map _json) {
    if (_json.containsKey("androidModelId")) {
      androidModelId = _json["androidModelId"];
    }
    if (_json.containsKey("androidVersionId")) {
      androidVersionId = _json["androidVersionId"];
    }
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("orientation")) {
      orientation = _json["orientation"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidModelId != null) {
      _json["androidModelId"] = androidModelId;
    }
    if (androidVersionId != null) {
      _json["androidVersionId"] = androidVersionId;
    }
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (orientation != null) {
      _json["orientation"] = orientation;
    }
    return _json;
  }
}

/// The currently supported Android devices.
class AndroidDeviceCatalog {
  /// The set of supported Android device models.
  /// @OutputOnly
  core.List<AndroidModel> models;

  /// The set of supported runtime configurations.
  /// @OutputOnly
  AndroidRuntimeConfiguration runtimeConfiguration;

  /// The set of supported Android OS versions.
  /// @OutputOnly
  core.List<AndroidVersion> versions;

  AndroidDeviceCatalog();

  AndroidDeviceCatalog.fromJson(core.Map _json) {
    if (_json.containsKey("models")) {
      models = _json["models"]
          .map((value) => new AndroidModel.fromJson(value))
          .toList();
    }
    if (_json.containsKey("runtimeConfiguration")) {
      runtimeConfiguration = new AndroidRuntimeConfiguration.fromJson(
          _json["runtimeConfiguration"]);
    }
    if (_json.containsKey("versions")) {
      versions = _json["versions"]
          .map((value) => new AndroidVersion.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (models != null) {
      _json["models"] = models.map((value) => (value).toJson()).toList();
    }
    if (runtimeConfiguration != null) {
      _json["runtimeConfiguration"] = (runtimeConfiguration).toJson();
    }
    if (versions != null) {
      _json["versions"] = versions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A list of Android device configurations in which the test is to be executed.
class AndroidDeviceList {
  /// A list of Android devices
  /// Required
  core.List<AndroidDevice> androidDevices;

  AndroidDeviceList();

  AndroidDeviceList.fromJson(core.Map _json) {
    if (_json.containsKey("androidDevices")) {
      androidDevices = _json["androidDevices"]
          .map((value) => new AndroidDevice.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidDevices != null) {
      _json["androidDevices"] =
          androidDevices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A test of an Android application that can control an Android component
/// independently of its normal lifecycle.
/// Android instrumentation tests run an application APK and test APK inside the
/// same process on a virtual or physical AndroidDevice.  They also specify
/// a test runner class, such as com.google.GoogleTestRunner, which can vary
/// on the specific instrumentation framework chosen.
///
/// See <http://developer.android.com/tools/testing/testing_android.html> for
/// more information on types of Android tests.
class AndroidInstrumentationTest {
  /// The APK for the application under test.
  /// Required
  FileReference appApk;

  /// The java package for the application under test.
  /// Optional, default is determined by examining the application's manifest.
  core.String appPackageId;

  /// The option of whether running each test within its own invocation of
  /// instrumentation with Android Test Orchestrator or not.
  /// ** Orchestrator is only compatible with AndroidJUnitRunner version 1.0 or
  /// higher! **
  /// Orchestrator offers the following benefits:
  ///  - No shared state
  ///  - Crashes are isolated
  ///  - Logs are scoped per test
  ///
  /// See
  /// <https://developer.android.com/training/testing/junit-runner.html#using-android-test-orchestrator>
  /// for more information about Android Test Orchestrator.
  ///
  /// Optional, if empty, test will be run without orchestrator.
  /// Possible string values are:
  /// - "ORCHESTRATOR_OPTION_UNSPECIFIED" : This means that the server should
  /// choose the mode. And test will be run
  /// without orchestrator.
  /// Using orchestrator is highly encouraged because of all the benefits it
  /// offers. And in the future, all instrumentation tests will be run with
  /// orchestrator by default if preference unspecified.
  /// - "USE_ORCHESTRATOR" : Run test using orchestrator.
  /// ** Only compatible with AndroidJUnitRunner version 1.0 or higher! **
  /// Recommended.
  /// - "DO_NOT_USE_ORCHESTRATOR" : Run test without using orchestrator.
  core.String orchestratorOption;

  /// The APK containing the test code to be executed.
  /// Required
  FileReference testApk;

  /// The java package for the test to be executed.
  /// Optional, default is determined by examining the application's manifest.
  core.String testPackageId;

  /// The InstrumentationTestRunner class.
  /// Optional, default is determined by examining the application's manifest.
  core.String testRunnerClass;

  /// Each target must be fully qualified with the package name or class name,
  /// in one of these formats:
  ///  - "package package_name"
  ///  - "class package_name.class_name"
  ///  - "class package_name.class_name#method_name"
  ///
  /// Optional, if empty, all targets in the module will be run.
  core.List<core.String> testTargets;

  AndroidInstrumentationTest();

  AndroidInstrumentationTest.fromJson(core.Map _json) {
    if (_json.containsKey("appApk")) {
      appApk = new FileReference.fromJson(_json["appApk"]);
    }
    if (_json.containsKey("appPackageId")) {
      appPackageId = _json["appPackageId"];
    }
    if (_json.containsKey("orchestratorOption")) {
      orchestratorOption = _json["orchestratorOption"];
    }
    if (_json.containsKey("testApk")) {
      testApk = new FileReference.fromJson(_json["testApk"]);
    }
    if (_json.containsKey("testPackageId")) {
      testPackageId = _json["testPackageId"];
    }
    if (_json.containsKey("testRunnerClass")) {
      testRunnerClass = _json["testRunnerClass"];
    }
    if (_json.containsKey("testTargets")) {
      testTargets = _json["testTargets"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appApk != null) {
      _json["appApk"] = (appApk).toJson();
    }
    if (appPackageId != null) {
      _json["appPackageId"] = appPackageId;
    }
    if (orchestratorOption != null) {
      _json["orchestratorOption"] = orchestratorOption;
    }
    if (testApk != null) {
      _json["testApk"] = (testApk).toJson();
    }
    if (testPackageId != null) {
      _json["testPackageId"] = testPackageId;
    }
    if (testRunnerClass != null) {
      _json["testRunnerClass"] = testRunnerClass;
    }
    if (testTargets != null) {
      _json["testTargets"] = testTargets;
    }
    return _json;
  }
}

/// A set of Android device configuration permutations is defined by the
/// the cross-product of the given axes.  Internally, the given AndroidMatrix
/// will be expanded into a set of AndroidDevices.
///
/// Only supported permutations will be instantiated.  Invalid permutations
/// (e.g., incompatible models/versions) are ignored.
class AndroidMatrix {
  /// The ids of the set of Android device to be used.
  /// Use the EnvironmentDiscoveryService to get supported options.
  /// Required
  core.List<core.String> androidModelIds;

  /// The ids of the set of Android OS version to be used.
  /// Use the EnvironmentDiscoveryService to get supported options.
  /// Required
  core.List<core.String> androidVersionIds;

  /// The set of locales the test device will enable for testing.
  /// Use the EnvironmentDiscoveryService to get supported options.
  /// Required
  core.List<core.String> locales;

  /// The set of orientations to test with.
  /// Use the EnvironmentDiscoveryService to get supported options.
  /// Required
  core.List<core.String> orientations;

  AndroidMatrix();

  AndroidMatrix.fromJson(core.Map _json) {
    if (_json.containsKey("androidModelIds")) {
      androidModelIds = _json["androidModelIds"];
    }
    if (_json.containsKey("androidVersionIds")) {
      androidVersionIds = _json["androidVersionIds"];
    }
    if (_json.containsKey("locales")) {
      locales = _json["locales"];
    }
    if (_json.containsKey("orientations")) {
      orientations = _json["orientations"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidModelIds != null) {
      _json["androidModelIds"] = androidModelIds;
    }
    if (androidVersionIds != null) {
      _json["androidVersionIds"] = androidVersionIds;
    }
    if (locales != null) {
      _json["locales"] = locales;
    }
    if (orientations != null) {
      _json["orientations"] = orientations;
    }
    return _json;
  }
}

/// A description of an Android device tests may be run on.
class AndroidModel {
  /// The company that this device is branded with.
  /// Example: "Google", "Samsung"
  /// @OutputOnly
  core.String brand;

  /// The name of the industrial design.
  /// This corresponds to android.os.Build.DEVICE
  /// @OutputOnly
  core.String codename;

  /// Whether this device is virtual or physical.
  /// @OutputOnly
  /// Possible string values are:
  /// - "DEVICE_FORM_UNSPECIFIED" : Do not use.  For proto versioning only.
  /// - "VIRTUAL" : A software stack that simulates the device
  /// - "PHYSICAL" : Actual hardware
  core.String form;

  /// The unique opaque id for this model.
  /// Use this for invoking the TestExecutionService.
  /// @OutputOnly
  core.String id;

  /// The manufacturer of this device.
  /// @OutputOnly
  core.String manufacturer;

  /// The human-readable marketing name for this device model.
  /// Examples: "Nexus 5", "Galaxy S5"
  /// @OutputOnly
  core.String name;

  /// Screen density in DPI.
  /// This corresponds to ro.sf.lcd_density
  /// @OutputOnly
  core.int screenDensity;

  /// Screen size in the horizontal (X) dimension measured in pixels.
  /// @OutputOnly
  core.int screenX;

  /// Screen size in the vertical (Y) dimension measured in pixels.
  /// @OutputOnly
  core.int screenY;

  /// The list of supported ABIs for this device.
  /// This corresponds to either android.os.Build.SUPPORTED_ABIS (for API level
  /// 21 and above) or android.os.Build.CPU_ABI/CPU_ABI2.
  /// The most preferred ABI is the first element in the list.
  ///
  /// Elements are optionally prefixed by "version_id:" (where version_id is
  /// the id of an AndroidVersion), denoting an ABI that is supported only on
  /// a particular version.
  /// @OutputOnly
  core.List<core.String> supportedAbis;

  /// The set of Android versions this device supports.
  /// @OutputOnly
  core.List<core.String> supportedVersionIds;

  /// Tags for this dimension.
  /// Examples: "default", "preview", "deprecated"
  core.List<core.String> tags;

  AndroidModel();

  AndroidModel.fromJson(core.Map _json) {
    if (_json.containsKey("brand")) {
      brand = _json["brand"];
    }
    if (_json.containsKey("codename")) {
      codename = _json["codename"];
    }
    if (_json.containsKey("form")) {
      form = _json["form"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("manufacturer")) {
      manufacturer = _json["manufacturer"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("screenDensity")) {
      screenDensity = _json["screenDensity"];
    }
    if (_json.containsKey("screenX")) {
      screenX = _json["screenX"];
    }
    if (_json.containsKey("screenY")) {
      screenY = _json["screenY"];
    }
    if (_json.containsKey("supportedAbis")) {
      supportedAbis = _json["supportedAbis"];
    }
    if (_json.containsKey("supportedVersionIds")) {
      supportedVersionIds = _json["supportedVersionIds"];
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (brand != null) {
      _json["brand"] = brand;
    }
    if (codename != null) {
      _json["codename"] = codename;
    }
    if (form != null) {
      _json["form"] = form;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (manufacturer != null) {
      _json["manufacturer"] = manufacturer;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (screenDensity != null) {
      _json["screenDensity"] = screenDensity;
    }
    if (screenX != null) {
      _json["screenX"] = screenX;
    }
    if (screenY != null) {
      _json["screenY"] = screenY;
    }
    if (supportedAbis != null) {
      _json["supportedAbis"] = supportedAbis;
    }
    if (supportedVersionIds != null) {
      _json["supportedVersionIds"] = supportedVersionIds;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    return _json;
  }
}

/// A test of an android application that explores the application on a virtual
/// or physical Android Device, finding culprits and crashes as it goes.
class AndroidRoboTest {
  /// The APK for the application under test.
  /// Required
  FileReference appApk;

  /// The initial activity that should be used to start the app.
  /// Optional
  core.String appInitialActivity;

  /// The java package for the application under test.
  /// Optional, default is determined by examining the application's manifest.
  core.String appPackageId;

  /// The max depth of the traversal stack Robo can explore. Needs to be at
  /// least
  /// 2 to make Robo explore the app beyond the first activity.
  /// Default is 50.
  /// Optional
  core.int maxDepth;

  /// The max number of steps Robo can execute.
  /// Default is no limit.
  /// Optional
  core.int maxSteps;

  /// A set of directives Robo should apply during the crawl.
  /// This allows users to customize the crawl. For example, the username and
  /// password for a test account can be provided.
  /// Optional
  core.List<RoboDirective> roboDirectives;

  /// The intents used to launch the app for the crawl.
  /// If none are provided, then the main launcher activity is launched.
  /// If some are provided, then only those provided are launched (the main
  /// launcher activity must be provided explicitly).
  core.List<RoboStartingIntent> startingIntents;

  AndroidRoboTest();

  AndroidRoboTest.fromJson(core.Map _json) {
    if (_json.containsKey("appApk")) {
      appApk = new FileReference.fromJson(_json["appApk"]);
    }
    if (_json.containsKey("appInitialActivity")) {
      appInitialActivity = _json["appInitialActivity"];
    }
    if (_json.containsKey("appPackageId")) {
      appPackageId = _json["appPackageId"];
    }
    if (_json.containsKey("maxDepth")) {
      maxDepth = _json["maxDepth"];
    }
    if (_json.containsKey("maxSteps")) {
      maxSteps = _json["maxSteps"];
    }
    if (_json.containsKey("roboDirectives")) {
      roboDirectives = _json["roboDirectives"]
          .map((value) => new RoboDirective.fromJson(value))
          .toList();
    }
    if (_json.containsKey("startingIntents")) {
      startingIntents = _json["startingIntents"]
          .map((value) => new RoboStartingIntent.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appApk != null) {
      _json["appApk"] = (appApk).toJson();
    }
    if (appInitialActivity != null) {
      _json["appInitialActivity"] = appInitialActivity;
    }
    if (appPackageId != null) {
      _json["appPackageId"] = appPackageId;
    }
    if (maxDepth != null) {
      _json["maxDepth"] = maxDepth;
    }
    if (maxSteps != null) {
      _json["maxSteps"] = maxSteps;
    }
    if (roboDirectives != null) {
      _json["roboDirectives"] =
          roboDirectives.map((value) => (value).toJson()).toList();
    }
    if (startingIntents != null) {
      _json["startingIntents"] =
          startingIntents.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Configuration that can be selected at the time a test is run.
class AndroidRuntimeConfiguration {
  /// The set of available locales.
  /// @OutputOnly
  core.List<Locale> locales;

  /// The set of available orientations.
  /// @OutputOnly
  core.List<Orientation> orientations;

  AndroidRuntimeConfiguration();

  AndroidRuntimeConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("locales")) {
      locales =
          _json["locales"].map((value) => new Locale.fromJson(value)).toList();
    }
    if (_json.containsKey("orientations")) {
      orientations = _json["orientations"]
          .map((value) => new Orientation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locales != null) {
      _json["locales"] = locales.map((value) => (value).toJson()).toList();
    }
    if (orientations != null) {
      _json["orientations"] =
          orientations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A test of an Android Application with a Test Loop.
/// The intent <intent-name> will be implicitly added, since Games is the only
/// user of this api, for the time being.
class AndroidTestLoop {
  /// The APK for the application under test.
  /// Required
  FileReference appApk;

  /// The java package for the application under test.
  /// Optional, default is determined by examining the application's manifest.
  core.String appPackageId;

  /// The list of scenario labels that should be run during the test.
  /// The scenario labels should map to labels defined in the application's
  /// manifest. For example, player_experience and
  /// com.google.test.loops.player_experience add all of the loops labeled in
  /// the
  /// manifest with the com.google.test.loops.player_experience name to the
  /// execution.
  /// Optional. Scenarios can also be specified in the scenarios field.
  core.List<core.String> scenarioLabels;

  /// The list of scenarios that should be run during the test.
  /// Optional, default is all test loops, derived from the application's
  /// manifest.
  core.List<core.int> scenarios;

  AndroidTestLoop();

  AndroidTestLoop.fromJson(core.Map _json) {
    if (_json.containsKey("appApk")) {
      appApk = new FileReference.fromJson(_json["appApk"]);
    }
    if (_json.containsKey("appPackageId")) {
      appPackageId = _json["appPackageId"];
    }
    if (_json.containsKey("scenarioLabels")) {
      scenarioLabels = _json["scenarioLabels"];
    }
    if (_json.containsKey("scenarios")) {
      scenarios = _json["scenarios"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appApk != null) {
      _json["appApk"] = (appApk).toJson();
    }
    if (appPackageId != null) {
      _json["appPackageId"] = appPackageId;
    }
    if (scenarioLabels != null) {
      _json["scenarioLabels"] = scenarioLabels;
    }
    if (scenarios != null) {
      _json["scenarios"] = scenarios;
    }
    return _json;
  }
}

/// A version of the Android OS
class AndroidVersion {
  /// The API level for this Android version.
  /// Examples: 18, 19
  /// @OutputOnly
  core.int apiLevel;

  /// The code name for this Android version.
  /// Examples: "JellyBean", "KitKat"
  /// @OutputOnly
  core.String codeName;

  /// Market share for this version.
  /// @OutputOnly
  Distribution distribution;

  /// An opaque id for this Android version.
  /// Use this id to invoke the TestExecutionService.
  /// @OutputOnly
  core.String id;

  /// The date this Android version became available in the market.
  /// @OutputOnly
  Date releaseDate;

  /// Tags for this dimension.
  /// Examples: "default", "preview", "deprecated"
  core.List<core.String> tags;

  /// A string representing this version of the Android OS.
  /// Examples: "4.3", "4.4"
  /// @OutputOnly
  core.String versionString;

  AndroidVersion();

  AndroidVersion.fromJson(core.Map _json) {
    if (_json.containsKey("apiLevel")) {
      apiLevel = _json["apiLevel"];
    }
    if (_json.containsKey("codeName")) {
      codeName = _json["codeName"];
    }
    if (_json.containsKey("distribution")) {
      distribution = new Distribution.fromJson(_json["distribution"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("releaseDate")) {
      releaseDate = new Date.fromJson(_json["releaseDate"]);
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
    if (_json.containsKey("versionString")) {
      versionString = _json["versionString"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apiLevel != null) {
      _json["apiLevel"] = apiLevel;
    }
    if (codeName != null) {
      _json["codeName"] = codeName;
    }
    if (distribution != null) {
      _json["distribution"] = (distribution).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (releaseDate != null) {
      _json["releaseDate"] = (releaseDate).toJson();
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (versionString != null) {
      _json["versionString"] = versionString;
    }
    return _json;
  }
}

/// Response containing the current state of the specified test matrix.
class CancelTestMatrixResponse {
  /// The current rolled-up state of the test matrix.
  /// If this state is already final, then the cancelation request will
  /// have no effect.
  /// Possible string values are:
  /// - "TEST_STATE_UNSPECIFIED" : Do not use.  For proto versioning only.
  /// - "VALIDATING" : The execution or matrix is being validated.
  /// - "PENDING" : The execution or matrix is waiting for resources to become
  /// available.
  /// - "RUNNING" : The execution is currently being processed.
  ///
  /// Can only be set on an execution.
  /// - "FINISHED" : The execution or matrix has terminated normally.
  ///
  /// On a matrix this means that the matrix level processing completed
  /// normally,
  /// but individual executions may be in an ERROR state.
  /// - "ERROR" : The execution or matrix has stopped because it encountered an
  /// infrastructure failure.
  /// - "UNSUPPORTED_ENVIRONMENT" : The execution was not run because it
  /// corresponds to a unsupported
  /// environment.
  ///
  /// Can only be set on an execution.
  /// - "INCOMPATIBLE_ENVIRONMENT" : The execution was not run because the
  /// provided inputs are incompatible with
  /// the requested environment.
  ///
  /// Example: requested AndroidVersion is lower than APK's minSdkVersion
  ///
  /// Can only be set on an execution.
  /// - "INCOMPATIBLE_ARCHITECTURE" : The execution was not run because the
  /// provided inputs are incompatible with
  /// the requested architecture.
  ///
  /// Example: requested device does not support running the native code in
  /// the supplied APK
  ///
  /// Can only be set on an execution.
  /// - "CANCELLED" : The user cancelled the execution.
  ///
  /// Can only be set on an execution.
  /// - "INVALID" : The execution or matrix was not run because the provided
  /// inputs are not
  /// valid.
  ///
  /// Examples: input file is not of the expected type, is malformed/corrupt, or
  /// was flagged as malware
  core.String testState;

  CancelTestMatrixResponse();

  CancelTestMatrixResponse.fromJson(core.Map _json) {
    if (_json.containsKey("testState")) {
      testState = _json["testState"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (testState != null) {
      _json["testState"] = testState;
    }
    return _json;
  }
}

/// Information about the client which invoked the test.
class ClientInfo {
  /// The list of detailed information about client.
  core.List<ClientInfoDetail> clientInfoDetails;

  /// Client name, such as gcloud.
  /// Required
  core.String name;

  ClientInfo();

  ClientInfo.fromJson(core.Map _json) {
    if (_json.containsKey("clientInfoDetails")) {
      clientInfoDetails = _json["clientInfoDetails"]
          .map((value) => new ClientInfoDetail.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientInfoDetails != null) {
      _json["clientInfoDetails"] =
          clientInfoDetails.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Key-value pair of detailed information about the client which invoked the
/// test. For example {'Version', '1.0'}, {'Release Track', 'BETA'}
class ClientInfoDetail {
  /// The key of detailed client information.
  /// Required
  core.String key;

  /// The value of detailed client information.
  /// Required
  core.String value;

  ClientInfoDetail();

  ClientInfoDetail.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Represents a whole calendar date, e.g. date of birth. The time of day and
/// time zone are either specified elsewhere or are not significant. The date
/// is relative to the Proleptic Gregorian Calendar. The day may be 0 to
/// represent a year and month where the day is not significant, e.g. credit
/// card
/// expiration date. The year may be 0 to represent a month and day independent
/// of year, e.g. anniversary date. Related types are google.type.TimeOfDay
/// and `google.protobuf.Timestamp`.
class Date {
  /// Day of month. Must be from 1 to 31 and valid for the year and month, or 0
  /// if specifying a year/month where the day is not significant.
  core.int day;

  /// Month of year. Must be from 1 to 12.
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

/// A single device file description.
class DeviceFile {
  /// A reference to an opaque binary blob file
  ObbFile obbFile;

  DeviceFile();

  DeviceFile.fromJson(core.Map _json) {
    if (_json.containsKey("obbFile")) {
      obbFile = new ObbFile.fromJson(_json["obbFile"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (obbFile != null) {
      _json["obbFile"] = (obbFile).toJson();
    }
    return _json;
  }
}

/// Data about the relative number of devices running a
/// given configuration of the Android platform.
class Distribution {
  /// The estimated fraction (0-1) of the total market with this configuration.
  /// @OutputOnly
  core.double marketShare;

  /// The time this distribution was measured.
  /// @OutputOnly
  core.String measurementTime;

  Distribution();

  Distribution.fromJson(core.Map _json) {
    if (_json.containsKey("marketShare")) {
      marketShare = _json["marketShare"];
    }
    if (_json.containsKey("measurementTime")) {
      measurementTime = _json["measurementTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (marketShare != null) {
      _json["marketShare"] = marketShare;
    }
    if (measurementTime != null) {
      _json["measurementTime"] = measurementTime;
    }
    return _json;
  }
}

/// The environment in which the test is run.
class Environment {
  /// An Android device which must be used with an Android test.
  AndroidDevice androidDevice;

  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey("androidDevice")) {
      androidDevice = new AndroidDevice.fromJson(_json["androidDevice"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidDevice != null) {
      _json["androidDevice"] = (androidDevice).toJson();
    }
    return _json;
  }
}

/// The matrix of environments in which the test is to be executed.
class EnvironmentMatrix {
  /// A list of Android devices; the test will be run only on the specified
  /// devices.
  AndroidDeviceList androidDeviceList;

  /// A matrix of Android devices.
  AndroidMatrix androidMatrix;

  EnvironmentMatrix();

  EnvironmentMatrix.fromJson(core.Map _json) {
    if (_json.containsKey("androidDeviceList")) {
      androidDeviceList =
          new AndroidDeviceList.fromJson(_json["androidDeviceList"]);
    }
    if (_json.containsKey("androidMatrix")) {
      androidMatrix = new AndroidMatrix.fromJson(_json["androidMatrix"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidDeviceList != null) {
      _json["androidDeviceList"] = (androidDeviceList).toJson();
    }
    if (androidMatrix != null) {
      _json["androidMatrix"] = (androidMatrix).toJson();
    }
    return _json;
  }
}

/// A key-value pair passed as an environment variable to the test
class EnvironmentVariable {
  /// Key for the environment variable
  core.String key;

  /// Value for the environment variable
  core.String value;

  EnvironmentVariable();

  EnvironmentVariable.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A reference to a file, used for user inputs.
class FileReference {
  /// A path to a file in Google Cloud Storage.
  /// Example: gs://build-app-1414623860166/app-debug-unaligned.apk
  core.String gcsPath;

  FileReference();

  FileReference.fromJson(core.Map _json) {
    if (_json.containsKey("gcsPath")) {
      gcsPath = _json["gcsPath"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcsPath != null) {
      _json["gcsPath"] = gcsPath;
    }
    return _json;
  }
}

/// Enables automatic Google account login.
/// If set, the service will automatically generate a Google test account and
/// add
/// it to the device, before executing the test. Note that test accounts might
/// be
/// reused.
/// Many applications show their full set of functionalities when an account is
/// present on the device. Logging into the device with these generated accounts
/// allows testing more functionalities.
class GoogleAuto {
  GoogleAuto();

  GoogleAuto.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A storage location within Google cloud storage (GCS).
class GoogleCloudStorage {
  /// The path to a directory in GCS that will
  /// eventually contain the results for this test.
  /// The requesting user must have write access on the bucket in the supplied
  /// path.
  /// Required
  core.String gcsPath;

  GoogleCloudStorage();

  GoogleCloudStorage.fromJson(core.Map _json) {
    if (_json.containsKey("gcsPath")) {
      gcsPath = _json["gcsPath"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcsPath != null) {
      _json["gcsPath"] = gcsPath;
    }
    return _json;
  }
}

/// Specifies an intent that starts the main launcher activity.
class LauncherActivityIntent {
  LauncherActivityIntent();

  LauncherActivityIntent.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A location/region designation for language.
class Locale {
  /// The id for this locale.
  /// Example: "en_US"
  /// @OutputOnly
  core.String id;

  /// A human-friendly name for this language/locale.
  /// Example: "English"
  /// @OutputOnly
  core.String name;

  /// A human-friendly string representing the region for this locale.
  /// Example: "United States"
  /// Not present for every locale.
  /// @OutputOnly
  core.String region;

  /// Tags for this dimension.
  /// Examples: "default"
  core.List<core.String> tags;

  Locale();

  Locale.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    return _json;
  }
}

class NetworkConfiguration {
  /// The emulation rule applying to the download traffic
  TrafficRule downRule;

  /// The unique opaque id for this network traffic configuration
  /// @OutputOnly
  core.String id;

  /// The emulation rule applying to the upload traffic
  TrafficRule upRule;

  NetworkConfiguration();

  NetworkConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("downRule")) {
      downRule = new TrafficRule.fromJson(_json["downRule"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("upRule")) {
      upRule = new TrafficRule.fromJson(_json["upRule"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (downRule != null) {
      _json["downRule"] = (downRule).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (upRule != null) {
      _json["upRule"] = (upRule).toJson();
    }
    return _json;
  }
}

class NetworkConfigurationCatalog {
  core.List<NetworkConfiguration> configurations;

  NetworkConfigurationCatalog();

  NetworkConfigurationCatalog.fromJson(core.Map _json) {
    if (_json.containsKey("configurations")) {
      configurations = _json["configurations"]
          .map((value) => new NetworkConfiguration.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (configurations != null) {
      _json["configurations"] =
          configurations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An opaque binary blob file to install on the device before the test starts
class ObbFile {
  /// Opaque Binary Blob (OBB) file(s) to install on the device
  /// Required
  FileReference obb;

  /// OBB file name which must conform to the format as specified by
  /// Android
  /// e.g. [main|patch].0300110.com.example.android.obb
  /// which will be installed into
  ///   <shared-storage>/Android/obb/<package-name>/
  /// on the device
  /// Required
  core.String obbFileName;

  ObbFile();

  ObbFile.fromJson(core.Map _json) {
    if (_json.containsKey("obb")) {
      obb = new FileReference.fromJson(_json["obb"]);
    }
    if (_json.containsKey("obbFileName")) {
      obbFileName = _json["obbFileName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (obb != null) {
      _json["obb"] = (obb).toJson();
    }
    if (obbFileName != null) {
      _json["obbFileName"] = obbFileName;
    }
    return _json;
  }
}

/// Screen orientation of the device.
class Orientation {
  /// The id for this orientation.
  /// Example: "portrait"
  /// @OutputOnly
  core.String id;

  /// A human-friendly name for this orientation.
  /// Example: "portrait"
  /// @OutputOnly
  core.String name;

  /// Tags for this dimension.
  /// Examples: "default"
  core.List<core.String> tags;

  Orientation();

  Orientation.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    return _json;
  }
}

/// Locations where the results of running the test are stored.
class ResultStorage {
  /// Required.
  GoogleCloudStorage googleCloudStorage;

  /// The tool results execution that results are written to.
  /// @OutputOnly
  ToolResultsExecution toolResultsExecution;

  /// The tool results history that contains the tool results execution that
  /// results are written to.
  ///
  /// Optional, if not provided the service will choose an appropriate value.
  ToolResultsHistory toolResultsHistory;

  ResultStorage();

  ResultStorage.fromJson(core.Map _json) {
    if (_json.containsKey("googleCloudStorage")) {
      googleCloudStorage =
          new GoogleCloudStorage.fromJson(_json["googleCloudStorage"]);
    }
    if (_json.containsKey("toolResultsExecution")) {
      toolResultsExecution =
          new ToolResultsExecution.fromJson(_json["toolResultsExecution"]);
    }
    if (_json.containsKey("toolResultsHistory")) {
      toolResultsHistory =
          new ToolResultsHistory.fromJson(_json["toolResultsHistory"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (googleCloudStorage != null) {
      _json["googleCloudStorage"] = (googleCloudStorage).toJson();
    }
    if (toolResultsExecution != null) {
      _json["toolResultsExecution"] = (toolResultsExecution).toJson();
    }
    if (toolResultsHistory != null) {
      _json["toolResultsHistory"] = (toolResultsHistory).toJson();
    }
    return _json;
  }
}

/// Directs Robo to interact with a specific UI element if it is encountered
/// during the crawl. Currently, Robo can perform text entry or element click.
class RoboDirective {
  /// The type of action that Robo should perform on the specified element.
  /// Required.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : DO NOT USE. For proto versioning only.
  /// - "SINGLE_CLICK" : Direct Robo to click on the specified element. No-op if
  /// specified element
  /// is not clickable.
  /// - "ENTER_TEXT" : Direct Robo to enter text on the specified element. No-op
  /// if specified
  /// element is not enabled or does not allow text entry.
  core.String actionType;

  /// The text that Robo is directed to set. If left empty, the directive will
  /// be
  /// treated as a CLICK on the element matching the resource_name.
  /// Optional
  core.String inputText;

  /// The android resource name of the target UI element
  /// For example,
  ///    in Java: R.string.foo
  ///    in xml: @string/foo
  /// Only the “foo” part is needed.
  /// Reference doc:
  /// https://developer.android.com/guide/topics/resources/accessing-resources.html
  /// Required
  core.String resourceName;

  RoboDirective();

  RoboDirective.fromJson(core.Map _json) {
    if (_json.containsKey("actionType")) {
      actionType = _json["actionType"];
    }
    if (_json.containsKey("inputText")) {
      inputText = _json["inputText"];
    }
    if (_json.containsKey("resourceName")) {
      resourceName = _json["resourceName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionType != null) {
      _json["actionType"] = actionType;
    }
    if (inputText != null) {
      _json["inputText"] = inputText;
    }
    if (resourceName != null) {
      _json["resourceName"] = resourceName;
    }
    return _json;
  }
}

/// Message for specifying the start activities to crawl
class RoboStartingIntent {
  LauncherActivityIntent launcherActivity;
  StartActivityIntent startActivity;

  RoboStartingIntent();

  RoboStartingIntent.fromJson(core.Map _json) {
    if (_json.containsKey("launcherActivity")) {
      launcherActivity =
          new LauncherActivityIntent.fromJson(_json["launcherActivity"]);
    }
    if (_json.containsKey("startActivity")) {
      startActivity = new StartActivityIntent.fromJson(_json["startActivity"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (launcherActivity != null) {
      _json["launcherActivity"] = (launcherActivity).toJson();
    }
    if (startActivity != null) {
      _json["startActivity"] = (startActivity).toJson();
    }
    return _json;
  }
}

/// A starting intent specified by an action, uri, and categories.
class StartActivityIntent {
  /// Action name.
  /// Required for START_ACTIVITY.
  core.String action;

  /// Intent categories to set on the intent.
  /// Optional.
  core.List<core.String> categories;

  /// URI for the action.
  /// Optional.
  core.String uri;

  StartActivityIntent();

  StartActivityIntent.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("categories")) {
      categories = _json["categories"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (categories != null) {
      _json["categories"] = categories;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Additional details about the progress of the running test.
class TestDetails {
  /// If the TestState is ERROR, then this string will contain human-readable
  /// details about the error.
  /// @OutputOnly
  core.String errorMessage;

  /// Human-readable, detailed descriptions of the test's progress.
  /// For example: "Provisioning a device", "Starting Test".
  ///
  /// During the course of execution new data may be appended
  /// to the end of progress_messages.
  /// @OutputOnly
  core.List<core.String> progressMessages;

  TestDetails();

  TestDetails.fromJson(core.Map _json) {
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("progressMessages")) {
      progressMessages = _json["progressMessages"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
    if (progressMessages != null) {
      _json["progressMessages"] = progressMessages;
    }
    return _json;
  }
}

/// A description of a test environment.
class TestEnvironmentCatalog {
  /// Android devices suitable for running Android Instrumentation Tests.
  AndroidDeviceCatalog androidDeviceCatalog;

  /// Supported network configurations
  NetworkConfigurationCatalog networkConfigurationCatalog;

  TestEnvironmentCatalog();

  TestEnvironmentCatalog.fromJson(core.Map _json) {
    if (_json.containsKey("androidDeviceCatalog")) {
      androidDeviceCatalog =
          new AndroidDeviceCatalog.fromJson(_json["androidDeviceCatalog"]);
    }
    if (_json.containsKey("networkConfigurationCatalog")) {
      networkConfigurationCatalog = new NetworkConfigurationCatalog.fromJson(
          _json["networkConfigurationCatalog"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidDeviceCatalog != null) {
      _json["androidDeviceCatalog"] = (androidDeviceCatalog).toJson();
    }
    if (networkConfigurationCatalog != null) {
      _json["networkConfigurationCatalog"] =
          (networkConfigurationCatalog).toJson();
    }
    return _json;
  }
}

/// Specifies a single test to be executed in a single environment.
class TestExecution {
  /// How the host machine(s) are configured.
  /// @OutputOnly
  Environment environment;

  /// Unique id set by the backend.
  /// @OutputOnly
  core.String id;

  /// Id of the containing TestMatrix.
  /// @OutputOnly
  core.String matrixId;

  /// The cloud project that owns the test execution.
  /// @OutputOnly
  core.String projectId;

  /// Indicates the current progress of the test execution (e.g., FINISHED).
  /// @OutputOnly
  /// Possible string values are:
  /// - "TEST_STATE_UNSPECIFIED" : Do not use.  For proto versioning only.
  /// - "VALIDATING" : The execution or matrix is being validated.
  /// - "PENDING" : The execution or matrix is waiting for resources to become
  /// available.
  /// - "RUNNING" : The execution is currently being processed.
  ///
  /// Can only be set on an execution.
  /// - "FINISHED" : The execution or matrix has terminated normally.
  ///
  /// On a matrix this means that the matrix level processing completed
  /// normally,
  /// but individual executions may be in an ERROR state.
  /// - "ERROR" : The execution or matrix has stopped because it encountered an
  /// infrastructure failure.
  /// - "UNSUPPORTED_ENVIRONMENT" : The execution was not run because it
  /// corresponds to a unsupported
  /// environment.
  ///
  /// Can only be set on an execution.
  /// - "INCOMPATIBLE_ENVIRONMENT" : The execution was not run because the
  /// provided inputs are incompatible with
  /// the requested environment.
  ///
  /// Example: requested AndroidVersion is lower than APK's minSdkVersion
  ///
  /// Can only be set on an execution.
  /// - "INCOMPATIBLE_ARCHITECTURE" : The execution was not run because the
  /// provided inputs are incompatible with
  /// the requested architecture.
  ///
  /// Example: requested device does not support running the native code in
  /// the supplied APK
  ///
  /// Can only be set on an execution.
  /// - "CANCELLED" : The user cancelled the execution.
  ///
  /// Can only be set on an execution.
  /// - "INVALID" : The execution or matrix was not run because the provided
  /// inputs are not
  /// valid.
  ///
  /// Examples: input file is not of the expected type, is malformed/corrupt, or
  /// was flagged as malware
  core.String state;

  /// Additional details about the running test.
  /// @OutputOnly
  TestDetails testDetails;

  /// How to run the test.
  /// @OutputOnly
  TestSpecification testSpecification;

  /// The time this test execution was initially created.
  /// @OutputOnly
  core.String timestamp;

  /// Where the results for this execution are written.
  /// @OutputOnly
  ToolResultsStep toolResultsStep;

  TestExecution();

  TestExecution.fromJson(core.Map _json) {
    if (_json.containsKey("environment")) {
      environment = new Environment.fromJson(_json["environment"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("matrixId")) {
      matrixId = _json["matrixId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("testDetails")) {
      testDetails = new TestDetails.fromJson(_json["testDetails"]);
    }
    if (_json.containsKey("testSpecification")) {
      testSpecification =
          new TestSpecification.fromJson(_json["testSpecification"]);
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
    if (_json.containsKey("toolResultsStep")) {
      toolResultsStep = new ToolResultsStep.fromJson(_json["toolResultsStep"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (environment != null) {
      _json["environment"] = (environment).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (matrixId != null) {
      _json["matrixId"] = matrixId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (testDetails != null) {
      _json["testDetails"] = (testDetails).toJson();
    }
    if (testSpecification != null) {
      _json["testSpecification"] = (testSpecification).toJson();
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    if (toolResultsStep != null) {
      _json["toolResultsStep"] = (toolResultsStep).toJson();
    }
    return _json;
  }
}

/// A group of one or more TestExecutions, built by taking a
/// product of values over a pre-defined set of axes.
class TestMatrix {
  /// Information about the client which invoked the test.
  /// Optional
  ClientInfo clientInfo;

  /// How the host machine(s) are configured.
  /// Required
  EnvironmentMatrix environmentMatrix;

  /// Describes why the matrix is considered invalid.
  /// Only useful for matrices in the INVALID state.
  /// @OutputOnly
  /// Possible string values are:
  /// - "INVALID_MATRIX_DETAILS_UNSPECIFIED" : Do not use. For proto versioning
  /// only.
  /// - "DETAILS_UNAVAILABLE" : The matrix is INVALID, but there are no further
  /// details available.
  /// - "MALFORMED_APK" : The input app APK could not be parsed.
  /// - "MALFORMED_TEST_APK" : The input test APK could not be parsed.
  /// - "NO_MANIFEST" : The AndroidManifest.xml could not be found.
  /// - "NO_PACKAGE_NAME" : The APK manifest does not declare a package name.
  /// - "TEST_SAME_AS_APP" : The test package and app package are the same.
  /// - "NO_INSTRUMENTATION" : The test apk does not declare an instrumentation.
  /// - "NO_SIGNATURE" : The input app apk does not have a signature.
  /// - "INSTRUMENTATION_ORCHESTRATOR_INCOMPATIBLE" : The test runner class
  /// specified by user or in the test APK's manifest file
  /// is not compatible with Android Test Orchestrator.
  /// Orchestrator is only compatible with AndroidJUnitRunner version 1.0 or
  /// higher.
  /// Orchestrator can be disabled by using DO_NOT_USE_ORCHESTRATOR
  /// OrchestratorOption.
  /// - "NO_TEST_RUNNER_CLASS" : The test APK does not contain the test runner
  /// class specified by user or in
  /// the manifest file.
  /// This can be caused by either of the following reasons:
  /// - the user provided a runner class name that's incorrect, or
  /// - the test runner isn't built into the test APK (might be in the app APK
  /// instead).
  /// - "NO_LAUNCHER_ACTIVITY" : A main launcher activity could not be found.
  /// - "FORBIDDEN_PERMISSIONS" : The app declares one or more permissions that
  /// are not allowed.
  /// - "INVALID_ROBO_DIRECTIVES" : There is a conflict in the provided
  /// robo_directives.
  /// - "TEST_LOOP_INTENT_FILTER_NOT_FOUND" : There there is no test loop intent
  /// filter, or the one that is given is
  /// not formatted correctly.
  /// - "SCENARIO_LABEL_NOT_DECLARED" : The request contains a scenario label
  /// that was not declared in the
  /// manifest.
  /// - "SCENARIO_LABEL_MALFORMED" : There was an error when parsing a label's
  /// value.
  /// - "SCENARIO_NOT_DECLARED" : The request contains a scenario number that
  /// was not declared in the
  /// manifest.
  /// - "DEVICE_ADMIN_RECEIVER" : Device administrator applications are not
  /// allowed.
  /// - "TEST_ONLY_APK" : The APK is marked as "testOnly".
  core.String invalidMatrixDetails;

  /// The cloud project that owns the test matrix.
  /// @OutputOnly
  core.String projectId;

  /// Where the results for the matrix are written.
  /// Required
  ResultStorage resultStorage;

  /// Indicates the current progress of the test matrix (e.g., FINISHED)
  /// @OutputOnly
  /// Possible string values are:
  /// - "TEST_STATE_UNSPECIFIED" : Do not use.  For proto versioning only.
  /// - "VALIDATING" : The execution or matrix is being validated.
  /// - "PENDING" : The execution or matrix is waiting for resources to become
  /// available.
  /// - "RUNNING" : The execution is currently being processed.
  ///
  /// Can only be set on an execution.
  /// - "FINISHED" : The execution or matrix has terminated normally.
  ///
  /// On a matrix this means that the matrix level processing completed
  /// normally,
  /// but individual executions may be in an ERROR state.
  /// - "ERROR" : The execution or matrix has stopped because it encountered an
  /// infrastructure failure.
  /// - "UNSUPPORTED_ENVIRONMENT" : The execution was not run because it
  /// corresponds to a unsupported
  /// environment.
  ///
  /// Can only be set on an execution.
  /// - "INCOMPATIBLE_ENVIRONMENT" : The execution was not run because the
  /// provided inputs are incompatible with
  /// the requested environment.
  ///
  /// Example: requested AndroidVersion is lower than APK's minSdkVersion
  ///
  /// Can only be set on an execution.
  /// - "INCOMPATIBLE_ARCHITECTURE" : The execution was not run because the
  /// provided inputs are incompatible with
  /// the requested architecture.
  ///
  /// Example: requested device does not support running the native code in
  /// the supplied APK
  ///
  /// Can only be set on an execution.
  /// - "CANCELLED" : The user cancelled the execution.
  ///
  /// Can only be set on an execution.
  /// - "INVALID" : The execution or matrix was not run because the provided
  /// inputs are not
  /// valid.
  ///
  /// Examples: input file is not of the expected type, is malformed/corrupt, or
  /// was flagged as malware
  core.String state;

  /// The list of test executions that the service creates for this matrix.
  /// @OutputOnly
  core.List<TestExecution> testExecutions;

  /// Unique id set by the service.
  /// @OutputOnly
  core.String testMatrixId;

  /// How to run the test.
  /// Required
  TestSpecification testSpecification;

  /// The time this test matrix was initially created.
  /// @OutputOnly
  core.String timestamp;

  TestMatrix();

  TestMatrix.fromJson(core.Map _json) {
    if (_json.containsKey("clientInfo")) {
      clientInfo = new ClientInfo.fromJson(_json["clientInfo"]);
    }
    if (_json.containsKey("environmentMatrix")) {
      environmentMatrix =
          new EnvironmentMatrix.fromJson(_json["environmentMatrix"]);
    }
    if (_json.containsKey("invalidMatrixDetails")) {
      invalidMatrixDetails = _json["invalidMatrixDetails"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("resultStorage")) {
      resultStorage = new ResultStorage.fromJson(_json["resultStorage"]);
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("testExecutions")) {
      testExecutions = _json["testExecutions"]
          .map((value) => new TestExecution.fromJson(value))
          .toList();
    }
    if (_json.containsKey("testMatrixId")) {
      testMatrixId = _json["testMatrixId"];
    }
    if (_json.containsKey("testSpecification")) {
      testSpecification =
          new TestSpecification.fromJson(_json["testSpecification"]);
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientInfo != null) {
      _json["clientInfo"] = (clientInfo).toJson();
    }
    if (environmentMatrix != null) {
      _json["environmentMatrix"] = (environmentMatrix).toJson();
    }
    if (invalidMatrixDetails != null) {
      _json["invalidMatrixDetails"] = invalidMatrixDetails;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (resultStorage != null) {
      _json["resultStorage"] = (resultStorage).toJson();
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (testExecutions != null) {
      _json["testExecutions"] =
          testExecutions.map((value) => (value).toJson()).toList();
    }
    if (testMatrixId != null) {
      _json["testMatrixId"] = testMatrixId;
    }
    if (testSpecification != null) {
      _json["testSpecification"] = (testSpecification).toJson();
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    return _json;
  }
}

/// A description of how to set up the device prior to running the test
class TestSetup {
  /// The device will be logged in on this account for the duration of the test.
  /// Optional
  Account account;

  /// List of directories on the device to upload to GCS at the end of the test;
  /// they must be absolute paths under /sdcard or /data/local/tmp.
  /// Path names are restricted to characters a-z A-Z 0-9 _ - . + and /
  ///
  /// Note: The paths /sdcard and /data will be made available and treated as
  /// implicit path substitutions. E.g. if /sdcard on a particular device does
  /// not map to external storage, the system will replace it with the external
  /// storage path prefix for that device.
  ///
  /// Optional
  core.List<core.String> directoriesToPull;

  /// Environment variables to set for the test (only applicable for
  /// instrumentation tests).
  core.List<EnvironmentVariable> environmentVariables;

  /// List of files to push to the device before starting the test.
  ///
  /// Optional
  core.List<DeviceFile> filesToPush;

  /// The network traffic profile used for running the test.
  /// Optional
  core.String networkProfile;

  TestSetup();

  TestSetup.fromJson(core.Map _json) {
    if (_json.containsKey("account")) {
      account = new Account.fromJson(_json["account"]);
    }
    if (_json.containsKey("directoriesToPull")) {
      directoriesToPull = _json["directoriesToPull"];
    }
    if (_json.containsKey("environmentVariables")) {
      environmentVariables = _json["environmentVariables"]
          .map((value) => new EnvironmentVariable.fromJson(value))
          .toList();
    }
    if (_json.containsKey("filesToPush")) {
      filesToPush = _json["filesToPush"]
          .map((value) => new DeviceFile.fromJson(value))
          .toList();
    }
    if (_json.containsKey("networkProfile")) {
      networkProfile = _json["networkProfile"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (account != null) {
      _json["account"] = (account).toJson();
    }
    if (directoriesToPull != null) {
      _json["directoriesToPull"] = directoriesToPull;
    }
    if (environmentVariables != null) {
      _json["environmentVariables"] =
          environmentVariables.map((value) => (value).toJson()).toList();
    }
    if (filesToPush != null) {
      _json["filesToPush"] =
          filesToPush.map((value) => (value).toJson()).toList();
    }
    if (networkProfile != null) {
      _json["networkProfile"] = networkProfile;
    }
    return _json;
  }
}

/// A description of how to run the test.
class TestSpecification {
  /// An Android instrumentation test.
  AndroidInstrumentationTest androidInstrumentationTest;

  /// An Android robo test.
  AndroidRoboTest androidRoboTest;

  /// An Android Application with a Test Loop
  AndroidTestLoop androidTestLoop;

  /// Enables automatic Google account login.
  /// If set, the service will automatically generate a Google test account and
  /// add it to the device, before executing the test. Note that test accounts
  /// might be reused.
  /// Many applications show their full set of functionalities when an account
  /// is
  /// present on the device. Logging into the device with these generated
  /// accounts allows testing more functionalities.
  /// Default is false.
  /// Optional
  core.bool autoGoogleLogin;

  /// Disables performance metrics recording; may reduce test latency.
  core.bool disablePerformanceMetrics;

  /// Disables video recording; may reduce test latency.
  core.bool disableVideoRecording;

  /// Test setup requirements e.g. files to install, bootstrap scripts
  /// Optional
  TestSetup testSetup;

  /// Max time a test execution is allowed to run before it is
  /// automatically cancelled.
  /// Optional, default is 5 min.
  core.String testTimeout;

  TestSpecification();

  TestSpecification.fromJson(core.Map _json) {
    if (_json.containsKey("androidInstrumentationTest")) {
      androidInstrumentationTest = new AndroidInstrumentationTest.fromJson(
          _json["androidInstrumentationTest"]);
    }
    if (_json.containsKey("androidRoboTest")) {
      androidRoboTest = new AndroidRoboTest.fromJson(_json["androidRoboTest"]);
    }
    if (_json.containsKey("androidTestLoop")) {
      androidTestLoop = new AndroidTestLoop.fromJson(_json["androidTestLoop"]);
    }
    if (_json.containsKey("autoGoogleLogin")) {
      autoGoogleLogin = _json["autoGoogleLogin"];
    }
    if (_json.containsKey("disablePerformanceMetrics")) {
      disablePerformanceMetrics = _json["disablePerformanceMetrics"];
    }
    if (_json.containsKey("disableVideoRecording")) {
      disableVideoRecording = _json["disableVideoRecording"];
    }
    if (_json.containsKey("testSetup")) {
      testSetup = new TestSetup.fromJson(_json["testSetup"]);
    }
    if (_json.containsKey("testTimeout")) {
      testTimeout = _json["testTimeout"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidInstrumentationTest != null) {
      _json["androidInstrumentationTest"] =
          (androidInstrumentationTest).toJson();
    }
    if (androidRoboTest != null) {
      _json["androidRoboTest"] = (androidRoboTest).toJson();
    }
    if (androidTestLoop != null) {
      _json["androidTestLoop"] = (androidTestLoop).toJson();
    }
    if (autoGoogleLogin != null) {
      _json["autoGoogleLogin"] = autoGoogleLogin;
    }
    if (disablePerformanceMetrics != null) {
      _json["disablePerformanceMetrics"] = disablePerformanceMetrics;
    }
    if (disableVideoRecording != null) {
      _json["disableVideoRecording"] = disableVideoRecording;
    }
    if (testSetup != null) {
      _json["testSetup"] = (testSetup).toJson();
    }
    if (testTimeout != null) {
      _json["testTimeout"] = testTimeout;
    }
    return _json;
  }
}

/// Represents a tool results execution resource.
///
/// This has the results of a TestMatrix.
class ToolResultsExecution {
  /// A tool results execution ID.
  /// @OutputOnly
  core.String executionId;

  /// A tool results history ID.
  /// @OutputOnly
  core.String historyId;

  /// The cloud project that owns the tool results execution.
  /// @OutputOnly
  core.String projectId;

  ToolResultsExecution();

  ToolResultsExecution.fromJson(core.Map _json) {
    if (_json.containsKey("executionId")) {
      executionId = _json["executionId"];
    }
    if (_json.containsKey("historyId")) {
      historyId = _json["historyId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (executionId != null) {
      _json["executionId"] = executionId;
    }
    if (historyId != null) {
      _json["historyId"] = historyId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/// Represents a tool results history resource.
class ToolResultsHistory {
  /// A tool results history ID.
  /// Required
  core.String historyId;

  /// The cloud project that owns the tool results history.
  /// Required
  core.String projectId;

  ToolResultsHistory();

  ToolResultsHistory.fromJson(core.Map _json) {
    if (_json.containsKey("historyId")) {
      historyId = _json["historyId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (historyId != null) {
      _json["historyId"] = historyId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/// Represents a tool results step resource.
///
/// This has the results of a TestExecution.
class ToolResultsStep {
  /// A tool results execution ID.
  /// @OutputOnly
  core.String executionId;

  /// A tool results history ID.
  /// @OutputOnly
  core.String historyId;

  /// The cloud project that owns the tool results step.
  /// @OutputOnly
  core.String projectId;

  /// A tool results step ID.
  /// @OutputOnly
  core.String stepId;

  ToolResultsStep();

  ToolResultsStep.fromJson(core.Map _json) {
    if (_json.containsKey("executionId")) {
      executionId = _json["executionId"];
    }
    if (_json.containsKey("historyId")) {
      historyId = _json["historyId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("stepId")) {
      stepId = _json["stepId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (executionId != null) {
      _json["executionId"] = executionId;
    }
    if (historyId != null) {
      _json["historyId"] = historyId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (stepId != null) {
      _json["stepId"] = stepId;
    }
    return _json;
  }
}

/// Network emulation parameters
class TrafficRule {
  /// Bandwidth in kbits/second
  core.double bandwidth;

  /// Burst size in kbits
  core.double burst;

  /// Packet delay, must be >= 0
  core.String delay;

  /// Packet duplication ratio (0.0 - 1.0)
  core.double packetDuplicationRatio;

  /// Packet loss ratio (0.0 - 1.0)
  core.double packetLossRatio;

  TrafficRule();

  TrafficRule.fromJson(core.Map _json) {
    if (_json.containsKey("bandwidth")) {
      bandwidth = _json["bandwidth"];
    }
    if (_json.containsKey("burst")) {
      burst = _json["burst"];
    }
    if (_json.containsKey("delay")) {
      delay = _json["delay"];
    }
    if (_json.containsKey("packetDuplicationRatio")) {
      packetDuplicationRatio = _json["packetDuplicationRatio"];
    }
    if (_json.containsKey("packetLossRatio")) {
      packetLossRatio = _json["packetLossRatio"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bandwidth != null) {
      _json["bandwidth"] = bandwidth;
    }
    if (burst != null) {
      _json["burst"] = burst;
    }
    if (delay != null) {
      _json["delay"] = delay;
    }
    if (packetDuplicationRatio != null) {
      _json["packetDuplicationRatio"] = packetDuplicationRatio;
    }
    if (packetLossRatio != null) {
      _json["packetLossRatio"] = packetLossRatio;
    }
    return _json;
  }
}
