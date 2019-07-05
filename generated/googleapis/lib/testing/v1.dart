// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

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

  ApplicationDetailServiceResourceApi get applicationDetailService =>
      new ApplicationDetailServiceResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  TestEnvironmentCatalogResourceApi get testEnvironmentCatalog =>
      new TestEnvironmentCatalogResourceApi(_requester);

  TestingApi(http.Client client,
      {core.String rootUrl = "https://testing.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ApplicationDetailServiceResourceApi {
  final commons.ApiRequester _requester;

  ApplicationDetailServiceResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the details of an Android application APK.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetApkDetailsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetApkDetailsResponse> getApkDetails(FileReference request,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/applicationDetailService/getApkDetails';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GetApkDetailsResponse.fromJson(data));
  }
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

  /// Creates and runs a matrix of tests according to the given specifications.
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
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

  /// Checks the status of a test matrix.
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

  /// Gets the catalog of supported test environments.
  ///
  /// May return any of the following canonical error codes:
  ///
  /// - INVALID_ARGUMENT - if the request is malformed
  /// - NOT_FOUND - if the environment type does not exist
  /// - INTERNAL - if an internal error occurred
  ///
  /// Request parameters:
  ///
  /// [environmentType] - Required. The type of environment that should be
  /// listed.
  /// Possible string values are:
  /// - "ENVIRONMENT_TYPE_UNSPECIFIED" : A ENVIRONMENT_TYPE_UNSPECIFIED.
  /// - "ANDROID" : A ANDROID.
  /// - "IOS" : A IOS.
  /// - "NETWORK_CONFIGURATION" : A NETWORK_CONFIGURATION.
  /// - "PROVIDED_SOFTWARE" : A PROVIDED_SOFTWARE.
  ///
  /// [projectId] - For authorization, the cloud project requesting the
  /// TestEnvironmentCatalog.
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
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

/// Identifies an account and how to log into it.
class Account {
  /// An automatic google login account.
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
  /// Required. The id of the Android device to be used.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.String androidModelId;

  /// Required. The id of the Android OS version to be used.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.String androidVersionId;

  /// Required. The locale the test device used for testing.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.String locale;

  /// Required. How the device is oriented during the test.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
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
  core.List<AndroidModel> models;

  /// The set of supported runtime configurations.
  AndroidRuntimeConfiguration runtimeConfiguration;

  /// The set of supported Android OS versions.
  core.List<AndroidVersion> versions;

  AndroidDeviceCatalog();

  AndroidDeviceCatalog.fromJson(core.Map _json) {
    if (_json.containsKey("models")) {
      models = (_json["models"] as core.List)
          .map<AndroidModel>((value) => new AndroidModel.fromJson(value))
          .toList();
    }
    if (_json.containsKey("runtimeConfiguration")) {
      runtimeConfiguration = new AndroidRuntimeConfiguration.fromJson(
          _json["runtimeConfiguration"]);
    }
    if (_json.containsKey("versions")) {
      versions = (_json["versions"] as core.List)
          .map<AndroidVersion>((value) => new AndroidVersion.fromJson(value))
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
  /// Required. A list of Android devices.
  core.List<AndroidDevice> androidDevices;

  AndroidDeviceList();

  AndroidDeviceList.fromJson(core.Map _json) {
    if (_json.containsKey("androidDevices")) {
      androidDevices = (_json["androidDevices"] as core.List)
          .map<AndroidDevice>((value) => new AndroidDevice.fromJson(value))
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
  FileReference appApk;

  /// A multi-apk app bundle for the application under test.
  AppBundle appBundle;

  /// The java package for the application under test.
  /// The default value is determined by examining the application's manifest.
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
  /// If not set, the test will be run without the orchestrator.
  /// Possible string values are:
  /// - "ORCHESTRATOR_OPTION_UNSPECIFIED" : Default value: the server will
  /// choose the mode. Currently implies that
  /// the test will run without the orchestrator. In the future,
  /// all instrumentation tests will be run with the orchestrator.
  /// Using the orchestrator is highly encouraged because of all the benefits it
  /// offers.
  /// - "USE_ORCHESTRATOR" : Run test using orchestrator.
  /// ** Only compatible with AndroidJUnitRunner version 1.0 or higher! **
  /// Recommended.
  /// - "DO_NOT_USE_ORCHESTRATOR" : Run test without using orchestrator.
  core.String orchestratorOption;

  /// Required. The APK containing the test code to be executed.
  FileReference testApk;

  /// The java package for the test to be executed.
  /// The default value is determined by examining the application's manifest.
  core.String testPackageId;

  /// The InstrumentationTestRunner class.
  /// The default value is determined by examining the application's manifest.
  core.String testRunnerClass;

  /// Each target must be fully qualified with the package name or class name,
  /// in one of these formats:
  ///  - "package package_name"
  ///  - "class package_name.class_name"
  ///  - "class package_name.class_name#method_name"
  ///
  /// If empty, all targets in the module will be run.
  core.List<core.String> testTargets;

  AndroidInstrumentationTest();

  AndroidInstrumentationTest.fromJson(core.Map _json) {
    if (_json.containsKey("appApk")) {
      appApk = new FileReference.fromJson(_json["appApk"]);
    }
    if (_json.containsKey("appBundle")) {
      appBundle = new AppBundle.fromJson(_json["appBundle"]);
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
      testTargets = (_json["testTargets"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appApk != null) {
      _json["appApk"] = (appApk).toJson();
    }
    if (appBundle != null) {
      _json["appBundle"] = (appBundle).toJson();
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
/// the cross-product of the given axes. Internally, the given AndroidMatrix
/// will be expanded into a set of AndroidDevices.
///
/// Only supported permutations will be instantiated.  Invalid permutations
/// (e.g., incompatible models/versions) are ignored.
class AndroidMatrix {
  /// Required. The ids of the set of Android device to be used.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.List<core.String> androidModelIds;

  /// Required. The ids of the set of Android OS version to be used.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.List<core.String> androidVersionIds;

  /// Required. The set of locales the test device will enable for testing.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.List<core.String> locales;

  /// Required. The set of orientations to test with.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.List<core.String> orientations;

  AndroidMatrix();

  AndroidMatrix.fromJson(core.Map _json) {
    if (_json.containsKey("androidModelIds")) {
      androidModelIds =
          (_json["androidModelIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("androidVersionIds")) {
      androidVersionIds =
          (_json["androidVersionIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("locales")) {
      locales = (_json["locales"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("orientations")) {
      orientations = (_json["orientations"] as core.List).cast<core.String>();
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
  /// Example: "Google", "Samsung".
  core.String brand;

  /// The name of the industrial design.
  /// This corresponds to android.os.Build.DEVICE.
  core.String codename;

  /// Whether this device is virtual or physical.
  /// Possible string values are:
  /// - "DEVICE_FORM_UNSPECIFIED" : Do not use.  For proto versioning only.
  /// - "VIRTUAL" : A software stack that simulates the device.
  /// - "PHYSICAL" : Actual hardware.
  core.String form;

  /// Whether this device is a phone, tablet, wearable, etc.
  /// Possible string values are:
  /// - "DEVICE_FORM_FACTOR_UNSPECIFIED" : Do not use. For proto versioning
  /// only.
  /// - "PHONE" : This device has the shape of a phone.
  /// - "TABLET" : This device has the shape of a tablet.
  /// - "WEARABLE" : This device has the shape of a watch or other wearable.
  core.String formFactor;

  /// The unique opaque id for this model.
  /// Use this for invoking the TestExecutionService.
  core.String id;

  /// True if and only if tests with this model are recorded by stitching
  /// together screenshots. See use_low_spec_video_recording in device config.
  core.bool lowFpsVideoRecording;

  /// The manufacturer of this device.
  core.String manufacturer;

  /// The human-readable marketing name for this device model.
  /// Examples: "Nexus 5", "Galaxy S5".
  core.String name;

  /// Screen density in DPI.
  /// This corresponds to ro.sf.lcd_density
  core.int screenDensity;

  /// Screen size in the horizontal (X) dimension measured in pixels.
  core.int screenX;

  /// Screen size in the vertical (Y) dimension measured in pixels.
  core.int screenY;

  /// The list of supported ABIs for this device.
  /// This corresponds to either android.os.Build.SUPPORTED_ABIS (for API level
  /// 21 and above) or android.os.Build.CPU_ABI/CPU_ABI2.
  /// The most preferred ABI is the first element in the list.
  ///
  /// Elements are optionally prefixed by "version_id:" (where version_id is
  /// the id of an AndroidVersion), denoting an ABI that is supported only on
  /// a particular version.
  core.List<core.String> supportedAbis;

  /// The set of Android versions this device supports.
  core.List<core.String> supportedVersionIds;

  /// Tags for this dimension.
  /// Examples: "default", "preview", "deprecated".
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
    if (_json.containsKey("formFactor")) {
      formFactor = _json["formFactor"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("lowFpsVideoRecording")) {
      lowFpsVideoRecording = _json["lowFpsVideoRecording"];
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
      supportedAbis = (_json["supportedAbis"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("supportedVersionIds")) {
      supportedVersionIds =
          (_json["supportedVersionIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("tags")) {
      tags = (_json["tags"] as core.List).cast<core.String>();
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
    if (formFactor != null) {
      _json["formFactor"] = formFactor;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (lowFpsVideoRecording != null) {
      _json["lowFpsVideoRecording"] = lowFpsVideoRecording;
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
  FileReference appApk;

  /// A multi-apk app bundle for the application under test.
  AppBundle appBundle;

  /// The initial activity that should be used to start the app.
  core.String appInitialActivity;

  /// The java package for the application under test.
  /// The default value is determined by examining the application's manifest.
  core.String appPackageId;

  /// The max depth of the traversal stack Robo can explore. Needs to be at
  /// least
  /// 2 to make Robo explore the app beyond the first activity.
  /// Default is 50.
  core.int maxDepth;

  /// The max number of steps Robo can execute.
  /// Default is no limit.
  core.int maxSteps;

  /// A set of directives Robo should apply during the crawl.
  /// This allows users to customize the crawl. For example, the username and
  /// password for a test account can be provided.
  core.List<RoboDirective> roboDirectives;

  /// A JSON file with a sequence of actions Robo should perform as a prologue
  /// for the crawl.
  FileReference roboScript;

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
    if (_json.containsKey("appBundle")) {
      appBundle = new AppBundle.fromJson(_json["appBundle"]);
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
      roboDirectives = (_json["roboDirectives"] as core.List)
          .map<RoboDirective>((value) => new RoboDirective.fromJson(value))
          .toList();
    }
    if (_json.containsKey("roboScript")) {
      roboScript = new FileReference.fromJson(_json["roboScript"]);
    }
    if (_json.containsKey("startingIntents")) {
      startingIntents = (_json["startingIntents"] as core.List)
          .map<RoboStartingIntent>(
              (value) => new RoboStartingIntent.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appApk != null) {
      _json["appApk"] = (appApk).toJson();
    }
    if (appBundle != null) {
      _json["appBundle"] = (appBundle).toJson();
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
    if (roboScript != null) {
      _json["roboScript"] = (roboScript).toJson();
    }
    if (startingIntents != null) {
      _json["startingIntents"] =
          startingIntents.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Android configuration that can be selected at the time a test is run.
class AndroidRuntimeConfiguration {
  /// The set of available locales.
  core.List<Locale> locales;

  /// The set of available orientations.
  core.List<Orientation> orientations;

  AndroidRuntimeConfiguration();

  AndroidRuntimeConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("locales")) {
      locales = (_json["locales"] as core.List)
          .map<Locale>((value) => new Locale.fromJson(value))
          .toList();
    }
    if (_json.containsKey("orientations")) {
      orientations = (_json["orientations"] as core.List)
          .map<Orientation>((value) => new Orientation.fromJson(value))
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
/// The intent \<intent-name\> will be implicitly added, since Games is the only
/// user of this api, for the time being.
class AndroidTestLoop {
  /// The APK for the application under test.
  FileReference appApk;

  /// A multi-apk app bundle for the application under test.
  AppBundle appBundle;

  /// The java package for the application under test.
  /// The default is determined by examining the application's manifest.
  core.String appPackageId;

  /// The list of scenario labels that should be run during the test.
  /// The scenario labels should map to labels defined in the application's
  /// manifest. For example, player_experience and
  /// com.google.test.loops.player_experience add all of the loops labeled in
  /// the
  /// manifest with the com.google.test.loops.player_experience name to the
  /// execution.
  /// Scenarios can also be specified in the scenarios field.
  core.List<core.String> scenarioLabels;

  /// The list of scenarios that should be run during the test.
  /// The default is all test loops, derived from the application's
  /// manifest.
  core.List<core.int> scenarios;

  AndroidTestLoop();

  AndroidTestLoop.fromJson(core.Map _json) {
    if (_json.containsKey("appApk")) {
      appApk = new FileReference.fromJson(_json["appApk"]);
    }
    if (_json.containsKey("appBundle")) {
      appBundle = new AppBundle.fromJson(_json["appBundle"]);
    }
    if (_json.containsKey("appPackageId")) {
      appPackageId = _json["appPackageId"];
    }
    if (_json.containsKey("scenarioLabels")) {
      scenarioLabels =
          (_json["scenarioLabels"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("scenarios")) {
      scenarios = (_json["scenarios"] as core.List).cast<core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appApk != null) {
      _json["appApk"] = (appApk).toJson();
    }
    if (appBundle != null) {
      _json["appBundle"] = (appBundle).toJson();
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

/// A version of the Android OS.
class AndroidVersion {
  /// The API level for this Android version.
  /// Examples: 18, 19.
  core.int apiLevel;

  /// The code name for this Android version.
  /// Examples: "JellyBean", "KitKat".
  core.String codeName;

  /// Market share for this version.
  Distribution distribution;

  /// An opaque id for this Android version.
  /// Use this id to invoke the TestExecutionService.
  core.String id;

  /// The date this Android version became available in the market.
  Date releaseDate;

  /// Tags for this dimension.
  /// Examples: "default", "preview", "deprecated".
  core.List<core.String> tags;

  /// A string representing this version of the Android OS.
  /// Examples: "4.3", "4.4".
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
      tags = (_json["tags"] as core.List).cast<core.String>();
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

/// An Android package file to install.
class Apk {
  /// The path to an APK to be installed on the device before the test begins.
  FileReference location;

  /// The java package for the APK to be installed.
  /// Value is determined by examining the application's manifest.
  core.String packageName;

  Apk();

  Apk.fromJson(core.Map _json) {
    if (_json.containsKey("location")) {
      location = new FileReference.fromJson(_json["location"]);
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (location != null) {
      _json["location"] = (location).toJson();
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    return _json;
  }
}

/// Android application details based on application manifest and apk archive
/// contents.
class ApkDetail {
  ApkManifest apkManifest;

  ApkDetail();

  ApkDetail.fromJson(core.Map _json) {
    if (_json.containsKey("apkManifest")) {
      apkManifest = new ApkManifest.fromJson(_json["apkManifest"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apkManifest != null) {
      _json["apkManifest"] = (apkManifest).toJson();
    }
    return _json;
  }
}

/// An Android app manifest. See
/// http://developer.android.com/guide/topics/manifest/manifest-intro.html
class ApkManifest {
  /// User-readable name for the application.
  core.String applicationLabel;
  core.List<IntentFilter> intentFilters;

  /// Maximum API level on which the application is designed to run.
  core.int maxSdkVersion;

  /// Minimum API level required for the application to run.
  core.int minSdkVersion;

  /// Full Java-style package name for this application, e.g.
  /// "com.example.foo".
  core.String packageName;

  /// Specifies the API Level on which the application is designed to run.
  core.int targetSdkVersion;

  ApkManifest();

  ApkManifest.fromJson(core.Map _json) {
    if (_json.containsKey("applicationLabel")) {
      applicationLabel = _json["applicationLabel"];
    }
    if (_json.containsKey("intentFilters")) {
      intentFilters = (_json["intentFilters"] as core.List)
          .map<IntentFilter>((value) => new IntentFilter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("maxSdkVersion")) {
      maxSdkVersion = _json["maxSdkVersion"];
    }
    if (_json.containsKey("minSdkVersion")) {
      minSdkVersion = _json["minSdkVersion"];
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
    if (_json.containsKey("targetSdkVersion")) {
      targetSdkVersion = _json["targetSdkVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (applicationLabel != null) {
      _json["applicationLabel"] = applicationLabel;
    }
    if (intentFilters != null) {
      _json["intentFilters"] =
          intentFilters.map((value) => (value).toJson()).toList();
    }
    if (maxSdkVersion != null) {
      _json["maxSdkVersion"] = maxSdkVersion;
    }
    if (minSdkVersion != null) {
      _json["minSdkVersion"] = minSdkVersion;
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    if (targetSdkVersion != null) {
      _json["targetSdkVersion"] = targetSdkVersion;
    }
    return _json;
  }
}

/// An Android App Bundle file format, containing a BundleConfig.pb file,
/// a base module directory, zero or more dynamic feature module directories.
/// <p>See https://developer.android.com/guide/app-bundle/build for guidance on
/// building App Bundles.
class AppBundle {
  /// .aab file representing the app bundle under test.
  FileReference bundleLocation;

  AppBundle();

  AppBundle.fromJson(core.Map _json) {
    if (_json.containsKey("bundleLocation")) {
      bundleLocation = new FileReference.fromJson(_json["bundleLocation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bundleLocation != null) {
      _json["bundleLocation"] = (bundleLocation).toJson();
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

  /// Required. Client name, such as gcloud.
  core.String name;

  ClientInfo();

  ClientInfo.fromJson(core.Map _json) {
    if (_json.containsKey("clientInfoDetails")) {
      clientInfoDetails = (_json["clientInfoDetails"] as core.List)
          .map<ClientInfoDetail>(
              (value) => new ClientInfoDetail.fromJson(value))
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
/// test. Examples: {'Version', '1.0'}, {'Release Track', 'BETA'}.
class ClientInfoDetail {
  /// Required. The key of detailed client information.
  core.String key;

  /// Required. The value of detailed client information.
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

/// Represents a whole or partial calendar date, e.g. a birthday. The time of
/// day
/// and time zone are either specified elsewhere or are not significant. The
/// date
/// is relative to the Proleptic Gregorian Calendar. This can represent:
///
/// * A full date, with non-zero year, month and day values
/// * A month and day value, with a zero year, e.g. an anniversary
/// * A year on its own, with zero month and day values
/// * A year and month value, with a zero day, e.g. a credit card expiration
/// date
///
/// Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
class Date {
  /// Day of month. Must be from 1 to 31 and valid for the year and month, or 0
  /// if specifying a year by itself or a year and month where the day is not
  /// significant.
  core.int day;

  /// Month of year. Must be from 1 to 12, or 0 if specifying a year without a
  /// month and day.
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
  /// A reference to an opaque binary blob file.
  ObbFile obbFile;

  /// A reference to a regular file.
  RegularFile regularFile;

  DeviceFile();

  DeviceFile.fromJson(core.Map _json) {
    if (_json.containsKey("obbFile")) {
      obbFile = new ObbFile.fromJson(_json["obbFile"]);
    }
    if (_json.containsKey("regularFile")) {
      regularFile = new RegularFile.fromJson(_json["regularFile"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (obbFile != null) {
      _json["obbFile"] = (obbFile).toJson();
    }
    if (regularFile != null) {
      _json["regularFile"] = (regularFile).toJson();
    }
    return _json;
  }
}

/// Data about the relative number of devices running a
/// given configuration of the Android platform.
class Distribution {
  /// Output only. The estimated fraction (0-1) of the total market with this
  /// configuration.
  core.double marketShare;

  /// Output only. The time this distribution was measured.
  core.String measurementTime;

  Distribution();

  Distribution.fromJson(core.Map _json) {
    if (_json.containsKey("marketShare")) {
      marketShare = _json["marketShare"].toDouble();
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

  /// An iOS device which must be used with an iOS test.
  IosDevice iosDevice;

  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey("androidDevice")) {
      androidDevice = new AndroidDevice.fromJson(_json["androidDevice"]);
    }
    if (_json.containsKey("iosDevice")) {
      iosDevice = new IosDevice.fromJson(_json["iosDevice"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidDevice != null) {
      _json["androidDevice"] = (androidDevice).toJson();
    }
    if (iosDevice != null) {
      _json["iosDevice"] = (iosDevice).toJson();
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

  /// A list of iOS devices.
  IosDeviceList iosDeviceList;

  EnvironmentMatrix();

  EnvironmentMatrix.fromJson(core.Map _json) {
    if (_json.containsKey("androidDeviceList")) {
      androidDeviceList =
          new AndroidDeviceList.fromJson(_json["androidDeviceList"]);
    }
    if (_json.containsKey("androidMatrix")) {
      androidMatrix = new AndroidMatrix.fromJson(_json["androidMatrix"]);
    }
    if (_json.containsKey("iosDeviceList")) {
      iosDeviceList = new IosDeviceList.fromJson(_json["iosDeviceList"]);
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
    if (iosDeviceList != null) {
      _json["iosDeviceList"] = (iosDeviceList).toJson();
    }
    return _json;
  }
}

/// A key-value pair passed as an environment variable to the test.
class EnvironmentVariable {
  /// Key for the environment variable.
  core.String key;

  /// Value for the environment variable.
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

/// Response containing the details of the specified Android application APK.
class GetApkDetailsResponse {
  /// Details of the Android APK.
  ApkDetail apkDetail;

  GetApkDetailsResponse();

  GetApkDetailsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("apkDetail")) {
      apkDetail = new ApkDetail.fromJson(_json["apkDetail"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apkDetail != null) {
      _json["apkDetail"] = (apkDetail).toJson();
    }
    return _json;
  }
}

/// Enables automatic Google account login.
/// If set, the service automatically generates a Google test account and adds
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
  /// Required. The path to a directory in GCS that will
  /// eventually contain the results for this test.
  /// The requesting user must have write access on the bucket in the supplied
  /// path.
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

/// The <intent-filter> section of an <activity> tag.
/// https://developer.android.com/guide/topics/manifest/intent-filter-element.html
class IntentFilter {
  /// The android:name value of the <action> tag.
  core.List<core.String> actionNames;

  /// The android:name value of the <category> tag.
  core.List<core.String> categoryNames;

  /// The android:mimeType value of the <data> tag.
  core.String mimeType;

  IntentFilter();

  IntentFilter.fromJson(core.Map _json) {
    if (_json.containsKey("actionNames")) {
      actionNames = (_json["actionNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("categoryNames")) {
      categoryNames = (_json["categoryNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionNames != null) {
      _json["actionNames"] = actionNames;
    }
    if (categoryNames != null) {
      _json["categoryNames"] = categoryNames;
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    return _json;
  }
}

/// A single iOS device.
class IosDevice {
  /// Required. The id of the iOS device to be used.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.String iosModelId;

  /// Required. The id of the iOS major software version to be used.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.String iosVersionId;

  /// Required. The locale the test device used for testing.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.String locale;

  /// Required. How the device is oriented during the test.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  core.String orientation;

  IosDevice();

  IosDevice.fromJson(core.Map _json) {
    if (_json.containsKey("iosModelId")) {
      iosModelId = _json["iosModelId"];
    }
    if (_json.containsKey("iosVersionId")) {
      iosVersionId = _json["iosVersionId"];
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
    if (iosModelId != null) {
      _json["iosModelId"] = iosModelId;
    }
    if (iosVersionId != null) {
      _json["iosVersionId"] = iosVersionId;
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

/// The currently supported iOS devices.
class IosDeviceCatalog {
  /// The set of supported iOS device models.
  core.List<IosModel> models;

  /// The set of supported runtime configurations.
  IosRuntimeConfiguration runtimeConfiguration;

  /// The set of supported iOS software versions.
  core.List<IosVersion> versions;

  /// The set of supported Xcode versions.
  core.List<XcodeVersion> xcodeVersions;

  IosDeviceCatalog();

  IosDeviceCatalog.fromJson(core.Map _json) {
    if (_json.containsKey("models")) {
      models = (_json["models"] as core.List)
          .map<IosModel>((value) => new IosModel.fromJson(value))
          .toList();
    }
    if (_json.containsKey("runtimeConfiguration")) {
      runtimeConfiguration =
          new IosRuntimeConfiguration.fromJson(_json["runtimeConfiguration"]);
    }
    if (_json.containsKey("versions")) {
      versions = (_json["versions"] as core.List)
          .map<IosVersion>((value) => new IosVersion.fromJson(value))
          .toList();
    }
    if (_json.containsKey("xcodeVersions")) {
      xcodeVersions = (_json["xcodeVersions"] as core.List)
          .map<XcodeVersion>((value) => new XcodeVersion.fromJson(value))
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
    if (xcodeVersions != null) {
      _json["xcodeVersions"] =
          xcodeVersions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A list of iOS device configurations in which the test is to be executed.
class IosDeviceList {
  /// Required. A list of iOS devices.
  core.List<IosDevice> iosDevices;

  IosDeviceList();

  IosDeviceList.fromJson(core.Map _json) {
    if (_json.containsKey("iosDevices")) {
      iosDevices = (_json["iosDevices"] as core.List)
          .map<IosDevice>((value) => new IosDevice.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (iosDevices != null) {
      _json["iosDevices"] =
          iosDevices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A description of an iOS device tests may be run on.
class IosModel {
  /// Device capabilities.
  /// Copied from
  /// https://developer.apple.com/library/archive/documentation/DeviceInformation/Reference/iOSDeviceCompatibility/DeviceCompatibilityMatrix/DeviceCompatibilityMatrix.html
  core.List<core.String> deviceCapabilities;

  /// Whether this device is a phone, tablet, wearable, etc.
  /// Possible string values are:
  /// - "DEVICE_FORM_FACTOR_UNSPECIFIED" : Do not use. For proto versioning
  /// only.
  /// - "PHONE" : This device has the shape of a phone.
  /// - "TABLET" : This device has the shape of a tablet.
  /// - "WEARABLE" : This device has the shape of a watch or other wearable.
  core.String formFactor;

  /// The unique opaque id for this model.
  /// Use this for invoking the TestExecutionService.
  core.String id;

  /// The human-readable name for this device model.
  /// Examples: "iPhone 4s", "iPad Mini 2".
  core.String name;

  /// The set of iOS major software versions this device supports.
  core.List<core.String> supportedVersionIds;

  /// Tags for this dimension.
  /// Examples: "default", "preview", "deprecated".
  core.List<core.String> tags;

  IosModel();

  IosModel.fromJson(core.Map _json) {
    if (_json.containsKey("deviceCapabilities")) {
      deviceCapabilities =
          (_json["deviceCapabilities"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("formFactor")) {
      formFactor = _json["formFactor"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("supportedVersionIds")) {
      supportedVersionIds =
          (_json["supportedVersionIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("tags")) {
      tags = (_json["tags"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceCapabilities != null) {
      _json["deviceCapabilities"] = deviceCapabilities;
    }
    if (formFactor != null) {
      _json["formFactor"] = formFactor;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
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

/// iOS configuration that can be selected at the time a test is run.
class IosRuntimeConfiguration {
  /// The set of available locales.
  core.List<Locale> locales;

  /// The set of available orientations.
  core.List<Orientation> orientations;

  IosRuntimeConfiguration();

  IosRuntimeConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("locales")) {
      locales = (_json["locales"] as core.List)
          .map<Locale>((value) => new Locale.fromJson(value))
          .toList();
    }
    if (_json.containsKey("orientations")) {
      orientations = (_json["orientations"] as core.List)
          .map<Orientation>((value) => new Orientation.fromJson(value))
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

/// A description of how to set up an iOS device prior to running the test.
class IosTestSetup {
  /// The network traffic profile used for running the test.
  /// Available network profiles can be queried by using the
  /// NETWORK_CONFIGURATION environment type when calling
  /// TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  core.String networkProfile;

  IosTestSetup();

  IosTestSetup.fromJson(core.Map _json) {
    if (_json.containsKey("networkProfile")) {
      networkProfile = _json["networkProfile"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (networkProfile != null) {
      _json["networkProfile"] = networkProfile;
    }
    return _json;
  }
}

/// An iOS version.
class IosVersion {
  /// An opaque id for this iOS version.
  /// Use this id to invoke the TestExecutionService.
  core.String id;

  /// An integer representing the major iOS version.
  /// Examples: "8", "9".
  core.int majorVersion;

  /// An integer representing the minor iOS version.
  /// Examples: "1", "2".
  core.int minorVersion;

  /// The available Xcode versions for this version.
  core.List<core.String> supportedXcodeVersionIds;

  /// Tags for this dimension.
  /// Examples: "default", "preview", "deprecated".
  core.List<core.String> tags;

  IosVersion();

  IosVersion.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("majorVersion")) {
      majorVersion = _json["majorVersion"];
    }
    if (_json.containsKey("minorVersion")) {
      minorVersion = _json["minorVersion"];
    }
    if (_json.containsKey("supportedXcodeVersionIds")) {
      supportedXcodeVersionIds =
          (_json["supportedXcodeVersionIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("tags")) {
      tags = (_json["tags"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (majorVersion != null) {
      _json["majorVersion"] = majorVersion;
    }
    if (minorVersion != null) {
      _json["minorVersion"] = minorVersion;
    }
    if (supportedXcodeVersionIds != null) {
      _json["supportedXcodeVersionIds"] = supportedXcodeVersionIds;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    return _json;
  }
}

/// A test of an iOS application that uses the XCTest framework.
/// Xcode supports the option to "build for testing", which generates an
/// .xctestrun file that contains a test specification (arguments, test methods,
/// etc). This test type accepts a zip file containing the .xctestrun file and
/// the corresponding contents of the Build/Products directory that contains all
/// the binaries needed to run the tests.
class IosXcTest {
  /// Output only. The bundle id for the application under test.
  core.String appBundleId;

  /// Required. The .zip containing the .xctestrun file and the contents of the
  /// DerivedData/Build/Products directory.
  /// The .xctestrun file in this zip is ignored if the xctestrun field is
  /// specified.
  FileReference testsZip;

  /// The Xcode version that should be used for the test.
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  /// Defaults to the latest Xcode version Firebase Test Lab supports.
  core.String xcodeVersion;

  /// An .xctestrun file that will override the .xctestrun file in the
  /// tests zip. Because the .xctestrun file contains environment variables
  /// along
  /// with test methods to run and/or ignore, this can be useful for sharding
  /// tests. Default is taken from the tests zip.
  FileReference xctestrun;

  IosXcTest();

  IosXcTest.fromJson(core.Map _json) {
    if (_json.containsKey("appBundleId")) {
      appBundleId = _json["appBundleId"];
    }
    if (_json.containsKey("testsZip")) {
      testsZip = new FileReference.fromJson(_json["testsZip"]);
    }
    if (_json.containsKey("xcodeVersion")) {
      xcodeVersion = _json["xcodeVersion"];
    }
    if (_json.containsKey("xctestrun")) {
      xctestrun = new FileReference.fromJson(_json["xctestrun"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appBundleId != null) {
      _json["appBundleId"] = appBundleId;
    }
    if (testsZip != null) {
      _json["testsZip"] = (testsZip).toJson();
    }
    if (xcodeVersion != null) {
      _json["xcodeVersion"] = xcodeVersion;
    }
    if (xctestrun != null) {
      _json["xctestrun"] = (xctestrun).toJson();
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
  /// Example: "en_US".
  core.String id;

  /// A human-friendly name for this language/locale.
  /// Example: "English".
  core.String name;

  /// A human-friendly string representing the region for this
  /// locale. Example: "United States". Not present for every locale.
  core.String region;

  /// Tags for this dimension.
  /// Example: "default".
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
      tags = (_json["tags"] as core.List).cast<core.String>();
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
  /// The emulation rule applying to the download traffic.
  TrafficRule downRule;

  /// The unique opaque id for this network traffic configuration.
  core.String id;

  /// The emulation rule applying to the upload traffic.
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
      configurations = (_json["configurations"] as core.List)
          .map<NetworkConfiguration>(
              (value) => new NetworkConfiguration.fromJson(value))
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

/// An opaque binary blob file to install on the device before the test starts.
class ObbFile {
  /// Required. Opaque Binary Blob (OBB) file(s) to install on the device.
  FileReference obb;

  /// Required. OBB file name which must conform to the format as specified by
  /// Android
  /// e.g. [main|patch].0300110.com.example.android.obb
  /// which will be installed into
  ///   \<shared-storage\>/Android/obb/\<package-name\>/
  /// on the device.
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
  /// Example: "portrait".
  core.String id;

  /// A human-friendly name for this orientation.
  /// Example: "portrait".
  core.String name;

  /// Tags for this dimension.
  /// Example: "default".
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
      tags = (_json["tags"] as core.List).cast<core.String>();
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

/// The currently provided software environment on the devices under test.
class ProvidedSoftwareCatalog {
  /// A string representing the current version of Android Test
  /// Orchestrator that is provided by TestExecutionService.
  /// Example: "1.0.2 beta".
  core.String orchestratorVersion;

  ProvidedSoftwareCatalog();

  ProvidedSoftwareCatalog.fromJson(core.Map _json) {
    if (_json.containsKey("orchestratorVersion")) {
      orchestratorVersion = _json["orchestratorVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (orchestratorVersion != null) {
      _json["orchestratorVersion"] = orchestratorVersion;
    }
    return _json;
  }
}

/// A file or directory to install on the device before the test starts.
class RegularFile {
  /// Required. The source file.
  FileReference content;

  /// Required. Where to put the content on the device. Must be an absolute,
  /// whitelisted path. If the file exists, it will be replaced.
  /// The following device-side directories and any of their subdirectories are
  /// whitelisted:
  /// <p>${EXTERNAL_STORAGE}, or /sdcard</p>
  /// <p>${ANDROID_DATA}/local/tmp, or /data/local/tmp</p>
  /// <p>Specifying a path outside of these directory trees is invalid.
  ///
  /// <p> The paths /sdcard and /data will be made available and treated as
  /// implicit path substitutions. E.g. if /sdcard on a particular device does
  /// not map to external storage, the system will replace it with the external
  /// storage path prefix for that device and copy the file there.
  ///
  /// <p> It is strongly advised to use the <a href=
  /// "http://developer.android.com/reference/android/os/Environment.html">
  /// Environment API</a> in app and test code to access files on the device in
  /// a
  /// portable way.
  core.String devicePath;

  RegularFile();

  RegularFile.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = new FileReference.fromJson(_json["content"]);
    }
    if (_json.containsKey("devicePath")) {
      devicePath = _json["devicePath"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = (content).toJson();
    }
    if (devicePath != null) {
      _json["devicePath"] = devicePath;
    }
    return _json;
  }
}

/// Locations where the results of running the test are stored.
class ResultStorage {
  /// Required.
  GoogleCloudStorage googleCloudStorage;

  /// Output only. URL to the results in the Firebase Web Console.
  core.String resultsUrl;

  /// Output only. The tool results execution that results are written to.
  ToolResultsExecution toolResultsExecution;

  /// The tool results history that contains the tool results execution that
  /// results are written to.
  ///
  /// If not provided, the service will choose an appropriate value.
  ToolResultsHistory toolResultsHistory;

  ResultStorage();

  ResultStorage.fromJson(core.Map _json) {
    if (_json.containsKey("googleCloudStorage")) {
      googleCloudStorage =
          new GoogleCloudStorage.fromJson(_json["googleCloudStorage"]);
    }
    if (_json.containsKey("resultsUrl")) {
      resultsUrl = _json["resultsUrl"];
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
    if (resultsUrl != null) {
      _json["resultsUrl"] = resultsUrl;
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
  /// Required. The type of action that Robo should perform on the specified
  /// element.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : DO NOT USE. For proto versioning only.
  /// - "SINGLE_CLICK" : Direct Robo to click on the specified element. No-op if
  /// specified element
  /// is not clickable.
  /// - "ENTER_TEXT" : Direct Robo to enter text on the specified element. No-op
  /// if specified
  /// element is not enabled or does not allow text entry.
  /// - "IGNORE" : Direct Robo to ignore interactions with a specific element.
  core.String actionType;

  /// The text that Robo is directed to set. If left empty, the directive will
  /// be
  /// treated as a CLICK on the element matching the resource_name.
  core.String inputText;

  /// Required. The android resource name of the target UI element.
  /// For example,
  ///    in Java: R.string.foo
  ///    in xml: @string/foo
  /// Only the "foo" part is needed.
  /// Reference doc:
  /// https://developer.android.com/guide/topics/resources/accessing-resources.html
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

/// Message for specifying the start activities to crawl.
class RoboStartingIntent {
  /// An intent that starts the main launcher activity.
  LauncherActivityIntent launcherActivity;

  /// An intent that starts an activity with specific details.
  StartActivityIntent startActivity;

  /// Timeout in seconds for each intent.
  core.String timeout;

  RoboStartingIntent();

  RoboStartingIntent.fromJson(core.Map _json) {
    if (_json.containsKey("launcherActivity")) {
      launcherActivity =
          new LauncherActivityIntent.fromJson(_json["launcherActivity"]);
    }
    if (_json.containsKey("startActivity")) {
      startActivity = new StartActivityIntent.fromJson(_json["startActivity"]);
    }
    if (_json.containsKey("timeout")) {
      timeout = _json["timeout"];
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
    if (timeout != null) {
      _json["timeout"] = timeout;
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
  core.List<core.String> categories;

  /// URI for the action.
  core.String uri;

  StartActivityIntent();

  StartActivityIntent.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("categories")) {
      categories = (_json["categories"] as core.List).cast<core.String>();
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
  /// Output only. If the TestState is ERROR, then this string will contain
  /// human-readable details about the error.
  core.String errorMessage;

  /// Output only. Human-readable, detailed descriptions of the test's progress.
  /// For example: "Provisioning a device", "Starting Test".
  ///
  /// During the course of execution new data may be appended
  /// to the end of progress_messages.
  core.List<core.String> progressMessages;

  TestDetails();

  TestDetails.fromJson(core.Map _json) {
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("progressMessages")) {
      progressMessages =
          (_json["progressMessages"] as core.List).cast<core.String>();
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
  /// Supported Android devices.
  AndroidDeviceCatalog androidDeviceCatalog;

  /// Supported iOS devices.
  IosDeviceCatalog iosDeviceCatalog;

  /// Supported network configurations.
  NetworkConfigurationCatalog networkConfigurationCatalog;

  /// The software test environment provided by TestExecutionService.
  ProvidedSoftwareCatalog softwareCatalog;

  TestEnvironmentCatalog();

  TestEnvironmentCatalog.fromJson(core.Map _json) {
    if (_json.containsKey("androidDeviceCatalog")) {
      androidDeviceCatalog =
          new AndroidDeviceCatalog.fromJson(_json["androidDeviceCatalog"]);
    }
    if (_json.containsKey("iosDeviceCatalog")) {
      iosDeviceCatalog =
          new IosDeviceCatalog.fromJson(_json["iosDeviceCatalog"]);
    }
    if (_json.containsKey("networkConfigurationCatalog")) {
      networkConfigurationCatalog = new NetworkConfigurationCatalog.fromJson(
          _json["networkConfigurationCatalog"]);
    }
    if (_json.containsKey("softwareCatalog")) {
      softwareCatalog =
          new ProvidedSoftwareCatalog.fromJson(_json["softwareCatalog"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (androidDeviceCatalog != null) {
      _json["androidDeviceCatalog"] = (androidDeviceCatalog).toJson();
    }
    if (iosDeviceCatalog != null) {
      _json["iosDeviceCatalog"] = (iosDeviceCatalog).toJson();
    }
    if (networkConfigurationCatalog != null) {
      _json["networkConfigurationCatalog"] =
          (networkConfigurationCatalog).toJson();
    }
    if (softwareCatalog != null) {
      _json["softwareCatalog"] = (softwareCatalog).toJson();
    }
    return _json;
  }
}

/// A single test executed in a single environment.
class TestExecution {
  /// Output only. How the host machine(s) are configured.
  Environment environment;

  /// Output only. Unique id set by the service.
  core.String id;

  /// Output only. Id of the containing TestMatrix.
  core.String matrixId;

  /// Output only. The cloud project that owns the test execution.
  core.String projectId;

  /// Output only. Indicates the current progress of the test execution
  /// (e.g., FINISHED).
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

  /// Output only. Additional details about the running test.
  TestDetails testDetails;

  /// Output only. How to run the test.
  TestSpecification testSpecification;

  /// Output only. The time this test execution was initially created.
  core.String timestamp;

  /// Output only. Where the results for this execution are written.
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

/// TestMatrix captures all details about a test. It contains the environment
/// configuration, test specification, test executions and overall state and
/// outcome.
class TestMatrix {
  /// Information about the client which invoked the test.
  ClientInfo clientInfo;

  /// Required. The devices the tests are being executed on.
  EnvironmentMatrix environmentMatrix;

  /// The number of times a TestExecution should be re-attempted if one or more
  /// of its test cases fail for any reason.
  /// The maximum number of reruns allowed is 10.
  ///
  /// Default is 0, which implies no reruns.
  core.int flakyTestAttempts;

  /// Output only. Describes why the matrix is considered invalid.
  /// Only useful for matrices in the INVALID state.
  /// Possible string values are:
  /// - "INVALID_MATRIX_DETAILS_UNSPECIFIED" : Do not use. For proto versioning
  /// only.
  /// - "DETAILS_UNAVAILABLE" : The matrix is INVALID, but there are no further
  /// details available.
  /// - "MALFORMED_APK" : The input app APK could not be parsed.
  /// - "MALFORMED_TEST_APK" : The input test APK could not be parsed.
  /// - "NO_MANIFEST" : The AndroidManifest.xml could not be found.
  /// - "NO_PACKAGE_NAME" : The APK manifest does not declare a package name.
  /// - "INVALID_PACKAGE_NAME" : The APK application ID (aka package name) is
  /// invalid.
  /// See also
  /// https://developer.android.com/studio/build/application-id
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
  /// - "INVALID_RESOURCE_NAME" : There is at least one invalid resource name in
  /// the provided
  /// robo directives
  /// - "INVALID_DIRECTIVE_ACTION" : Invalid definition of action in the robo
  /// directives
  /// (e.g. a click or ignore action includes an input text field)
  /// - "TEST_LOOP_INTENT_FILTER_NOT_FOUND" : There is no test loop intent
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
  /// - "MALFORMED_XC_TEST_ZIP" : The zipped XCTest was malformed. The zip did
  /// not contain a single
  /// .xctestrun file and the contents of the DerivedData/Build/Products
  /// directory.
  /// - "BUILT_FOR_IOS_SIMULATOR" : The zipped XCTest was built for the iOS
  /// simulator rather than for a
  /// physical device.
  /// - "NO_TESTS_IN_XC_TEST_ZIP" : The .xctestrun file did not specify any test
  /// targets.
  /// - "USE_DESTINATION_ARTIFACTS" : One or more of the test targets defined in
  /// the .xctestrun file specifies
  /// "UseDestinationArtifacts", which is disallowed.
  /// - "TEST_NOT_APP_HOSTED" : XC tests which run on physical devices must have
  /// "IsAppHostedTestBundle" == "true" in the xctestrun file.
  /// - "PLIST_CANNOT_BE_PARSED" : An Info.plist file in the XCTest zip could
  /// not be parsed.
  /// - "TEST_ONLY_APK" : The APK is marked as "testOnly".
  /// Deprecated and not currently used.
  /// - "MALFORMED_IPA" : The input IPA could not be parsed.
  /// Deprecated and not currently used.
  /// - "NO_CODE_APK" : APK contains no code.
  /// See also
  /// https://developer.android.com/guide/topics/manifest/application-element.html#code
  /// - "INVALID_INPUT_APK" : Either the provided input APK path was malformed,
  /// the APK file does not exist, or the user does not have permission to
  /// access the APK file.
  /// - "INVALID_APK_PREVIEW_SDK" : APK is built for a preview SDK which is
  /// unsupported
  core.String invalidMatrixDetails;

  /// Output Only. The overall outcome of the test.
  /// Only set when the test matrix state is FINISHED.
  /// Possible string values are:
  /// - "OUTCOME_SUMMARY_UNSPECIFIED" : Do not use. For proto versioning only.
  /// - "SUCCESS" : The test matrix run was successful, for instance:
  /// - All the test cases passed.
  /// - Robo did not detect a crash of the application under test.
  /// - "FAILURE" : A run failed, for instance:
  /// - One or more test case failed.
  /// - A test timed out.
  /// - The application under test crashed.
  /// - "INCONCLUSIVE" : Something unexpected happened. The run should still be
  /// considered
  /// unsuccessful but this is likely a transient problem and re-running the
  /// test might be successful.
  /// - "SKIPPED" : All tests were skipped, for instance:
  /// - All device configurations were incompatible.
  core.String outcomeSummary;

  /// The cloud project that owns the test matrix.
  core.String projectId;

  /// Required. Where the results for the matrix are written.
  ResultStorage resultStorage;

  /// Output only. Indicates the current progress of the test matrix.
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

  /// Output only. The list of test executions that the service creates for
  /// this matrix.
  core.List<TestExecution> testExecutions;

  /// Output only. Unique id set by the service.
  core.String testMatrixId;

  /// Required. How to run the test.
  TestSpecification testSpecification;

  /// Output only. The time this test matrix was initially created.
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
    if (_json.containsKey("flakyTestAttempts")) {
      flakyTestAttempts = _json["flakyTestAttempts"];
    }
    if (_json.containsKey("invalidMatrixDetails")) {
      invalidMatrixDetails = _json["invalidMatrixDetails"];
    }
    if (_json.containsKey("outcomeSummary")) {
      outcomeSummary = _json["outcomeSummary"];
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
      testExecutions = (_json["testExecutions"] as core.List)
          .map<TestExecution>((value) => new TestExecution.fromJson(value))
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
    if (flakyTestAttempts != null) {
      _json["flakyTestAttempts"] = flakyTestAttempts;
    }
    if (invalidMatrixDetails != null) {
      _json["invalidMatrixDetails"] = invalidMatrixDetails;
    }
    if (outcomeSummary != null) {
      _json["outcomeSummary"] = outcomeSummary;
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

/// A description of how to set up the Android device prior to running the test.
class TestSetup {
  /// The device will be logged in on this account for the duration of the test.
  Account account;

  /// APKs to install in addition to those being directly tested.
  /// Currently capped at 100.
  core.List<Apk> additionalApks;

  /// List of directories on the device to upload to GCS at the end of the test;
  /// they must be absolute paths under /sdcard or /data/local/tmp.
  /// Path names are restricted to characters a-z A-Z 0-9 _ - . + and /
  ///
  /// Note: The paths /sdcard and /data will be made available and treated as
  /// implicit path substitutions. E.g. if /sdcard on a particular device does
  /// not map to external storage, the system will replace it with the external
  /// storage path prefix for that device.
  core.List<core.String> directoriesToPull;

  /// Environment variables to set for the test (only applicable for
  /// instrumentation tests).
  core.List<EnvironmentVariable> environmentVariables;

  /// List of files to push to the device before starting the test.
  core.List<DeviceFile> filesToPush;

  /// The network traffic profile used for running the test.
  /// Available network profiles can be queried by using the
  /// NETWORK_CONFIGURATION environment type when calling
  /// TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  core.String networkProfile;

  TestSetup();

  TestSetup.fromJson(core.Map _json) {
    if (_json.containsKey("account")) {
      account = new Account.fromJson(_json["account"]);
    }
    if (_json.containsKey("additionalApks")) {
      additionalApks = (_json["additionalApks"] as core.List)
          .map<Apk>((value) => new Apk.fromJson(value))
          .toList();
    }
    if (_json.containsKey("directoriesToPull")) {
      directoriesToPull =
          (_json["directoriesToPull"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("environmentVariables")) {
      environmentVariables = (_json["environmentVariables"] as core.List)
          .map<EnvironmentVariable>(
              (value) => new EnvironmentVariable.fromJson(value))
          .toList();
    }
    if (_json.containsKey("filesToPush")) {
      filesToPush = (_json["filesToPush"] as core.List)
          .map<DeviceFile>((value) => new DeviceFile.fromJson(value))
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
    if (additionalApks != null) {
      _json["additionalApks"] =
          additionalApks.map((value) => (value).toJson()).toList();
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

  /// An Android Application with a Test Loop.
  AndroidTestLoop androidTestLoop;

  /// Disables performance metrics recording. May reduce test latency.
  core.bool disablePerformanceMetrics;

  /// Disables video recording. May reduce test latency.
  core.bool disableVideoRecording;

  /// Test setup requirements for iOS.
  IosTestSetup iosTestSetup;

  /// An iOS XCTest, via an .xctestrun file.
  IosXcTest iosXcTest;

  /// Test setup requirements for Android e.g. files to install, bootstrap
  /// scripts.
  TestSetup testSetup;

  /// Max time a test execution is allowed to run before it is
  /// automatically cancelled.
  /// The default value is 5 min.
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
    if (_json.containsKey("disablePerformanceMetrics")) {
      disablePerformanceMetrics = _json["disablePerformanceMetrics"];
    }
    if (_json.containsKey("disableVideoRecording")) {
      disableVideoRecording = _json["disableVideoRecording"];
    }
    if (_json.containsKey("iosTestSetup")) {
      iosTestSetup = new IosTestSetup.fromJson(_json["iosTestSetup"]);
    }
    if (_json.containsKey("iosXcTest")) {
      iosXcTest = new IosXcTest.fromJson(_json["iosXcTest"]);
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
    if (disablePerformanceMetrics != null) {
      _json["disablePerformanceMetrics"] = disablePerformanceMetrics;
    }
    if (disableVideoRecording != null) {
      _json["disableVideoRecording"] = disableVideoRecording;
    }
    if (iosTestSetup != null) {
      _json["iosTestSetup"] = (iosTestSetup).toJson();
    }
    if (iosXcTest != null) {
      _json["iosXcTest"] = (iosXcTest).toJson();
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
  /// Output only. A tool results execution ID.
  core.String executionId;

  /// Output only. A tool results history ID.
  core.String historyId;

  /// Output only. The cloud project that owns the tool results execution.
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
  /// Required. A tool results history ID.
  core.String historyId;

  /// Required. The cloud project that owns the tool results history.
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
  /// Output only. A tool results execution ID.
  core.String executionId;

  /// Output only. A tool results history ID.
  core.String historyId;

  /// Output only. The cloud project that owns the tool results step.
  core.String projectId;

  /// Output only. A tool results step ID.
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

/// Network emulation parameters.
class TrafficRule {
  /// Bandwidth in kbits/second.
  core.double bandwidth;

  /// Burst size in kbits.
  core.double burst;

  /// Packet delay, must be >= 0.
  core.String delay;

  /// Packet duplication ratio (0.0 - 1.0).
  core.double packetDuplicationRatio;

  /// Packet loss ratio (0.0 - 1.0).
  core.double packetLossRatio;

  TrafficRule();

  TrafficRule.fromJson(core.Map _json) {
    if (_json.containsKey("bandwidth")) {
      bandwidth = _json["bandwidth"].toDouble();
    }
    if (_json.containsKey("burst")) {
      burst = _json["burst"].toDouble();
    }
    if (_json.containsKey("delay")) {
      delay = _json["delay"];
    }
    if (_json.containsKey("packetDuplicationRatio")) {
      packetDuplicationRatio = _json["packetDuplicationRatio"].toDouble();
    }
    if (_json.containsKey("packetLossRatio")) {
      packetLossRatio = _json["packetLossRatio"].toDouble();
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

/// An Xcode version that an iOS version is compatible with.
class XcodeVersion {
  /// Tags for this Xcode version.
  /// Example: "default".
  core.List<core.String> tags;

  /// The id for this version.
  /// Example: "9.2".
  core.String version;

  XcodeVersion();

  XcodeVersion.fromJson(core.Map _json) {
    if (_json.containsKey("tags")) {
      tags = (_json["tags"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}
