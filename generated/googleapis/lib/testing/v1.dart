// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Testing API - v1
///
/// Allows developers to run automated tests for their mobile applications on
/// Google infrastructure.
///
/// For more information, see <https://developers.google.com/cloud-test-lab/>
///
/// Create an instance of [TestingApi] to access these resources:
///
/// - [ApplicationDetailServiceResource]
/// - [ProjectsResource]
///   - [ProjectsTestMatricesResource]
/// - [TestEnvironmentCatalogResource]
library testing.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Allows developers to run automated tests for their mobile applications on
/// Google infrastructure.
class TestingApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  ApplicationDetailServiceResource get applicationDetailService =>
      ApplicationDetailServiceResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  TestEnvironmentCatalogResource get testEnvironmentCatalog =>
      TestEnvironmentCatalogResource(_requester);

  TestingApi(http.Client client,
      {core.String rootUrl = 'https://testing.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ApplicationDetailServiceResource {
  final commons.ApiRequester _requester;

  ApplicationDetailServiceResource(commons.ApiRequester client)
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
  async.Future<GetApkDetailsResponse> getApkDetails(
    FileReference request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/applicationDetailService/getApkDetails';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GetApkDetailsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsTestMatricesResource get testMatrices =>
      ProjectsTestMatricesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsTestMatricesResource {
  final commons.ApiRequester _requester;

  ProjectsTestMatricesResource(commons.ApiRequester client)
      : _requester = client;

  /// Cancels unfinished test executions in a test matrix.
  ///
  /// This call returns immediately and cancellation proceeds asynchronously. If
  /// the matrix is already final, this operation will have no effect. May
  /// return any of the following canonical error codes: - PERMISSION_DENIED -
  /// if the user is not authorized to read project - INVALID_ARGUMENT - if the
  /// request is malformed - NOT_FOUND - if the Test Matrix does not exist
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
    core.String projectId,
    core.String testMatrixId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/testMatrices/' +
        commons.escapeVariable('$testMatrixId') +
        ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return CancelTestMatrixResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates and runs a matrix of tests according to the given specifications.
  ///
  /// Unsupported environments will be returned in the state UNSUPPORTED. A test
  /// matrix is limited to use at most 2000 devices in parallel. May return any
  /// of the following canonical error codes: - PERMISSION_DENIED - if the user
  /// is not authorized to write to project - INVALID_ARGUMENT - if the request
  /// is malformed or if the matrix tries to use too many simultaneous devices.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The GCE project under which this job will run.
  ///
  /// [requestId] - A string id used to detect duplicated requests. Ids are
  /// automatically scoped to a project, so users should ensure the ID is unique
  /// per-project. A UUID is recommended. Optional, but strongly recommended.
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
  async.Future<TestMatrix> create(
    TestMatrix request,
    core.String projectId, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/testMatrices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestMatrix.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Checks the status of a test matrix.
  ///
  /// May return any of the following canonical error codes: - PERMISSION_DENIED
  /// - if the user is not authorized to read project - INVALID_ARGUMENT - if
  /// the request is malformed - NOT_FOUND - if the Test Matrix does not exist
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
  async.Future<TestMatrix> get(
    core.String projectId,
    core.String testMatrixId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/testMatrices/' +
        commons.escapeVariable('$testMatrixId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TestMatrix.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class TestEnvironmentCatalogResource {
  final commons.ApiRequester _requester;

  TestEnvironmentCatalogResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the catalog of supported test environments.
  ///
  /// May return any of the following canonical error codes: - INVALID_ARGUMENT
  /// - if the request is malformed - NOT_FOUND - if the environment type does
  /// not exist - INTERNAL - if an internal error occurred
  ///
  /// Request parameters:
  ///
  /// [environmentType] - Required. The type of environment that should be
  /// listed.
  /// Possible string values are:
  /// - "ENVIRONMENT_TYPE_UNSPECIFIED" : Do not use. For proto versioning only.
  /// - "ANDROID" : A device running a version of the Android OS.
  /// - "IOS" : A device running a version of iOS.
  /// - "NETWORK_CONFIGURATION" : A network configuration to use when running a
  /// test.
  /// - "PROVIDED_SOFTWARE" : The software environment provided by
  /// TestExecutionService.
  /// - "DEVICE_IP_BLOCKS" : The IP blocks used by devices in the test
  /// environment.
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
  async.Future<TestEnvironmentCatalog> get(
    core.String environmentType, {
    core.String? projectId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/testEnvironmentCatalog/' +
        commons.escapeVariable('$environmentType');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TestEnvironmentCatalog.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Identifies an account and how to log into it.
class Account {
  /// An automatic google login account.
  GoogleAuto? googleAuto;

  Account({
    this.googleAuto,
  });

  Account.fromJson(core.Map _json)
      : this(
          googleAuto: _json.containsKey('googleAuto')
              ? GoogleAuto.fromJson(
                  _json['googleAuto'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleAuto != null) 'googleAuto': googleAuto!,
      };
}

/// A single Android device.
class AndroidDevice {
  /// The id of the Android device to be used.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.String? androidModelId;

  /// The id of the Android OS version to be used.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.String? androidVersionId;

  /// The locale the test device used for testing.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.String? locale;

  /// How the device is oriented during the test.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.String? orientation;

  AndroidDevice({
    this.androidModelId,
    this.androidVersionId,
    this.locale,
    this.orientation,
  });

  AndroidDevice.fromJson(core.Map _json)
      : this(
          androidModelId: _json.containsKey('androidModelId')
              ? _json['androidModelId'] as core.String
              : null,
          androidVersionId: _json.containsKey('androidVersionId')
              ? _json['androidVersionId'] as core.String
              : null,
          locale: _json.containsKey('locale')
              ? _json['locale'] as core.String
              : null,
          orientation: _json.containsKey('orientation')
              ? _json['orientation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidModelId != null) 'androidModelId': androidModelId!,
        if (androidVersionId != null) 'androidVersionId': androidVersionId!,
        if (locale != null) 'locale': locale!,
        if (orientation != null) 'orientation': orientation!,
      };
}

/// The currently supported Android devices.
class AndroidDeviceCatalog {
  /// The set of supported Android device models.
  core.List<AndroidModel>? models;

  /// The set of supported runtime configurations.
  AndroidRuntimeConfiguration? runtimeConfiguration;

  /// The set of supported Android OS versions.
  core.List<AndroidVersion>? versions;

  AndroidDeviceCatalog({
    this.models,
    this.runtimeConfiguration,
    this.versions,
  });

  AndroidDeviceCatalog.fromJson(core.Map _json)
      : this(
          models: _json.containsKey('models')
              ? (_json['models'] as core.List)
                  .map((value) => AndroidModel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          runtimeConfiguration: _json.containsKey('runtimeConfiguration')
              ? AndroidRuntimeConfiguration.fromJson(
                  _json['runtimeConfiguration']
                      as core.Map<core.String, core.dynamic>)
              : null,
          versions: _json.containsKey('versions')
              ? (_json['versions'] as core.List)
                  .map((value) => AndroidVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (models != null) 'models': models!,
        if (runtimeConfiguration != null)
          'runtimeConfiguration': runtimeConfiguration!,
        if (versions != null) 'versions': versions!,
      };
}

/// A list of Android device configurations in which the test is to be executed.
class AndroidDeviceList {
  /// A list of Android devices.
  ///
  /// Required.
  core.List<AndroidDevice>? androidDevices;

  AndroidDeviceList({
    this.androidDevices,
  });

  AndroidDeviceList.fromJson(core.Map _json)
      : this(
          androidDevices: _json.containsKey('androidDevices')
              ? (_json['androidDevices'] as core.List)
                  .map((value) => AndroidDevice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidDevices != null) 'androidDevices': androidDevices!,
      };
}

/// A test of an Android application that can control an Android component
/// independently of its normal lifecycle.
///
/// Android instrumentation tests run an application APK and test APK inside the
/// same process on a virtual or physical AndroidDevice. They also specify a
/// test runner class, such as com.google.GoogleTestRunner, which can vary on
/// the specific instrumentation framework chosen. See for more information on
/// types of Android tests.
class AndroidInstrumentationTest {
  /// The APK for the application under test.
  FileReference? appApk;

  /// A multi-apk app bundle for the application under test.
  AppBundle? appBundle;

  /// The java package for the application under test.
  ///
  /// The default value is determined by examining the application's manifest.
  core.String? appPackageId;

  /// The option of whether running each test within its own invocation of
  /// instrumentation with Android Test Orchestrator or not.
  ///
  /// ** Orchestrator is only compatible with AndroidJUnitRunner version 1.0 or
  /// higher! ** Orchestrator offers the following benefits: - No shared state -
  /// Crashes are isolated - Logs are scoped per test See for more information
  /// about Android Test Orchestrator. If not set, the test will be run without
  /// the orchestrator.
  /// Possible string values are:
  /// - "ORCHESTRATOR_OPTION_UNSPECIFIED" : Default value: the server will
  /// choose the mode. Currently implies that the test will run without the
  /// orchestrator. In the future, all instrumentation tests will be run with
  /// the orchestrator. Using the orchestrator is highly encouraged because of
  /// all the benefits it offers.
  /// - "USE_ORCHESTRATOR" : Run test using orchestrator. ** Only compatible
  /// with AndroidJUnitRunner version 1.0 or higher! ** Recommended.
  /// - "DO_NOT_USE_ORCHESTRATOR" : Run test without using orchestrator.
  core.String? orchestratorOption;

  /// The option to run tests in multiple shards in parallel.
  ShardingOption? shardingOption;

  /// The APK containing the test code to be executed.
  ///
  /// Required.
  FileReference? testApk;

  /// The java package for the test to be executed.
  ///
  /// The default value is determined by examining the application's manifest.
  core.String? testPackageId;

  /// The InstrumentationTestRunner class.
  ///
  /// The default value is determined by examining the application's manifest.
  core.String? testRunnerClass;

  /// Each target must be fully qualified with the package name or class name,
  /// in one of these formats: - "package package_name" - "class
  /// package_name.class_name" - "class package_name.class_name#method_name" If
  /// empty, all targets in the module will be run.
  core.List<core.String>? testTargets;

  AndroidInstrumentationTest({
    this.appApk,
    this.appBundle,
    this.appPackageId,
    this.orchestratorOption,
    this.shardingOption,
    this.testApk,
    this.testPackageId,
    this.testRunnerClass,
    this.testTargets,
  });

  AndroidInstrumentationTest.fromJson(core.Map _json)
      : this(
          appApk: _json.containsKey('appApk')
              ? FileReference.fromJson(
                  _json['appApk'] as core.Map<core.String, core.dynamic>)
              : null,
          appBundle: _json.containsKey('appBundle')
              ? AppBundle.fromJson(
                  _json['appBundle'] as core.Map<core.String, core.dynamic>)
              : null,
          appPackageId: _json.containsKey('appPackageId')
              ? _json['appPackageId'] as core.String
              : null,
          orchestratorOption: _json.containsKey('orchestratorOption')
              ? _json['orchestratorOption'] as core.String
              : null,
          shardingOption: _json.containsKey('shardingOption')
              ? ShardingOption.fromJson(_json['shardingOption']
                  as core.Map<core.String, core.dynamic>)
              : null,
          testApk: _json.containsKey('testApk')
              ? FileReference.fromJson(
                  _json['testApk'] as core.Map<core.String, core.dynamic>)
              : null,
          testPackageId: _json.containsKey('testPackageId')
              ? _json['testPackageId'] as core.String
              : null,
          testRunnerClass: _json.containsKey('testRunnerClass')
              ? _json['testRunnerClass'] as core.String
              : null,
          testTargets: _json.containsKey('testTargets')
              ? (_json['testTargets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appApk != null) 'appApk': appApk!,
        if (appBundle != null) 'appBundle': appBundle!,
        if (appPackageId != null) 'appPackageId': appPackageId!,
        if (orchestratorOption != null)
          'orchestratorOption': orchestratorOption!,
        if (shardingOption != null) 'shardingOption': shardingOption!,
        if (testApk != null) 'testApk': testApk!,
        if (testPackageId != null) 'testPackageId': testPackageId!,
        if (testRunnerClass != null) 'testRunnerClass': testRunnerClass!,
        if (testTargets != null) 'testTargets': testTargets!,
      };
}

/// A set of Android device configuration permutations is defined by the the
/// cross-product of the given axes.
///
/// Internally, the given AndroidMatrix will be expanded into a set of
/// AndroidDevices. Only supported permutations will be instantiated. Invalid
/// permutations (e.g., incompatible models/versions) are ignored.
class AndroidMatrix {
  /// The ids of the set of Android device to be used.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.List<core.String>? androidModelIds;

  /// The ids of the set of Android OS version to be used.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.List<core.String>? androidVersionIds;

  /// The set of locales the test device will enable for testing.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.List<core.String>? locales;

  /// The set of orientations to test with.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.List<core.String>? orientations;

  AndroidMatrix({
    this.androidModelIds,
    this.androidVersionIds,
    this.locales,
    this.orientations,
  });

  AndroidMatrix.fromJson(core.Map _json)
      : this(
          androidModelIds: _json.containsKey('androidModelIds')
              ? (_json['androidModelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          androidVersionIds: _json.containsKey('androidVersionIds')
              ? (_json['androidVersionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          locales: _json.containsKey('locales')
              ? (_json['locales'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          orientations: _json.containsKey('orientations')
              ? (_json['orientations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidModelIds != null) 'androidModelIds': androidModelIds!,
        if (androidVersionIds != null) 'androidVersionIds': androidVersionIds!,
        if (locales != null) 'locales': locales!,
        if (orientations != null) 'orientations': orientations!,
      };
}

/// A description of an Android device tests may be run on.
class AndroidModel {
  /// The company that this device is branded with.
  ///
  /// Example: "Google", "Samsung".
  core.String? brand;

  /// The name of the industrial design.
  ///
  /// This corresponds to android.os.Build.DEVICE.
  core.String? codename;

  /// Whether this device is virtual or physical.
  /// Possible string values are:
  /// - "DEVICE_FORM_UNSPECIFIED" : Do not use. For proto versioning only.
  /// - "VIRTUAL" : Android virtual device using Compute Engine native
  /// virtualization. Firebase Test Lab only.
  /// - "PHYSICAL" : Actual hardware.
  /// - "EMULATOR" : Android virtual device using emulator in nested
  /// virtualization. Equivalent to Android Studio.
  core.String? form;

  /// Whether this device is a phone, tablet, wearable, etc.
  /// Possible string values are:
  /// - "DEVICE_FORM_FACTOR_UNSPECIFIED" : Do not use. For proto versioning
  /// only.
  /// - "PHONE" : This device has the shape of a phone.
  /// - "TABLET" : This device has the shape of a tablet.
  /// - "WEARABLE" : This device has the shape of a watch or other wearable.
  core.String? formFactor;

  /// The unique opaque id for this model.
  ///
  /// Use this for invoking the TestExecutionService.
  core.String? id;

  /// True if and only if tests with this model are recorded by stitching
  /// together screenshots.
  ///
  /// See use_low_spec_video_recording in device config.
  core.bool? lowFpsVideoRecording;

  /// The manufacturer of this device.
  core.String? manufacturer;

  /// The human-readable marketing name for this device model.
  ///
  /// Examples: "Nexus 5", "Galaxy S5".
  core.String? name;

  /// Screen density in DPI.
  ///
  /// This corresponds to ro.sf.lcd_density
  core.int? screenDensity;

  /// Screen size in the horizontal (X) dimension measured in pixels.
  core.int? screenX;

  /// Screen size in the vertical (Y) dimension measured in pixels.
  core.int? screenY;

  /// The list of supported ABIs for this device.
  ///
  /// This corresponds to either android.os.Build.SUPPORTED_ABIS (for API level
  /// 21 and above) or android.os.Build.CPU_ABI/CPU_ABI2. The most preferred ABI
  /// is the first element in the list. Elements are optionally prefixed by
  /// "version_id:" (where version_id is the id of an AndroidVersion), denoting
  /// an ABI that is supported only on a particular version.
  core.List<core.String>? supportedAbis;

  /// The set of Android versions this device supports.
  core.List<core.String>? supportedVersionIds;

  /// Tags for this dimension.
  ///
  /// Examples: "default", "preview", "deprecated".
  core.List<core.String>? tags;

  /// URL of a thumbnail image (photo) of the device.
  ///
  /// e.g.
  /// https://lh3.googleusercontent.com/90WcauuJiCYABEl8U0lcZeuS5STUbf2yW...
  core.String? thumbnailUrl;

  AndroidModel({
    this.brand,
    this.codename,
    this.form,
    this.formFactor,
    this.id,
    this.lowFpsVideoRecording,
    this.manufacturer,
    this.name,
    this.screenDensity,
    this.screenX,
    this.screenY,
    this.supportedAbis,
    this.supportedVersionIds,
    this.tags,
    this.thumbnailUrl,
  });

  AndroidModel.fromJson(core.Map _json)
      : this(
          brand:
              _json.containsKey('brand') ? _json['brand'] as core.String : null,
          codename: _json.containsKey('codename')
              ? _json['codename'] as core.String
              : null,
          form: _json.containsKey('form') ? _json['form'] as core.String : null,
          formFactor: _json.containsKey('formFactor')
              ? _json['formFactor'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          lowFpsVideoRecording: _json.containsKey('lowFpsVideoRecording')
              ? _json['lowFpsVideoRecording'] as core.bool
              : null,
          manufacturer: _json.containsKey('manufacturer')
              ? _json['manufacturer'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          screenDensity: _json.containsKey('screenDensity')
              ? _json['screenDensity'] as core.int
              : null,
          screenX: _json.containsKey('screenX')
              ? _json['screenX'] as core.int
              : null,
          screenY: _json.containsKey('screenY')
              ? _json['screenY'] as core.int
              : null,
          supportedAbis: _json.containsKey('supportedAbis')
              ? (_json['supportedAbis'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          supportedVersionIds: _json.containsKey('supportedVersionIds')
              ? (_json['supportedVersionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          thumbnailUrl: _json.containsKey('thumbnailUrl')
              ? _json['thumbnailUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (brand != null) 'brand': brand!,
        if (codename != null) 'codename': codename!,
        if (form != null) 'form': form!,
        if (formFactor != null) 'formFactor': formFactor!,
        if (id != null) 'id': id!,
        if (lowFpsVideoRecording != null)
          'lowFpsVideoRecording': lowFpsVideoRecording!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
        if (name != null) 'name': name!,
        if (screenDensity != null) 'screenDensity': screenDensity!,
        if (screenX != null) 'screenX': screenX!,
        if (screenY != null) 'screenY': screenY!,
        if (supportedAbis != null) 'supportedAbis': supportedAbis!,
        if (supportedVersionIds != null)
          'supportedVersionIds': supportedVersionIds!,
        if (tags != null) 'tags': tags!,
        if (thumbnailUrl != null) 'thumbnailUrl': thumbnailUrl!,
      };
}

/// A test of an android application that explores the application on a virtual
/// or physical Android Device, finding culprits and crashes as it goes.
class AndroidRoboTest {
  /// The APK for the application under test.
  FileReference? appApk;

  /// A multi-apk app bundle for the application under test.
  AppBundle? appBundle;

  /// The initial activity that should be used to start the app.
  core.String? appInitialActivity;

  /// The java package for the application under test.
  ///
  /// The default value is determined by examining the application's manifest.
  core.String? appPackageId;

  /// The max depth of the traversal stack Robo can explore.
  ///
  /// Needs to be at least 2 to make Robo explore the app beyond the first
  /// activity. Default is 50.
  core.int? maxDepth;

  /// The max number of steps Robo can execute.
  ///
  /// Default is no limit.
  core.int? maxSteps;

  /// A set of directives Robo should apply during the crawl.
  ///
  /// This allows users to customize the crawl. For example, the username and
  /// password for a test account can be provided.
  core.List<RoboDirective>? roboDirectives;

  /// The mode in which Robo should run.
  ///
  /// Most clients should allow the server to populate this field automatically.
  /// Possible string values are:
  /// - "ROBO_MODE_UNSPECIFIED" : This means that the server should choose the
  /// mode. Recommended.
  /// - "ROBO_VERSION_1" : Runs Robo in UIAutomator-only mode without app
  /// resigning
  /// - "ROBO_VERSION_2" : Runs Robo in standard Espresso with UIAutomator
  /// fallback
  core.String? roboMode;

  /// A JSON file with a sequence of actions Robo should perform as a prologue
  /// for the crawl.
  FileReference? roboScript;

  /// The intents used to launch the app for the crawl.
  ///
  /// If none are provided, then the main launcher activity is launched. If some
  /// are provided, then only those provided are launched (the main launcher
  /// activity must be provided explicitly).
  core.List<RoboStartingIntent>? startingIntents;

  AndroidRoboTest({
    this.appApk,
    this.appBundle,
    this.appInitialActivity,
    this.appPackageId,
    this.maxDepth,
    this.maxSteps,
    this.roboDirectives,
    this.roboMode,
    this.roboScript,
    this.startingIntents,
  });

  AndroidRoboTest.fromJson(core.Map _json)
      : this(
          appApk: _json.containsKey('appApk')
              ? FileReference.fromJson(
                  _json['appApk'] as core.Map<core.String, core.dynamic>)
              : null,
          appBundle: _json.containsKey('appBundle')
              ? AppBundle.fromJson(
                  _json['appBundle'] as core.Map<core.String, core.dynamic>)
              : null,
          appInitialActivity: _json.containsKey('appInitialActivity')
              ? _json['appInitialActivity'] as core.String
              : null,
          appPackageId: _json.containsKey('appPackageId')
              ? _json['appPackageId'] as core.String
              : null,
          maxDepth: _json.containsKey('maxDepth')
              ? _json['maxDepth'] as core.int
              : null,
          maxSteps: _json.containsKey('maxSteps')
              ? _json['maxSteps'] as core.int
              : null,
          roboDirectives: _json.containsKey('roboDirectives')
              ? (_json['roboDirectives'] as core.List)
                  .map((value) => RoboDirective.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          roboMode: _json.containsKey('roboMode')
              ? _json['roboMode'] as core.String
              : null,
          roboScript: _json.containsKey('roboScript')
              ? FileReference.fromJson(
                  _json['roboScript'] as core.Map<core.String, core.dynamic>)
              : null,
          startingIntents: _json.containsKey('startingIntents')
              ? (_json['startingIntents'] as core.List)
                  .map((value) => RoboStartingIntent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appApk != null) 'appApk': appApk!,
        if (appBundle != null) 'appBundle': appBundle!,
        if (appInitialActivity != null)
          'appInitialActivity': appInitialActivity!,
        if (appPackageId != null) 'appPackageId': appPackageId!,
        if (maxDepth != null) 'maxDepth': maxDepth!,
        if (maxSteps != null) 'maxSteps': maxSteps!,
        if (roboDirectives != null) 'roboDirectives': roboDirectives!,
        if (roboMode != null) 'roboMode': roboMode!,
        if (roboScript != null) 'roboScript': roboScript!,
        if (startingIntents != null) 'startingIntents': startingIntents!,
      };
}

/// Android configuration that can be selected at the time a test is run.
class AndroidRuntimeConfiguration {
  /// The set of available locales.
  core.List<Locale>? locales;

  /// The set of available orientations.
  core.List<Orientation>? orientations;

  AndroidRuntimeConfiguration({
    this.locales,
    this.orientations,
  });

  AndroidRuntimeConfiguration.fromJson(core.Map _json)
      : this(
          locales: _json.containsKey('locales')
              ? (_json['locales'] as core.List)
                  .map((value) => Locale.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          orientations: _json.containsKey('orientations')
              ? (_json['orientations'] as core.List)
                  .map((value) => Orientation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locales != null) 'locales': locales!,
        if (orientations != null) 'orientations': orientations!,
      };
}

/// A test of an Android Application with a Test Loop.
///
/// The intent \ will be implicitly added, since Games is the only user of this
/// api, for the time being.
class AndroidTestLoop {
  /// The APK for the application under test.
  FileReference? appApk;

  /// A multi-apk app bundle for the application under test.
  AppBundle? appBundle;

  /// The java package for the application under test.
  ///
  /// The default is determined by examining the application's manifest.
  core.String? appPackageId;

  /// The list of scenario labels that should be run during the test.
  ///
  /// The scenario labels should map to labels defined in the application's
  /// manifest. For example, player_experience and
  /// com.google.test.loops.player_experience add all of the loops labeled in
  /// the manifest with the com.google.test.loops.player_experience name to the
  /// execution. Scenarios can also be specified in the scenarios field.
  core.List<core.String>? scenarioLabels;

  /// The list of scenarios that should be run during the test.
  ///
  /// The default is all test loops, derived from the application's manifest.
  core.List<core.int>? scenarios;

  AndroidTestLoop({
    this.appApk,
    this.appBundle,
    this.appPackageId,
    this.scenarioLabels,
    this.scenarios,
  });

  AndroidTestLoop.fromJson(core.Map _json)
      : this(
          appApk: _json.containsKey('appApk')
              ? FileReference.fromJson(
                  _json['appApk'] as core.Map<core.String, core.dynamic>)
              : null,
          appBundle: _json.containsKey('appBundle')
              ? AppBundle.fromJson(
                  _json['appBundle'] as core.Map<core.String, core.dynamic>)
              : null,
          appPackageId: _json.containsKey('appPackageId')
              ? _json['appPackageId'] as core.String
              : null,
          scenarioLabels: _json.containsKey('scenarioLabels')
              ? (_json['scenarioLabels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          scenarios: _json.containsKey('scenarios')
              ? (_json['scenarios'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appApk != null) 'appApk': appApk!,
        if (appBundle != null) 'appBundle': appBundle!,
        if (appPackageId != null) 'appPackageId': appPackageId!,
        if (scenarioLabels != null) 'scenarioLabels': scenarioLabels!,
        if (scenarios != null) 'scenarios': scenarios!,
      };
}

/// A version of the Android OS.
class AndroidVersion {
  /// The API level for this Android version.
  ///
  /// Examples: 18, 19.
  core.int? apiLevel;

  /// The code name for this Android version.
  ///
  /// Examples: "JellyBean", "KitKat".
  core.String? codeName;

  /// Market share for this version.
  Distribution? distribution;

  /// An opaque id for this Android version.
  ///
  /// Use this id to invoke the TestExecutionService.
  core.String? id;

  /// The date this Android version became available in the market.
  Date? releaseDate;

  /// Tags for this dimension.
  ///
  /// Examples: "default", "preview", "deprecated".
  core.List<core.String>? tags;

  /// A string representing this version of the Android OS.
  ///
  /// Examples: "4.3", "4.4".
  core.String? versionString;

  AndroidVersion({
    this.apiLevel,
    this.codeName,
    this.distribution,
    this.id,
    this.releaseDate,
    this.tags,
    this.versionString,
  });

  AndroidVersion.fromJson(core.Map _json)
      : this(
          apiLevel: _json.containsKey('apiLevel')
              ? _json['apiLevel'] as core.int
              : null,
          codeName: _json.containsKey('codeName')
              ? _json['codeName'] as core.String
              : null,
          distribution: _json.containsKey('distribution')
              ? Distribution.fromJson(
                  _json['distribution'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          releaseDate: _json.containsKey('releaseDate')
              ? Date.fromJson(
                  _json['releaseDate'] as core.Map<core.String, core.dynamic>)
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          versionString: _json.containsKey('versionString')
              ? _json['versionString'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiLevel != null) 'apiLevel': apiLevel!,
        if (codeName != null) 'codeName': codeName!,
        if (distribution != null) 'distribution': distribution!,
        if (id != null) 'id': id!,
        if (releaseDate != null) 'releaseDate': releaseDate!,
        if (tags != null) 'tags': tags!,
        if (versionString != null) 'versionString': versionString!,
      };
}

/// An Android package file to install.
class Apk {
  /// The path to an APK to be installed on the device before the test begins.
  FileReference? location;

  /// The java package for the APK to be installed.
  ///
  /// Value is determined by examining the application's manifest.
  core.String? packageName;

  Apk({
    this.location,
    this.packageName,
  });

  Apk.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? FileReference.fromJson(
                  _json['location'] as core.Map<core.String, core.dynamic>)
              : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (packageName != null) 'packageName': packageName!,
      };
}

/// Android application details based on application manifest and apk archive
/// contents.
class ApkDetail {
  ApkManifest? apkManifest;

  ApkDetail({
    this.apkManifest,
  });

  ApkDetail.fromJson(core.Map _json)
      : this(
          apkManifest: _json.containsKey('apkManifest')
              ? ApkManifest.fromJson(
                  _json['apkManifest'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apkManifest != null) 'apkManifest': apkManifest!,
      };
}

/// An Android app manifest.
///
/// See http://developer.android.com/guide/topics/manifest/manifest-intro.html
class ApkManifest {
  /// User-readable name for the application.
  core.String? applicationLabel;
  core.List<IntentFilter>? intentFilters;

  /// Maximum API level on which the application is designed to run.
  core.int? maxSdkVersion;

  /// Minimum API level required for the application to run.
  core.int? minSdkVersion;

  /// Full Java-style package name for this application, e.g. "com.example.foo".
  core.String? packageName;

  /// Specifies the API Level on which the application is designed to run.
  core.int? targetSdkVersion;

  /// Permissions declared to be used by the application
  core.List<core.String>? usesPermission;

  ApkManifest({
    this.applicationLabel,
    this.intentFilters,
    this.maxSdkVersion,
    this.minSdkVersion,
    this.packageName,
    this.targetSdkVersion,
    this.usesPermission,
  });

  ApkManifest.fromJson(core.Map _json)
      : this(
          applicationLabel: _json.containsKey('applicationLabel')
              ? _json['applicationLabel'] as core.String
              : null,
          intentFilters: _json.containsKey('intentFilters')
              ? (_json['intentFilters'] as core.List)
                  .map((value) => IntentFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxSdkVersion: _json.containsKey('maxSdkVersion')
              ? _json['maxSdkVersion'] as core.int
              : null,
          minSdkVersion: _json.containsKey('minSdkVersion')
              ? _json['minSdkVersion'] as core.int
              : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          targetSdkVersion: _json.containsKey('targetSdkVersion')
              ? _json['targetSdkVersion'] as core.int
              : null,
          usesPermission: _json.containsKey('usesPermission')
              ? (_json['usesPermission'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationLabel != null) 'applicationLabel': applicationLabel!,
        if (intentFilters != null) 'intentFilters': intentFilters!,
        if (maxSdkVersion != null) 'maxSdkVersion': maxSdkVersion!,
        if (minSdkVersion != null) 'minSdkVersion': minSdkVersion!,
        if (packageName != null) 'packageName': packageName!,
        if (targetSdkVersion != null) 'targetSdkVersion': targetSdkVersion!,
        if (usesPermission != null) 'usesPermission': usesPermission!,
      };
}

/// An Android App Bundle file format, containing a BundleConfig.pb file, a base
/// module directory, zero or more dynamic feature module directories.
///
/// See https://developer.android.com/guide/app-bundle/build for guidance on
/// building App Bundles.
class AppBundle {
  /// .aab file representing the app bundle under test.
  FileReference? bundleLocation;

  AppBundle({
    this.bundleLocation,
  });

  AppBundle.fromJson(core.Map _json)
      : this(
          bundleLocation: _json.containsKey('bundleLocation')
              ? FileReference.fromJson(_json['bundleLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleLocation != null) 'bundleLocation': bundleLocation!,
      };
}

/// Response containing the current state of the specified test matrix.
class CancelTestMatrixResponse {
  /// The current rolled-up state of the test matrix.
  ///
  /// If this state is already final, then the cancelation request will have no
  /// effect.
  /// Possible string values are:
  /// - "TEST_STATE_UNSPECIFIED" : Do not use. For proto versioning only.
  /// - "VALIDATING" : The execution or matrix is being validated.
  /// - "PENDING" : The execution or matrix is waiting for resources to become
  /// available.
  /// - "RUNNING" : The execution is currently being processed. Can only be set
  /// on an execution.
  /// - "FINISHED" : The execution or matrix has terminated normally. On a
  /// matrix this means that the matrix level processing completed normally, but
  /// individual executions may be in an ERROR state.
  /// - "ERROR" : The execution or matrix has stopped because it encountered an
  /// infrastructure failure.
  /// - "UNSUPPORTED_ENVIRONMENT" : The execution was not run because it
  /// corresponds to a unsupported environment. Can only be set on an execution.
  /// - "INCOMPATIBLE_ENVIRONMENT" : The execution was not run because the
  /// provided inputs are incompatible with the requested environment. Example:
  /// requested AndroidVersion is lower than APK's minSdkVersion Can only be set
  /// on an execution.
  /// - "INCOMPATIBLE_ARCHITECTURE" : The execution was not run because the
  /// provided inputs are incompatible with the requested architecture. Example:
  /// requested device does not support running the native code in the supplied
  /// APK Can only be set on an execution.
  /// - "CANCELLED" : The user cancelled the execution. Can only be set on an
  /// execution.
  /// - "INVALID" : The execution or matrix was not run because the provided
  /// inputs are not valid. Examples: input file is not of the expected type, is
  /// malformed/corrupt, or was flagged as malware
  core.String? testState;

  CancelTestMatrixResponse({
    this.testState,
  });

  CancelTestMatrixResponse.fromJson(core.Map _json)
      : this(
          testState: _json.containsKey('testState')
              ? _json['testState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testState != null) 'testState': testState!,
      };
}

/// Information about the client which invoked the test.
class ClientInfo {
  /// The list of detailed information about client.
  core.List<ClientInfoDetail>? clientInfoDetails;

  /// Client name, such as gcloud.
  ///
  /// Required.
  core.String? name;

  ClientInfo({
    this.clientInfoDetails,
    this.name,
  });

  ClientInfo.fromJson(core.Map _json)
      : this(
          clientInfoDetails: _json.containsKey('clientInfoDetails')
              ? (_json['clientInfoDetails'] as core.List)
                  .map((value) => ClientInfoDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientInfoDetails != null) 'clientInfoDetails': clientInfoDetails!,
        if (name != null) 'name': name!,
      };
}

/// Key-value pair of detailed information about the client which invoked the
/// test.
///
/// Examples: {'Version', '1.0'}, {'Release Track', 'BETA'}.
class ClientInfoDetail {
  /// The key of detailed client information.
  ///
  /// Required.
  core.String? key;

  /// The value of detailed client information.
  ///
  /// Required.
  core.String? value;

  ClientInfoDetail({
    this.key,
    this.value,
  });

  ClientInfoDetail.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values * A month and day value, with a zero year, such as an
/// anniversary * A year on its own, with zero month and day values * A year and
/// month value, with a zero day, such as a credit card expiration date Related
/// types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
typedef Date = $Date;

/// A single device file description.
class DeviceFile {
  /// A reference to an opaque binary blob file.
  ObbFile? obbFile;

  /// A reference to a regular file.
  RegularFile? regularFile;

  DeviceFile({
    this.obbFile,
    this.regularFile,
  });

  DeviceFile.fromJson(core.Map _json)
      : this(
          obbFile: _json.containsKey('obbFile')
              ? ObbFile.fromJson(
                  _json['obbFile'] as core.Map<core.String, core.dynamic>)
              : null,
          regularFile: _json.containsKey('regularFile')
              ? RegularFile.fromJson(
                  _json['regularFile'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (obbFile != null) 'obbFile': obbFile!,
        if (regularFile != null) 'regularFile': regularFile!,
      };
}

/// A single device IP block
class DeviceIpBlock {
  /// The date this block was added to Firebase Test Lab
  Date? addedDate;

  /// An IP address block in CIDR notation eg: 34.68.194.64/29
  core.String? block;

  /// Whether this block is used by physical or virtual devices
  /// Possible string values are:
  /// - "DEVICE_FORM_UNSPECIFIED" : Do not use. For proto versioning only.
  /// - "VIRTUAL" : Android virtual device using Compute Engine native
  /// virtualization. Firebase Test Lab only.
  /// - "PHYSICAL" : Actual hardware.
  /// - "EMULATOR" : Android virtual device using emulator in nested
  /// virtualization. Equivalent to Android Studio.
  core.String? form;

  DeviceIpBlock({
    this.addedDate,
    this.block,
    this.form,
  });

  DeviceIpBlock.fromJson(core.Map _json)
      : this(
          addedDate: _json.containsKey('addedDate')
              ? Date.fromJson(
                  _json['addedDate'] as core.Map<core.String, core.dynamic>)
              : null,
          block:
              _json.containsKey('block') ? _json['block'] as core.String : null,
          form: _json.containsKey('form') ? _json['form'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addedDate != null) 'addedDate': addedDate!,
        if (block != null) 'block': block!,
        if (form != null) 'form': form!,
      };
}

/// List of IP blocks used by the Firebase Test Lab
class DeviceIpBlockCatalog {
  /// The device IP blocks used by Firebase Test Lab
  core.List<DeviceIpBlock>? ipBlocks;

  DeviceIpBlockCatalog({
    this.ipBlocks,
  });

  DeviceIpBlockCatalog.fromJson(core.Map _json)
      : this(
          ipBlocks: _json.containsKey('ipBlocks')
              ? (_json['ipBlocks'] as core.List)
                  .map((value) => DeviceIpBlock.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipBlocks != null) 'ipBlocks': ipBlocks!,
      };
}

/// Data about the relative number of devices running a given configuration of
/// the Android platform.
class Distribution {
  /// The estimated fraction (0-1) of the total market with this configuration.
  ///
  /// Output only.
  core.double? marketShare;

  /// The time this distribution was measured.
  ///
  /// Output only.
  core.String? measurementTime;

  Distribution({
    this.marketShare,
    this.measurementTime,
  });

  Distribution.fromJson(core.Map _json)
      : this(
          marketShare: _json.containsKey('marketShare')
              ? (_json['marketShare'] as core.num).toDouble()
              : null,
          measurementTime: _json.containsKey('measurementTime')
              ? _json['measurementTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (marketShare != null) 'marketShare': marketShare!,
        if (measurementTime != null) 'measurementTime': measurementTime!,
      };
}

/// The environment in which the test is run.
class Environment {
  /// An Android device which must be used with an Android test.
  AndroidDevice? androidDevice;

  /// An iOS device which must be used with an iOS test.
  IosDevice? iosDevice;

  Environment({
    this.androidDevice,
    this.iosDevice,
  });

  Environment.fromJson(core.Map _json)
      : this(
          androidDevice: _json.containsKey('androidDevice')
              ? AndroidDevice.fromJson(
                  _json['androidDevice'] as core.Map<core.String, core.dynamic>)
              : null,
          iosDevice: _json.containsKey('iosDevice')
              ? IosDevice.fromJson(
                  _json['iosDevice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidDevice != null) 'androidDevice': androidDevice!,
        if (iosDevice != null) 'iosDevice': iosDevice!,
      };
}

/// The matrix of environments in which the test is to be executed.
class EnvironmentMatrix {
  /// A list of Android devices; the test will be run only on the specified
  /// devices.
  AndroidDeviceList? androidDeviceList;

  /// A matrix of Android devices.
  AndroidMatrix? androidMatrix;

  /// A list of iOS devices.
  IosDeviceList? iosDeviceList;

  EnvironmentMatrix({
    this.androidDeviceList,
    this.androidMatrix,
    this.iosDeviceList,
  });

  EnvironmentMatrix.fromJson(core.Map _json)
      : this(
          androidDeviceList: _json.containsKey('androidDeviceList')
              ? AndroidDeviceList.fromJson(_json['androidDeviceList']
                  as core.Map<core.String, core.dynamic>)
              : null,
          androidMatrix: _json.containsKey('androidMatrix')
              ? AndroidMatrix.fromJson(
                  _json['androidMatrix'] as core.Map<core.String, core.dynamic>)
              : null,
          iosDeviceList: _json.containsKey('iosDeviceList')
              ? IosDeviceList.fromJson(
                  _json['iosDeviceList'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidDeviceList != null) 'androidDeviceList': androidDeviceList!,
        if (androidMatrix != null) 'androidMatrix': androidMatrix!,
        if (iosDeviceList != null) 'iosDeviceList': iosDeviceList!,
      };
}

/// A key-value pair passed as an environment variable to the test.
class EnvironmentVariable {
  /// Key for the environment variable.
  core.String? key;

  /// Value for the environment variable.
  core.String? value;

  EnvironmentVariable({
    this.key,
    this.value,
  });

  EnvironmentVariable.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// A reference to a file, used for user inputs.
class FileReference {
  /// A path to a file in Google Cloud Storage.
  ///
  /// Example: gs://build-app-1414623860166/app%40debug-unaligned.apk These
  /// paths are expected to be url encoded (percent encoding)
  core.String? gcsPath;

  FileReference({
    this.gcsPath,
  });

  FileReference.fromJson(core.Map _json)
      : this(
          gcsPath: _json.containsKey('gcsPath')
              ? _json['gcsPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsPath != null) 'gcsPath': gcsPath!,
      };
}

/// Response containing the details of the specified Android application APK.
class GetApkDetailsResponse {
  /// Details of the Android APK.
  ApkDetail? apkDetail;

  GetApkDetailsResponse({
    this.apkDetail,
  });

  GetApkDetailsResponse.fromJson(core.Map _json)
      : this(
          apkDetail: _json.containsKey('apkDetail')
              ? ApkDetail.fromJson(
                  _json['apkDetail'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apkDetail != null) 'apkDetail': apkDetail!,
      };
}

/// Enables automatic Google account login.
///
/// If set, the service automatically generates a Google test account and adds
/// it to the device, before executing the test. Note that test accounts might
/// be reused. Many applications show their full set of functionalities when an
/// account is present on the device. Logging into the device with these
/// generated accounts allows testing more functionalities.
typedef GoogleAuto = $Empty;

/// A storage location within Google cloud storage (GCS).
class GoogleCloudStorage {
  /// The path to a directory in GCS that will eventually contain the results
  /// for this test.
  ///
  /// The requesting user must have write access on the bucket in the supplied
  /// path.
  ///
  /// Required.
  core.String? gcsPath;

  GoogleCloudStorage({
    this.gcsPath,
  });

  GoogleCloudStorage.fromJson(core.Map _json)
      : this(
          gcsPath: _json.containsKey('gcsPath')
              ? _json['gcsPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsPath != null) 'gcsPath': gcsPath!,
      };
}

/// The section of an tag.
///
/// https://developer.android.com/guide/topics/manifest/intent-filter-element.html
class IntentFilter {
  /// The android:name value of the tag.
  core.List<core.String>? actionNames;

  /// The android:name value of the tag.
  core.List<core.String>? categoryNames;

  /// The android:mimeType value of the tag.
  core.String? mimeType;

  IntentFilter({
    this.actionNames,
    this.categoryNames,
    this.mimeType,
  });

  IntentFilter.fromJson(core.Map _json)
      : this(
          actionNames: _json.containsKey('actionNames')
              ? (_json['actionNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          categoryNames: _json.containsKey('categoryNames')
              ? (_json['categoryNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionNames != null) 'actionNames': actionNames!,
        if (categoryNames != null) 'categoryNames': categoryNames!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// A single iOS device.
class IosDevice {
  /// The id of the iOS device to be used.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.String? iosModelId;

  /// The id of the iOS major software version to be used.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.String? iosVersionId;

  /// The locale the test device used for testing.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.String? locale;

  /// How the device is oriented during the test.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options.
  ///
  /// Required.
  core.String? orientation;

  IosDevice({
    this.iosModelId,
    this.iosVersionId,
    this.locale,
    this.orientation,
  });

  IosDevice.fromJson(core.Map _json)
      : this(
          iosModelId: _json.containsKey('iosModelId')
              ? _json['iosModelId'] as core.String
              : null,
          iosVersionId: _json.containsKey('iosVersionId')
              ? _json['iosVersionId'] as core.String
              : null,
          locale: _json.containsKey('locale')
              ? _json['locale'] as core.String
              : null,
          orientation: _json.containsKey('orientation')
              ? _json['orientation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iosModelId != null) 'iosModelId': iosModelId!,
        if (iosVersionId != null) 'iosVersionId': iosVersionId!,
        if (locale != null) 'locale': locale!,
        if (orientation != null) 'orientation': orientation!,
      };
}

/// The currently supported iOS devices.
class IosDeviceCatalog {
  /// The set of supported iOS device models.
  core.List<IosModel>? models;

  /// The set of supported runtime configurations.
  IosRuntimeConfiguration? runtimeConfiguration;

  /// The set of supported iOS software versions.
  core.List<IosVersion>? versions;

  /// The set of supported Xcode versions.
  core.List<XcodeVersion>? xcodeVersions;

  IosDeviceCatalog({
    this.models,
    this.runtimeConfiguration,
    this.versions,
    this.xcodeVersions,
  });

  IosDeviceCatalog.fromJson(core.Map _json)
      : this(
          models: _json.containsKey('models')
              ? (_json['models'] as core.List)
                  .map((value) => IosModel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          runtimeConfiguration: _json.containsKey('runtimeConfiguration')
              ? IosRuntimeConfiguration.fromJson(_json['runtimeConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          versions: _json.containsKey('versions')
              ? (_json['versions'] as core.List)
                  .map((value) => IosVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          xcodeVersions: _json.containsKey('xcodeVersions')
              ? (_json['xcodeVersions'] as core.List)
                  .map((value) => XcodeVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (models != null) 'models': models!,
        if (runtimeConfiguration != null)
          'runtimeConfiguration': runtimeConfiguration!,
        if (versions != null) 'versions': versions!,
        if (xcodeVersions != null) 'xcodeVersions': xcodeVersions!,
      };
}

/// A file or directory to install on the device before the test starts.
class IosDeviceFile {
  /// The bundle id of the app where this file lives.
  ///
  /// iOS apps sandbox their own filesystem, so app files must specify which app
  /// installed on the device.
  core.String? bundleId;

  /// The source file
  FileReference? content;

  /// Location of the file on the device, inside the app's sandboxed filesystem
  core.String? devicePath;

  IosDeviceFile({
    this.bundleId,
    this.content,
    this.devicePath,
  });

  IosDeviceFile.fromJson(core.Map _json)
      : this(
          bundleId: _json.containsKey('bundleId')
              ? _json['bundleId'] as core.String
              : null,
          content: _json.containsKey('content')
              ? FileReference.fromJson(
                  _json['content'] as core.Map<core.String, core.dynamic>)
              : null,
          devicePath: _json.containsKey('devicePath')
              ? _json['devicePath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleId != null) 'bundleId': bundleId!,
        if (content != null) 'content': content!,
        if (devicePath != null) 'devicePath': devicePath!,
      };
}

/// A list of iOS device configurations in which the test is to be executed.
class IosDeviceList {
  /// A list of iOS devices.
  ///
  /// Required.
  core.List<IosDevice>? iosDevices;

  IosDeviceList({
    this.iosDevices,
  });

  IosDeviceList.fromJson(core.Map _json)
      : this(
          iosDevices: _json.containsKey('iosDevices')
              ? (_json['iosDevices'] as core.List)
                  .map((value) => IosDevice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iosDevices != null) 'iosDevices': iosDevices!,
      };
}

/// A description of an iOS device tests may be run on.
class IosModel {
  /// Device capabilities.
  ///
  /// Copied from
  /// https://developer.apple.com/library/archive/documentation/DeviceInformation/Reference/iOSDeviceCompatibility/DeviceCompatibilityMatrix/DeviceCompatibilityMatrix.html
  core.List<core.String>? deviceCapabilities;

  /// Whether this device is a phone, tablet, wearable, etc.
  /// Possible string values are:
  /// - "DEVICE_FORM_FACTOR_UNSPECIFIED" : Do not use. For proto versioning
  /// only.
  /// - "PHONE" : This device has the shape of a phone.
  /// - "TABLET" : This device has the shape of a tablet.
  /// - "WEARABLE" : This device has the shape of a watch or other wearable.
  core.String? formFactor;

  /// The unique opaque id for this model.
  ///
  /// Use this for invoking the TestExecutionService.
  core.String? id;

  /// The human-readable name for this device model.
  ///
  /// Examples: "iPhone 4s", "iPad Mini 2".
  core.String? name;

  /// Screen density in DPI.
  core.int? screenDensity;

  /// Screen size in the horizontal (X) dimension measured in pixels.
  core.int? screenX;

  /// Screen size in the vertical (Y) dimension measured in pixels.
  core.int? screenY;

  /// The set of iOS major software versions this device supports.
  core.List<core.String>? supportedVersionIds;

  /// Tags for this dimension.
  ///
  /// Examples: "default", "preview", "deprecated".
  core.List<core.String>? tags;

  IosModel({
    this.deviceCapabilities,
    this.formFactor,
    this.id,
    this.name,
    this.screenDensity,
    this.screenX,
    this.screenY,
    this.supportedVersionIds,
    this.tags,
  });

  IosModel.fromJson(core.Map _json)
      : this(
          deviceCapabilities: _json.containsKey('deviceCapabilities')
              ? (_json['deviceCapabilities'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          formFactor: _json.containsKey('formFactor')
              ? _json['formFactor'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          screenDensity: _json.containsKey('screenDensity')
              ? _json['screenDensity'] as core.int
              : null,
          screenX: _json.containsKey('screenX')
              ? _json['screenX'] as core.int
              : null,
          screenY: _json.containsKey('screenY')
              ? _json['screenY'] as core.int
              : null,
          supportedVersionIds: _json.containsKey('supportedVersionIds')
              ? (_json['supportedVersionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceCapabilities != null)
          'deviceCapabilities': deviceCapabilities!,
        if (formFactor != null) 'formFactor': formFactor!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (screenDensity != null) 'screenDensity': screenDensity!,
        if (screenX != null) 'screenX': screenX!,
        if (screenY != null) 'screenY': screenY!,
        if (supportedVersionIds != null)
          'supportedVersionIds': supportedVersionIds!,
        if (tags != null) 'tags': tags!,
      };
}

/// iOS configuration that can be selected at the time a test is run.
class IosRuntimeConfiguration {
  /// The set of available locales.
  core.List<Locale>? locales;

  /// The set of available orientations.
  core.List<Orientation>? orientations;

  IosRuntimeConfiguration({
    this.locales,
    this.orientations,
  });

  IosRuntimeConfiguration.fromJson(core.Map _json)
      : this(
          locales: _json.containsKey('locales')
              ? (_json['locales'] as core.List)
                  .map((value) => Locale.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          orientations: _json.containsKey('orientations')
              ? (_json['orientations'] as core.List)
                  .map((value) => Orientation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locales != null) 'locales': locales!,
        if (orientations != null) 'orientations': orientations!,
      };
}

/// A test of an iOS application that implements one or more game loop
/// scenarios.
///
/// This test type accepts an archived application (.ipa file) and a list of
/// integer scenarios that will be executed on the app sequentially.
class IosTestLoop {
  /// The bundle id for the application under test.
  ///
  /// Output only.
  core.String? appBundleId;

  /// The .ipa of the application to test.
  ///
  /// Required.
  FileReference? appIpa;

  /// The list of scenarios that should be run during the test.
  ///
  /// Defaults to the single scenario 0 if unspecified.
  core.List<core.int>? scenarios;

  IosTestLoop({
    this.appBundleId,
    this.appIpa,
    this.scenarios,
  });

  IosTestLoop.fromJson(core.Map _json)
      : this(
          appBundleId: _json.containsKey('appBundleId')
              ? _json['appBundleId'] as core.String
              : null,
          appIpa: _json.containsKey('appIpa')
              ? FileReference.fromJson(
                  _json['appIpa'] as core.Map<core.String, core.dynamic>)
              : null,
          scenarios: _json.containsKey('scenarios')
              ? (_json['scenarios'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appBundleId != null) 'appBundleId': appBundleId!,
        if (appIpa != null) 'appIpa': appIpa!,
        if (scenarios != null) 'scenarios': scenarios!,
      };
}

/// A description of how to set up an iOS device prior to running the test.
class IosTestSetup {
  /// iOS apps to install in addition to those being directly tested.
  core.List<FileReference>? additionalIpas;

  /// The network traffic profile used for running the test.
  ///
  /// Available network profiles can be queried by using the
  /// NETWORK_CONFIGURATION environment type when calling
  /// TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  core.String? networkProfile;

  /// List of directories on the device to upload to Cloud Storage at the end of
  /// the test.
  ///
  /// Directories should either be in a shared directory (such as
  /// /private/var/mobile/Media) or within an accessible directory inside the
  /// app's filesystem (such as /Documents) by specifying the bundle ID.
  core.List<IosDeviceFile>? pullDirectories;

  /// List of files to push to the device before starting the test.
  core.List<IosDeviceFile>? pushFiles;

  IosTestSetup({
    this.additionalIpas,
    this.networkProfile,
    this.pullDirectories,
    this.pushFiles,
  });

  IosTestSetup.fromJson(core.Map _json)
      : this(
          additionalIpas: _json.containsKey('additionalIpas')
              ? (_json['additionalIpas'] as core.List)
                  .map((value) => FileReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          networkProfile: _json.containsKey('networkProfile')
              ? _json['networkProfile'] as core.String
              : null,
          pullDirectories: _json.containsKey('pullDirectories')
              ? (_json['pullDirectories'] as core.List)
                  .map((value) => IosDeviceFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pushFiles: _json.containsKey('pushFiles')
              ? (_json['pushFiles'] as core.List)
                  .map((value) => IosDeviceFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalIpas != null) 'additionalIpas': additionalIpas!,
        if (networkProfile != null) 'networkProfile': networkProfile!,
        if (pullDirectories != null) 'pullDirectories': pullDirectories!,
        if (pushFiles != null) 'pushFiles': pushFiles!,
      };
}

/// An iOS version.
class IosVersion {
  /// An opaque id for this iOS version.
  ///
  /// Use this id to invoke the TestExecutionService.
  core.String? id;

  /// An integer representing the major iOS version.
  ///
  /// Examples: "8", "9".
  core.int? majorVersion;

  /// An integer representing the minor iOS version.
  ///
  /// Examples: "1", "2".
  core.int? minorVersion;

  /// The available Xcode versions for this version.
  core.List<core.String>? supportedXcodeVersionIds;

  /// Tags for this dimension.
  ///
  /// Examples: "default", "preview", "deprecated".
  core.List<core.String>? tags;

  IosVersion({
    this.id,
    this.majorVersion,
    this.minorVersion,
    this.supportedXcodeVersionIds,
    this.tags,
  });

  IosVersion.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          majorVersion: _json.containsKey('majorVersion')
              ? _json['majorVersion'] as core.int
              : null,
          minorVersion: _json.containsKey('minorVersion')
              ? _json['minorVersion'] as core.int
              : null,
          supportedXcodeVersionIds:
              _json.containsKey('supportedXcodeVersionIds')
                  ? (_json['supportedXcodeVersionIds'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (majorVersion != null) 'majorVersion': majorVersion!,
        if (minorVersion != null) 'minorVersion': minorVersion!,
        if (supportedXcodeVersionIds != null)
          'supportedXcodeVersionIds': supportedXcodeVersionIds!,
        if (tags != null) 'tags': tags!,
      };
}

/// A test of an iOS application that uses the XCTest framework.
///
/// Xcode supports the option to "build for testing", which generates an
/// .xctestrun file that contains a test specification (arguments, test methods,
/// etc). This test type accepts a zip file containing the .xctestrun file and
/// the corresponding contents of the Build/Products directory that contains all
/// the binaries needed to run the tests.
class IosXcTest {
  /// The bundle id for the application under test.
  ///
  /// Output only.
  core.String? appBundleId;

  /// The option to test special app entitlements.
  ///
  /// Setting this would re-sign the app having special entitlements with an
  /// explicit application-identifier. Currently supports testing
  /// aps-environment entitlement.
  core.bool? testSpecialEntitlements;

  /// The .zip containing the .xctestrun file and the contents of the
  /// DerivedData/Build/Products directory.
  ///
  /// The .xctestrun file in this zip is ignored if the xctestrun field is
  /// specified.
  ///
  /// Required.
  FileReference? testsZip;

  /// The Xcode version that should be used for the test.
  ///
  /// Use the TestEnvironmentDiscoveryService to get supported options. Defaults
  /// to the latest Xcode version Firebase Test Lab supports.
  core.String? xcodeVersion;

  /// An .xctestrun file that will override the .xctestrun file in the tests
  /// zip.
  ///
  /// Because the .xctestrun file contains environment variables along with test
  /// methods to run and/or ignore, this can be useful for sharding tests.
  /// Default is taken from the tests zip.
  FileReference? xctestrun;

  IosXcTest({
    this.appBundleId,
    this.testSpecialEntitlements,
    this.testsZip,
    this.xcodeVersion,
    this.xctestrun,
  });

  IosXcTest.fromJson(core.Map _json)
      : this(
          appBundleId: _json.containsKey('appBundleId')
              ? _json['appBundleId'] as core.String
              : null,
          testSpecialEntitlements: _json.containsKey('testSpecialEntitlements')
              ? _json['testSpecialEntitlements'] as core.bool
              : null,
          testsZip: _json.containsKey('testsZip')
              ? FileReference.fromJson(
                  _json['testsZip'] as core.Map<core.String, core.dynamic>)
              : null,
          xcodeVersion: _json.containsKey('xcodeVersion')
              ? _json['xcodeVersion'] as core.String
              : null,
          xctestrun: _json.containsKey('xctestrun')
              ? FileReference.fromJson(
                  _json['xctestrun'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appBundleId != null) 'appBundleId': appBundleId!,
        if (testSpecialEntitlements != null)
          'testSpecialEntitlements': testSpecialEntitlements!,
        if (testsZip != null) 'testsZip': testsZip!,
        if (xcodeVersion != null) 'xcodeVersion': xcodeVersion!,
        if (xctestrun != null) 'xctestrun': xctestrun!,
      };
}

/// Specifies an intent that starts the main launcher activity.
typedef LauncherActivityIntent = $Empty;

/// A location/region designation for language.
class Locale {
  /// The id for this locale.
  ///
  /// Example: "en_US".
  core.String? id;

  /// A human-friendly name for this language/locale.
  ///
  /// Example: "English".
  core.String? name;

  /// A human-friendly string representing the region for this locale.
  ///
  /// Example: "United States". Not present for every locale.
  core.String? region;

  /// Tags for this dimension.
  ///
  /// Example: "default".
  core.List<core.String>? tags;

  Locale({
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Locale.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (region != null) 'region': region!,
        if (tags != null) 'tags': tags!,
      };
}

/// Shards test cases into the specified groups of packages, classes, and/or
/// methods.
///
/// With manual sharding enabled, specifying test targets via
/// environment_variables or in InstrumentationTest is invalid.
class ManualSharding {
  /// Group of packages, classes, and/or test methods to be run for each shard.
  ///
  /// When any physical devices are selected, the number of
  /// test_targets_for_shard must be \>= 1 and \<= 50. When no physical devices
  /// are selected, the number must be \>= 1 and \<= 500.
  ///
  /// Required.
  core.List<TestTargetsForShard>? testTargetsForShard;

  ManualSharding({
    this.testTargetsForShard,
  });

  ManualSharding.fromJson(core.Map _json)
      : this(
          testTargetsForShard: _json.containsKey('testTargetsForShard')
              ? (_json['testTargetsForShard'] as core.List)
                  .map((value) => TestTargetsForShard.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testTargetsForShard != null)
          'testTargetsForShard': testTargetsForShard!,
      };
}

class NetworkConfiguration {
  /// The emulation rule applying to the download traffic.
  TrafficRule? downRule;

  /// The unique opaque id for this network traffic configuration.
  core.String? id;

  /// The emulation rule applying to the upload traffic.
  TrafficRule? upRule;

  NetworkConfiguration({
    this.downRule,
    this.id,
    this.upRule,
  });

  NetworkConfiguration.fromJson(core.Map _json)
      : this(
          downRule: _json.containsKey('downRule')
              ? TrafficRule.fromJson(
                  _json['downRule'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          upRule: _json.containsKey('upRule')
              ? TrafficRule.fromJson(
                  _json['upRule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (downRule != null) 'downRule': downRule!,
        if (id != null) 'id': id!,
        if (upRule != null) 'upRule': upRule!,
      };
}

class NetworkConfigurationCatalog {
  core.List<NetworkConfiguration>? configurations;

  NetworkConfigurationCatalog({
    this.configurations,
  });

  NetworkConfigurationCatalog.fromJson(core.Map _json)
      : this(
          configurations: _json.containsKey('configurations')
              ? (_json['configurations'] as core.List)
                  .map((value) => NetworkConfiguration.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configurations != null) 'configurations': configurations!,
      };
}

/// An opaque binary blob file to install on the device before the test starts.
class ObbFile {
  /// Opaque Binary Blob (OBB) file(s) to install on the device.
  ///
  /// Required.
  FileReference? obb;

  /// OBB file name which must conform to the format as specified by Android
  /// e.g. \[main|patch\].0300110.com.example.android.obb which will be
  /// installed into \/Android/obb/\/ on the device.
  ///
  /// Required.
  core.String? obbFileName;

  ObbFile({
    this.obb,
    this.obbFileName,
  });

  ObbFile.fromJson(core.Map _json)
      : this(
          obb: _json.containsKey('obb')
              ? FileReference.fromJson(
                  _json['obb'] as core.Map<core.String, core.dynamic>)
              : null,
          obbFileName: _json.containsKey('obbFileName')
              ? _json['obbFileName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (obb != null) 'obb': obb!,
        if (obbFileName != null) 'obbFileName': obbFileName!,
      };
}

/// Screen orientation of the device.
class Orientation {
  /// The id for this orientation.
  ///
  /// Example: "portrait".
  core.String? id;

  /// A human-friendly name for this orientation.
  ///
  /// Example: "portrait".
  core.String? name;

  /// Tags for this dimension.
  ///
  /// Example: "default".
  core.List<core.String>? tags;

  Orientation({
    this.id,
    this.name,
    this.tags,
  });

  Orientation.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (tags != null) 'tags': tags!,
      };
}

/// The currently provided software environment on the devices under test.
class ProvidedSoftwareCatalog {
  /// A string representing the current version of AndroidX Test Orchestrator
  /// that is used in the environment.
  ///
  /// The package is available at
  /// https://maven.google.com/web/index.html#androidx.test:orchestrator.
  core.String? androidxOrchestratorVersion;

  /// Deprecated: Use AndroidX Test Orchestrator going forward.
  ///
  /// A string representing the current version of Android Test Orchestrator
  /// that is used in the environment. The package is available at
  /// https://maven.google.com/web/index.html#com.android.support.test:orchestrator.
  core.String? orchestratorVersion;

  ProvidedSoftwareCatalog({
    this.androidxOrchestratorVersion,
    this.orchestratorVersion,
  });

  ProvidedSoftwareCatalog.fromJson(core.Map _json)
      : this(
          androidxOrchestratorVersion:
              _json.containsKey('androidxOrchestratorVersion')
                  ? _json['androidxOrchestratorVersion'] as core.String
                  : null,
          orchestratorVersion: _json.containsKey('orchestratorVersion')
              ? _json['orchestratorVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidxOrchestratorVersion != null)
          'androidxOrchestratorVersion': androidxOrchestratorVersion!,
        if (orchestratorVersion != null)
          'orchestratorVersion': orchestratorVersion!,
      };
}

/// A file or directory to install on the device before the test starts.
class RegularFile {
  /// The source file.
  ///
  /// Required.
  FileReference? content;

  /// Where to put the content on the device.
  ///
  /// Must be an absolute, allowlisted path. If the file exists, it will be
  /// replaced. The following device-side directories and any of their
  /// subdirectories are allowlisted: ${EXTERNAL_STORAGE}, /sdcard, or /storage
  /// ${ANDROID_DATA}/local/tmp, or /data/local/tmp Specifying a path outside of
  /// these directory trees is invalid. The paths /sdcard and /data will be made
  /// available and treated as implicit path substitutions. E.g. if /sdcard on a
  /// particular device does not map to external storage, the system will
  /// replace it with the external storage path prefix for that device and copy
  /// the file there. It is strongly advised to use the Environment API in app
  /// and test code to access files on the device in a portable way.
  ///
  /// Required.
  core.String? devicePath;

  RegularFile({
    this.content,
    this.devicePath,
  });

  RegularFile.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? FileReference.fromJson(
                  _json['content'] as core.Map<core.String, core.dynamic>)
              : null,
          devicePath: _json.containsKey('devicePath')
              ? _json['devicePath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (devicePath != null) 'devicePath': devicePath!,
      };
}

/// Locations where the results of running the test are stored.
class ResultStorage {
  /// Required.
  GoogleCloudStorage? googleCloudStorage;

  /// URL to the results in the Firebase Web Console.
  ///
  /// Output only.
  core.String? resultsUrl;

  /// The tool results execution that results are written to.
  ///
  /// Output only.
  ToolResultsExecution? toolResultsExecution;

  /// The tool results history that contains the tool results execution that
  /// results are written to.
  ///
  /// If not provided, the service will choose an appropriate value.
  ToolResultsHistory? toolResultsHistory;

  ResultStorage({
    this.googleCloudStorage,
    this.resultsUrl,
    this.toolResultsExecution,
    this.toolResultsHistory,
  });

  ResultStorage.fromJson(core.Map _json)
      : this(
          googleCloudStorage: _json.containsKey('googleCloudStorage')
              ? GoogleCloudStorage.fromJson(_json['googleCloudStorage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resultsUrl: _json.containsKey('resultsUrl')
              ? _json['resultsUrl'] as core.String
              : null,
          toolResultsExecution: _json.containsKey('toolResultsExecution')
              ? ToolResultsExecution.fromJson(_json['toolResultsExecution']
                  as core.Map<core.String, core.dynamic>)
              : null,
          toolResultsHistory: _json.containsKey('toolResultsHistory')
              ? ToolResultsHistory.fromJson(_json['toolResultsHistory']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleCloudStorage != null)
          'googleCloudStorage': googleCloudStorage!,
        if (resultsUrl != null) 'resultsUrl': resultsUrl!,
        if (toolResultsExecution != null)
          'toolResultsExecution': toolResultsExecution!,
        if (toolResultsHistory != null)
          'toolResultsHistory': toolResultsHistory!,
      };
}

/// Directs Robo to interact with a specific UI element if it is encountered
/// during the crawl.
///
/// Currently, Robo can perform text entry or element click.
class RoboDirective {
  /// The type of action that Robo should perform on the specified element.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : DO NOT USE. For proto versioning only.
  /// - "SINGLE_CLICK" : Direct Robo to click on the specified element. No-op if
  /// specified element is not clickable.
  /// - "ENTER_TEXT" : Direct Robo to enter text on the specified element. No-op
  /// if specified element is not enabled or does not allow text entry.
  /// - "IGNORE" : Direct Robo to ignore interactions with a specific element.
  core.String? actionType;

  /// The text that Robo is directed to set.
  ///
  /// If left empty, the directive will be treated as a CLICK on the element
  /// matching the resource_name.
  core.String? inputText;

  /// The android resource name of the target UI element.
  ///
  /// For example, in Java: R.string.foo in xml: @string/foo Only the "foo" part
  /// is needed. Reference doc:
  /// https://developer.android.com/guide/topics/resources/accessing-resources.html
  ///
  /// Required.
  core.String? resourceName;

  RoboDirective({
    this.actionType,
    this.inputText,
    this.resourceName,
  });

  RoboDirective.fromJson(core.Map _json)
      : this(
          actionType: _json.containsKey('actionType')
              ? _json['actionType'] as core.String
              : null,
          inputText: _json.containsKey('inputText')
              ? _json['inputText'] as core.String
              : null,
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionType != null) 'actionType': actionType!,
        if (inputText != null) 'inputText': inputText!,
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// Message for specifying the start activities to crawl.
class RoboStartingIntent {
  /// An intent that starts the main launcher activity.
  LauncherActivityIntent? launcherActivity;

  /// An intent that starts an activity with specific details.
  StartActivityIntent? startActivity;

  /// Timeout in seconds for each intent.
  core.String? timeout;

  RoboStartingIntent({
    this.launcherActivity,
    this.startActivity,
    this.timeout,
  });

  RoboStartingIntent.fromJson(core.Map _json)
      : this(
          launcherActivity: _json.containsKey('launcherActivity')
              ? LauncherActivityIntent.fromJson(_json['launcherActivity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startActivity: _json.containsKey('startActivity')
              ? StartActivityIntent.fromJson(
                  _json['startActivity'] as core.Map<core.String, core.dynamic>)
              : null,
          timeout: _json.containsKey('timeout')
              ? _json['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (launcherActivity != null) 'launcherActivity': launcherActivity!,
        if (startActivity != null) 'startActivity': startActivity!,
        if (timeout != null) 'timeout': timeout!,
      };
}

/// Details about the shard.
///
/// Output only.
class Shard {
  /// The total number of shards.
  ///
  /// Output only.
  core.int? numShards;

  /// The index of the shard among all the shards.
  ///
  /// Output only.
  core.int? shardIndex;

  /// Test targets for each shard.
  ///
  /// Output only.
  TestTargetsForShard? testTargetsForShard;

  Shard({
    this.numShards,
    this.shardIndex,
    this.testTargetsForShard,
  });

  Shard.fromJson(core.Map _json)
      : this(
          numShards: _json.containsKey('numShards')
              ? _json['numShards'] as core.int
              : null,
          shardIndex: _json.containsKey('shardIndex')
              ? _json['shardIndex'] as core.int
              : null,
          testTargetsForShard: _json.containsKey('testTargetsForShard')
              ? TestTargetsForShard.fromJson(_json['testTargetsForShard']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numShards != null) 'numShards': numShards!,
        if (shardIndex != null) 'shardIndex': shardIndex!,
        if (testTargetsForShard != null)
          'testTargetsForShard': testTargetsForShard!,
      };
}

/// Options for enabling sharding.
class ShardingOption {
  /// Shards test cases into the specified groups of packages, classes, and/or
  /// methods.
  ManualSharding? manualSharding;

  /// Uniformly shards test cases given a total number of shards.
  UniformSharding? uniformSharding;

  ShardingOption({
    this.manualSharding,
    this.uniformSharding,
  });

  ShardingOption.fromJson(core.Map _json)
      : this(
          manualSharding: _json.containsKey('manualSharding')
              ? ManualSharding.fromJson(_json['manualSharding']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uniformSharding: _json.containsKey('uniformSharding')
              ? UniformSharding.fromJson(_json['uniformSharding']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (manualSharding != null) 'manualSharding': manualSharding!,
        if (uniformSharding != null) 'uniformSharding': uniformSharding!,
      };
}

/// A starting intent specified by an action, uri, and categories.
class StartActivityIntent {
  /// Action name.
  ///
  /// Required for START_ACTIVITY.
  core.String? action;

  /// Intent categories to set on the intent.
  core.List<core.String>? categories;

  /// URI for the action.
  core.String? uri;

  StartActivityIntent({
    this.action,
    this.categories,
    this.uri,
  });

  StartActivityIntent.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          categories: _json.containsKey('categories')
              ? (_json['categories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (categories != null) 'categories': categories!,
        if (uri != null) 'uri': uri!,
      };
}

class SystraceSetup {
  /// Systrace duration in seconds.
  ///
  /// Should be between 1 and 30 seconds. 0 disables systrace.
  core.int? durationSeconds;

  SystraceSetup({
    this.durationSeconds,
  });

  SystraceSetup.fromJson(core.Map _json)
      : this(
          durationSeconds: _json.containsKey('durationSeconds')
              ? _json['durationSeconds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (durationSeconds != null) 'durationSeconds': durationSeconds!,
      };
}

/// Additional details about the progress of the running test.
class TestDetails {
  /// If the TestState is ERROR, then this string will contain human-readable
  /// details about the error.
  ///
  /// Output only.
  core.String? errorMessage;

  /// Human-readable, detailed descriptions of the test's progress.
  ///
  /// For example: "Provisioning a device", "Starting Test". During the course
  /// of execution new data may be appended to the end of progress_messages.
  ///
  /// Output only.
  core.List<core.String>? progressMessages;

  TestDetails({
    this.errorMessage,
    this.progressMessages,
  });

  TestDetails.fromJson(core.Map _json)
      : this(
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          progressMessages: _json.containsKey('progressMessages')
              ? (_json['progressMessages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (progressMessages != null) 'progressMessages': progressMessages!,
      };
}

/// A description of a test environment.
class TestEnvironmentCatalog {
  /// Supported Android devices.
  AndroidDeviceCatalog? androidDeviceCatalog;

  /// The IP blocks used by devices in the test environment.
  DeviceIpBlockCatalog? deviceIpBlockCatalog;

  /// Supported iOS devices.
  IosDeviceCatalog? iosDeviceCatalog;

  /// Supported network configurations.
  NetworkConfigurationCatalog? networkConfigurationCatalog;

  /// The software test environment provided by TestExecutionService.
  ProvidedSoftwareCatalog? softwareCatalog;

  TestEnvironmentCatalog({
    this.androidDeviceCatalog,
    this.deviceIpBlockCatalog,
    this.iosDeviceCatalog,
    this.networkConfigurationCatalog,
    this.softwareCatalog,
  });

  TestEnvironmentCatalog.fromJson(core.Map _json)
      : this(
          androidDeviceCatalog: _json.containsKey('androidDeviceCatalog')
              ? AndroidDeviceCatalog.fromJson(_json['androidDeviceCatalog']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deviceIpBlockCatalog: _json.containsKey('deviceIpBlockCatalog')
              ? DeviceIpBlockCatalog.fromJson(_json['deviceIpBlockCatalog']
                  as core.Map<core.String, core.dynamic>)
              : null,
          iosDeviceCatalog: _json.containsKey('iosDeviceCatalog')
              ? IosDeviceCatalog.fromJson(_json['iosDeviceCatalog']
                  as core.Map<core.String, core.dynamic>)
              : null,
          networkConfigurationCatalog:
              _json.containsKey('networkConfigurationCatalog')
                  ? NetworkConfigurationCatalog.fromJson(
                      _json['networkConfigurationCatalog']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          softwareCatalog: _json.containsKey('softwareCatalog')
              ? ProvidedSoftwareCatalog.fromJson(_json['softwareCatalog']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidDeviceCatalog != null)
          'androidDeviceCatalog': androidDeviceCatalog!,
        if (deviceIpBlockCatalog != null)
          'deviceIpBlockCatalog': deviceIpBlockCatalog!,
        if (iosDeviceCatalog != null) 'iosDeviceCatalog': iosDeviceCatalog!,
        if (networkConfigurationCatalog != null)
          'networkConfigurationCatalog': networkConfigurationCatalog!,
        if (softwareCatalog != null) 'softwareCatalog': softwareCatalog!,
      };
}

/// A single test executed in a single environment.
class TestExecution {
  /// How the host machine(s) are configured.
  ///
  /// Output only.
  Environment? environment;

  /// Unique id set by the service.
  ///
  /// Output only.
  core.String? id;

  /// Id of the containing TestMatrix.
  ///
  /// Output only.
  core.String? matrixId;

  /// The cloud project that owns the test execution.
  ///
  /// Output only.
  core.String? projectId;

  /// Details about the shard.
  ///
  /// Output only.
  Shard? shard;

  /// Indicates the current progress of the test execution (e.g., FINISHED).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TEST_STATE_UNSPECIFIED" : Do not use. For proto versioning only.
  /// - "VALIDATING" : The execution or matrix is being validated.
  /// - "PENDING" : The execution or matrix is waiting for resources to become
  /// available.
  /// - "RUNNING" : The execution is currently being processed. Can only be set
  /// on an execution.
  /// - "FINISHED" : The execution or matrix has terminated normally. On a
  /// matrix this means that the matrix level processing completed normally, but
  /// individual executions may be in an ERROR state.
  /// - "ERROR" : The execution or matrix has stopped because it encountered an
  /// infrastructure failure.
  /// - "UNSUPPORTED_ENVIRONMENT" : The execution was not run because it
  /// corresponds to a unsupported environment. Can only be set on an execution.
  /// - "INCOMPATIBLE_ENVIRONMENT" : The execution was not run because the
  /// provided inputs are incompatible with the requested environment. Example:
  /// requested AndroidVersion is lower than APK's minSdkVersion Can only be set
  /// on an execution.
  /// - "INCOMPATIBLE_ARCHITECTURE" : The execution was not run because the
  /// provided inputs are incompatible with the requested architecture. Example:
  /// requested device does not support running the native code in the supplied
  /// APK Can only be set on an execution.
  /// - "CANCELLED" : The user cancelled the execution. Can only be set on an
  /// execution.
  /// - "INVALID" : The execution or matrix was not run because the provided
  /// inputs are not valid. Examples: input file is not of the expected type, is
  /// malformed/corrupt, or was flagged as malware
  core.String? state;

  /// Additional details about the running test.
  ///
  /// Output only.
  TestDetails? testDetails;

  /// How to run the test.
  ///
  /// Output only.
  TestSpecification? testSpecification;

  /// The time this test execution was initially created.
  ///
  /// Output only.
  core.String? timestamp;

  /// Where the results for this execution are written.
  ///
  /// Output only.
  ToolResultsStep? toolResultsStep;

  TestExecution({
    this.environment,
    this.id,
    this.matrixId,
    this.projectId,
    this.shard,
    this.state,
    this.testDetails,
    this.testSpecification,
    this.timestamp,
    this.toolResultsStep,
  });

  TestExecution.fromJson(core.Map _json)
      : this(
          environment: _json.containsKey('environment')
              ? Environment.fromJson(
                  _json['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          matrixId: _json.containsKey('matrixId')
              ? _json['matrixId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          shard: _json.containsKey('shard')
              ? Shard.fromJson(
                  _json['shard'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          testDetails: _json.containsKey('testDetails')
              ? TestDetails.fromJson(
                  _json['testDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          testSpecification: _json.containsKey('testSpecification')
              ? TestSpecification.fromJson(_json['testSpecification']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
          toolResultsStep: _json.containsKey('toolResultsStep')
              ? ToolResultsStep.fromJson(_json['toolResultsStep']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
        if (id != null) 'id': id!,
        if (matrixId != null) 'matrixId': matrixId!,
        if (projectId != null) 'projectId': projectId!,
        if (shard != null) 'shard': shard!,
        if (state != null) 'state': state!,
        if (testDetails != null) 'testDetails': testDetails!,
        if (testSpecification != null) 'testSpecification': testSpecification!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (toolResultsStep != null) 'toolResultsStep': toolResultsStep!,
      };
}

/// TestMatrix captures all details about a test.
///
/// It contains the environment configuration, test specification, test
/// executions and overall state and outcome.
class TestMatrix {
  /// Information about the client which invoked the test.
  ClientInfo? clientInfo;

  /// The devices the tests are being executed on.
  ///
  /// Required.
  EnvironmentMatrix? environmentMatrix;

  /// If true, only a single attempt at most will be made to run each
  /// execution/shard in the matrix.
  ///
  /// Flaky test attempts are not affected. Normally, 2 or more attempts are
  /// made if a potential infrastructure issue is detected. This feature is for
  /// latency sensitive workloads. The incidence of execution failures may be
  /// significantly greater for fail-fast matrices and support is more limited
  /// because of that expectation.
  core.bool? failFast;

  /// The number of times a TestExecution should be re-attempted if one or more
  /// of its test cases fail for any reason.
  ///
  /// The maximum number of reruns allowed is 10. Default is 0, which implies no
  /// reruns.
  core.int? flakyTestAttempts;

  /// Describes why the matrix is considered invalid.
  ///
  /// Only useful for matrices in the INVALID state.
  ///
  /// Output only.
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
  /// invalid. See also
  /// https://developer.android.com/studio/build/application-id
  /// - "TEST_SAME_AS_APP" : The test package and app package are the same.
  /// - "NO_INSTRUMENTATION" : The test apk does not declare an instrumentation.
  /// - "NO_SIGNATURE" : The input app apk does not have a signature.
  /// - "INSTRUMENTATION_ORCHESTRATOR_INCOMPATIBLE" : The test runner class
  /// specified by user or in the test APK's manifest file is not compatible
  /// with Android Test Orchestrator. Orchestrator is only compatible with
  /// AndroidJUnitRunner version 1.0 or higher. Orchestrator can be disabled by
  /// using DO_NOT_USE_ORCHESTRATOR OrchestratorOption.
  /// - "NO_TEST_RUNNER_CLASS" : The test APK does not contain the test runner
  /// class specified by user or in the manifest file. This can be caused by
  /// either of the following reasons: - the user provided a runner class name
  /// that's incorrect, or - the test runner isn't built into the test APK
  /// (might be in the app APK instead).
  /// - "NO_LAUNCHER_ACTIVITY" : A main launcher activity could not be found.
  /// - "FORBIDDEN_PERMISSIONS" : The app declares one or more permissions that
  /// are not allowed.
  /// - "INVALID_ROBO_DIRECTIVES" : There is a conflict in the provided
  /// robo_directives.
  /// - "INVALID_RESOURCE_NAME" : There is at least one invalid resource name in
  /// the provided robo directives
  /// - "INVALID_DIRECTIVE_ACTION" : Invalid definition of action in the robo
  /// directives (e.g. a click or ignore action includes an input text field)
  /// - "TEST_LOOP_INTENT_FILTER_NOT_FOUND" : There is no test loop intent
  /// filter, or the one that is given is not formatted correctly.
  /// - "SCENARIO_LABEL_NOT_DECLARED" : The request contains a scenario label
  /// that was not declared in the manifest.
  /// - "SCENARIO_LABEL_MALFORMED" : There was an error when parsing a label's
  /// value.
  /// - "SCENARIO_NOT_DECLARED" : The request contains a scenario number that
  /// was not declared in the manifest.
  /// - "DEVICE_ADMIN_RECEIVER" : Device administrator applications are not
  /// allowed.
  /// - "MALFORMED_XC_TEST_ZIP" : The zipped XCTest was malformed. The zip did
  /// not contain a single .xctestrun file and the contents of the
  /// DerivedData/Build/Products directory.
  /// - "BUILT_FOR_IOS_SIMULATOR" : The zipped XCTest was built for the iOS
  /// simulator rather than for a physical device.
  /// - "NO_TESTS_IN_XC_TEST_ZIP" : The .xctestrun file did not specify any test
  /// targets.
  /// - "USE_DESTINATION_ARTIFACTS" : One or more of the test targets defined in
  /// the .xctestrun file specifies "UseDestinationArtifacts", which is
  /// disallowed.
  /// - "TEST_NOT_APP_HOSTED" : XC tests which run on physical devices must have
  /// "IsAppHostedTestBundle" == "true" in the xctestrun file.
  /// - "PLIST_CANNOT_BE_PARSED" : An Info.plist file in the XCTest zip could
  /// not be parsed.
  /// - "TEST_ONLY_APK" : The APK is marked as "testOnly". Deprecated and not
  /// currently used.
  /// - "MALFORMED_IPA" : The input IPA could not be parsed.
  /// - "MISSING_URL_SCHEME" : The application doesn't register the game loop
  /// URL scheme.
  /// - "MALFORMED_APP_BUNDLE" : The iOS application bundle (.app) couldn't be
  /// processed.
  /// - "NO_CODE_APK" : APK contains no code. See also
  /// https://developer.android.com/guide/topics/manifest/application-element.html#code
  /// - "INVALID_INPUT_APK" : Either the provided input APK path was malformed,
  /// the APK file does not exist, or the user does not have permission to
  /// access the APK file.
  /// - "INVALID_APK_PREVIEW_SDK" : APK is built for a preview SDK which is
  /// unsupported
  core.String? invalidMatrixDetails;

  /// The overall outcome of the test.
  ///
  /// Only set when the test matrix state is FINISHED.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OUTCOME_SUMMARY_UNSPECIFIED" : Do not use. For proto versioning only.
  /// - "SUCCESS" : The test matrix run was successful, for instance: - All the
  /// test cases passed. - Robo did not detect a crash of the application under
  /// test.
  /// - "FAILURE" : A run failed, for instance: - One or more test case failed.
  /// - A test timed out. - The application under test crashed.
  /// - "INCONCLUSIVE" : Something unexpected happened. The run should still be
  /// considered unsuccessful but this is likely a transient problem and
  /// re-running the test might be successful.
  /// - "SKIPPED" : All tests were skipped, for instance: - All device
  /// configurations were incompatible.
  core.String? outcomeSummary;

  /// The cloud project that owns the test matrix.
  core.String? projectId;

  /// Where the results for the matrix are written.
  ///
  /// Required.
  ResultStorage? resultStorage;

  /// Indicates the current progress of the test matrix.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TEST_STATE_UNSPECIFIED" : Do not use. For proto versioning only.
  /// - "VALIDATING" : The execution or matrix is being validated.
  /// - "PENDING" : The execution or matrix is waiting for resources to become
  /// available.
  /// - "RUNNING" : The execution is currently being processed. Can only be set
  /// on an execution.
  /// - "FINISHED" : The execution or matrix has terminated normally. On a
  /// matrix this means that the matrix level processing completed normally, but
  /// individual executions may be in an ERROR state.
  /// - "ERROR" : The execution or matrix has stopped because it encountered an
  /// infrastructure failure.
  /// - "UNSUPPORTED_ENVIRONMENT" : The execution was not run because it
  /// corresponds to a unsupported environment. Can only be set on an execution.
  /// - "INCOMPATIBLE_ENVIRONMENT" : The execution was not run because the
  /// provided inputs are incompatible with the requested environment. Example:
  /// requested AndroidVersion is lower than APK's minSdkVersion Can only be set
  /// on an execution.
  /// - "INCOMPATIBLE_ARCHITECTURE" : The execution was not run because the
  /// provided inputs are incompatible with the requested architecture. Example:
  /// requested device does not support running the native code in the supplied
  /// APK Can only be set on an execution.
  /// - "CANCELLED" : The user cancelled the execution. Can only be set on an
  /// execution.
  /// - "INVALID" : The execution or matrix was not run because the provided
  /// inputs are not valid. Examples: input file is not of the expected type, is
  /// malformed/corrupt, or was flagged as malware
  core.String? state;

  /// The list of test executions that the service creates for this matrix.
  ///
  /// Output only.
  core.List<TestExecution>? testExecutions;

  /// Unique id set by the service.
  ///
  /// Output only.
  core.String? testMatrixId;

  /// How to run the test.
  ///
  /// Required.
  TestSpecification? testSpecification;

  /// The time this test matrix was initially created.
  ///
  /// Output only.
  core.String? timestamp;

  TestMatrix({
    this.clientInfo,
    this.environmentMatrix,
    this.failFast,
    this.flakyTestAttempts,
    this.invalidMatrixDetails,
    this.outcomeSummary,
    this.projectId,
    this.resultStorage,
    this.state,
    this.testExecutions,
    this.testMatrixId,
    this.testSpecification,
    this.timestamp,
  });

  TestMatrix.fromJson(core.Map _json)
      : this(
          clientInfo: _json.containsKey('clientInfo')
              ? ClientInfo.fromJson(
                  _json['clientInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          environmentMatrix: _json.containsKey('environmentMatrix')
              ? EnvironmentMatrix.fromJson(_json['environmentMatrix']
                  as core.Map<core.String, core.dynamic>)
              : null,
          failFast: _json.containsKey('failFast')
              ? _json['failFast'] as core.bool
              : null,
          flakyTestAttempts: _json.containsKey('flakyTestAttempts')
              ? _json['flakyTestAttempts'] as core.int
              : null,
          invalidMatrixDetails: _json.containsKey('invalidMatrixDetails')
              ? _json['invalidMatrixDetails'] as core.String
              : null,
          outcomeSummary: _json.containsKey('outcomeSummary')
              ? _json['outcomeSummary'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          resultStorage: _json.containsKey('resultStorage')
              ? ResultStorage.fromJson(
                  _json['resultStorage'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          testExecutions: _json.containsKey('testExecutions')
              ? (_json['testExecutions'] as core.List)
                  .map((value) => TestExecution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          testMatrixId: _json.containsKey('testMatrixId')
              ? _json['testMatrixId'] as core.String
              : null,
          testSpecification: _json.containsKey('testSpecification')
              ? TestSpecification.fromJson(_json['testSpecification']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientInfo != null) 'clientInfo': clientInfo!,
        if (environmentMatrix != null) 'environmentMatrix': environmentMatrix!,
        if (failFast != null) 'failFast': failFast!,
        if (flakyTestAttempts != null) 'flakyTestAttempts': flakyTestAttempts!,
        if (invalidMatrixDetails != null)
          'invalidMatrixDetails': invalidMatrixDetails!,
        if (outcomeSummary != null) 'outcomeSummary': outcomeSummary!,
        if (projectId != null) 'projectId': projectId!,
        if (resultStorage != null) 'resultStorage': resultStorage!,
        if (state != null) 'state': state!,
        if (testExecutions != null) 'testExecutions': testExecutions!,
        if (testMatrixId != null) 'testMatrixId': testMatrixId!,
        if (testSpecification != null) 'testSpecification': testSpecification!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

/// A description of how to set up the Android device prior to running the test.
class TestSetup {
  /// The device will be logged in on this account for the duration of the test.
  Account? account;

  /// APKs to install in addition to those being directly tested.
  ///
  /// Currently capped at 100.
  core.List<Apk>? additionalApks;

  /// List of directories on the device to upload to GCS at the end of the test;
  /// they must be absolute paths under /sdcard, /storage or /data/local/tmp.
  ///
  /// Path names are restricted to characters a-z A-Z 0-9 _ - . + and / Note:
  /// The paths /sdcard and /data will be made available and treated as implicit
  /// path substitutions. E.g. if /sdcard on a particular device does not map to
  /// external storage, the system will replace it with the external storage
  /// path prefix for that device.
  core.List<core.String>? directoriesToPull;

  /// Whether to prevent all runtime permissions to be granted at app install
  core.bool? dontAutograntPermissions;

  /// Environment variables to set for the test (only applicable for
  /// instrumentation tests).
  core.List<EnvironmentVariable>? environmentVariables;

  /// List of files to push to the device before starting the test.
  core.List<DeviceFile>? filesToPush;

  /// The network traffic profile used for running the test.
  ///
  /// Available network profiles can be queried by using the
  /// NETWORK_CONFIGURATION environment type when calling
  /// TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  core.String? networkProfile;

  /// Deprecated: Systrace uses Python 2 which has been sunset 2020-01-01.
  ///
  /// Support of Systrace may stop at any time, at which point no Systrace file
  /// will be provided in the results. Systrace configuration for the run. If
  /// set a systrace will be taken, starting on test start and lasting for the
  /// configured duration. The systrace file thus obtained is put in the results
  /// bucket together with the other artifacts from the run.
  SystraceSetup? systrace;

  TestSetup({
    this.account,
    this.additionalApks,
    this.directoriesToPull,
    this.dontAutograntPermissions,
    this.environmentVariables,
    this.filesToPush,
    this.networkProfile,
    this.systrace,
  });

  TestSetup.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? Account.fromJson(
                  _json['account'] as core.Map<core.String, core.dynamic>)
              : null,
          additionalApks: _json.containsKey('additionalApks')
              ? (_json['additionalApks'] as core.List)
                  .map((value) => Apk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          directoriesToPull: _json.containsKey('directoriesToPull')
              ? (_json['directoriesToPull'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dontAutograntPermissions:
              _json.containsKey('dontAutograntPermissions')
                  ? _json['dontAutograntPermissions'] as core.bool
                  : null,
          environmentVariables: _json.containsKey('environmentVariables')
              ? (_json['environmentVariables'] as core.List)
                  .map((value) => EnvironmentVariable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          filesToPush: _json.containsKey('filesToPush')
              ? (_json['filesToPush'] as core.List)
                  .map((value) => DeviceFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          networkProfile: _json.containsKey('networkProfile')
              ? _json['networkProfile'] as core.String
              : null,
          systrace: _json.containsKey('systrace')
              ? SystraceSetup.fromJson(
                  _json['systrace'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (additionalApks != null) 'additionalApks': additionalApks!,
        if (directoriesToPull != null) 'directoriesToPull': directoriesToPull!,
        if (dontAutograntPermissions != null)
          'dontAutograntPermissions': dontAutograntPermissions!,
        if (environmentVariables != null)
          'environmentVariables': environmentVariables!,
        if (filesToPush != null) 'filesToPush': filesToPush!,
        if (networkProfile != null) 'networkProfile': networkProfile!,
        if (systrace != null) 'systrace': systrace!,
      };
}

/// A description of how to run the test.
class TestSpecification {
  /// An Android instrumentation test.
  AndroidInstrumentationTest? androidInstrumentationTest;

  /// An Android robo test.
  AndroidRoboTest? androidRoboTest;

  /// An Android Application with a Test Loop.
  AndroidTestLoop? androidTestLoop;

  /// Disables performance metrics recording.
  ///
  /// May reduce test latency.
  core.bool? disablePerformanceMetrics;

  /// Disables video recording.
  ///
  /// May reduce test latency.
  core.bool? disableVideoRecording;

  /// An iOS application with a test loop.
  IosTestLoop? iosTestLoop;

  /// Test setup requirements for iOS.
  IosTestSetup? iosTestSetup;

  /// An iOS XCTest, via an .xctestrun file.
  IosXcTest? iosXcTest;

  /// Test setup requirements for Android e.g. files to install, bootstrap
  /// scripts.
  TestSetup? testSetup;

  /// Max time a test execution is allowed to run before it is automatically
  /// cancelled.
  ///
  /// The default value is 5 min.
  core.String? testTimeout;

  TestSpecification({
    this.androidInstrumentationTest,
    this.androidRoboTest,
    this.androidTestLoop,
    this.disablePerformanceMetrics,
    this.disableVideoRecording,
    this.iosTestLoop,
    this.iosTestSetup,
    this.iosXcTest,
    this.testSetup,
    this.testTimeout,
  });

  TestSpecification.fromJson(core.Map _json)
      : this(
          androidInstrumentationTest:
              _json.containsKey('androidInstrumentationTest')
                  ? AndroidInstrumentationTest.fromJson(
                      _json['androidInstrumentationTest']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          androidRoboTest: _json.containsKey('androidRoboTest')
              ? AndroidRoboTest.fromJson(_json['androidRoboTest']
                  as core.Map<core.String, core.dynamic>)
              : null,
          androidTestLoop: _json.containsKey('androidTestLoop')
              ? AndroidTestLoop.fromJson(_json['androidTestLoop']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disablePerformanceMetrics:
              _json.containsKey('disablePerformanceMetrics')
                  ? _json['disablePerformanceMetrics'] as core.bool
                  : null,
          disableVideoRecording: _json.containsKey('disableVideoRecording')
              ? _json['disableVideoRecording'] as core.bool
              : null,
          iosTestLoop: _json.containsKey('iosTestLoop')
              ? IosTestLoop.fromJson(
                  _json['iosTestLoop'] as core.Map<core.String, core.dynamic>)
              : null,
          iosTestSetup: _json.containsKey('iosTestSetup')
              ? IosTestSetup.fromJson(
                  _json['iosTestSetup'] as core.Map<core.String, core.dynamic>)
              : null,
          iosXcTest: _json.containsKey('iosXcTest')
              ? IosXcTest.fromJson(
                  _json['iosXcTest'] as core.Map<core.String, core.dynamic>)
              : null,
          testSetup: _json.containsKey('testSetup')
              ? TestSetup.fromJson(
                  _json['testSetup'] as core.Map<core.String, core.dynamic>)
              : null,
          testTimeout: _json.containsKey('testTimeout')
              ? _json['testTimeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidInstrumentationTest != null)
          'androidInstrumentationTest': androidInstrumentationTest!,
        if (androidRoboTest != null) 'androidRoboTest': androidRoboTest!,
        if (androidTestLoop != null) 'androidTestLoop': androidTestLoop!,
        if (disablePerformanceMetrics != null)
          'disablePerformanceMetrics': disablePerformanceMetrics!,
        if (disableVideoRecording != null)
          'disableVideoRecording': disableVideoRecording!,
        if (iosTestLoop != null) 'iosTestLoop': iosTestLoop!,
        if (iosTestSetup != null) 'iosTestSetup': iosTestSetup!,
        if (iosXcTest != null) 'iosXcTest': iosXcTest!,
        if (testSetup != null) 'testSetup': testSetup!,
        if (testTimeout != null) 'testTimeout': testTimeout!,
      };
}

/// Test targets for a shard.
class TestTargetsForShard {
  /// Group of packages, classes, and/or test methods to be run for each shard.
  ///
  /// The targets need to be specified in AndroidJUnitRunner argument format.
  /// For example, "package com.my.packages" "class com.my.package.MyClass". The
  /// number of shard_test_targets must be greater than 0.
  core.List<core.String>? testTargets;

  TestTargetsForShard({
    this.testTargets,
  });

  TestTargetsForShard.fromJson(core.Map _json)
      : this(
          testTargets: _json.containsKey('testTargets')
              ? (_json['testTargets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testTargets != null) 'testTargets': testTargets!,
      };
}

/// Represents a tool results execution resource.
///
/// This has the results of a TestMatrix.
class ToolResultsExecution {
  /// A tool results execution ID.
  ///
  /// Output only.
  core.String? executionId;

  /// A tool results history ID.
  ///
  /// Output only.
  core.String? historyId;

  /// The cloud project that owns the tool results execution.
  ///
  /// Output only.
  core.String? projectId;

  ToolResultsExecution({
    this.executionId,
    this.historyId,
    this.projectId,
  });

  ToolResultsExecution.fromJson(core.Map _json)
      : this(
          executionId: _json.containsKey('executionId')
              ? _json['executionId'] as core.String
              : null,
          historyId: _json.containsKey('historyId')
              ? _json['historyId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionId != null) 'executionId': executionId!,
        if (historyId != null) 'historyId': historyId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Represents a tool results history resource.
class ToolResultsHistory {
  /// A tool results history ID.
  ///
  /// Required.
  core.String? historyId;

  /// The cloud project that owns the tool results history.
  ///
  /// Required.
  core.String? projectId;

  ToolResultsHistory({
    this.historyId,
    this.projectId,
  });

  ToolResultsHistory.fromJson(core.Map _json)
      : this(
          historyId: _json.containsKey('historyId')
              ? _json['historyId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (historyId != null) 'historyId': historyId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Represents a tool results step resource.
///
/// This has the results of a TestExecution.
class ToolResultsStep {
  /// A tool results execution ID.
  ///
  /// Output only.
  core.String? executionId;

  /// A tool results history ID.
  ///
  /// Output only.
  core.String? historyId;

  /// The cloud project that owns the tool results step.
  ///
  /// Output only.
  core.String? projectId;

  /// A tool results step ID.
  ///
  /// Output only.
  core.String? stepId;

  ToolResultsStep({
    this.executionId,
    this.historyId,
    this.projectId,
    this.stepId,
  });

  ToolResultsStep.fromJson(core.Map _json)
      : this(
          executionId: _json.containsKey('executionId')
              ? _json['executionId'] as core.String
              : null,
          historyId: _json.containsKey('historyId')
              ? _json['historyId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          stepId: _json.containsKey('stepId')
              ? _json['stepId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionId != null) 'executionId': executionId!,
        if (historyId != null) 'historyId': historyId!,
        if (projectId != null) 'projectId': projectId!,
        if (stepId != null) 'stepId': stepId!,
      };
}

/// Network emulation parameters.
class TrafficRule {
  /// Bandwidth in kbits/second.
  core.double? bandwidth;

  /// Burst size in kbits.
  core.double? burst;

  /// Packet delay, must be \>= 0.
  core.String? delay;

  /// Packet duplication ratio (0.0 - 1.0).
  core.double? packetDuplicationRatio;

  /// Packet loss ratio (0.0 - 1.0).
  core.double? packetLossRatio;

  TrafficRule({
    this.bandwidth,
    this.burst,
    this.delay,
    this.packetDuplicationRatio,
    this.packetLossRatio,
  });

  TrafficRule.fromJson(core.Map _json)
      : this(
          bandwidth: _json.containsKey('bandwidth')
              ? (_json['bandwidth'] as core.num).toDouble()
              : null,
          burst: _json.containsKey('burst')
              ? (_json['burst'] as core.num).toDouble()
              : null,
          delay:
              _json.containsKey('delay') ? _json['delay'] as core.String : null,
          packetDuplicationRatio: _json.containsKey('packetDuplicationRatio')
              ? (_json['packetDuplicationRatio'] as core.num).toDouble()
              : null,
          packetLossRatio: _json.containsKey('packetLossRatio')
              ? (_json['packetLossRatio'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandwidth != null) 'bandwidth': bandwidth!,
        if (burst != null) 'burst': burst!,
        if (delay != null) 'delay': delay!,
        if (packetDuplicationRatio != null)
          'packetDuplicationRatio': packetDuplicationRatio!,
        if (packetLossRatio != null) 'packetLossRatio': packetLossRatio!,
      };
}

/// Uniformly shards test cases given a total number of shards.
///
/// For Instrumentation test, it will be translated to "-e numShard" "-e
/// shardIndex" AndroidJUnitRunner arguments. With uniform sharding enabled,
/// specifying these sharding arguments via environment_variables is invalid.
class UniformSharding {
  /// Total number of shards.
  ///
  /// When any physical devices are selected, the number must be \>= 1 and \<=
  /// 50. When no physical devices are selected, the number must be \>= 1 and
  /// \<= 500.
  ///
  /// Required.
  core.int? numShards;

  UniformSharding({
    this.numShards,
  });

  UniformSharding.fromJson(core.Map _json)
      : this(
          numShards: _json.containsKey('numShards')
              ? _json['numShards'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numShards != null) 'numShards': numShards!,
      };
}

/// An Xcode version that an iOS version is compatible with.
class XcodeVersion {
  /// Tags for this Xcode version.
  ///
  /// Example: "default".
  core.List<core.String>? tags;

  /// The id for this version.
  ///
  /// Example: "9.2".
  core.String? version;

  XcodeVersion({
    this.tags,
    this.version,
  });

  XcodeVersion.fromJson(core.Map _json)
      : this(
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tags != null) 'tags': tags!,
        if (version != null) 'version': version!,
      };
}
