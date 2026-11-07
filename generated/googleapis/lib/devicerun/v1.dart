// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Device Run API - v1
///
/// The Device Run API allows management, scheduling, and execution of automated
/// sessions and workloads across device catalogs.
///
/// For more information, see
/// <https://docs.cloud.google.com/developer-device-platform/device-run>
///
/// Create an instance of [DeviceRunApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsDevicesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSoftwareVersionsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Device Run API allows management, scheduling, and execution of automated
/// sessions and workloads across device catalogs.
class DeviceRunApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DeviceRunApi(
    http.Client client, {
    core.String rootUrl = 'https://devicerun.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDevicesResource get devices =>
      ProjectsLocationsDevicesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSoftwareVersionsResource get softwareVersions =>
      ProjectsLocationsSoftwareVersionsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// This method lists locations based on the resource scope provided in the
  /// ListLocationsRequest.name field: * **Global locations**: If `name` is
  /// empty, the method lists the public locations available to all projects. *
  /// **Project-specific locations**: If `name` follows the format
  /// `projects/{project}`, the method lists locations visible to that specific
  /// project. This includes public, private, or other project-specific
  /// locations enabled for the project. For gRPC and client library
  /// implementations, the resource name is passed as the `name` field. For
  /// direct service calls, the resource name is incorporated into the request
  /// path based on the specific service implementation and version.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Do not use this field unless explicitly
  /// documented otherwise. This is primarily for internal usage.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDevicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDevicesResource(commons.ApiRequester client)
    : _requester = client;

  /// Returns information about a specific device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device. Format:
  /// `projects/{project}/locations/global/devices/{device}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CatalogDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CatalogDevice> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CatalogDevice.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all devices.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the collection of devices. Format:
  /// `projects/{project}/locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An AIP-160 (https://google.aip.dev/160) filter
  /// expression restricting which devices are returned. An empty filter returns
  /// all devices. Filtering is supported over the `Device` fields, including
  /// nested fields via dot-path. Enum and string values must be double-quoted.
  /// Examples: * `platform = "ANDROID"` * `platform = "ANDROID" AND os_version
  /// = "34"` * `hardware_type = "PHYSICAL" AND form_factor = "PHONE"` *
  /// `android_details.build_type = "userdebug"` * `availability.capacity =
  /// "HIGH"`
  ///
  /// [pageSize] - Optional. The maximum number of devices to return. The server
  /// may return fewer items than this value.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDevices` call. Provide this to receive the subsequent page. When
  /// paginating, all other parameters provided to `ListDevices` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CatalogListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CatalogListDevicesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CatalogListDevicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSoftwareVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSoftwareVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Returns information about a specific software version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the software version. Format:
  /// `projects/{project}/locations/global/softwareVersions/{software_version}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/softwareVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CatalogSoftwareVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CatalogSoftwareVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CatalogSoftwareVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all software versions.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the collection of software versions.
  /// Format: `projects/{project}/locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An AIP-160 (https://google.aip.dev/160) filter
  /// expression restricting which software versions are returned. An empty
  /// filter returns all software versions. Filtering is supported over the
  /// `SoftwareVersion` fields, including nested fields via dot-path. Enum and
  /// string values must be double-quoted. Examples: * `software_type =
  /// "ANDROIDX_TEST_ORCHESTRATOR"` * `software_type =
  /// "ANDROIDX_TEST_ORCHESTRATOR" AND is_default = true` * `lifecycle.state =
  /// "ACTIVE"` * `version = "1.4.1"`
  ///
  /// [pageSize] - Optional. The maximum number of software versions to return.
  /// The server may return fewer items than this value.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListSoftwareVersions` call. Provide this to receive the subsequent page.
  /// When paginating, all other parameters provided to `ListSoftwareVersions`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CatalogListSoftwareVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CatalogListSoftwareVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/softwareVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CatalogListSoftwareVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Android-specific device attributes.
class CatalogAndroidDeviceDetails {
  /// Mirrors the AOSP `ro.build.type` property, e.g. "user", "userdebug",
  /// "eng".
  ///
  /// Empty if unknown.
  ///
  /// Output only.
  core.String? buildType;

  /// Lists ABIs supported by the device (android.os.Build.SUPPORTED_ABIS), most
  /// preferred first, e.g. "arm64-v8a".
  ///
  /// Output only.
  core.List<core.String>? supportedAbis;

  CatalogAndroidDeviceDetails({this.buildType, this.supportedAbis});

  CatalogAndroidDeviceDetails.fromJson(core.Map json_)
    : this(
        buildType: json_['buildType'] as core.String?,
        supportedAbis: (json_['supportedAbis'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buildType = this.buildType;
    final supportedAbis = this.supportedAbis;
    return {'buildType': ?buildType, 'supportedAbis': ?supportedAbis};
  }
}

/// AndroidX Test Orchestrator-specific attributes.
///
/// Reserved for future orchestrator-only fields.
typedef CatalogAndroidxTestOrchestratorDetails = $Empty;

/// Per-product metadata for the Automation (DeviceRun) product.
typedef CatalogAutomationSupport = $Empty;

/// A single routable device configuration in the catalog.
class CatalogDevice {
  /// Reasons for access denial.
  ///
  /// This model is accessible/usable if this list is empty, otherwise the model
  /// is viewable only.
  ///
  /// Output only.
  core.List<core.String>? accessDeniedReasons;

  /// Contains Android-specific attributes (set when platform == ANDROID).
  ///
  /// Output only.
  CatalogAndroidDeviceDetails? androidDetails;

  /// Reports the current fleet availability for this device configuration.
  ///
  /// Output only.
  CatalogDeviceAvailability? availability;

  /// Provides a human-readable display name, e.g. "Pixel 5".
  ///
  /// Output only.
  core.String? displayName;

  /// Specifies the form factor of the device.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FORM_FACTOR_UNSPECIFIED" : Form factor not specified.
  /// - "PHONE" : Phone.
  /// - "TABLET" : Tablet.
  /// - "WEARABLE" : Wearable (e.g. watch).
  /// - "TV" : TV.
  core.String? formFactor;

  /// Indicates whether the device is physical or virtual.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HARDWARE_TYPE_UNSPECIFIED" : Hardware type not specified.
  /// - "PHYSICAL" : Physical hardware device.
  /// - "VIRTUAL" : Virtual device (emulator / simulator).
  core.String? hardwareType;

  /// Contains iOS-specific attributes (set when platform == IOS).
  ///
  /// Output only.
  CatalogIosDeviceDetails? iosDetails;

  /// The lab hosting this device.
  ///
  /// Output only.
  CatalogLabInfo? labInfo;

  /// Additional information.
  ///
  /// Informational only. May change over the lifecycle of a device.
  ///
  /// Output only.
  core.Map<core.String, core.String>? labels;

  /// The device lifecycle (maturity stage and removal date).
  ///
  /// Output only.
  CatalogLifecycle? lifecycle;

  /// Specifies the hardware manufacturer of the device.
  ///
  /// Output only.
  core.String? manufacturer;

  /// Provides a human-readable model identifier for this device, independent of
  /// OS version.
  ///
  /// May be empty. Platform-dependent: * Android physical: hardware codename
  /// (android.os.Build.DEVICE), e.g. "shiba". * Android virtual: AVD model
  /// identifier, e.g. "MediumPhone.arm". * iOS: model identifier, e.g.
  /// "iphone14pro".
  ///
  /// Output only.
  core.String? modelCode;

  /// Identifier.
  ///
  /// Identifies the device resource. Format:
  /// `projects/{project}/locations/{location}/devices/{device}`. The {device}
  /// segment is an opaque, stable string. Clients must not parse it to derive
  /// or assume device-specific details.
  core.String? name;

  /// Specifies the OS version, e.g. "30" (Android API level) or "17.4" (iOS).
  ///
  /// Output only.
  core.String? osVersion;

  /// Specifies the platform of the device.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Platform not specified.
  /// - "ANDROID" : Android.
  /// - "IOS" : iOS.
  core.String? platform;

  /// Measurements of the primary device screen.
  ///
  /// Informational only. Unset for devices without a screen (e.g. some
  /// wearables).
  ///
  /// Output only.
  CatalogScreenMetrics? primaryScreen;

  /// Products/Services supported by this device.
  ///
  /// Output only.
  core.List<CatalogSupportedProduct>? supportedProducts;

  CatalogDevice({
    this.accessDeniedReasons,
    this.androidDetails,
    this.availability,
    this.displayName,
    this.formFactor,
    this.hardwareType,
    this.iosDetails,
    this.labInfo,
    this.labels,
    this.lifecycle,
    this.manufacturer,
    this.modelCode,
    this.name,
    this.osVersion,
    this.platform,
    this.primaryScreen,
    this.supportedProducts,
  });

  CatalogDevice.fromJson(core.Map json_)
    : this(
        accessDeniedReasons: (json_['accessDeniedReasons'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        androidDetails: json_.containsKey('androidDetails')
            ? CatalogAndroidDeviceDetails.fromJson(
                json_['androidDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        availability: json_.containsKey('availability')
            ? CatalogDeviceAvailability.fromJson(
                json_['availability'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        formFactor: json_['formFactor'] as core.String?,
        hardwareType: json_['hardwareType'] as core.String?,
        iosDetails: json_.containsKey('iosDetails')
            ? CatalogIosDeviceDetails.fromJson(
                json_['iosDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        labInfo: json_.containsKey('labInfo')
            ? CatalogLabInfo.fromJson(
                json_['labInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        lifecycle: json_.containsKey('lifecycle')
            ? CatalogLifecycle.fromJson(
                json_['lifecycle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        manufacturer: json_['manufacturer'] as core.String?,
        modelCode: json_['modelCode'] as core.String?,
        name: json_['name'] as core.String?,
        osVersion: json_['osVersion'] as core.String?,
        platform: json_['platform'] as core.String?,
        primaryScreen: json_.containsKey('primaryScreen')
            ? CatalogScreenMetrics.fromJson(
                json_['primaryScreen'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        supportedProducts: (json_['supportedProducts'] as core.List?)
            ?.map(
              (value) => CatalogSupportedProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessDeniedReasons = this.accessDeniedReasons;
    final androidDetails = this.androidDetails;
    final availability = this.availability;
    final displayName = this.displayName;
    final formFactor = this.formFactor;
    final hardwareType = this.hardwareType;
    final iosDetails = this.iosDetails;
    final labInfo = this.labInfo;
    final labels = this.labels;
    final lifecycle = this.lifecycle;
    final manufacturer = this.manufacturer;
    final modelCode = this.modelCode;
    final name = this.name;
    final osVersion = this.osVersion;
    final platform = this.platform;
    final primaryScreen = this.primaryScreen;
    final supportedProducts = this.supportedProducts;
    return {
      'accessDeniedReasons': ?accessDeniedReasons,
      'androidDetails': ?androidDetails,
      'availability': ?availability,
      'displayName': ?displayName,
      'formFactor': ?formFactor,
      'hardwareType': ?hardwareType,
      'iosDetails': ?iosDetails,
      'labInfo': ?labInfo,
      'labels': ?labels,
      'lifecycle': ?lifecycle,
      'manufacturer': ?manufacturer,
      'modelCode': ?modelCode,
      'name': ?name,
      'osVersion': ?osVersion,
      'platform': ?platform,
      'primaryScreen': ?primaryScreen,
      'supportedProducts': ?supportedProducts,
    };
  }
}

/// Fleet availability for a device configuration.
class CatalogDeviceAvailability {
  /// Specifies the current availability bucket (idle, immediately allocatable
  /// devices) for this device configuration.
  ///
  /// This is a best-effort snapshot, refreshed periodically. It fluctuates
  /// depending on traffic as other requests allocate devices.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AVAILABILITY_UNSPECIFIED" : The value of availability is unknown or
  /// unset.
  /// - "AVAILABILITY_NONE" : No devices of this configuration are currently
  /// idle. A request can still be made, but it will queue until a device frees
  /// up. Expect longer wait times, and avoid requesting many devices at once
  /// (e.g. high shard counts).
  /// - "AVAILABILITY_LOW" : A small number of devices are currently idle.
  /// Suitable for a few concurrent requests. Larger bursts (e.g. many shards)
  /// may queue until devices free up.
  /// - "AVAILABILITY_MEDIUM" : A moderate number of devices are currently idle.
  /// Suitable for a moderate number of concurrent requests. Very large bursts
  /// may still queue.
  /// - "AVAILABILITY_HIGH" : Many devices are currently idle. Suitable for a
  /// large number of concurrent requests with little to no queueing at the
  /// moment of observation.
  core.String? available;

  /// Specifies the current capacity bucket for this device configuration.
  ///
  /// Represents the total number of online devices (idle or in use).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CAPACITY_UNSPECIFIED" : The value of device capacity is unknown or
  /// unset.
  /// - "CAPACITY_NONE" : No online devices of this configuration. These devices
  /// are unavailable either temporarily or permanently and should not be
  /// requested. If the device is also marked as deprecated, this state is very
  /// likely permanent.
  /// - "CAPACITY_LOW" : Devices that are low in capacity (the lab has a small
  /// number of these devices). These devices may be used if users need to test
  /// on this specific device model and version. Please note that due to low
  /// capacity, the tests may take much longer to finish, especially if a large
  /// number of tests are invoked at once. These devices are not suitable for
  /// test sharding.
  /// - "CAPACITY_MEDIUM" : Devices that are medium in capacity (the lab has a
  /// decent number of these devices, though not as many as high capacity
  /// devices). These devices are suitable for fewer test runs (e.g. fewer than
  /// 100 tests) and only for low shard counts (e.g. less than 10 shards).
  /// - "CAPACITY_HIGH" : Devices that are high in capacity (the lab has a large
  /// number of these devices). These devices are generally suggested for
  /// running a large number of simultaneous tests (e.g. more than 100 tests).
  /// Please note that high capacity devices do not guarantee short wait times
  /// due to several factors: 1. Traffic (how heavily they are used at any given
  /// moment). 2. High capacity devices are prioritized for certain usages,
  /// which may cause user tests to be slower than selecting other similar
  /// device types.
  core.String? capacity;

  CatalogDeviceAvailability({this.available, this.capacity});

  CatalogDeviceAvailability.fromJson(core.Map json_)
    : this(
        available: json_['available'] as core.String?,
        capacity: json_['capacity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final available = this.available;
    final capacity = this.capacity;
    return {'available': ?available, 'capacity': ?capacity};
  }
}

/// Per-product metadata for the DeviceStreaming product.
class CatalogDeviceStreamingSupport {
  /// Specifies the minimum Android Studio version that supports this device.
  ///
  /// Optional; only set when the device is known to work only at or above a
  /// certain Android Studio version. Expected format "major.minor.micro.patch",
  /// e.g. "5921.22.2211.8881706".
  ///
  /// Output only.
  core.String? minimumAndroidStudioVersion;

  CatalogDeviceStreamingSupport({this.minimumAndroidStudioVersion});

  CatalogDeviceStreamingSupport.fromJson(core.Map json_)
    : this(
        minimumAndroidStudioVersion:
            json_['minimumAndroidStudioVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final minimumAndroidStudioVersion = this.minimumAndroidStudioVersion;
    return {'minimumAndroidStudioVersion': ?minimumAndroidStudioVersion};
  }
}

/// iOS-specific device attributes.
///
/// Reserved for future iOS-only fields.
typedef CatalogIosDeviceDetails = $Empty;

/// The lab hosting a device.
class CatalogLabInfo {
  /// Display name of the lab where the device is hosted.
  ///
  /// If empty, the device is hosted in a Google owned lab.
  ///
  /// Output only.
  core.String? displayName;

  /// The Unicode country/region code (CLDR) of the lab where the device is
  /// hosted, e.g. "US" for United States, "KR" for South Korea.
  ///
  /// Empty when the hosting region is not published.
  ///
  /// Output only.
  core.String? regionCode;

  CatalogLabInfo({this.displayName, this.regionCode});

  CatalogLabInfo.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final regionCode = this.regionCode;
    return {'displayName': ?displayName, 'regionCode': ?regionCode};
  }
}

/// Catalog resource lifecycle: maturity state plus key lifecycle dates.
class CatalogLifecycle {
  /// Specifies the date the resource is scheduled to be removed from the
  /// catalog.
  ///
  /// Only set when `state == DEPRECATED`.
  ///
  /// Output only.
  Date? removalDate;

  /// Specifies the current maturity state of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not specified.
  /// - "PREVIEW" : Early access. This resource may have reduced stability and
  /// availability.
  /// - "ACTIVE" : Generally available.
  /// - "DEPRECATED" : Still usable, but scheduled for removal.
  core.String? state;

  CatalogLifecycle({this.removalDate, this.state});

  CatalogLifecycle.fromJson(core.Map json_)
    : this(
        removalDate: json_.containsKey('removalDate')
            ? Date.fromJson(
                json_['removalDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final removalDate = this.removalDate;
    final state = this.state;
    return {'removalDate': ?removalDate, 'state': ?state};
  }
}

/// Response including listed devices.
class CatalogListDevicesResponse {
  /// The list of devices.
  core.List<CatalogDevice>? devices;

  /// Token to receive the next page of devices.
  ///
  /// This will be absent if the end of the response list has been reached.
  core.String? nextPageToken;

  CatalogListDevicesResponse({this.devices, this.nextPageToken});

  CatalogListDevicesResponse.fromJson(core.Map json_)
    : this(
        devices: (json_['devices'] as core.List?)
            ?.map(
              (value) => CatalogDevice.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final devices = this.devices;
    final nextPageToken = this.nextPageToken;
    return {'devices': ?devices, 'nextPageToken': ?nextPageToken};
  }
}

/// Response including listed software versions.
class CatalogListSoftwareVersionsResponse {
  /// Token to receive the next page of software versions.
  ///
  /// This will be absent if the end of the response list has been reached.
  core.String? nextPageToken;

  /// The list of software versions.
  core.List<CatalogSoftwareVersion>? softwareVersions;

  CatalogListSoftwareVersionsResponse({
    this.nextPageToken,
    this.softwareVersions,
  });

  CatalogListSoftwareVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        softwareVersions: (json_['softwareVersions'] as core.List?)
            ?.map(
              (value) => CatalogSoftwareVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final softwareVersions = this.softwareVersions;
    return {
      'nextPageToken': ?nextPageToken,
      'softwareVersions': ?softwareVersions,
    };
  }
}

/// Screen measurements of a device.
class CatalogScreenMetrics {
  /// Pixel density in dots per inch (dpi).
  ///
  /// Output only.
  core.int? densityDpi;

  /// Height in pixels.
  ///
  /// Output only.
  core.int? heightPx;

  /// Width in pixels.
  ///
  /// Output only.
  core.int? widthPx;

  CatalogScreenMetrics({this.densityDpi, this.heightPx, this.widthPx});

  CatalogScreenMetrics.fromJson(core.Map json_)
    : this(
        densityDpi: json_['densityDpi'] as core.int?,
        heightPx: json_['heightPx'] as core.int?,
        widthPx: json_['widthPx'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final densityDpi = this.densityDpi;
    final heightPx = this.heightPx;
    final widthPx = this.widthPx;
    return {
      'densityDpi': ?densityDpi,
      'heightPx': ?heightPx,
      'widthPx': ?widthPx,
    };
  }
}

/// A single software version in the catalog.
class CatalogSoftwareVersion {
  /// Contains AndroidX Test Orchestrator-specific attributes (set when
  /// software_type == ANDROIDX_TEST_ORCHESTRATOR).
  ///
  /// Output only.
  CatalogAndroidxTestOrchestratorDetails? androidxTestOrchestratorDetails;

  /// Provides a human-readable name for this version, e.g. "AndroidX Test
  /// Orchestrator 1.4.1".
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates whether the system uses this version when a request does not
  /// select one explicitly.
  ///
  /// Exactly one version per `software_type` is the default, and it may change
  /// over time.
  ///
  /// Output only.
  core.bool? isDefault;

  /// The version lifecycle (maturity stage and removal date).
  ///
  /// Output only.
  CatalogLifecycle? lifecycle;

  /// Identifier.
  ///
  /// Identifies the software version resource. Format:
  /// `projects/{project}/locations/{location}/softwareVersions/{software_version}`.
  /// The {software_version} segment is an opaque, stable string. Clients must
  /// not parse it to derive or assume the version.
  core.String? name;

  /// Specifies which software this is a version of.
  ///
  /// Filter on this field to narrow the collection to a single kind of
  /// software, for example `software_type = "ANDROIDX_TEST_ORCHESTRATOR"`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SOFTWARE_TYPE_UNSPECIFIED" : Software type not specified.
  /// - "ANDROIDX_TEST_ORCHESTRATOR" : AndroidX Test Orchestrator, which runs
  /// each Android instrumentation test case in its own process.
  /// - "XCODE" : Apple Xcode, the toolchain that builds and runs iOS XCTests.
  core.String? softwareType;

  /// Specifies the version identifier, e.g. "1.4.1".
  ///
  /// Unique within a `software_type`.
  ///
  /// Output only.
  core.String? version;

  /// Contains Xcode-specific attributes (set when software_type == XCODE).
  ///
  /// Output only.
  CatalogXcodeDetails? xcodeDetails;

  CatalogSoftwareVersion({
    this.androidxTestOrchestratorDetails,
    this.displayName,
    this.isDefault,
    this.lifecycle,
    this.name,
    this.softwareType,
    this.version,
    this.xcodeDetails,
  });

  CatalogSoftwareVersion.fromJson(core.Map json_)
    : this(
        androidxTestOrchestratorDetails:
            json_.containsKey('androidxTestOrchestratorDetails')
            ? CatalogAndroidxTestOrchestratorDetails.fromJson(
                json_['androidxTestOrchestratorDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        isDefault: json_['isDefault'] as core.bool?,
        lifecycle: json_.containsKey('lifecycle')
            ? CatalogLifecycle.fromJson(
                json_['lifecycle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        softwareType: json_['softwareType'] as core.String?,
        version: json_['version'] as core.String?,
        xcodeDetails: json_.containsKey('xcodeDetails')
            ? CatalogXcodeDetails.fromJson(
                json_['xcodeDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final androidxTestOrchestratorDetails =
        this.androidxTestOrchestratorDetails;
    final displayName = this.displayName;
    final isDefault = this.isDefault;
    final lifecycle = this.lifecycle;
    final name = this.name;
    final softwareType = this.softwareType;
    final version = this.version;
    final xcodeDetails = this.xcodeDetails;
    return {
      'androidxTestOrchestratorDetails': ?androidxTestOrchestratorDetails,
      'displayName': ?displayName,
      'isDefault': ?isDefault,
      'lifecycle': ?lifecycle,
      'name': ?name,
      'softwareType': ?softwareType,
      'version': ?version,
      'xcodeDetails': ?xcodeDetails,
    };
  }
}

/// Declares that a device supports a given Device Cloud product, with optional
/// per-product metadata.
///
/// Discriminated by which product-specific message is set; adding a new product
/// = new oneof arm + new per-product message.
class CatalogSupportedProduct {
  /// Represents Automation, which is DeviceRun-backed automated test execution.
  ///
  /// Output only.
  CatalogAutomationSupport? automation;

  /// Represents DeviceStreaming, which is interactive remote device streaming.
  ///
  /// Output only.
  CatalogDeviceStreamingSupport? deviceStreaming;

  CatalogSupportedProduct({this.automation, this.deviceStreaming});

  CatalogSupportedProduct.fromJson(core.Map json_)
    : this(
        automation: json_.containsKey('automation')
            ? CatalogAutomationSupport.fromJson(
                json_['automation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deviceStreaming: json_.containsKey('deviceStreaming')
            ? CatalogDeviceStreamingSupport.fromJson(
                json_['deviceStreaming'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final automation = this.automation;
    final deviceStreaming = this.deviceStreaming;
    return {'automation': ?automation, 'deviceStreaming': ?deviceStreaming};
  }
}

/// Xcode-specific attributes.
class CatalogXcodeDetails {
  /// Lists the iOS versions this Xcode can run tests against, e.g. "16.6".
  ///
  /// This is a property of the toolchain, so it says nothing about whether a
  /// device on that iOS version is available; list the `Device` collection to
  /// find out.
  ///
  /// Output only.
  core.List<core.String>? supportedIosVersions;

  CatalogXcodeDetails({this.supportedIosVersions});

  CatalogXcodeDetails.fromJson(core.Map json_)
    : this(
        supportedIosVersions: (json_['supportedIosVersions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final supportedIosVersions = this.supportedIosVersions;
    return {'supportedIosVersions': ?supportedIosVersions};
  }
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => GoogleLongrunningOperation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error: json_.containsKey('error')
            ? GoogleRpcStatus.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => Location.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final nextPageToken = this.nextPageToken;
    return {'locations': ?locations, 'nextPageToken': ?nextPageToken};
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;
