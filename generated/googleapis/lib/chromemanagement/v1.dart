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

/// Chrome Management API - v1
///
/// The Chrome Management API is a suite of services that allows Chrome
/// administrators to view, manage and gain insights on their Chrome OS and
/// Chrome Browser devices.
///
/// For more information, see <https://developers.google.com/chrome/management/>
///
/// Create an instance of [ChromeManagementApi] to access these resources:
///
/// - [CustomersResource]
///   - [CustomersAppsResource]
///     - [CustomersAppsAndroidResource]
///     - [CustomersAppsChromeResource]
///     - [CustomersAppsWebResource]
///   - [CustomersCertificateProvisioningProcessesResource]
///     - [CustomersCertificateProvisioningProcessesOperationsResource]
///   - [CustomersProfilesResource]
///     - [CustomersProfilesCommandsResource]
///   - [CustomersReportsResource]
///   - [CustomersTelemetryResource]
///     - [CustomersTelemetryDevicesResource]
///     - [CustomersTelemetryEventsResource]
///     - [CustomersTelemetryNotificationConfigsResource]
///     - [CustomersTelemetryUsersResource]
///   - [CustomersThirdPartyProfileUsersResource]
/// - [OperationsResource]
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

/// The Chrome Management API is a suite of services that allows Chrome
/// administrators to view, manage and gain insights on their Chrome OS and
/// Chrome Browser devices.
class ChromeManagementApi {
  /// See detailed information about apps installed on Chrome browsers and
  /// devices managed by your organization
  static const chromeManagementAppdetailsReadonlyScope =
      'https://www.googleapis.com/auth/chrome.management.appdetails.readonly';

  /// See, edit, delete, and take other necessary actions on Chrome browser
  /// profiles managed by your organization
  static const chromeManagementProfilesScope =
      'https://www.googleapis.com/auth/chrome.management.profiles';

  /// See Chrome browser profiles managed by your organization
  static const chromeManagementProfilesReadonlyScope =
      'https://www.googleapis.com/auth/chrome.management.profiles.readonly';

  /// See reports about devices and Chrome browsers managed within your
  /// organization
  static const chromeManagementReportsReadonlyScope =
      'https://www.googleapis.com/auth/chrome.management.reports.readonly';

  /// See basic device and telemetry information collected from ChromeOS devices
  /// or users managed within your organization
  static const chromeManagementTelemetryReadonlyScope =
      'https://www.googleapis.com/auth/chrome.management.telemetry.readonly';

  final commons.ApiRequester _requester;

  CustomersResource get customers => CustomersResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);

  ChromeManagementApi(
    http.Client client, {
    core.String rootUrl = 'https://chromemanagement.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class CustomersResource {
  final commons.ApiRequester _requester;

  CustomersAppsResource get apps => CustomersAppsResource(_requester);
  CustomersCertificateProvisioningProcessesResource
  get certificateProvisioningProcesses =>
      CustomersCertificateProvisioningProcessesResource(_requester);
  CustomersProfilesResource get profiles =>
      CustomersProfilesResource(_requester);
  CustomersReportsResource get reports => CustomersReportsResource(_requester);
  CustomersTelemetryResource get telemetry =>
      CustomersTelemetryResource(_requester);
  CustomersThirdPartyProfileUsersResource get thirdPartyProfileUsers =>
      CustomersThirdPartyProfileUsersResource(_requester);

  CustomersResource(commons.ApiRequester client) : _requester = client;
}

class CustomersAppsResource {
  final commons.ApiRequester _requester;

  CustomersAppsAndroidResource get android =>
      CustomersAppsAndroidResource(_requester);
  CustomersAppsChromeResource get chrome =>
      CustomersAppsChromeResource(_requester);
  CustomersAppsWebResource get web => CustomersAppsWebResource(_requester);

  CustomersAppsResource(commons.ApiRequester client) : _requester = client;

  /// Generate summary of app installation requests.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [orderBy] - Field used to order results. Supported fields: * request_count
  /// * latest_request_time
  ///
  /// [orgUnitId] - The ID of the organizational unit.
  ///
  /// [pageSize] - Maximum number of results to return. Maximum and default are
  /// 50, anything above will be coerced to 50.
  ///
  /// [pageToken] - Token to specify the page of the request to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1CountChromeAppRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountChromeAppRequestsResponse>
  countChromeAppRequests(
    core.String customer, {
    core.String? orderBy,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/apps:countChromeAppRequests';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeAppRequestsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a list of devices that have requested to install an extension.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer ID or "my_customer" prefixed with
  /// "customers/".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [extensionId] - Required. The extension for which we want to find
  /// requesting devices.
  ///
  /// [orgUnitId] - The ID of the organizational unit. Only consider devices
  /// that directly belong to this org unit, i.e. sub-orgunits are not counted.
  /// If omitted, all data will be returned.
  ///
  /// [pageSize] - Optional. Maximum number of results to return. Maximum and
  /// default are 50. Any page size larger than 50 will be coerced to 50.
  ///
  /// [pageToken] - Optional. Token to specify the page of the request to be
  /// returned. Token expires after 1 day.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse>
  fetchDevicesRequestingExtension(
    core.String customer, {
    core.String? extensionId,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extensionId != null) 'extensionId': [extensionId],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/apps:fetchDevicesRequestingExtension';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a list of users that have requested to install an extension.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer ID or "my_customer" prefixed with
  /// "customers/".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [extensionId] - Required. The extension for which we want to find the
  /// requesting users.
  ///
  /// [orgUnitId] - The ID of the organizational unit. Only consider devices
  /// that directly belong to this org unit, i.e. sub-orgunits are not counted.
  /// If omitted, all data will be returned.
  ///
  /// [pageSize] - Optional. Maximum number of results to return. Maximum and
  /// default are 50. Any page size larger than 50 will be coerced to 50.
  ///
  /// [pageToken] - Optional. Token to specify the page of the request to be
  /// returned. Token expires after 1 day.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1FetchUsersRequestingExtensionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1FetchUsersRequestingExtensionResponse>
  fetchUsersRequestingExtension(
    core.String customer, {
    core.String? extensionId,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extensionId != null) 'extensionId': [extensionId],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/apps:fetchUsersRequestingExtension';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1FetchUsersRequestingExtensionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersAppsAndroidResource {
  final commons.ApiRequester _requester;

  CustomersAppsAndroidResource(commons.ApiRequester client)
    : _requester = client;

  /// Get a specific app for a customer by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The app for which details are being queried. Examples:
  /// "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2"
  /// for the Save to Google Drive Chrome extension version 2.1.2,
  /// "customers/my_customer/apps/android/com.google.android.apps.docs" for the
  /// Google Drive Android app's latest version.
  /// Value must have pattern `^customers/\[^/\]+/apps/android/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1AppDetails> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1AppDetails.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersAppsChromeResource {
  final commons.ApiRequester _requester;

  CustomersAppsChromeResource(commons.ApiRequester client)
    : _requester = client;

  /// Get a specific app for a customer by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The app for which details are being queried. Examples:
  /// "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2"
  /// for the Save to Google Drive Chrome extension version 2.1.2,
  /// "customers/my_customer/apps/android/com.google.android.apps.docs" for the
  /// Google Drive Android app's latest version.
  /// Value must have pattern `^customers/\[^/\]+/apps/chrome/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1AppDetails> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1AppDetails.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersAppsWebResource {
  final commons.ApiRequester _requester;

  CustomersAppsWebResource(commons.ApiRequester client) : _requester = client;

  /// Get a specific app for a customer by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The app for which details are being queried. Examples:
  /// "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2"
  /// for the Save to Google Drive Chrome extension version 2.1.2,
  /// "customers/my_customer/apps/android/com.google.android.apps.docs" for the
  /// Google Drive Android app's latest version.
  /// Value must have pattern `^customers/\[^/\]+/apps/web/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1AppDetails> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1AppDetails.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersCertificateProvisioningProcessesResource {
  final commons.ApiRequester _requester;

  CustomersCertificateProvisioningProcessesOperationsResource get operations =>
      CustomersCertificateProvisioningProcessesOperationsResource(_requester);

  CustomersCertificateProvisioningProcessesResource(commons.ApiRequester client)
    : _requester = client;

  /// Claims a certificate provisioning process.
  ///
  /// For each certificate provisioning process, this operation can succeed only
  /// for one `caller_instance_id`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the `CertificateProvisioningProcess`
  /// to claim. The name pattern is given as
  /// `customers/{customer}/certificateProvisioningProcesses/{certificate_provisioning_process}`
  /// with `{customer}` being the obfuscated customer id and
  /// `{certificate_provisioning_process}` being the certificate provisioning
  /// process id.
  /// Value must have pattern
  /// `^customers/\[^/\]+/certificateProvisioningProcesses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse
  >
  claim(
    GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest
    request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':claim';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves a certificate provisioning process.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the `CertificateProvisioningProcess`
  /// to return. The name pattern is given as
  /// `customers/{customer}/certificateProvisioningProcesses/{certificate_provisioning_process}`
  /// with `{customer}` being the obfuscated customer id and
  /// `{certificate_provisioning_process}` being the certificate provisioning
  /// process id.
  /// Value must have pattern
  /// `^customers/\[^/\]+/certificateProvisioningProcesses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementVersionsV1CertificateProvisioningProcess].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementVersionsV1CertificateProvisioningProcess>
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementVersionsV1CertificateProvisioningProcess.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Marks a certificate provisioning process as failed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the `CertificateProvisioningProcess`
  /// to return. The name pattern is given as
  /// `customers/{customer}/certificateProvisioningProcesses/{certificate_provisioning_process}`
  /// with `{customer}` being the obfuscated customer id and
  /// `{certificate_provisioning_process}` being the certificate provisioning
  /// process id.
  /// Value must have pattern
  /// `^customers/\[^/\]+/certificateProvisioningProcesses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementVersionsV1SetFailureResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementVersionsV1SetFailureResponse> setFailure(
    GoogleChromeManagementVersionsV1SetFailureRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setFailure';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromeManagementVersionsV1SetFailureResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Requests the client that initiated a certificate provisioning process to
  /// sign data.
  ///
  /// This should only be called after `ClaimCertificateProvisioningProcess` has
  /// been successfully executed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the `CertificateProvisioningProcess`
  /// to return. The name pattern is given as
  /// `customers/{customer}/certificateProvisioningProcesses/{certificate_provisioning_process}`
  /// with `{customer}` being the obfuscated customer id and
  /// `{certificate_provisioning_process}` being the certificate provisioning
  /// process id.
  /// Value must have pattern
  /// `^customers/\[^/\]+/certificateProvisioningProcesses/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> signData(
    GoogleChromeManagementVersionsV1SignDataRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':signData';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Uploads a successfully issued certificate for a certificate provisioning
  /// process.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the `CertificateProvisioningProcess`
  /// to return. The name pattern is given as
  /// `customers/{customer}/certificateProvisioningProcesses/{certificate_provisioning_process}`
  /// with `{customer}` being the obfuscated customer id and
  /// `{certificate_provisioning_process}` being the certificate provisioning
  /// process id.
  /// Value must have pattern
  /// `^customers/\[^/\]+/certificateProvisioningProcesses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementVersionsV1UploadCertificateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementVersionsV1UploadCertificateResponse>
  uploadCertificate(
    GoogleChromeManagementVersionsV1UploadCertificateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':uploadCertificate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromeManagementVersionsV1UploadCertificateResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersCertificateProvisioningProcessesOperationsResource {
  final commons.ApiRequester _requester;

  CustomersCertificateProvisioningProcessesOperationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^customers/\[^/\]+/certificateProvisioningProcesses/\[^/\]+/operations/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
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
}

class CustomersProfilesResource {
  final commons.ApiRequester _requester;

  CustomersProfilesCommandsResource get commands =>
      CustomersProfilesCommandsResource(_requester);

  CustomersProfilesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the data collected from a Chrome browser profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// customers/{customer_id}/profiles/{profile_permanent_id}
  /// Value must have pattern `^customers/\[^/\]+/profiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Chrome browser profile with customer ID and profile permanent ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// customers/{customer_id}/profiles/{profile_permanent_id}
  /// Value must have pattern `^customers/\[^/\]+/profiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementVersionsV1ChromeBrowserProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementVersionsV1ChromeBrowserProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementVersionsV1ChromeBrowserProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Chrome browser profiles of a customer based on the given search and
  /// sorting criteria.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: customers/{customer_id}
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter used to filter profiles. The following
  /// fields can be used in the filter: - profile_id - display_name - user_email
  /// - last_activity_time - last_policy_sync_time - last_status_report_time -
  /// first_enrollment_time - os_platform_type - os_version - browser_version -
  /// browser_channel - policy_count - extension_count - identity_provider -
  /// affiliation_state - os_platform_version - ouId Any of the above fields can
  /// be used to specify a filter, and filtering by multiple fields is supported
  /// with AND operator. String type fields and enum type fields support '=' and
  /// '!=' operators. The integer type and the timestamp type fields support
  /// '=', '!=', '\<', '\>', '\<=' and '\>=' operators. Timestamps expect an
  /// RFC-3339 formatted string (e.g. 2012-04-21T11:30:00-04:00). Wildcard '*'
  /// can be used with a string type field filter. In addition, string literal
  /// filtering is also supported, for example, 'ABC' as a filter maps to a
  /// filter that checks if any of the filterable string type fields contains
  /// 'ABC'. Organization unit number can be used as a filtering criteria here
  /// by specifying 'ouId = ${your_org_unit_id}', please note that only single
  /// OU ID matching is supported.
  ///
  /// [orderBy] - Optional. The fields used to specify the ordering of the
  /// results. The supported fields are: - profile_id - display_name -
  /// user_email - last_activity_time - last_policy_sync_time -
  /// last_status_report_time - first_enrollment_time - os_platform_type -
  /// os_version - browser_version - browser_channel - policy_count -
  /// extension_count - identity_provider - affiliation_state -
  /// os_platform_version By default, sorting is in ascending order, to specify
  /// descending order for a field, a suffix " desc" should be added to the
  /// field name. The default ordering is the descending order of
  /// last_status_report_time.
  ///
  /// [pageSize] - Optional. The maximum number of profiles to return. The
  /// default page size is 100 if page_size is unspecified, and the maximum page
  /// size allowed is 200.
  ///
  /// [pageToken] - Optional. The page token used to retrieve a specific page of
  /// the listing request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse
  >
  list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/profiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersProfilesCommandsResource {
  final commons.ApiRequester _requester;

  CustomersProfilesCommandsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Chrome browser profile remote command.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// customers/{customer_id}/profiles/{profile_permanent_id}
  /// Value must have pattern `^customers/\[^/\]+/profiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand>
  create(
    GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/commands';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Chrome browser profile remote command.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// customers/{customer_id}/profiles/{profile_permanent_id}/commands/{command_id}
  /// Value must have pattern
  /// `^customers/\[^/\]+/profiles/\[^/\]+/commands/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists remote commands of a Chrome browser profile.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// customers/{customer_id}/profiles/{profile_permanent_id}
  /// Value must have pattern `^customers/\[^/\]+/profiles/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of commands to return. The
  /// default page size is 100 if page_size is unspecified, and the maximum page
  /// size allowed is 100.
  ///
  /// [pageToken] - Optional. The page token used to retrieve a specific page of
  /// the listing request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse
  >
  list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/commands';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersReportsResource {
  final commons.ApiRequester _requester;

  CustomersReportsResource(commons.ApiRequester client) : _requester = client;

  /// Get a count of active devices per set time frames.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Obfuscated customer ID prefixed with "customers/C"
  /// or "customers/my_customer".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [date_day] - Day of a month. Must be from 1 to 31 and valid for the year
  /// and month, or 0 to specify a year by itself or a year and month where the
  /// day isn't significant.
  ///
  /// [date_month] - Month of a year. Must be from 1 to 12, or 0 to specify a
  /// year without a month and day.
  ///
  /// [date_year] - Year of the date. Must be from 1 to 9999, or 0 to specify a
  /// date without a year.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1CountActiveDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountActiveDevicesResponse>
  countActiveDevices(
    core.String customer, {
    core.int? date_day,
    core.int? date_month,
    core.int? date_year,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (date_day != null) 'date.day': ['${date_day}'],
      if (date_month != null) 'date.month': ['${date_month}'],
      if (date_year != null) 'date.year': ['${date_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countActiveDevices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountActiveDevicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Count of Chrome Browsers that have been recently enrolled, have new policy
  /// to be synced, or have no recent activity.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer ID or "my_customer" prefixed with
  /// "customers/".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [orgUnitId] - Optional. The ID of the organizational unit. If omitted, all
  /// data will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse
  >
  countChromeBrowsersNeedingAttention(
    core.String customer, {
    core.String? orgUnitId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countChromeBrowsersNeedingAttention';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a count of Chrome crash events.
  ///
  /// Request parameters:
  ///
  /// [customer] - Customer ID.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter results, AND-separated fields in EBNF
  /// syntax. Supported filter fields: * major_browser_version *
  /// minor_browser_version * browser_channel * device_platform *
  /// past_number_days Example: `major_browser_version = 'M115' AND
  /// past_number_days = '28'`.
  ///
  /// [orderBy] - Field used to order results. Supported order by fields: *
  /// browser_version * count * date
  ///
  /// [orgUnitId] - If specified, only count the number of crash events of the
  /// devices in this organizational unit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1CountChromeCrashEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountChromeCrashEventsResponse>
  countChromeCrashEvents(
    core.String customer, {
    core.String? filter,
    core.String? orderBy,
    core.String? orgUnitId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countChromeCrashEvents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeCrashEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Generate report of the number of devices expiring in each month of the
  /// selected time frame.
  ///
  /// Devices are grouped by auto update expiration date and model. Further
  /// information can be found
  /// [here](https://support.google.com/chrome/a/answer/10564947).
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer ID or "my_customer" prefixed with
  /// "customers/".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [maxAueDate] - Optional. Maximum expiration date in format yyyy-mm-dd in
  /// UTC timezone. If included returns all devices that have already expired
  /// and devices with auto expiration date equal to or earlier than the maximum
  /// date.
  ///
  /// [minAueDate] - Optional. Maximum expiration date in format yyyy-mm-dd in
  /// UTC timezone. If included returns all devices that have already expired
  /// and devices with auto expiration date equal to or later than the minimum
  /// date.
  ///
  /// [orgUnitId] - Optional. The organizational unit ID, if omitted, will
  /// return data for all organizational units.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
  >
  countChromeDevicesReachingAutoExpirationDate(
    core.String customer, {
    core.String? maxAueDate,
    core.String? minAueDate,
    core.String? orgUnitId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxAueDate != null) 'maxAueDate': [maxAueDate],
      if (minAueDate != null) 'minAueDate': [minAueDate],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countChromeDevicesReachingAutoExpirationDate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Counts of ChromeOS devices that have not synced policies or have lacked
  /// user activity in the past 28 days, are out of date, or are not complaint.
  ///
  /// Further information can be found here
  /// https://support.google.com/chrome/a/answer/10564947
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer ID or "my_customer" prefixed with
  /// "customers/".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [orgUnitId] - Optional. The ID of the organizational unit. If omitted, all
  /// data will be returned.
  ///
  /// [readMask] - Required. Mask of the fields that should be populated in the
  /// returned report.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse
  >
  countChromeDevicesThatNeedAttention(
    core.String customer, {
    core.String? orgUnitId,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countChromeDevicesThatNeedAttention';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Counts of devices with a specific hardware specification from the
  /// requested hardware type (for example model name, processor type).
  ///
  /// Further information can be found here
  /// https://support.google.com/chrome/a/answer/10564947
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer ID or "my_customer".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [orgUnitId] - Optional. The ID of the organizational unit. If omitted, all
  /// data will be returned.
  ///
  /// [readMask] - Required. Mask of the fields that should be populated in the
  /// returned report.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse>
  countChromeHardwareFleetDevices(
    core.String customer, {
    core.String? orgUnitId,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countChromeHardwareFleetDevices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Generate report of installed Chrome versions.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter results, AND-separated fields in EBNF
  /// syntax. Note: OR operations are not supported in this filter. Supported
  /// filter fields: * last_active_date
  ///
  /// [orgUnitId] - The ID of the organizational unit.
  ///
  /// [pageSize] - Maximum number of results to return. Maximum and default are
  /// 100.
  ///
  /// [pageToken] - Token to specify the page of the request to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1CountChromeVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountChromeVersionsResponse>
  countChromeVersions(
    core.String customer, {
    core.String? filter,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countChromeVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountChromeVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a count of devices per boot type.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Obfuscated customer ID prefixed with "customers/C"
  /// or "customers/my_customer".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [date_day] - Day of a month. Must be from 1 to 31 and valid for the year
  /// and month, or 0 to specify a year by itself or a year and month where the
  /// day isn't significant.
  ///
  /// [date_month] - Month of a year. Must be from 1 to 12, or 0 to specify a
  /// year without a month and day.
  ///
  /// [date_year] - Year of the date. Must be from 1 to 9999, or 0 to specify a
  /// date without a year.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1CountDevicesPerBootTypeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountDevicesPerBootTypeResponse>
  countDevicesPerBootType(
    core.String customer, {
    core.int? date_day,
    core.int? date_month,
    core.int? date_year,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (date_day != null) 'date.day': ['${date_day}'],
      if (date_month != null) 'date.month': ['${date_month}'],
      if (date_year != null) 'date.year': ['${date_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countDevicesPerBootType';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountDevicesPerBootTypeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a count of devices per channel.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Obfuscated customer ID prefixed with "customers/C"
  /// or "customers/my_customer".
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [date_day] - Day of a month. Must be from 1 to 31 and valid for the year
  /// and month, or 0 to specify a year by itself or a year and month where the
  /// day isn't significant.
  ///
  /// [date_month] - Month of a year. Must be from 1 to 12, or 0 to specify a
  /// year without a month and day.
  ///
  /// [date_year] - Year of the date. Must be from 1 to 9999, or 0 to specify a
  /// date without a year.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse>
  countDevicesPerReleaseChannel(
    core.String customer, {
    core.int? date_day,
    core.int? date_month,
    core.int? date_year,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (date_day != null) 'date.day': ['${date_day}'],
      if (date_month != null) 'date.month': ['${date_month}'],
      if (date_year != null) 'date.year': ['${date_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countDevicesPerReleaseChannel';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Generate report of app installations.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter results, AND-separated fields in EBNF
  /// syntax. Note: OR operations are not supported in this filter. Supported
  /// filter fields: * app_name * app_type * install_type *
  /// number_of_permissions * total_install_count * latest_profile_active_date *
  /// permission_name * app_id * manifest_versions * risk_score
  ///
  /// [orderBy] - Field used to order results. Supported order by fields: *
  /// app_name * app_type * install_type * number_of_permissions *
  /// total_install_count * app_id * manifest_versions * risk_score
  ///
  /// [orgUnitId] - The ID of the organizational unit.
  ///
  /// [pageSize] - Maximum number of results to return. Maximum and default are
  /// 100.
  ///
  /// [pageToken] - Token to specify the page of the request to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1CountInstalledAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountInstalledAppsResponse>
  countInstalledApps(
    core.String customer, {
    core.String? filter,
    core.String? orderBy,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countInstalledApps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountInstalledAppsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a summary of printing done by each printer.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer ID prefixed with "customers/" or
  /// "customers/my_customer" to use the customer associated to the account
  /// making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter results, AND-separated fields in EBNF
  /// syntax. Note: OR operations are not supported in this filter. Note: Only
  /// \>= and \<= comparators are supported in this filter. Supported filter
  /// fields: * complete_time
  ///
  /// [orderBy] - Field used to order results. If omitted, results will be
  /// ordered in ascending order of the 'printer' field. Supported order_by
  /// fields: * printer * job_count * device_count * user_count
  ///
  /// [pageSize] - Maximum number of results to return. Maximum and default are
  /// 100.
  ///
  /// [pageToken] - Token to specify the page of the response to be returned.
  ///
  /// [printerOrgUnitId] - The ID of the organizational unit for printers. If
  /// specified, only data for printers from the specified organizational unit
  /// will be returned. If omitted, data for printers from all organizational
  /// units will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1CountPrintJobsByPrinterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountPrintJobsByPrinterResponse>
  countPrintJobsByPrinter(
    core.String customer, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? printerOrgUnitId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (printerOrgUnitId != null) 'printerOrgUnitId': [printerOrgUnitId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countPrintJobsByPrinter';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountPrintJobsByPrinterResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a summary of printing done by each user.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer ID prefixed with "customers/" or
  /// "customers/my_customer" to use the customer associated to the account
  /// making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter results, AND-separated fields in EBNF
  /// syntax. Note: OR operations are not supported in this filter. Note: Only
  /// \>= and \<= comparators are supported in this filter. Supported filter
  /// fields: * complete_time
  ///
  /// [orderBy] - Field used to order results. If omitted, results will be
  /// ordered in ascending order of the 'user_email' field. Supported order_by
  /// fields: * user_email * job_count * printer_count * device_count
  ///
  /// [pageSize] - Maximum number of results to return. Maximum and default are
  /// 100.
  ///
  /// [pageToken] - Token to specify the page of the response to be returned.
  ///
  /// [printerOrgUnitId] - The ID of the organizational unit for printers. If
  /// specified, only print jobs initiated with printers from the specified
  /// organizational unit will be counted. If omitted, all print jobs will be
  /// counted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1CountPrintJobsByUserResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1CountPrintJobsByUserResponse>
  countPrintJobsByUser(
    core.String customer, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? printerOrgUnitId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (printerOrgUnitId != null) 'printerOrgUnitId': [printerOrgUnitId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:countPrintJobsByUser';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1CountPrintJobsByUserResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a list of print jobs.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer ID prefixed with "customers/" or
  /// "customers/my_customer" to use the customer associated to the account
  /// making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter results, AND-separated fields in EBNF
  /// syntax. Note: OR operations are not supported in this filter. Note: Only
  /// \>= and \<= comparators are supported for `complete_time`. Note: Only =
  /// comparator supported for `user_id` and `printer_id`. Supported filter
  /// fields: * complete_time * printer_id * user_id
  ///
  /// [orderBy] - Field used to order results. If not specified, results will be
  /// ordered in descending order of the `complete_time` field. Supported order
  /// by fields: * title * state * create_time * complete_time *
  /// document_page_count * color_mode * duplex_mode * printer * user_email
  ///
  /// [pageSize] - The number of print jobs in the page from 0 to 100 inclusive,
  /// if page_size is not specified or zero, the size will be 50.
  ///
  /// [pageToken] - A page token received from a previous `EnumeratePrintJobs`
  /// call. Provide this to retrieve the subsequent page. If omitted, the first
  /// page of results will be returned. When paginating, all other parameters
  /// provided to `EnumeratePrintJobs` must match the call that provided the
  /// page token.
  ///
  /// [printerOrgUnitId] - The ID of the organizational unit for printers. If
  /// specified, only print jobs submitted to printers from the specified
  /// organizational unit will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1EnumeratePrintJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1EnumeratePrintJobsResponse>
  enumeratePrintJobs(
    core.String customer, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? printerOrgUnitId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (printerOrgUnitId != null) 'printerOrgUnitId': [printerOrgUnitId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:enumeratePrintJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1EnumeratePrintJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Generate report of managed Chrome browser devices that have a specified
  /// app installed.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [appId] - Unique identifier of the app. For Chrome apps and extensions,
  /// the 32-character id (e.g. ehoadneljpdggcbbknedodolkkjodefl). For Android
  /// apps, the package name (e.g. com.evernote).
  ///
  /// [appType] - Type of the app. Optional. If not provided, an app type will
  /// be inferred from the format of the app ID.
  /// Possible string values are:
  /// - "APP_TYPE_UNSPECIFIED" : App type not specified.
  /// - "EXTENSION" : Chrome extension.
  /// - "APP" : Chrome app.
  /// - "THEME" : Chrome theme.
  /// - "HOSTED_APP" : Chrome hosted app.
  /// - "ANDROID_APP" : ARC++ app.
  ///
  /// [filter] - Query string to filter results, AND-separated fields in EBNF
  /// syntax. Note: OR operations are not supported in this filter. Supported
  /// filter fields: * last_active_date
  ///
  /// [orderBy] - Field used to order results. Supported order by fields: *
  /// machine * device_id
  ///
  /// [orgUnitId] - The ID of the organizational unit.
  ///
  /// [pageSize] - Maximum number of results to return. Maximum and default are
  /// 100.
  ///
  /// [pageToken] - Token to specify the page of the request to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1FindInstalledAppDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1FindInstalledAppDevicesResponse>
  findInstalledAppDevices(
    core.String customer, {
    core.String? appId,
    core.String? appType,
    core.String? filter,
    core.String? orderBy,
    core.String? orgUnitId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (appId != null) 'appId': [appId],
      if (appType != null) 'appType': [appType],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (orgUnitId != null) 'orgUnitId': [orgUnitId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$customer') +
        '/reports:findInstalledAppDevices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1FindInstalledAppDevicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersTelemetryResource {
  final commons.ApiRequester _requester;

  CustomersTelemetryDevicesResource get devices =>
      CustomersTelemetryDevicesResource(_requester);
  CustomersTelemetryEventsResource get events =>
      CustomersTelemetryEventsResource(_requester);
  CustomersTelemetryNotificationConfigsResource get notificationConfigs =>
      CustomersTelemetryNotificationConfigsResource(_requester);
  CustomersTelemetryUsersResource get users =>
      CustomersTelemetryUsersResource(_requester);

  CustomersTelemetryResource(commons.ApiRequester client) : _requester = client;
}

class CustomersTelemetryDevicesResource {
  final commons.ApiRequester _requester;

  CustomersTelemetryDevicesResource(commons.ApiRequester client)
    : _requester = client;

  /// Get telemetry device.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `TelemetryDevice` to return.
  /// Value must have pattern `^customers/\[^/\]+/telemetry/devices/\[^/\]+$`.
  ///
  /// [readMask] - Required. Read mask to specify which fields to return.
  /// Supported read_mask paths are: - name - org_unit_id - device_id -
  /// serial_number - cpu_info - cpu_status_report - memory_info -
  /// memory_status_report - network_info - network_diagnostics_report -
  /// network_status_report - os_update_status - graphics_info -
  /// graphics_status_report - battery_info - battery_status_report -
  /// storage_info - storage_status_report - thunderbolt_info -
  /// audio_status_report - boot_performance_report - heartbeat_status_report -
  /// network_bandwidth_report - peripherals_report - kiosk_app_status_report -
  /// app_report - runtime_counters_report
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1TelemetryDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1TelemetryDevice> get(
    core.String name, {
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1TelemetryDevice.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all telemetry devices.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter.
  /// Requests that don't specify a "reports_timestamp" value will default to
  /// returning only recent reports. Specify "reports_timestamp\>=0" to get all
  /// report data. Supported filter fields: - org_unit_id - serial_number -
  /// device_id - reports_timestamp The "reports_timestamp" filter accepts
  /// either the Unix Epoch milliseconds format or the RFC3339 UTC "Zulu" format
  /// with nanosecond resolution and up to nine fractional digits. Both formats
  /// should be surrounded by simple double quotes. Examples:
  /// "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z", "1679283943823".
  ///
  /// [pageSize] - Maximum number of results to return. Default value is 100.
  /// Maximum value is 1000.
  ///
  /// [pageToken] - Token to specify next page in the list.
  ///
  /// [readMask] - Required. Read mask to specify which fields to return.
  /// Supported read_mask paths are: - name - org_unit_id - device_id -
  /// serial_number - cpu_info - cpu_status_report - memory_info -
  /// memory_status_report - network_info - network_diagnostics_report -
  /// network_status_report - os_update_status - graphics_info -
  /// graphics_status_report - battery_info - battery_status_report -
  /// storage_info - storage_status_report - thunderbolt_info -
  /// audio_status_report - boot_performance_report - heartbeat_status_report -
  /// network_bandwidth_report - peripherals_report - kiosk_app_status_report -
  /// app_report - runtime_counters_report
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1ListTelemetryDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1ListTelemetryDevicesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/telemetry/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1ListTelemetryDevicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersTelemetryEventsResource {
  final commons.ApiRequester _requester;

  CustomersTelemetryEventsResource(commons.ApiRequester client)
    : _requester = client;

  /// List telemetry events.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter.
  /// Although this parameter is currently optional, this parameter will be
  /// required- please specify at least 1 event type. Supported filter fields: -
  /// device_id - user_id - device_org_unit_id - user_org_unit_id - timestamp -
  /// event_type The "timestamp" filter accepts either the Unix Epoch
  /// milliseconds format or the RFC3339 UTC "Zulu" format with nanosecond
  /// resolution and up to nine fractional digits. Both formats should be
  /// surrounded by simple double quotes. Examples: "2014-10-02T15:01:23Z",
  /// "2014-10-02T15:01:23.045123456Z", "1679283943823".
  ///
  /// [pageSize] - Optional. Maximum number of results to return. Default value
  /// is 100. Maximum value is 1000.
  ///
  /// [pageToken] - Optional. Token to specify next page in the list.
  ///
  /// [readMask] - Required. Read mask to specify which fields to return.
  /// Although currently required, this field will become optional, while the
  /// filter parameter with an event type will be come required. Supported
  /// read_mask paths are: - device - user - audio_severe_underrun_event -
  /// usb_peripherals_event - https_latency_change_event -
  /// network_state_change_event - wifi_signal_strength_event -
  /// vpn_connection_state_change_event - app_install_event -
  /// app_uninstall_event - app_launch_event - os_crash_event -
  /// external_displays_event
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1ListTelemetryEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1ListTelemetryEventsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/telemetry/events';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1ListTelemetryEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersTelemetryNotificationConfigsResource {
  final commons.ApiRequester _requester;

  CustomersTelemetryNotificationConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a telemetry notification config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this notification config
  /// will be created. Format: `customers/{customer}`
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1TelemetryNotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1TelemetryNotificationConfig> create(
    GoogleChromeManagementV1TelemetryNotificationConfig request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/telemetry/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1TelemetryNotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a telemetry notification config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the notification config to delete. Format:
  /// `customers/{customer}/telemetry/notificationConfigs/{notification_config}`
  /// Value must have pattern
  /// `^customers/\[^/\]+/telemetry/notificationConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all telemetry notification configs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns the notification configs.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of notification configs to return. The
  /// service may return fewer than this value. If unspecified, at most 100
  /// notification configs will be returned. The maximum value is 100; values
  /// above 100 will be coerced to 100.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListTelemetryNotificationConfigs` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListTelemetryNotificationConfigs` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse>
  list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/telemetry/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersTelemetryUsersResource {
  final commons.ApiRequester _requester;

  CustomersTelemetryUsersResource(commons.ApiRequester client)
    : _requester = client;

  /// Get telemetry user.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `TelemetryUser` to return.
  /// Value must have pattern `^customers/\[^/\]+/telemetry/users/\[^/\]+$`.
  ///
  /// [readMask] - Read mask to specify which fields to return. Supported
  /// read_mask paths are: - name - org_unit_id - user_id - user_email -
  /// user_device.device_id - user_device.audio_status_report -
  /// user_device.device_activity_report - user_device.network_bandwidth_report
  /// - user_device.peripherals_report - user_device.app_report
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1TelemetryUser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1TelemetryUser> get(
    core.String name, {
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1TelemetryUser.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all telemetry users.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Customer id or "my_customer" to use the customer
  /// associated to the account making the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - Only include resources that match the filter. Supported filter
  /// fields: - user_id - user_org_unit_id
  ///
  /// [pageSize] - Maximum number of results to return. Default value is 100.
  /// Maximum value is 1000.
  ///
  /// [pageToken] - Token to specify next page in the list.
  ///
  /// [readMask] - Read mask to specify which fields to return. Supported
  /// read_mask paths are: - name - org_unit_id - user_id - user_email -
  /// user_device.device_id - user_device.audio_status_report -
  /// user_device.device_activity_report - user_device.network_bandwidth_report
  /// - user_device.peripherals_report - user_device.app_report
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromeManagementV1ListTelemetryUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromeManagementV1ListTelemetryUsersResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/telemetry/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromeManagementV1ListTelemetryUsersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomersThirdPartyProfileUsersResource {
  final commons.ApiRequester _requester;

  CustomersThirdPartyProfileUsersResource(commons.ApiRequester client)
    : _requester = client;

  /// Moves a third party chrome profile user to a destination OU.
  ///
  /// All profiles associated to that user will be moved to the destination OU.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// customers/{customer_id}/thirdPartyProfileUsers/{third_party_profile_user_id}
  /// Value must have pattern
  /// `^customers/\[^/\]+/thirdPartyProfileUsers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse
  >
  move(
    GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

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
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
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
  /// Value must have pattern `^operations$`.
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
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

/// Android app information.
class GoogleChromeManagementV1AndroidAppInfo {
  /// Permissions requested by an Android app.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1AndroidAppPermission>? permissions;

  GoogleChromeManagementV1AndroidAppInfo({this.permissions});

  GoogleChromeManagementV1AndroidAppInfo.fromJson(core.Map json_)
    : this(
        permissions:
            (json_['permissions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1AndroidAppPermission.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (permissions != null) 'permissions': permissions!,
  };
}

/// Permission requested by an Android app.
class GoogleChromeManagementV1AndroidAppPermission {
  /// The type of the permission.
  ///
  /// Output only.
  core.String? type;

  GoogleChromeManagementV1AndroidAppPermission({this.type});

  GoogleChromeManagementV1AndroidAppPermission.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
  };
}

/// Resource representing app details.
class GoogleChromeManagementV1AppDetails {
  /// Android app information.
  ///
  /// Output only.
  GoogleChromeManagementV1AndroidAppInfo? androidAppInfo;

  /// Unique store identifier for the item.
  ///
  /// Examples: "gmbmikajjgmnabiglmofipeabaddhgne" for the Save to Google Drive
  /// Chrome extension, "com.google.android.apps.docs" for the Google Drive
  /// Android app.
  ///
  /// Output only.
  core.String? appId;

  /// Chrome Web Store app information.
  ///
  /// Output only.
  GoogleChromeManagementV1ChromeAppInfo? chromeAppInfo;

  /// App's description.
  ///
  /// Output only.
  core.String? description;

  /// The uri for the detail page of the item.
  ///
  /// Output only.
  core.String? detailUri;

  /// App's display name.
  ///
  /// Output only.
  core.String? displayName;

  /// First published time.
  ///
  /// Output only.
  core.String? firstPublishTime;

  /// Home page or Website uri.
  ///
  /// Output only.
  core.String? homepageUri;

  /// A link to an image that can be used as an icon for the product.
  ///
  /// Output only.
  core.String? iconUri;

  /// Indicates if the app has to be paid for OR has paid content.
  ///
  /// Output only.
  core.bool? isPaidApp;

  /// Latest published time.
  ///
  /// Output only.
  core.String? latestPublishTime;

  /// Format:
  /// name=customers/{customer_id}/apps/{chrome|android|web}/{app_id}@{version}
  ///
  /// Output only.
  core.String? name;

  /// The URI pointing to the privacy policy of the app, if it was provided by
  /// the developer.
  ///
  /// Version-specific field that will only be set when the requested app
  /// version is found.
  ///
  /// Output only.
  core.String? privacyPolicyUri;

  /// The publisher of the item.
  ///
  /// Output only.
  core.String? publisher;

  /// Number of reviews received.
  ///
  /// Chrome Web Store review information will always be for the latest version
  /// of an app.
  ///
  /// Output only.
  core.String? reviewNumber;

  /// The rating of the app (on 5 stars).
  ///
  /// Chrome Web Store review information will always be for the latest version
  /// of an app.
  ///
  /// Output only.
  core.double? reviewRating;

  /// App version.
  ///
  /// A new revision is committed whenever a new version of the app is
  /// published.
  ///
  /// Output only.
  core.String? revisionId;

  /// Information about a partial service error if applicable.
  ///
  /// Output only.
  GoogleRpcStatus? serviceError;

  /// App type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APP_ITEM_TYPE_UNSPECIFIED" : App type unspecified.
  /// - "CHROME" : Chrome app.
  /// - "ANDROID" : ARC++ app.
  /// - "WEB" : Web app.
  core.String? type;

  GoogleChromeManagementV1AppDetails({
    this.androidAppInfo,
    this.appId,
    this.chromeAppInfo,
    this.description,
    this.detailUri,
    this.displayName,
    this.firstPublishTime,
    this.homepageUri,
    this.iconUri,
    this.isPaidApp,
    this.latestPublishTime,
    this.name,
    this.privacyPolicyUri,
    this.publisher,
    this.reviewNumber,
    this.reviewRating,
    this.revisionId,
    this.serviceError,
    this.type,
  });

  GoogleChromeManagementV1AppDetails.fromJson(core.Map json_)
    : this(
        androidAppInfo:
            json_.containsKey('androidAppInfo')
                ? GoogleChromeManagementV1AndroidAppInfo.fromJson(
                  json_['androidAppInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        appId: json_['appId'] as core.String?,
        chromeAppInfo:
            json_.containsKey('chromeAppInfo')
                ? GoogleChromeManagementV1ChromeAppInfo.fromJson(
                  json_['chromeAppInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        detailUri: json_['detailUri'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        firstPublishTime: json_['firstPublishTime'] as core.String?,
        homepageUri: json_['homepageUri'] as core.String?,
        iconUri: json_['iconUri'] as core.String?,
        isPaidApp: json_['isPaidApp'] as core.bool?,
        latestPublishTime: json_['latestPublishTime'] as core.String?,
        name: json_['name'] as core.String?,
        privacyPolicyUri: json_['privacyPolicyUri'] as core.String?,
        publisher: json_['publisher'] as core.String?,
        reviewNumber: json_['reviewNumber'] as core.String?,
        reviewRating: (json_['reviewRating'] as core.num?)?.toDouble(),
        revisionId: json_['revisionId'] as core.String?,
        serviceError:
            json_.containsKey('serviceError')
                ? GoogleRpcStatus.fromJson(
                  json_['serviceError'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (androidAppInfo != null) 'androidAppInfo': androidAppInfo!,
    if (appId != null) 'appId': appId!,
    if (chromeAppInfo != null) 'chromeAppInfo': chromeAppInfo!,
    if (description != null) 'description': description!,
    if (detailUri != null) 'detailUri': detailUri!,
    if (displayName != null) 'displayName': displayName!,
    if (firstPublishTime != null) 'firstPublishTime': firstPublishTime!,
    if (homepageUri != null) 'homepageUri': homepageUri!,
    if (iconUri != null) 'iconUri': iconUri!,
    if (isPaidApp != null) 'isPaidApp': isPaidApp!,
    if (latestPublishTime != null) 'latestPublishTime': latestPublishTime!,
    if (name != null) 'name': name!,
    if (privacyPolicyUri != null) 'privacyPolicyUri': privacyPolicyUri!,
    if (publisher != null) 'publisher': publisher!,
    if (reviewNumber != null) 'reviewNumber': reviewNumber!,
    if (reviewRating != null) 'reviewRating': reviewRating!,
    if (revisionId != null) 'revisionId': revisionId!,
    if (serviceError != null) 'serviceError': serviceError!,
    if (type != null) 'type': type!,
  };
}

/// App report.
class GoogleChromeManagementV1AppReport {
  /// Timestamp when the report was collected.
  core.String? reportTime;

  /// App usage data.
  core.List<GoogleChromeManagementV1AppUsageData>? usageData;

  GoogleChromeManagementV1AppReport({this.reportTime, this.usageData});

  GoogleChromeManagementV1AppReport.fromJson(core.Map json_)
    : this(
        reportTime: json_['reportTime'] as core.String?,
        usageData:
            (json_['usageData'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1AppUsageData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reportTime != null) 'reportTime': reportTime!,
    if (usageData != null) 'usageData': usageData!,
  };
}

/// App usage data.
class GoogleChromeManagementV1AppUsageData {
  /// App id.
  core.String? appId;

  /// Application instance id.
  ///
  /// This will be unique per window/instance.
  core.String? appInstanceId;

  /// Type of app.
  /// Possible string values are:
  /// - "TELEMETRY_APPLICATION_TYPE_UNSPECIFIED" : Application type unknown.
  /// - "APPLICATION_TYPE_ARC" : Application type arc (Android app).
  /// - "APPLICATION_TYPE_BUILT_IN" : Deprecated. This value is no longer used.
  /// Application type built-in.
  /// - "APPLICATION_TYPE_CROSTINI" : Application type Linux (via Crostini).
  /// - "APPLICATION_TYPE_CHROME_APP" : Application type Chrome app.
  /// - "APPLICATION_TYPE_WEB" : Application type web.
  /// - "APPLICATION_TYPE_MAC_OS" : Application type Mac OS.
  /// - "APPLICATION_TYPE_PLUGIN_VM" : Application type Plugin VM.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER" : Deprecated. This value is no
  /// longer used. Application type standalone browser (Lacros browser app).
  /// - "APPLICATION_TYPE_REMOTE" : Application type remote.
  /// - "APPLICATION_TYPE_BOREALIS" : Application type borealis.
  /// - "APPLICATION_TYPE_SYSTEM_WEB" : Application type system web.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER_CHROME_APP" : Deprecated. This
  /// value is no longer used. Application type standalone browser chrome app.
  /// - "APPLICATION_TYPE_EXTENSION" : Application type extension.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER_EXTENSION" : Deprecated. This value
  /// is no longer used. Application type standalone browser extension.
  /// - "APPLICATION_TYPE_BRUSCHETTA" : Application type bruschetta.
  core.String? appType;

  /// App foreground running time.
  core.String? runningDuration;

  GoogleChromeManagementV1AppUsageData({
    this.appId,
    this.appInstanceId,
    this.appType,
    this.runningDuration,
  });

  GoogleChromeManagementV1AppUsageData.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        appInstanceId: json_['appInstanceId'] as core.String?,
        appType: json_['appType'] as core.String?,
        runningDuration: json_['runningDuration'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appId != null) 'appId': appId!,
    if (appInstanceId != null) 'appInstanceId': appInstanceId!,
    if (appType != null) 'appType': appType!,
    if (runningDuration != null) 'runningDuration': runningDuration!,
  };
}

/// Status data for storage.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportDeviceAudioStatus](https://chromeenterprise.google/policies/#ReportDeviceAudioStatus)
/// * Data Collection Frequency: 10 minutes * Default Data Reporting Frequency:
/// 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the
/// collected data is stored locally, and will be reported when the device is
/// next online: No * Reported for affiliated users only: N/A * Granular
/// permission needed: TELEMETRY_API_AUDIO_REPORT
class GoogleChromeManagementV1AudioStatusReport {
  /// Active input device's name.
  ///
  /// Output only.
  core.String? inputDevice;

  /// Active input device's gain in \[0, 100\].
  ///
  /// Output only.
  core.int? inputGain;

  /// Is active input device mute or not.
  ///
  /// Output only.
  core.bool? inputMute;

  /// Active output device's name.
  ///
  /// Output only.
  core.String? outputDevice;

  /// Is active output device mute or not.
  ///
  /// Output only.
  core.bool? outputMute;

  /// Active output device's volume in \[0, 100\].
  ///
  /// Output only.
  core.int? outputVolume;

  /// Timestamp of when the sample was collected on device.
  ///
  /// Output only.
  core.String? reportTime;

  GoogleChromeManagementV1AudioStatusReport({
    this.inputDevice,
    this.inputGain,
    this.inputMute,
    this.outputDevice,
    this.outputMute,
    this.outputVolume,
    this.reportTime,
  });

  GoogleChromeManagementV1AudioStatusReport.fromJson(core.Map json_)
    : this(
        inputDevice: json_['inputDevice'] as core.String?,
        inputGain: json_['inputGain'] as core.int?,
        inputMute: json_['inputMute'] as core.bool?,
        outputDevice: json_['outputDevice'] as core.String?,
        outputMute: json_['outputMute'] as core.bool?,
        outputVolume: json_['outputVolume'] as core.int?,
        reportTime: json_['reportTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inputDevice != null) 'inputDevice': inputDevice!,
    if (inputGain != null) 'inputGain': inputGain!,
    if (inputMute != null) 'inputMute': inputMute!,
    if (outputDevice != null) 'outputDevice': outputDevice!,
    if (outputMute != null) 'outputMute': outputMute!,
    if (outputVolume != null) 'outputVolume': outputVolume!,
    if (reportTime != null) 'reportTime': reportTime!,
  };
}

/// Information about the battery.
///
/// * This field provides device information, which is static and will not
/// change over time. * Data for this field is controlled via policy:
/// [ReportDevicePowerStatus](https://chromeenterprise.google/policies/#ReportDevicePowerStatus)
/// * Data Collection Frequency: Only at Upload * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_BATTERY_INFO
class GoogleChromeManagementV1BatteryInfo {
  /// Design capacity (mAmpere-hours).
  ///
  /// Output only.
  core.String? designCapacity;

  /// Designed minimum output voltage (mV)
  ///
  /// Output only.
  core.int? designMinVoltage;

  /// The date the battery was manufactured.
  ///
  /// Output only.
  GoogleTypeDate? manufactureDate;

  /// Battery manufacturer.
  ///
  /// Output only.
  core.String? manufacturer;

  /// Battery serial number.
  ///
  /// Output only.
  core.String? serialNumber;

  /// Technology of the battery.
  ///
  /// Example: Li-ion
  ///
  /// Output only.
  core.String? technology;

  GoogleChromeManagementV1BatteryInfo({
    this.designCapacity,
    this.designMinVoltage,
    this.manufactureDate,
    this.manufacturer,
    this.serialNumber,
    this.technology,
  });

  GoogleChromeManagementV1BatteryInfo.fromJson(core.Map json_)
    : this(
        designCapacity: json_['designCapacity'] as core.String?,
        designMinVoltage: json_['designMinVoltage'] as core.int?,
        manufactureDate:
            json_.containsKey('manufactureDate')
                ? GoogleTypeDate.fromJson(
                  json_['manufactureDate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        manufacturer: json_['manufacturer'] as core.String?,
        serialNumber: json_['serialNumber'] as core.String?,
        technology: json_['technology'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (designCapacity != null) 'designCapacity': designCapacity!,
    if (designMinVoltage != null) 'designMinVoltage': designMinVoltage!,
    if (manufactureDate != null) 'manufactureDate': manufactureDate!,
    if (manufacturer != null) 'manufacturer': manufacturer!,
    if (serialNumber != null) 'serialNumber': serialNumber!,
    if (technology != null) 'technology': technology!,
  };
}

/// Sampling data for battery.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportDevicePowerStatus](https://chromeenterprise.google/policies/#ReportDevicePowerStatus)
/// * Data Collection Frequency: Only at Upload * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A
class GoogleChromeManagementV1BatterySampleReport {
  /// Battery charge percentage.
  ///
  /// Output only.
  core.int? chargeRate;

  /// Battery current (mA).
  ///
  /// Output only.
  core.String? current;

  /// The battery discharge rate measured in mW.
  ///
  /// Positive if the battery is being discharged, negative if it's being
  /// charged.
  ///
  /// Output only.
  core.int? dischargeRate;

  /// Battery remaining capacity (mAmpere-hours).
  ///
  /// Output only.
  core.String? remainingCapacity;

  /// Timestamp of when the sample was collected on device
  ///
  /// Output only.
  core.String? reportTime;

  /// Battery status read from sysfs.
  ///
  /// Example: Discharging
  ///
  /// Output only.
  core.String? status;

  /// Temperature in Celsius degrees.
  ///
  /// Output only.
  core.int? temperature;

  /// Battery voltage (millivolt).
  ///
  /// Output only.
  core.String? voltage;

  GoogleChromeManagementV1BatterySampleReport({
    this.chargeRate,
    this.current,
    this.dischargeRate,
    this.remainingCapacity,
    this.reportTime,
    this.status,
    this.temperature,
    this.voltage,
  });

  GoogleChromeManagementV1BatterySampleReport.fromJson(core.Map json_)
    : this(
        chargeRate: json_['chargeRate'] as core.int?,
        current: json_['current'] as core.String?,
        dischargeRate: json_['dischargeRate'] as core.int?,
        remainingCapacity: json_['remainingCapacity'] as core.String?,
        reportTime: json_['reportTime'] as core.String?,
        status: json_['status'] as core.String?,
        temperature: json_['temperature'] as core.int?,
        voltage: json_['voltage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chargeRate != null) 'chargeRate': chargeRate!,
    if (current != null) 'current': current!,
    if (dischargeRate != null) 'dischargeRate': dischargeRate!,
    if (remainingCapacity != null) 'remainingCapacity': remainingCapacity!,
    if (reportTime != null) 'reportTime': reportTime!,
    if (status != null) 'status': status!,
    if (temperature != null) 'temperature': temperature!,
    if (voltage != null) 'voltage': voltage!,
  };
}

/// Status data for battery.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportDevicePowerStatus](https://chromeenterprise.google/policies/#ReportDevicePowerStatus)
/// * Data Collection Frequency: Only at Upload * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_BATTERY_REPORT
class GoogleChromeManagementV1BatteryStatusReport {
  /// Battery health.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BATTERY_HEALTH_UNSPECIFIED" : Health unknown.
  /// - "BATTERY_HEALTH_NORMAL" : Battery is healthy, full charge capacity /
  /// design capacity \> 80%
  /// - "BATTERY_REPLACE_SOON" : Battery is moderately unhealthy and suggested
  /// to be replaced soon, full charge capacity / design capacity 75% - 80%
  /// - "BATTERY_REPLACE_NOW" : Battery is unhealthy and suggested to be
  /// replaced, full charge capacity / design capacity \< 75%
  core.String? batteryHealth;

  /// Cycle count.
  ///
  /// Output only.
  core.int? cycleCount;

  /// Full charge capacity (mAmpere-hours).
  ///
  /// Output only.
  core.String? fullChargeCapacity;

  /// Timestamp of when the sample was collected on device
  ///
  /// Output only.
  core.String? reportTime;

  /// Sampling data for the battery sorted in a decreasing order of report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1BatterySampleReport>? sample;

  /// Battery serial number.
  ///
  /// Output only.
  core.String? serialNumber;

  GoogleChromeManagementV1BatteryStatusReport({
    this.batteryHealth,
    this.cycleCount,
    this.fullChargeCapacity,
    this.reportTime,
    this.sample,
    this.serialNumber,
  });

  GoogleChromeManagementV1BatteryStatusReport.fromJson(core.Map json_)
    : this(
        batteryHealth: json_['batteryHealth'] as core.String?,
        cycleCount: json_['cycleCount'] as core.int?,
        fullChargeCapacity: json_['fullChargeCapacity'] as core.String?,
        reportTime: json_['reportTime'] as core.String?,
        sample:
            (json_['sample'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1BatterySampleReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        serialNumber: json_['serialNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batteryHealth != null) 'batteryHealth': batteryHealth!,
    if (cycleCount != null) 'cycleCount': cycleCount!,
    if (fullChargeCapacity != null) 'fullChargeCapacity': fullChargeCapacity!,
    if (reportTime != null) 'reportTime': reportTime!,
    if (sample != null) 'sample': sample!,
    if (serialNumber != null) 'serialNumber': serialNumber!,
  };
}

/// Boot performance report of a device.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportDeviceBootMode](https://chromeenterprise.google/policies/#ReportDeviceBootMode)
/// * Data Collection Frequency: On every boot up event * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: Yes * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_OS_REPORT
class GoogleChromeManagementV1BootPerformanceReport {
  /// Total time to boot up.
  core.String? bootUpDuration;

  /// The timestamp when power came on.
  core.String? bootUpTime;

  /// Timestamp when the report was collected.
  core.String? reportTime;

  /// Total time since shutdown start to power off.
  core.String? shutdownDuration;

  /// The shutdown reason.
  /// Possible string values are:
  /// - "SHUTDOWN_REASON_UNSPECIFIED" : Shutdown reason is not specified.
  /// - "USER_REQUEST" : User initiated.
  /// - "SYSTEM_UPDATE" : System update initiated.
  /// - "LOW_BATTERY" : Shutdown due to low battery.
  /// - "OTHER" : Shutdown due to other reasons.
  core.String? shutdownReason;

  /// The timestamp when shutdown.
  core.String? shutdownTime;

  GoogleChromeManagementV1BootPerformanceReport({
    this.bootUpDuration,
    this.bootUpTime,
    this.reportTime,
    this.shutdownDuration,
    this.shutdownReason,
    this.shutdownTime,
  });

  GoogleChromeManagementV1BootPerformanceReport.fromJson(core.Map json_)
    : this(
        bootUpDuration: json_['bootUpDuration'] as core.String?,
        bootUpTime: json_['bootUpTime'] as core.String?,
        reportTime: json_['reportTime'] as core.String?,
        shutdownDuration: json_['shutdownDuration'] as core.String?,
        shutdownReason: json_['shutdownReason'] as core.String?,
        shutdownTime: json_['shutdownTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bootUpDuration != null) 'bootUpDuration': bootUpDuration!,
    if (bootUpTime != null) 'bootUpTime': bootUpTime!,
    if (reportTime != null) 'reportTime': reportTime!,
    if (shutdownDuration != null) 'shutdownDuration': shutdownDuration!,
    if (shutdownReason != null) 'shutdownReason': shutdownReason!,
    if (shutdownTime != null) 'shutdownTime': shutdownTime!,
  };
}

/// Describes a browser version and its install count.
class GoogleChromeManagementV1BrowserVersion {
  /// The release channel of the installed browser.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RELEASE_CHANNEL_UNSPECIFIED" : No release channel specified.
  /// - "CANARY" : Canary release channel.
  /// - "DEV" : Dev release channel.
  /// - "BETA" : Beta release channel.
  /// - "STABLE" : Stable release channel.
  core.String? channel;

  /// Count grouped by device_system and major version
  ///
  /// Output only.
  core.String? count;

  /// Version of the system-specified operating system.
  ///
  /// Output only.
  core.String? deviceOsVersion;

  /// The device operating system.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEVICE_SYSTEM_UNSPECIFIED" : No operating system specified.
  /// - "SYSTEM_OTHER" : Other operating system.
  /// - "SYSTEM_ANDROID" : Android operating system.
  /// - "SYSTEM_IOS" : Apple iOS operating system.
  /// - "SYSTEM_CROS" : ChromeOS operating system.
  /// - "SYSTEM_WINDOWS" : Microsoft Windows operating system.
  /// - "SYSTEM_MAC" : Apple macOS operating system.
  /// - "SYSTEM_LINUX" : Linux operating system.
  core.String? system;

  /// The full version of the installed browser.
  ///
  /// Output only.
  core.String? version;

  GoogleChromeManagementV1BrowserVersion({
    this.channel,
    this.count,
    this.deviceOsVersion,
    this.system,
    this.version,
  });

  GoogleChromeManagementV1BrowserVersion.fromJson(core.Map json_)
    : this(
        channel: json_['channel'] as core.String?,
        count: json_['count'] as core.String?,
        deviceOsVersion: json_['deviceOsVersion'] as core.String?,
        system: json_['system'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (channel != null) 'channel': channel!,
    if (count != null) 'count': count!,
    if (deviceOsVersion != null) 'deviceOsVersion': deviceOsVersion!,
    if (system != null) 'system': system!,
    if (version != null) 'version': version!,
  };
}

/// Chrome Web Store app information.
class GoogleChromeManagementV1ChromeAppInfo {
  /// Whether the app or extension is built and maintained by Google.
  ///
  /// Version-specific field that will only be set when the requested app
  /// version is found.
  ///
  /// Output only.
  core.bool? googleOwned;

  /// Whether the app or extension is in a published state in the Chrome Web
  /// Store.
  ///
  /// Output only.
  core.bool? isCwsHosted;

  /// Whether an app supports policy for extensions.
  ///
  /// Output only.
  core.bool? isExtensionPolicySupported;

  /// Whether the app is only for Kiosk mode on ChromeOS devices
  ///
  /// Output only.
  core.bool? isKioskOnly;

  /// Whether the app or extension is a theme.
  ///
  /// Output only.
  core.bool? isTheme;

  /// Whether this app is enabled for Kiosk mode on ChromeOS devices
  ///
  /// Output only.
  core.bool? kioskEnabled;

  /// The version of this extension's manifest.
  ///
  /// Output only.
  core.String? manifestVersion;

  /// The minimum number of users using this app.
  ///
  /// Output only.
  core.int? minUserCount;

  /// Every custom permission requested by the app.
  ///
  /// Version-specific field that will only be set when the requested app
  /// version is found.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1ChromeAppPermission>? permissions;

  /// Every permission giving access to domains or broad host patterns.
  ///
  /// ( e.g. www.google.com). This includes the matches from content scripts as
  /// well as hosts in the permissions node of the manifest. Version-specific
  /// field that will only be set when the requested app version is found.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1ChromeAppSiteAccess>? siteAccess;

  /// The app developer has enabled support for their app.
  ///
  /// Version-specific field that will only be set when the requested app
  /// version is found.
  ///
  /// Output only.
  core.bool? supportEnabled;

  /// Types of an item in the Chrome Web Store
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ITEM_TYPE_UNSPECIFIED" : Unspecified ItemType.
  /// - "EXTENSION" : Chrome Extensions.
  /// - "OTHERS" : Any other type than extension.
  core.String? type;

  GoogleChromeManagementV1ChromeAppInfo({
    this.googleOwned,
    this.isCwsHosted,
    this.isExtensionPolicySupported,
    this.isKioskOnly,
    this.isTheme,
    this.kioskEnabled,
    this.manifestVersion,
    this.minUserCount,
    this.permissions,
    this.siteAccess,
    this.supportEnabled,
    this.type,
  });

  GoogleChromeManagementV1ChromeAppInfo.fromJson(core.Map json_)
    : this(
        googleOwned: json_['googleOwned'] as core.bool?,
        isCwsHosted: json_['isCwsHosted'] as core.bool?,
        isExtensionPolicySupported:
            json_['isExtensionPolicySupported'] as core.bool?,
        isKioskOnly: json_['isKioskOnly'] as core.bool?,
        isTheme: json_['isTheme'] as core.bool?,
        kioskEnabled: json_['kioskEnabled'] as core.bool?,
        manifestVersion: json_['manifestVersion'] as core.String?,
        minUserCount: json_['minUserCount'] as core.int?,
        permissions:
            (json_['permissions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1ChromeAppPermission.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        siteAccess:
            (json_['siteAccess'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1ChromeAppSiteAccess.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        supportEnabled: json_['supportEnabled'] as core.bool?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (googleOwned != null) 'googleOwned': googleOwned!,
    if (isCwsHosted != null) 'isCwsHosted': isCwsHosted!,
    if (isExtensionPolicySupported != null)
      'isExtensionPolicySupported': isExtensionPolicySupported!,
    if (isKioskOnly != null) 'isKioskOnly': isKioskOnly!,
    if (isTheme != null) 'isTheme': isTheme!,
    if (kioskEnabled != null) 'kioskEnabled': kioskEnabled!,
    if (manifestVersion != null) 'manifestVersion': manifestVersion!,
    if (minUserCount != null) 'minUserCount': minUserCount!,
    if (permissions != null) 'permissions': permissions!,
    if (siteAccess != null) 'siteAccess': siteAccess!,
    if (supportEnabled != null) 'supportEnabled': supportEnabled!,
    if (type != null) 'type': type!,
  };
}

/// Permission requested by a Chrome app or extension.
class GoogleChromeManagementV1ChromeAppPermission {
  /// If available, whether this permissions grants the app/extension access to
  /// user data.
  ///
  /// Output only.
  core.bool? accessUserData;

  /// If available, a URI to a page that has documentation for the current
  /// permission.
  ///
  /// Output only.
  core.String? documentationUri;

  /// The type of the permission.
  ///
  /// Output only.
  core.String? type;

  GoogleChromeManagementV1ChromeAppPermission({
    this.accessUserData,
    this.documentationUri,
    this.type,
  });

  GoogleChromeManagementV1ChromeAppPermission.fromJson(core.Map json_)
    : this(
        accessUserData: json_['accessUserData'] as core.bool?,
        documentationUri: json_['documentationUri'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessUserData != null) 'accessUserData': accessUserData!,
    if (documentationUri != null) 'documentationUri': documentationUri!,
    if (type != null) 'type': type!,
  };
}

/// Details of an app installation request.
class GoogleChromeManagementV1ChromeAppRequest {
  /// Format: app_details=customers/{customer_id}/apps/chrome/{app_id}
  ///
  /// Output only.
  core.String? appDetails;

  /// Unique store identifier for the app.
  ///
  /// Example: "gmbmikajjgmnabiglmofipeabaddhgne" for the Save to Google Drive
  /// Chrome extension.
  ///
  /// Output only.
  core.String? appId;

  /// The uri for the detail page of the item.
  ///
  /// Output only.
  core.String? detailUri;

  /// App's display name.
  ///
  /// Output only.
  core.String? displayName;

  /// A link to an image that can be used as an icon for the product.
  ///
  /// Output only.
  core.String? iconUri;

  /// The timestamp of the most recently made request for this app.
  ///
  /// Output only.
  core.String? latestRequestTime;

  /// Total count of requests for this app.
  ///
  /// Output only.
  core.String? requestCount;

  GoogleChromeManagementV1ChromeAppRequest({
    this.appDetails,
    this.appId,
    this.detailUri,
    this.displayName,
    this.iconUri,
    this.latestRequestTime,
    this.requestCount,
  });

  GoogleChromeManagementV1ChromeAppRequest.fromJson(core.Map json_)
    : this(
        appDetails: json_['appDetails'] as core.String?,
        appId: json_['appId'] as core.String?,
        detailUri: json_['detailUri'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        iconUri: json_['iconUri'] as core.String?,
        latestRequestTime: json_['latestRequestTime'] as core.String?,
        requestCount: json_['requestCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appDetails != null) 'appDetails': appDetails!,
    if (appId != null) 'appId': appId!,
    if (detailUri != null) 'detailUri': detailUri!,
    if (displayName != null) 'displayName': displayName!,
    if (iconUri != null) 'iconUri': iconUri!,
    if (latestRequestTime != null) 'latestRequestTime': latestRequestTime!,
    if (requestCount != null) 'requestCount': requestCount!,
  };
}

/// Represent one host permission.
class GoogleChromeManagementV1ChromeAppSiteAccess {
  /// This can contain very specific hosts, or patterns like "*.com" for
  /// instance.
  ///
  /// Output only.
  core.String? hostMatch;

  GoogleChromeManagementV1ChromeAppSiteAccess({this.hostMatch});

  GoogleChromeManagementV1ChromeAppSiteAccess.fromJson(core.Map json_)
    : this(hostMatch: json_['hostMatch'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (hostMatch != null) 'hostMatch': hostMatch!,
  };
}

/// Response containing the number of active devices.
class GoogleChromeManagementV1CountActiveDevicesResponse {
  /// Number of active devices in the 7 days leading up to the date specified in
  /// the request.
  core.String? sevenDaysCount;

  /// Number of active devices in the 30 days leading up to the date specified
  /// in the request.
  core.String? thirtyDaysCount;

  GoogleChromeManagementV1CountActiveDevicesResponse({
    this.sevenDaysCount,
    this.thirtyDaysCount,
  });

  GoogleChromeManagementV1CountActiveDevicesResponse.fromJson(core.Map json_)
    : this(
        sevenDaysCount: json_['sevenDaysCount'] as core.String?,
        thirtyDaysCount: json_['thirtyDaysCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sevenDaysCount != null) 'sevenDaysCount': sevenDaysCount!,
    if (thirtyDaysCount != null) 'thirtyDaysCount': thirtyDaysCount!,
  };
}

/// Response containing summary of requested app installations.
class GoogleChromeManagementV1CountChromeAppRequestsResponse {
  /// Token to specify the next page in the list.
  core.String? nextPageToken;

  /// Count of requested apps matching request.
  core.List<GoogleChromeManagementV1ChromeAppRequest>? requestedApps;

  /// Total number of matching app requests.
  core.int? totalSize;

  GoogleChromeManagementV1CountChromeAppRequestsResponse({
    this.nextPageToken,
    this.requestedApps,
    this.totalSize,
  });

  GoogleChromeManagementV1CountChromeAppRequestsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        requestedApps:
            (json_['requestedApps'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1ChromeAppRequest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (requestedApps != null) 'requestedApps': requestedApps!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Response containing counts for browsers that need attention.
class GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse {
  /// Number of browsers that haven’t had any recent activity
  core.String? noRecentActivityCount;

  /// Number of browsers that are pending an OS update
  core.String? pendingBrowserUpdateCount;

  /// Number of browsers that have been recently enrolled
  core.String? recentlyEnrolledCount;

  GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse({
    this.noRecentActivityCount,
    this.pendingBrowserUpdateCount,
    this.recentlyEnrolledCount,
  });

  GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse.fromJson(
    core.Map json_,
  ) : this(
        noRecentActivityCount: json_['noRecentActivityCount'] as core.String?,
        pendingBrowserUpdateCount:
            json_['pendingBrowserUpdateCount'] as core.String?,
        recentlyEnrolledCount: json_['recentlyEnrolledCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (noRecentActivityCount != null)
      'noRecentActivityCount': noRecentActivityCount!,
    if (pendingBrowserUpdateCount != null)
      'pendingBrowserUpdateCount': pendingBrowserUpdateCount!,
    if (recentlyEnrolledCount != null)
      'recentlyEnrolledCount': recentlyEnrolledCount!,
  };
}

/// Response contains a list of CrashEventCountByVersionPerDay which count the
/// chrome crash at the certain date.
class GoogleChromeManagementV1CountChromeCrashEventsResponse {
  /// Crash event counts grouped by date and browser version.
  core.List<
    GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount
  >?
  crashEventCounts;

  GoogleChromeManagementV1CountChromeCrashEventsResponse({
    this.crashEventCounts,
  });

  GoogleChromeManagementV1CountChromeCrashEventsResponse.fromJson(
    core.Map json_,
  ) : this(
        crashEventCounts:
            (json_['crashEventCounts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (crashEventCounts != null) 'crashEventCounts': crashEventCounts!,
  };
}

/// The `count` of the Chrome crash events at the `date`.
class GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount {
  /// Browser version this is counting.
  core.String? browserVersion;

  /// Total count of crash events.
  core.String? count;

  /// Date of the crash event.
  GoogleTypeDate? date;

  GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount({
    this.browserVersion,
    this.count,
    this.date,
  });

  GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount.fromJson(
    core.Map json_,
  ) : this(
        browserVersion: json_['browserVersion'] as core.String?,
        count: json_['count'] as core.String?,
        date:
            json_.containsKey('date')
                ? GoogleTypeDate.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (browserVersion != null) 'browserVersion': browserVersion!,
    if (count != null) 'count': count!,
    if (date != null) 'date': date!,
  };
}

/// Response containing a list of devices expiring in each month of a selected
/// time frame.
///
/// Counts are grouped by model and Auto Update Expiration date.
class GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse {
  /// The list of reports sorted by auto update expiration date in ascending
  /// order.
  core.List<GoogleChromeManagementV1DeviceAueCountReport>?
  deviceAueCountReports;

  GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse({
    this.deviceAueCountReports,
  });

  GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse.fromJson(
    core.Map json_,
  ) : this(
        deviceAueCountReports:
            (json_['deviceAueCountReports'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1DeviceAueCountReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceAueCountReports != null)
      'deviceAueCountReports': deviceAueCountReports!,
  };
}

/// Response containing counts for devices that need attention.
class GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse {
  /// Number of ChromeOS devices have not synced policies in the past 28 days.
  core.String? noRecentPolicySyncCount;

  /// Number of ChromeOS devices that have not seen any user activity in the
  /// past 28 days.
  core.String? noRecentUserActivityCount;

  /// Number of devices whose OS version is not compliant.
  core.String? osVersionNotCompliantCount;

  /// Number of devices that are pending an OS update.
  core.String? pendingUpdate;

  /// Number of devices that are unable to apply a policy due to an OS version
  /// mismatch.
  core.String? unsupportedPolicyCount;

  GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse({
    this.noRecentPolicySyncCount,
    this.noRecentUserActivityCount,
    this.osVersionNotCompliantCount,
    this.pendingUpdate,
    this.unsupportedPolicyCount,
  });

  GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse.fromJson(
    core.Map json_,
  ) : this(
        noRecentPolicySyncCount:
            json_['noRecentPolicySyncCount'] as core.String?,
        noRecentUserActivityCount:
            json_['noRecentUserActivityCount'] as core.String?,
        osVersionNotCompliantCount:
            json_['osVersionNotCompliantCount'] as core.String?,
        pendingUpdate: json_['pendingUpdate'] as core.String?,
        unsupportedPolicyCount: json_['unsupportedPolicyCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (noRecentPolicySyncCount != null)
      'noRecentPolicySyncCount': noRecentPolicySyncCount!,
    if (noRecentUserActivityCount != null)
      'noRecentUserActivityCount': noRecentUserActivityCount!,
    if (osVersionNotCompliantCount != null)
      'osVersionNotCompliantCount': osVersionNotCompliantCount!,
    if (pendingUpdate != null) 'pendingUpdate': pendingUpdate!,
    if (unsupportedPolicyCount != null)
      'unsupportedPolicyCount': unsupportedPolicyCount!,
  };
}

/// Response containing a list of devices with a specific type of hardware
/// specification from the requested hardware type.
class GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse {
  /// The DeviceHardwareCountReport for device cpu type (for example Intel(R)
  /// Core(TM) i7-10610U CPU @ 1.80GHz).
  core.List<GoogleChromeManagementV1DeviceHardwareCountReport>? cpuReports;

  /// The DeviceHardwareCountReport for device memory amount in gigabytes (for
  /// example 16).
  core.List<GoogleChromeManagementV1DeviceHardwareCountReport>? memoryReports;

  /// The DeviceHardwareCountReport for device model type (for example Acer C7
  /// Chromebook).
  core.List<GoogleChromeManagementV1DeviceHardwareCountReport>? modelReports;

  /// The DeviceHardwareCountReport for device storage amount in gigabytes (for
  /// example 128).
  core.List<GoogleChromeManagementV1DeviceHardwareCountReport>? storageReports;

  GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse({
    this.cpuReports,
    this.memoryReports,
    this.modelReports,
    this.storageReports,
  });

  GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse.fromJson(
    core.Map json_,
  ) : this(
        cpuReports:
            (json_['cpuReports'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1DeviceHardwareCountReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        memoryReports:
            (json_['memoryReports'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1DeviceHardwareCountReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        modelReports:
            (json_['modelReports'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1DeviceHardwareCountReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        storageReports:
            (json_['storageReports'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1DeviceHardwareCountReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpuReports != null) 'cpuReports': cpuReports!,
    if (memoryReports != null) 'memoryReports': memoryReports!,
    if (modelReports != null) 'modelReports': modelReports!,
    if (storageReports != null) 'storageReports': storageReports!,
  };
}

/// Response containing requested browser versions details and counts.
class GoogleChromeManagementV1CountChromeVersionsResponse {
  /// List of all browser versions and their install counts.
  core.List<GoogleChromeManagementV1BrowserVersion>? browserVersions;

  /// Token to specify the next page of the request.
  core.String? nextPageToken;

  /// Total number browser versions matching request.
  core.int? totalSize;

  GoogleChromeManagementV1CountChromeVersionsResponse({
    this.browserVersions,
    this.nextPageToken,
    this.totalSize,
  });

  GoogleChromeManagementV1CountChromeVersionsResponse.fromJson(core.Map json_)
    : this(
        browserVersions:
            (json_['browserVersions'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1BrowserVersion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (browserVersions != null) 'browserVersions': browserVersions!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Response containing the number of devices with the given boot type.
class GoogleChromeManagementV1CountDevicesPerBootTypeResponse {
  /// Number of devices with dev boot type.
  core.String? devBootTypeCount;

  /// Number of devices with unreported boot type.
  core.String? unreportedBootTypeCount;

  /// Number of devices with verified boot type.
  core.String? verifiedBootTypeCount;

  GoogleChromeManagementV1CountDevicesPerBootTypeResponse({
    this.devBootTypeCount,
    this.unreportedBootTypeCount,
    this.verifiedBootTypeCount,
  });

  GoogleChromeManagementV1CountDevicesPerBootTypeResponse.fromJson(
    core.Map json_,
  ) : this(
        devBootTypeCount: json_['devBootTypeCount'] as core.String?,
        unreportedBootTypeCount:
            json_['unreportedBootTypeCount'] as core.String?,
        verifiedBootTypeCount: json_['verifiedBootTypeCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (devBootTypeCount != null) 'devBootTypeCount': devBootTypeCount!,
    if (unreportedBootTypeCount != null)
      'unreportedBootTypeCount': unreportedBootTypeCount!,
    if (verifiedBootTypeCount != null)
      'verifiedBootTypeCount': verifiedBootTypeCount!,
  };
}

/// Response containing the number of devices with the given channel.
class GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse {
  /// Number of devices with beta release channel.
  core.String? betaChannelCount;

  /// Number of devices with canary release channel.
  core.String? canaryChannelCount;

  /// Number of devices with dev release channel.
  core.String? devChannelCount;

  /// Number of devices with ltc release channel.
  core.String? ltcChannelCount;

  /// Number of devices with lts release channel.
  core.String? ltsChannelCount;

  /// Number of devices with stable release channel.
  core.String? stableChannelCount;

  /// Number of devices with an unreported release channel.
  core.String? unreportedChannelCount;

  /// Number of devices with unsupported release channel.
  core.String? unsupportedChannelCount;

  GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse({
    this.betaChannelCount,
    this.canaryChannelCount,
    this.devChannelCount,
    this.ltcChannelCount,
    this.ltsChannelCount,
    this.stableChannelCount,
    this.unreportedChannelCount,
    this.unsupportedChannelCount,
  });

  GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse.fromJson(
    core.Map json_,
  ) : this(
        betaChannelCount: json_['betaChannelCount'] as core.String?,
        canaryChannelCount: json_['canaryChannelCount'] as core.String?,
        devChannelCount: json_['devChannelCount'] as core.String?,
        ltcChannelCount: json_['ltcChannelCount'] as core.String?,
        ltsChannelCount: json_['ltsChannelCount'] as core.String?,
        stableChannelCount: json_['stableChannelCount'] as core.String?,
        unreportedChannelCount: json_['unreportedChannelCount'] as core.String?,
        unsupportedChannelCount:
            json_['unsupportedChannelCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (betaChannelCount != null) 'betaChannelCount': betaChannelCount!,
    if (canaryChannelCount != null) 'canaryChannelCount': canaryChannelCount!,
    if (devChannelCount != null) 'devChannelCount': devChannelCount!,
    if (ltcChannelCount != null) 'ltcChannelCount': ltcChannelCount!,
    if (ltsChannelCount != null) 'ltsChannelCount': ltsChannelCount!,
    if (stableChannelCount != null) 'stableChannelCount': stableChannelCount!,
    if (unreportedChannelCount != null)
      'unreportedChannelCount': unreportedChannelCount!,
    if (unsupportedChannelCount != null)
      'unsupportedChannelCount': unsupportedChannelCount!,
  };
}

/// Response containing details of queried installed apps.
class GoogleChromeManagementV1CountInstalledAppsResponse {
  /// List of installed apps matching request.
  core.List<GoogleChromeManagementV1InstalledApp>? installedApps;

  /// Token to specify the next page of the request.
  core.String? nextPageToken;

  /// Total number of installed apps matching request.
  core.int? totalSize;

  GoogleChromeManagementV1CountInstalledAppsResponse({
    this.installedApps,
    this.nextPageToken,
    this.totalSize,
  });

  GoogleChromeManagementV1CountInstalledAppsResponse.fromJson(core.Map json_)
    : this(
        installedApps:
            (json_['installedApps'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1InstalledApp.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (installedApps != null) 'installedApps': installedApps!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Response containing a summary printing report for each printer from the
/// specified organizational unit for the requested time interval.
class GoogleChromeManagementV1CountPrintJobsByPrinterResponse {
  /// Pagination token for requesting the next page.
  core.String? nextPageToken;

  /// List of PrinterReports matching request.
  core.List<GoogleChromeManagementV1PrinterReport>? printerReports;

  /// Total number of printers matching request.
  core.String? totalSize;

  GoogleChromeManagementV1CountPrintJobsByPrinterResponse({
    this.nextPageToken,
    this.printerReports,
    this.totalSize,
  });

  GoogleChromeManagementV1CountPrintJobsByPrinterResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        printerReports:
            (json_['printerReports'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1PrinterReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        totalSize: json_['totalSize'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (printerReports != null) 'printerReports': printerReports!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Response containing a summary printing report for each user that has
/// initiated a print job with a printer from the specified organizational unit
/// during the requested time interval.
class GoogleChromeManagementV1CountPrintJobsByUserResponse {
  /// Pagination token for requesting the next page.
  core.String? nextPageToken;

  /// Total number of users matching request.
  core.String? totalSize;

  /// List of UserPrintReports matching request.
  core.List<GoogleChromeManagementV1UserPrintReport>? userPrintReports;

  GoogleChromeManagementV1CountPrintJobsByUserResponse({
    this.nextPageToken,
    this.totalSize,
    this.userPrintReports,
  });

  GoogleChromeManagementV1CountPrintJobsByUserResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.String?,
        userPrintReports:
            (json_['userPrintReports'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1UserPrintReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (totalSize != null) 'totalSize': totalSize!,
    if (userPrintReports != null) 'userPrintReports': userPrintReports!,
  };
}

/// CPU specifications for the device * This field provides device information,
/// which is static and will not change over time.
///
/// * Data for this field is controlled via policy:
/// [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo)
/// * Data Collection Frequency: Only at Upload * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_CPU_INFO
class GoogleChromeManagementV1CpuInfo {
  /// Architecture type for the CPU.
  ///
  /// * This field provides device information, which is static and will not
  /// change over time. * Data for this field is controlled via policy:
  /// [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo)
  /// * Data Collection Frequency: Only at Upload * Default Data Reporting
  /// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
  /// offline, the collected data is stored locally, and will be reported when
  /// the device is next online: No * Reported for affiliated users only: N/A
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ARCHITECTURE_UNSPECIFIED" : Architecture unknown.
  /// - "X64" : x64 architecture
  core.String? architecture;

  /// Whether keylocker is configured.`TRUE` = Enabled; `FALSE` = disabled.
  ///
  /// Only reported if keylockerSupported = `TRUE`.
  ///
  /// Output only.
  core.bool? keylockerConfigured;

  /// Whether keylocker is supported.
  ///
  /// Output only.
  core.bool? keylockerSupported;

  /// The max CPU clock speed in kHz.
  ///
  /// Output only.
  core.int? maxClockSpeed;

  /// The CPU model name.
  ///
  /// Example: Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz
  ///
  /// Output only.
  core.String? model;

  GoogleChromeManagementV1CpuInfo({
    this.architecture,
    this.keylockerConfigured,
    this.keylockerSupported,
    this.maxClockSpeed,
    this.model,
  });

  GoogleChromeManagementV1CpuInfo.fromJson(core.Map json_)
    : this(
        architecture: json_['architecture'] as core.String?,
        keylockerConfigured: json_['keylockerConfigured'] as core.bool?,
        keylockerSupported: json_['keylockerSupported'] as core.bool?,
        maxClockSpeed: json_['maxClockSpeed'] as core.int?,
        model: json_['model'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (architecture != null) 'architecture': architecture!,
    if (keylockerConfigured != null)
      'keylockerConfigured': keylockerConfigured!,
    if (keylockerSupported != null) 'keylockerSupported': keylockerSupported!,
    if (maxClockSpeed != null) 'maxClockSpeed': maxClockSpeed!,
    if (model != null) 'model': model!,
  };
}

/// Provides information about the status of the CPU.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo)
/// * Data Collection Frequency: Every 10 minutes * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_CPU_REPORT
class GoogleChromeManagementV1CpuStatusReport {
  /// CPU temperature sample info per CPU core in Celsius
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1CpuTemperatureInfo>? cpuTemperatureInfo;

  /// Sample of CPU utilization (0-100 percent).
  ///
  /// Output only.
  core.int? cpuUtilizationPct;

  /// The timestamp in milliseconds representing time at which this report was
  /// sampled.
  ///
  /// Output only.
  core.String? reportTime;

  /// Frequency the report is sampled.
  ///
  /// Output only.
  core.String? sampleFrequency;

  GoogleChromeManagementV1CpuStatusReport({
    this.cpuTemperatureInfo,
    this.cpuUtilizationPct,
    this.reportTime,
    this.sampleFrequency,
  });

  GoogleChromeManagementV1CpuStatusReport.fromJson(core.Map json_)
    : this(
        cpuTemperatureInfo:
            (json_['cpuTemperatureInfo'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1CpuTemperatureInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        cpuUtilizationPct: json_['cpuUtilizationPct'] as core.int?,
        reportTime: json_['reportTime'] as core.String?,
        sampleFrequency: json_['sampleFrequency'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpuTemperatureInfo != null) 'cpuTemperatureInfo': cpuTemperatureInfo!,
    if (cpuUtilizationPct != null) 'cpuUtilizationPct': cpuUtilizationPct!,
    if (reportTime != null) 'reportTime': reportTime!,
    if (sampleFrequency != null) 'sampleFrequency': sampleFrequency!,
  };
}

/// CPU temperature of a device.
///
/// Sampled per CPU core in Celsius. * This field is telemetry information and
/// this will change over time as the device is utilized. * Data for this field
/// is controlled via policy:
/// [ReportDeviceCpuInfo](https://chromeenterprise.google/policies/#ReportDeviceCpuInfo)
/// * Data Collection Frequency: Every 10 minutes * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A
class GoogleChromeManagementV1CpuTemperatureInfo {
  /// CPU label.
  ///
  /// Example: Core 0
  ///
  /// Output only.
  core.String? label;

  /// CPU temperature in Celsius.
  ///
  /// Output only.
  core.int? temperatureCelsius;

  GoogleChromeManagementV1CpuTemperatureInfo({
    this.label,
    this.temperatureCelsius,
  });

  GoogleChromeManagementV1CpuTemperatureInfo.fromJson(core.Map json_)
    : this(
        label: json_['label'] as core.String?,
        temperatureCelsius: json_['temperatureCelsius'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (label != null) 'label': label!,
    if (temperatureCelsius != null) 'temperatureCelsius': temperatureCelsius!,
  };
}

/// Describes a device reporting Chrome browser information.
class GoogleChromeManagementV1Device {
  /// The ID of the device that reported this Chrome browser information.
  ///
  /// Output only.
  core.String? deviceId;

  /// The name of the machine within its local network.
  ///
  /// Output only.
  core.String? machine;

  GoogleChromeManagementV1Device({this.deviceId, this.machine});

  GoogleChromeManagementV1Device.fromJson(core.Map json_)
    : this(
        deviceId: json_['deviceId'] as core.String?,
        machine: json_['machine'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceId != null) 'deviceId': deviceId!,
    if (machine != null) 'machine': machine!,
  };
}

/// Device activity report.
///
/// * Granular permission needed: TELEMETRY_API_DEVICE_ACTIVITY_REPORT
class GoogleChromeManagementV1DeviceActivityReport {
  /// Device activity state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEVICE_ACTIVITY_STATE_UNSPECIFIED" : Device activity state is
  /// unspecified.
  /// - "ACTIVE" : Device is currently being used.
  /// - "IDLE" : Device is currently idle.
  /// - "LOCKED" : Device is currently locked.
  core.String? deviceActivityState;

  /// Timestamp of when the report was collected.
  ///
  /// Output only.
  core.String? reportTime;

  GoogleChromeManagementV1DeviceActivityReport({
    this.deviceActivityState,
    this.reportTime,
  });

  GoogleChromeManagementV1DeviceActivityReport.fromJson(core.Map json_)
    : this(
        deviceActivityState: json_['deviceActivityState'] as core.String?,
        reportTime: json_['reportTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceActivityState != null)
      'deviceActivityState': deviceActivityState!,
    if (reportTime != null) 'reportTime': reportTime!,
  };
}

/// Report for CountChromeDevicesPerAueDateResponse, contains the count of
/// devices of a specific model and auto update expiration range.
class GoogleChromeManagementV1DeviceAueCountReport {
  /// Enum value of month corresponding to the auto update expiration date in
  /// UTC time zone.
  ///
  /// If the device is already expired, this field is empty.
  /// Possible string values are:
  /// - "MONTH_UNSPECIFIED" : The unspecified month.
  /// - "JANUARY" : The month of January.
  /// - "FEBRUARY" : The month of February.
  /// - "MARCH" : The month of March.
  /// - "APRIL" : The month of April.
  /// - "MAY" : The month of May.
  /// - "JUNE" : The month of June.
  /// - "JULY" : The month of July.
  /// - "AUGUST" : The month of August.
  /// - "SEPTEMBER" : The month of September.
  /// - "OCTOBER" : The month of October.
  /// - "NOVEMBER" : The month of November.
  /// - "DECEMBER" : The month of December.
  core.String? aueMonth;

  /// Int value of year corresponding to the Auto Update Expiration date in UTC
  /// time zone.
  ///
  /// If the device is already expired, this field is empty.
  core.String? aueYear;

  /// Count of devices of this model.
  core.String? count;

  /// Boolean value for whether or not the device has already expired.
  core.bool? expired;

  /// Public model name of the devices.
  core.String? model;

  GoogleChromeManagementV1DeviceAueCountReport({
    this.aueMonth,
    this.aueYear,
    this.count,
    this.expired,
    this.model,
  });

  GoogleChromeManagementV1DeviceAueCountReport.fromJson(core.Map json_)
    : this(
        aueMonth: json_['aueMonth'] as core.String?,
        aueYear: json_['aueYear'] as core.String?,
        count: json_['count'] as core.String?,
        expired: json_['expired'] as core.bool?,
        model: json_['model'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aueMonth != null) 'aueMonth': aueMonth!,
    if (aueYear != null) 'aueYear': aueYear!,
    if (count != null) 'count': count!,
    if (expired != null) 'expired': expired!,
    if (model != null) 'model': model!,
  };
}

/// Report for CountChromeDevicesPerHardwareSpecResponse, contains the count of
/// devices with a unique hardware specification.
class GoogleChromeManagementV1DeviceHardwareCountReport {
  /// Public name of the hardware specification.
  core.String? bucket;

  /// Count of devices with a unique hardware specification.
  core.String? count;

  GoogleChromeManagementV1DeviceHardwareCountReport({this.bucket, this.count});

  GoogleChromeManagementV1DeviceHardwareCountReport.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        count: json_['count'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bucket != null) 'bucket': bucket!,
    if (count != null) 'count': count!,
  };
}

/// Details of a device requesting an extension, including the name of the
/// device and the justification of the request.
class GoogleChromeManagementV1DeviceRequestingExtensionDetails {
  /// The name of a device that has requested the extension.
  core.String? deviceName;

  /// Request justification as entered by the user.
  core.String? justification;

  GoogleChromeManagementV1DeviceRequestingExtensionDetails({
    this.deviceName,
    this.justification,
  });

  GoogleChromeManagementV1DeviceRequestingExtensionDetails.fromJson(
    core.Map json_,
  ) : this(
        deviceName: json_['deviceName'] as core.String?,
        justification: json_['justification'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceName != null) 'deviceName': deviceName!,
    if (justification != null) 'justification': justification!,
  };
}

/// Status of the single storage device.
class GoogleChromeManagementV1DiskInfo {
  /// Number of bytes read since last boot.
  ///
  /// Output only.
  core.String? bytesReadThisSession;

  /// Number of bytes written since last boot.
  ///
  /// Output only.
  core.String? bytesWrittenThisSession;

  /// Time spent discarding since last boot.
  ///
  /// Discarding is writing to clear blocks which are no longer in use.
  /// Supported on kernels 4.18+.
  ///
  /// Output only.
  core.String? discardTimeThisSession;

  /// Disk health.
  ///
  /// Output only.
  core.String? health;

  /// Counts the time the disk and queue were busy, so unlike the fields above,
  /// parallel requests are not counted multiple times.
  ///
  /// Output only.
  core.String? ioTimeThisSession;

  /// Disk manufacturer.
  ///
  /// Output only.
  core.String? manufacturer;

  /// Disk model.
  ///
  /// Output only.
  core.String? model;

  /// Time spent reading from disk since last boot.
  ///
  /// Output only.
  core.String? readTimeThisSession;

  /// Disk serial number.
  ///
  /// Output only.
  core.String? serialNumber;

  /// Disk size.
  ///
  /// Output only.
  core.String? sizeBytes;

  /// Disk type: eMMC / NVMe / ATA / SCSI.
  ///
  /// Output only.
  core.String? type;

  /// Disk volumes.
  ///
  /// Output only.
  core.List<core.String>? volumeIds;

  /// Time spent writing to disk since last boot.
  ///
  /// Output only.
  core.String? writeTimeThisSession;

  GoogleChromeManagementV1DiskInfo({
    this.bytesReadThisSession,
    this.bytesWrittenThisSession,
    this.discardTimeThisSession,
    this.health,
    this.ioTimeThisSession,
    this.manufacturer,
    this.model,
    this.readTimeThisSession,
    this.serialNumber,
    this.sizeBytes,
    this.type,
    this.volumeIds,
    this.writeTimeThisSession,
  });

  GoogleChromeManagementV1DiskInfo.fromJson(core.Map json_)
    : this(
        bytesReadThisSession: json_['bytesReadThisSession'] as core.String?,
        bytesWrittenThisSession:
            json_['bytesWrittenThisSession'] as core.String?,
        discardTimeThisSession: json_['discardTimeThisSession'] as core.String?,
        health: json_['health'] as core.String?,
        ioTimeThisSession: json_['ioTimeThisSession'] as core.String?,
        manufacturer: json_['manufacturer'] as core.String?,
        model: json_['model'] as core.String?,
        readTimeThisSession: json_['readTimeThisSession'] as core.String?,
        serialNumber: json_['serialNumber'] as core.String?,
        sizeBytes: json_['sizeBytes'] as core.String?,
        type: json_['type'] as core.String?,
        volumeIds:
            (json_['volumeIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        writeTimeThisSession: json_['writeTimeThisSession'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bytesReadThisSession != null)
      'bytesReadThisSession': bytesReadThisSession!,
    if (bytesWrittenThisSession != null)
      'bytesWrittenThisSession': bytesWrittenThisSession!,
    if (discardTimeThisSession != null)
      'discardTimeThisSession': discardTimeThisSession!,
    if (health != null) 'health': health!,
    if (ioTimeThisSession != null) 'ioTimeThisSession': ioTimeThisSession!,
    if (manufacturer != null) 'manufacturer': manufacturer!,
    if (model != null) 'model': model!,
    if (readTimeThisSession != null)
      'readTimeThisSession': readTimeThisSession!,
    if (serialNumber != null) 'serialNumber': serialNumber!,
    if (sizeBytes != null) 'sizeBytes': sizeBytes!,
    if (type != null) 'type': type!,
    if (volumeIds != null) 'volumeIds': volumeIds!,
    if (writeTimeThisSession != null)
      'writeTimeThisSession': writeTimeThisSession!,
  };
}

/// Information of a display device.
class GoogleChromeManagementV1DisplayDevice {
  /// Display height in millimeters.
  ///
  /// Output only.
  core.int? displayHeightMm;

  /// Display device name.
  ///
  /// Output only.
  core.String? displayName;

  /// Display width in millimeters.
  ///
  /// Output only.
  core.int? displayWidthMm;

  /// EDID version.
  ///
  /// Output only.
  core.String? edidVersion;

  /// Is display internal or not.
  ///
  /// Output only.
  core.bool? internal;

  /// Year of manufacture.
  ///
  /// Output only.
  core.int? manufactureYear;

  /// Three letter manufacturer ID.
  ///
  /// Output only.
  core.String? manufacturerId;

  /// Manufacturer product code.
  ///
  /// Output only.
  core.int? modelId;

  /// Serial number.
  ///
  /// Output only.
  core.int? serialNumber;

  GoogleChromeManagementV1DisplayDevice({
    this.displayHeightMm,
    this.displayName,
    this.displayWidthMm,
    this.edidVersion,
    this.internal,
    this.manufactureYear,
    this.manufacturerId,
    this.modelId,
    this.serialNumber,
  });

  GoogleChromeManagementV1DisplayDevice.fromJson(core.Map json_)
    : this(
        displayHeightMm: json_['displayHeightMm'] as core.int?,
        displayName: json_['displayName'] as core.String?,
        displayWidthMm: json_['displayWidthMm'] as core.int?,
        edidVersion: json_['edidVersion'] as core.String?,
        internal: json_['internal'] as core.bool?,
        manufactureYear: json_['manufactureYear'] as core.int?,
        manufacturerId: json_['manufacturerId'] as core.String?,
        modelId: json_['modelId'] as core.int?,
        serialNumber: json_['serialNumber'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayHeightMm != null) 'displayHeightMm': displayHeightMm!,
    if (displayName != null) 'displayName': displayName!,
    if (displayWidthMm != null) 'displayWidthMm': displayWidthMm!,
    if (edidVersion != null) 'edidVersion': edidVersion!,
    if (internal != null) 'internal': internal!,
    if (manufactureYear != null) 'manufactureYear': manufactureYear!,
    if (manufacturerId != null) 'manufacturerId': manufacturerId!,
    if (modelId != null) 'modelId': modelId!,
    if (serialNumber != null) 'serialNumber': serialNumber!,
  };
}

/// Information for a display.
class GoogleChromeManagementV1DisplayInfo {
  /// Represents the graphics card device id.
  ///
  /// Output only.
  core.String? deviceId;

  /// Display device name.
  ///
  /// Output only.
  core.String? displayName;

  /// EDID version.
  ///
  /// Output only.
  core.String? edidVersion;

  /// Indicates if display is internal or not.
  ///
  /// Output only.
  core.bool? isInternal;

  /// Refresh rate in Hz.
  ///
  /// Output only.
  core.int? refreshRate;

  /// Resolution height in pixels.
  ///
  /// Output only.
  core.int? resolutionHeight;

  /// Resolution width in pixels.
  ///
  /// Output only.
  core.int? resolutionWidth;

  /// Serial number.
  ///
  /// Output only.
  core.int? serialNumber;

  GoogleChromeManagementV1DisplayInfo({
    this.deviceId,
    this.displayName,
    this.edidVersion,
    this.isInternal,
    this.refreshRate,
    this.resolutionHeight,
    this.resolutionWidth,
    this.serialNumber,
  });

  GoogleChromeManagementV1DisplayInfo.fromJson(core.Map json_)
    : this(
        deviceId: json_['deviceId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        edidVersion: json_['edidVersion'] as core.String?,
        isInternal: json_['isInternal'] as core.bool?,
        refreshRate: json_['refreshRate'] as core.int?,
        resolutionHeight: json_['resolutionHeight'] as core.int?,
        resolutionWidth: json_['resolutionWidth'] as core.int?,
        serialNumber: json_['serialNumber'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceId != null) 'deviceId': deviceId!,
    if (displayName != null) 'displayName': displayName!,
    if (edidVersion != null) 'edidVersion': edidVersion!,
    if (isInternal != null) 'isInternal': isInternal!,
    if (refreshRate != null) 'refreshRate': refreshRate!,
    if (resolutionHeight != null) 'resolutionHeight': resolutionHeight!,
    if (resolutionWidth != null) 'resolutionWidth': resolutionWidth!,
    if (serialNumber != null) 'serialNumber': serialNumber!,
  };
}

/// Response containing a list of print jobs.
class GoogleChromeManagementV1EnumeratePrintJobsResponse {
  /// A token, which can be used in a subsequent request to retrieve the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of requested print jobs.
  core.List<GoogleChromeManagementV1PrintJob>? printJobs;

  /// Total number of print jobs matching request.
  core.String? totalSize;

  GoogleChromeManagementV1EnumeratePrintJobsResponse({
    this.nextPageToken,
    this.printJobs,
    this.totalSize,
  });

  GoogleChromeManagementV1EnumeratePrintJobsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        printJobs:
            (json_['printJobs'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1PrintJob.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        totalSize: json_['totalSize'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (printJobs != null) 'printJobs': printJobs!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Response containing a list of devices that have requested the queried
/// extension.
class GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse {
  /// Details of devices that have requested the queried extension.
  core.List<GoogleChromeManagementV1DeviceRequestingExtensionDetails>?
  deviceDetails;

  /// Token to specify the next page in the list.
  ///
  /// Token expires after 1 day.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// Total number of devices in response.
  ///
  /// Optional.
  core.int? totalSize;

  GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse({
    this.deviceDetails,
    this.nextPageToken,
    this.totalSize,
  });

  GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse.fromJson(
    core.Map json_,
  ) : this(
        deviceDetails:
            (json_['deviceDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1DeviceRequestingExtensionDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceDetails != null) 'deviceDetails': deviceDetails!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Response containing a list of users that have requested the queried
/// extension.
class GoogleChromeManagementV1FetchUsersRequestingExtensionResponse {
  /// Token to specify the next page in the list.
  core.String? nextPageToken;

  /// Total number of users in response.
  core.int? totalSize;

  /// Details of users that have requested the queried extension.
  core.List<GoogleChromeManagementV1UserRequestingExtensionDetails>?
  userDetails;

  GoogleChromeManagementV1FetchUsersRequestingExtensionResponse({
    this.nextPageToken,
    this.totalSize,
    this.userDetails,
  });

  GoogleChromeManagementV1FetchUsersRequestingExtensionResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
        userDetails:
            (json_['userDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1UserRequestingExtensionDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (totalSize != null) 'totalSize': totalSize!,
    if (userDetails != null) 'userDetails': userDetails!,
  };
}

/// Response containing a list of devices with queried app installed.
class GoogleChromeManagementV1FindInstalledAppDevicesResponse {
  /// A list of devices which have the app installed.
  ///
  /// Sorted in ascending alphabetical order on the Device.machine field.
  core.List<GoogleChromeManagementV1Device>? devices;

  /// Token to specify the next page of the request.
  core.String? nextPageToken;

  /// Total number of devices matching request.
  core.int? totalSize;

  GoogleChromeManagementV1FindInstalledAppDevicesResponse({
    this.devices,
    this.nextPageToken,
    this.totalSize,
  });

  GoogleChromeManagementV1FindInstalledAppDevicesResponse.fromJson(
    core.Map json_,
  ) : this(
        devices:
            (json_['devices'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1Device.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (devices != null) 'devices': devices!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Information of a graphics adapter (GPU).
class GoogleChromeManagementV1GraphicsAdapterInfo {
  /// Adapter name.
  ///
  /// Example: Mesa DRI Intel(R) UHD Graphics 620 (Kabylake GT2).
  ///
  /// Output only.
  core.String? adapter;

  /// Represents the graphics card device id.
  ///
  /// Output only.
  core.String? deviceId;

  /// Version of the GPU driver.
  ///
  /// Output only.
  core.String? driverVersion;

  GoogleChromeManagementV1GraphicsAdapterInfo({
    this.adapter,
    this.deviceId,
    this.driverVersion,
  });

  GoogleChromeManagementV1GraphicsAdapterInfo.fromJson(core.Map json_)
    : this(
        adapter: json_['adapter'] as core.String?,
        deviceId: json_['deviceId'] as core.String?,
        driverVersion: json_['driverVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adapter != null) 'adapter': adapter!,
    if (deviceId != null) 'deviceId': deviceId!,
    if (driverVersion != null) 'driverVersion': driverVersion!,
  };
}

/// Information of the graphics subsystem.
///
/// * This field provides device information, which is static and will not
/// change over time. * Data for this field is controlled via policy:
/// [ReportDeviceGraphicsStatus](https://chromeenterprise.google/policies/#ReportDeviceGraphicsStatus)
/// * Data Collection Frequency: Only at Upload * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_GRAPHICS_INFO
class GoogleChromeManagementV1GraphicsInfo {
  /// Information about the graphics adapter (GPU).
  ///
  /// Output only.
  GoogleChromeManagementV1GraphicsAdapterInfo? adapterInfo;

  /// Information about the display(s) of the device.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1DisplayDevice>? displayDevices;

  /// Is ePrivacy screen supported or not.
  ///
  /// Output only.
  core.bool? eprivacySupported;

  /// Information about the internal touch screen(s) of the device.
  ///
  /// Output only.
  GoogleChromeManagementV1TouchScreenInfo? touchScreenInfo;

  GoogleChromeManagementV1GraphicsInfo({
    this.adapterInfo,
    this.displayDevices,
    this.eprivacySupported,
    this.touchScreenInfo,
  });

  GoogleChromeManagementV1GraphicsInfo.fromJson(core.Map json_)
    : this(
        adapterInfo:
            json_.containsKey('adapterInfo')
                ? GoogleChromeManagementV1GraphicsAdapterInfo.fromJson(
                  json_['adapterInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayDevices:
            (json_['displayDevices'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1DisplayDevice.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        eprivacySupported: json_['eprivacySupported'] as core.bool?,
        touchScreenInfo:
            json_.containsKey('touchScreenInfo')
                ? GoogleChromeManagementV1TouchScreenInfo.fromJson(
                  json_['touchScreenInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adapterInfo != null) 'adapterInfo': adapterInfo!,
    if (displayDevices != null) 'displayDevices': displayDevices!,
    if (eprivacySupported != null) 'eprivacySupported': eprivacySupported!,
    if (touchScreenInfo != null) 'touchScreenInfo': touchScreenInfo!,
  };
}

/// Information of the graphics subsystem.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportDeviceGraphicsInfo](https://chromeenterprise.google/policies/#ReportDeviceGraphicsInfo)
/// * Data Collection Frequency: 3 hours. * Default Data Reporting Frequency: 3
/// hours - Policy Controlled: Yes * Cache: If the device is offline, the
/// collected data is stored locally, and will be reported when the device is
/// next online: No * Reported for affiliated users only: N/A * Granular
/// permission needed: TELEMETRY_API_GRAPHICS_REPORT
class GoogleChromeManagementV1GraphicsStatusReport {
  /// Information about the displays for the device.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1DisplayInfo>? displays;

  /// Time at which the graphics data was reported.
  ///
  /// Output only.
  core.String? reportTime;

  GoogleChromeManagementV1GraphicsStatusReport({
    this.displays,
    this.reportTime,
  });

  GoogleChromeManagementV1GraphicsStatusReport.fromJson(core.Map json_)
    : this(
        displays:
            (json_['displays'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1DisplayInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        reportTime: json_['reportTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displays != null) 'displays': displays!,
    if (reportTime != null) 'reportTime': reportTime!,
  };
}

/// Heartbeat status report of a device.
///
/// * Available for Kiosks * This field provides online/offline/unknown status
/// of a device and will only be included if the status has changed (e.g. Online
/// -\> Offline) * Data for this field is controlled via policy:
/// [HeartbeatEnabled](https://chromeenterprise.google/policies/#HeartbeatEnabled)
/// [More Info](https://support.google.com/chrome/a/answer/6179663#:~:text=On%20the%20Chrome,device%20status%20alerts)
/// * Heartbeat Frequency: 2 mins * Note: If a device goes offline, it can take
/// up to 12 minutes for the online status of the device to be updated * Cache:
/// If the device is offline, the collected data is stored locally, and will be
/// reported when the device is next online: N/A * Reported for affiliated users
/// only: N/A * Granular permission needed: TELEMETRY_API_DEVICE_ACTIVITY_REPORT
class GoogleChromeManagementV1HeartbeatStatusReport {
  /// Timestamp of when status changed was detected
  core.String? reportTime;

  /// State the device changed to
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not specified
  /// - "UNKNOWN" : Device is not eligible for heartbeat monitoring
  /// - "ONLINE" : Device is online
  /// - "OFFLINE" : Device is offline
  /// - "DEVICE_OUTDATED" : Device is outdated
  core.String? state;

  GoogleChromeManagementV1HeartbeatStatusReport({this.reportTime, this.state});

  GoogleChromeManagementV1HeartbeatStatusReport.fromJson(core.Map json_)
    : this(
        reportTime: json_['reportTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reportTime != null) 'reportTime': reportTime!,
    if (state != null) 'state': state!,
  };
}

/// Data that describes the result of the HTTPS latency diagnostics routine,
/// with the HTTPS requests issued to Google websites.
class GoogleChromeManagementV1HttpsLatencyRoutineData {
  /// HTTPS latency if routine succeeded or failed because of HIGH_LATENCY or
  /// VERY_HIGH_LATENCY.
  ///
  /// Output only.
  core.String? latency;

  /// HTTPS latency routine problem if a problem occurred.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HTTPS_LATENCY_PROBLEM_UNSPECIFIED" : HTTPS latency problem not
  /// specified.
  /// - "FAILED_DNS_RESOLUTIONS" : One or more DNS resolutions resulted in a
  /// failure.
  /// - "FAILED_HTTPS_REQUESTS" : One or more HTTPS requests resulted in a
  /// failure.
  /// - "HIGH_LATENCY" : Average HTTPS request latency time between 500ms and
  /// 1000ms is high.
  /// - "VERY_HIGH_LATENCY" : Average HTTPS request latency time greater than
  /// 1000ms is very high.
  core.String? problem;

  GoogleChromeManagementV1HttpsLatencyRoutineData({this.latency, this.problem});

  GoogleChromeManagementV1HttpsLatencyRoutineData.fromJson(core.Map json_)
    : this(
        latency: json_['latency'] as core.String?,
        problem: json_['problem'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (latency != null) 'latency': latency!,
    if (problem != null) 'problem': problem!,
  };
}

/// Describes an installed app.
class GoogleChromeManagementV1InstalledApp {
  /// Unique identifier of the app.
  ///
  /// For Chrome apps and extensions, the 32-character id (e.g.
  /// ehoadneljpdggcbbknedodolkkjodefl). For Android apps, the package name
  /// (e.g. com.evernote).
  ///
  /// Output only.
  core.String? appId;

  /// How the app was installed.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APP_INSTALL_TYPE_UNSPECIFIED" : Application install type not specified.
  /// - "MULTIPLE" : Multiple app install types.
  /// - "NORMAL" : Normal app install type.
  /// - "ADMIN" : Administrator app install type.
  /// - "DEVELOPMENT" : Development app install type.
  /// - "SIDELOAD" : Sideloaded app install type.
  /// - "OTHER" : Other app install type.
  core.String? appInstallType;

  /// Source of the installed app.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APP_SOURCE_UNSPECIFIED" : Application source not specified.
  /// - "CHROME_WEBSTORE" : Generally for extensions and Chrome apps.
  /// - "PLAY_STORE" : Play Store app.
  core.String? appSource;

  /// Type of the app.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APP_TYPE_UNSPECIFIED" : App type not specified.
  /// - "EXTENSION" : Chrome extension.
  /// - "APP" : Chrome app.
  /// - "THEME" : Chrome theme.
  /// - "HOSTED_APP" : Chrome hosted app.
  /// - "ANDROID_APP" : ARC++ app.
  core.String? appType;

  /// Count of browser devices with this app installed.
  ///
  /// Output only.
  core.String? browserDeviceCount;

  /// Description of the installed app.
  ///
  /// Output only.
  core.String? description;

  /// Whether the app is disabled.
  ///
  /// Output only.
  core.bool? disabled;

  /// Name of the installed app.
  ///
  /// Output only.
  core.String? displayName;

  /// Homepage uri of the installed app.
  ///
  /// Output only.
  core.String? homepageUri;

  /// Count of ChromeOS users with this app installed.
  ///
  /// Output only.
  core.String? osUserCount;

  /// Permissions of the installed app.
  ///
  /// Output only.
  core.List<core.String>? permissions;

  /// If available, the risk assessment data about this extension.
  ///
  /// Output only.
  GoogleChromeManagementV1RiskAssessmentData? riskAssessment;

  GoogleChromeManagementV1InstalledApp({
    this.appId,
    this.appInstallType,
    this.appSource,
    this.appType,
    this.browserDeviceCount,
    this.description,
    this.disabled,
    this.displayName,
    this.homepageUri,
    this.osUserCount,
    this.permissions,
    this.riskAssessment,
  });

  GoogleChromeManagementV1InstalledApp.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        appInstallType: json_['appInstallType'] as core.String?,
        appSource: json_['appSource'] as core.String?,
        appType: json_['appType'] as core.String?,
        browserDeviceCount: json_['browserDeviceCount'] as core.String?,
        description: json_['description'] as core.String?,
        disabled: json_['disabled'] as core.bool?,
        displayName: json_['displayName'] as core.String?,
        homepageUri: json_['homepageUri'] as core.String?,
        osUserCount: json_['osUserCount'] as core.String?,
        permissions:
            (json_['permissions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        riskAssessment:
            json_.containsKey('riskAssessment')
                ? GoogleChromeManagementV1RiskAssessmentData.fromJson(
                  json_['riskAssessment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appId != null) 'appId': appId!,
    if (appInstallType != null) 'appInstallType': appInstallType!,
    if (appSource != null) 'appSource': appSource!,
    if (appType != null) 'appType': appType!,
    if (browserDeviceCount != null) 'browserDeviceCount': browserDeviceCount!,
    if (description != null) 'description': description!,
    if (disabled != null) 'disabled': disabled!,
    if (displayName != null) 'displayName': displayName!,
    if (homepageUri != null) 'homepageUri': homepageUri!,
    if (osUserCount != null) 'osUserCount': osUserCount!,
    if (permissions != null) 'permissions': permissions!,
    if (riskAssessment != null) 'riskAssessment': riskAssessment!,
  };
}

/// Kiosk app status report of a device.
///
/// * Available for Kiosks * This field provides the app id and version number
/// running on a kiosk device and the timestamp of when the report was last
/// updated * Data for this field is controlled via policy:
/// [ReportDeviceSessionStatus](https://chromeenterprise.google/policies/#ReportDeviceSessionStatus)
/// * Data Collection Frequency: Only at Upload * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_APPS_REPORT
class GoogleChromeManagementV1KioskAppStatusReport {
  /// App id of kiosk app for example "mdmkkicfmmkgmpkmkdikhlbggogpicma"
  core.String? appId;

  /// App version number of kiosk app for example "1.10.118"
  core.String? appVersion;

  /// Timestamp of when report was collected
  core.String? reportTime;

  GoogleChromeManagementV1KioskAppStatusReport({
    this.appId,
    this.appVersion,
    this.reportTime,
  });

  GoogleChromeManagementV1KioskAppStatusReport.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        appVersion: json_['appVersion'] as core.String?,
        reportTime: json_['reportTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appId != null) 'appId': appId!,
    if (appVersion != null) 'appVersion': appVersion!,
    if (reportTime != null) 'reportTime': reportTime!,
  };
}

class GoogleChromeManagementV1ListTelemetryDevicesResponse {
  /// Telemetry devices returned in the response.
  core.List<GoogleChromeManagementV1TelemetryDevice>? devices;

  /// Token to specify next page in the list.
  core.String? nextPageToken;

  GoogleChromeManagementV1ListTelemetryDevicesResponse({
    this.devices,
    this.nextPageToken,
  });

  GoogleChromeManagementV1ListTelemetryDevicesResponse.fromJson(core.Map json_)
    : this(
        devices:
            (json_['devices'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1TelemetryDevice.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (devices != null) 'devices': devices!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for listing telemetry events for a customer.
class GoogleChromeManagementV1ListTelemetryEventsResponse {
  /// Token to specify next page in the list.
  core.String? nextPageToken;

  /// Telemetry events returned in the response.
  core.List<GoogleChromeManagementV1TelemetryEvent>? telemetryEvents;

  GoogleChromeManagementV1ListTelemetryEventsResponse({
    this.nextPageToken,
    this.telemetryEvents,
  });

  GoogleChromeManagementV1ListTelemetryEventsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        telemetryEvents:
            (json_['telemetryEvents'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1TelemetryEvent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (telemetryEvents != null) 'telemetryEvents': telemetryEvents!,
  };
}

/// Response message for listing notification configs for a customer.
class GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The telemetry notification configs from the specified customer.
  core.List<GoogleChromeManagementV1TelemetryNotificationConfig>?
  telemetryNotificationConfigs;

  GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse({
    this.nextPageToken,
    this.telemetryNotificationConfigs,
  });

  GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        telemetryNotificationConfigs:
            (json_['telemetryNotificationConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1TelemetryNotificationConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (telemetryNotificationConfigs != null)
      'telemetryNotificationConfigs': telemetryNotificationConfigs!,
  };
}

/// Response message for listing telemetry users for a customer.
class GoogleChromeManagementV1ListTelemetryUsersResponse {
  /// Token to specify next page in the list.
  core.String? nextPageToken;

  /// Telemetry users returned in the response.
  core.List<GoogleChromeManagementV1TelemetryUser>? telemetryUsers;

  GoogleChromeManagementV1ListTelemetryUsersResponse({
    this.nextPageToken,
    this.telemetryUsers,
  });

  GoogleChromeManagementV1ListTelemetryUsersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        telemetryUsers:
            (json_['telemetryUsers'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1TelemetryUser.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (telemetryUsers != null) 'telemetryUsers': telemetryUsers!,
  };
}

/// Memory information of a device.
///
/// * This field has both telemetry and device information: - `totalRamBytes` -
/// Device information - `availableRamBytes` - Telemetry information -
/// `totalMemoryEncryption` - Device information * Data for this field is
/// controlled via policy:
/// [ReportDeviceMemoryInfo](https://chromeenterprise.google/policies/#ReportDeviceMemoryInfo)
/// * Data Collection Frequency: - `totalRamBytes` - Only at upload -
/// `availableRamBytes` - Every 10 minutes - `totalMemoryEncryption` - at device
/// startup * Default Data Reporting Frequency: - `totalRamBytes` - 3 hours -
/// `availableRamBytes` - 3 hours - `totalMemoryEncryption` - at device startup
/// - Policy Controlled: Yes * Cache: If the device is offline, the collected
/// data is stored locally, and will be reported when the device is next online:
/// only for `totalMemoryEncryption` * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_MEMORY_INFO
class GoogleChromeManagementV1MemoryInfo {
  /// Amount of available RAM in bytes.
  ///
  /// Output only.
  core.String? availableRamBytes;

  /// Total memory encryption info for the device.
  ///
  /// Output only.
  GoogleChromeManagementV1TotalMemoryEncryptionInfo? totalMemoryEncryption;

  /// Total RAM in bytes.
  ///
  /// Output only.
  core.String? totalRamBytes;

  GoogleChromeManagementV1MemoryInfo({
    this.availableRamBytes,
    this.totalMemoryEncryption,
    this.totalRamBytes,
  });

  GoogleChromeManagementV1MemoryInfo.fromJson(core.Map json_)
    : this(
        availableRamBytes: json_['availableRamBytes'] as core.String?,
        totalMemoryEncryption:
            json_.containsKey('totalMemoryEncryption')
                ? GoogleChromeManagementV1TotalMemoryEncryptionInfo.fromJson(
                  json_['totalMemoryEncryption']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        totalRamBytes: json_['totalRamBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (availableRamBytes != null) 'availableRamBytes': availableRamBytes!,
    if (totalMemoryEncryption != null)
      'totalMemoryEncryption': totalMemoryEncryption!,
    if (totalRamBytes != null) 'totalRamBytes': totalRamBytes!,
  };
}

/// Contains samples of memory status reports.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportDeviceMemoryInfo](https://chromeenterprise.google/policies/#ReportDeviceMemoryInfo)
/// * Data Collection Frequency: Only at upload, SystemRamFreeByes is collected
/// every 10 minutes * Default Data Reporting Frequency: Every 3 hours - Policy
/// Controlled: Yes * Cache: If the device is offline, the collected data is
/// stored locally, and will be reported when the device is next online: No *
/// Reported for affiliated users only: N/A * Granular permission needed:
/// TELEMETRY_API_MEMORY_REPORT
class GoogleChromeManagementV1MemoryStatusReport {
  /// Number of page faults during this collection
  ///
  /// Output only.
  core.int? pageFaults;

  /// The timestamp in milliseconds representing time at which this report was
  /// sampled.
  ///
  /// Output only.
  core.String? reportTime;

  /// Frequency the report is sampled.
  ///
  /// Output only.
  core.String? sampleFrequency;

  /// Amount of free RAM in bytes (unreliable due to Garbage Collection).
  ///
  /// Output only.
  core.String? systemRamFreeBytes;

  GoogleChromeManagementV1MemoryStatusReport({
    this.pageFaults,
    this.reportTime,
    this.sampleFrequency,
    this.systemRamFreeBytes,
  });

  GoogleChromeManagementV1MemoryStatusReport.fromJson(core.Map json_)
    : this(
        pageFaults: json_['pageFaults'] as core.int?,
        reportTime: json_['reportTime'] as core.String?,
        sampleFrequency: json_['sampleFrequency'] as core.String?,
        systemRamFreeBytes: json_['systemRamFreeBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pageFaults != null) 'pageFaults': pageFaults!,
    if (reportTime != null) 'reportTime': reportTime!,
    if (sampleFrequency != null) 'sampleFrequency': sampleFrequency!,
    if (systemRamFreeBytes != null) 'systemRamFreeBytes': systemRamFreeBytes!,
  };
}

/// Network bandwidth report.
///
/// * Granular permission needed: TELEMETRY_API_NETWORK_REPORT
class GoogleChromeManagementV1NetworkBandwidthReport {
  /// Download speed in kilobits per second.
  ///
  /// Output only.
  core.String? downloadSpeedKbps;

  /// Timestamp of when the report was collected.
  ///
  /// Output only.
  core.String? reportTime;

  GoogleChromeManagementV1NetworkBandwidthReport({
    this.downloadSpeedKbps,
    this.reportTime,
  });

  GoogleChromeManagementV1NetworkBandwidthReport.fromJson(core.Map json_)
    : this(
        downloadSpeedKbps: json_['downloadSpeedKbps'] as core.String?,
        reportTime: json_['reportTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (downloadSpeedKbps != null) 'downloadSpeedKbps': downloadSpeedKbps!,
    if (reportTime != null) 'reportTime': reportTime!,
  };
}

/// Details about the network device.
///
/// * This field provides device information, which is static and will not
/// change over time. * Data for this field is controlled via policy:
/// [ReportNetworkDeviceConfiguration](https://chromeenterprise.google/policies/#ReportNetworkDeviceConfiguration)
/// * Data Collection Frequency: At device startup * Default Data Reporting
/// Frequency: At device startup - Policy Controlled: Yes * Cache: If the device
/// is offline, the collected data is stored locally, and will be reported when
/// the device is next online: Yes * Reported for affiliated users only: N/A
class GoogleChromeManagementV1NetworkDevice {
  /// The integrated circuit card ID associated with the device's sim card.
  ///
  /// Output only.
  core.String? iccid;

  /// IMEI (if applicable) of the corresponding network device.
  ///
  /// Output only.
  core.String? imei;

  /// MAC address (if applicable) of the corresponding network device.
  ///
  /// Output only.
  core.String? macAddress;

  /// The mobile directory number associated with the device's sim card.
  ///
  /// Output only.
  core.String? mdn;

  /// MEID (if applicable) of the corresponding network device.
  ///
  /// Output only.
  core.String? meid;

  /// Network device type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NETWORK_DEVICE_TYPE_UNSPECIFIED" : Network device type not specified.
  /// - "CELLULAR_DEVICE" : Cellular device.
  /// - "ETHERNET_DEVICE" : Ethernet device.
  /// - "WIFI_DEVICE" : Wifi device.
  core.String? type;

  GoogleChromeManagementV1NetworkDevice({
    this.iccid,
    this.imei,
    this.macAddress,
    this.mdn,
    this.meid,
    this.type,
  });

  GoogleChromeManagementV1NetworkDevice.fromJson(core.Map json_)
    : this(
        iccid: json_['iccid'] as core.String?,
        imei: json_['imei'] as core.String?,
        macAddress: json_['macAddress'] as core.String?,
        mdn: json_['mdn'] as core.String?,
        meid: json_['meid'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (iccid != null) 'iccid': iccid!,
    if (imei != null) 'imei': imei!,
    if (macAddress != null) 'macAddress': macAddress!,
    if (mdn != null) 'mdn': mdn!,
    if (meid != null) 'meid': meid!,
    if (type != null) 'type': type!,
  };
}

/// Network testing results to determine the health of the device's network
/// connection, for example whether the HTTPS latency is high or normal.
///
/// * Granular permission needed: TELEMETRY_API_NETWORK_REPORT
class GoogleChromeManagementV1NetworkDiagnosticsReport {
  /// HTTPS latency test data.
  ///
  /// Output only.
  GoogleChromeManagementV1HttpsLatencyRoutineData? httpsLatencyData;

  /// Timestamp of when the diagnostics were collected.
  ///
  /// Output only.
  core.String? reportTime;

  GoogleChromeManagementV1NetworkDiagnosticsReport({
    this.httpsLatencyData,
    this.reportTime,
  });

  GoogleChromeManagementV1NetworkDiagnosticsReport.fromJson(core.Map json_)
    : this(
        httpsLatencyData:
            json_.containsKey('httpsLatencyData')
                ? GoogleChromeManagementV1HttpsLatencyRoutineData.fromJson(
                  json_['httpsLatencyData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        reportTime: json_['reportTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (httpsLatencyData != null) 'httpsLatencyData': httpsLatencyData!,
    if (reportTime != null) 'reportTime': reportTime!,
  };
}

/// Network device information.
///
/// * This field provides device information, which is static and will not
/// change over time. * Data for this field is controlled via policy:
/// [ReportNetworkDeviceConfiguration](https://chromeenterprise.google/policies/#ReportNetworkDeviceConfiguration)
/// * Data Collection Frequency: At device startup * Default Data Reporting
/// Frequency: At device startup - Policy Controlled: Yes * Cache: If the device
/// is offline, the collected data is stored locally, and will be reported when
/// the device is next online: Yes * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_NETWORK_INFO
class GoogleChromeManagementV1NetworkInfo {
  /// List of network devices.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1NetworkDevice>? networkDevices;

  GoogleChromeManagementV1NetworkInfo({this.networkDevices});

  GoogleChromeManagementV1NetworkInfo.fromJson(core.Map json_)
    : this(
        networkDevices:
            (json_['networkDevices'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1NetworkDevice.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (networkDevices != null) 'networkDevices': networkDevices!,
  };
}

/// State of visible/configured networks.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportNetworkStatus](https://chromeenterprise.google/policies/#ReportNetworkStatus)
/// * Data Collection Frequency: 60 minutes * Default Data Reporting Frequency:
/// 3 hours - Policy Controlled: Yes * Cache: If the device is offline, the
/// collected data is stored locally, and will be reported when the device is
/// next online: Yes * Reported for affiliated users only: Yes * Granular
/// permission needed: TELEMETRY_API_NETWORK_REPORT
class GoogleChromeManagementV1NetworkStatusReport {
  /// Current connection state of the network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NETWORK_CONNECTION_STATE_UNSPECIFIED" : Network connection state
  /// unspecified.
  /// - "ONLINE" : The network is connected and internet connectivity is
  /// available.
  /// - "CONNECTED" : The network is connected and not in a detected portal
  /// state, but internet connectivity may not be available.
  /// - "PORTAL" : The network is connected but a portal state was detected.
  /// Internet connectivity may be limited.
  /// - "CONNECTING" : The network is in the process of connecting.
  /// - "NOT_CONNECTED" : The network is not connected.
  core.String? connectionState;

  /// Network connection type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NETWORK_TYPE_UNSPECIFIED" : Network connection type unspecified
  /// - "CELLULAR" : Cellular network connection.
  /// - "ETHERNET" : Ethernet network connection.
  /// - "TETHER" : Tether network connection.
  /// - "VPN" : VPN network connection.
  /// - "WIFI" : Wifi network connection.
  core.String? connectionType;

  /// Whether the wifi encryption key is turned off.
  ///
  /// Output only.
  core.bool? encryptionOn;

  /// Gateway IP address.
  ///
  /// Output only.
  core.String? gatewayIpAddress;

  /// The gateway IPv6 for this interface, if detected
  ///
  /// Output only.
  core.String? gatewayIpv6Address;

  /// Network connection guid.
  ///
  /// Output only.
  core.String? guid;

  /// IPv6 addresses assigned to this network, if any.
  ///
  /// Each address is a string in standard IPv6 text representation (e.g.,
  /// "2001:db8::1").
  ///
  /// Output only.
  core.List<core.String>? ipv6Address;

  /// LAN IP address.
  ///
  /// Output only.
  core.String? lanIpAddress;

  /// The maximum downstream bandwidth in Kilobits per second (Kbps), if
  /// reported by the network interface or connection.
  ///
  /// Output only.
  core.String? linkDownSpeedKbps;

  /// Whether the network was detected as metered.
  ///
  /// Output only.
  core.bool? metered;

  /// Receiving bit rate measured in Megabits per second.
  ///
  /// Output only.
  core.String? receivingBitRateMbps;

  /// Time at which the network state was reported.
  ///
  /// Output only.
  core.String? reportTime;

  /// Frequency the report is sampled.
  ///
  /// Output only.
  core.String? sampleFrequency;

  /// Signal strength for wireless networks measured in decibels.
  ///
  /// Output only.
  core.int? signalStrengthDbm;

  /// Transmission bit rate measured in Megabits per second.
  ///
  /// Output only.
  core.String? transmissionBitRateMbps;

  /// Transmission power measured in decibels.
  ///
  /// Output only.
  core.int? transmissionPowerDbm;

  /// Wifi link quality.
  ///
  /// Value ranges from \[0, 70\]. 0 indicates no signal and 70 indicates a
  /// strong signal.
  ///
  /// Output only.
  core.String? wifiLinkQuality;

  /// Wifi power management enabled
  ///
  /// Output only.
  core.bool? wifiPowerManagementEnabled;

  GoogleChromeManagementV1NetworkStatusReport({
    this.connectionState,
    this.connectionType,
    this.encryptionOn,
    this.gatewayIpAddress,
    this.gatewayIpv6Address,
    this.guid,
    this.ipv6Address,
    this.lanIpAddress,
    this.linkDownSpeedKbps,
    this.metered,
    this.receivingBitRateMbps,
    this.reportTime,
    this.sampleFrequency,
    this.signalStrengthDbm,
    this.transmissionBitRateMbps,
    this.transmissionPowerDbm,
    this.wifiLinkQuality,
    this.wifiPowerManagementEnabled,
  });

  GoogleChromeManagementV1NetworkStatusReport.fromJson(core.Map json_)
    : this(
        connectionState: json_['connectionState'] as core.String?,
        connectionType: json_['connectionType'] as core.String?,
        encryptionOn: json_['encryptionOn'] as core.bool?,
        gatewayIpAddress: json_['gatewayIpAddress'] as core.String?,
        gatewayIpv6Address: json_['gatewayIpv6Address'] as core.String?,
        guid: json_['guid'] as core.String?,
        ipv6Address:
            (json_['ipv6Address'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        lanIpAddress: json_['lanIpAddress'] as core.String?,
        linkDownSpeedKbps: json_['linkDownSpeedKbps'] as core.String?,
        metered: json_['metered'] as core.bool?,
        receivingBitRateMbps: json_['receivingBitRateMbps'] as core.String?,
        reportTime: json_['reportTime'] as core.String?,
        sampleFrequency: json_['sampleFrequency'] as core.String?,
        signalStrengthDbm: json_['signalStrengthDbm'] as core.int?,
        transmissionBitRateMbps:
            json_['transmissionBitRateMbps'] as core.String?,
        transmissionPowerDbm: json_['transmissionPowerDbm'] as core.int?,
        wifiLinkQuality: json_['wifiLinkQuality'] as core.String?,
        wifiPowerManagementEnabled:
            json_['wifiPowerManagementEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectionState != null) 'connectionState': connectionState!,
    if (connectionType != null) 'connectionType': connectionType!,
    if (encryptionOn != null) 'encryptionOn': encryptionOn!,
    if (gatewayIpAddress != null) 'gatewayIpAddress': gatewayIpAddress!,
    if (gatewayIpv6Address != null) 'gatewayIpv6Address': gatewayIpv6Address!,
    if (guid != null) 'guid': guid!,
    if (ipv6Address != null) 'ipv6Address': ipv6Address!,
    if (lanIpAddress != null) 'lanIpAddress': lanIpAddress!,
    if (linkDownSpeedKbps != null) 'linkDownSpeedKbps': linkDownSpeedKbps!,
    if (metered != null) 'metered': metered!,
    if (receivingBitRateMbps != null)
      'receivingBitRateMbps': receivingBitRateMbps!,
    if (reportTime != null) 'reportTime': reportTime!,
    if (sampleFrequency != null) 'sampleFrequency': sampleFrequency!,
    if (signalStrengthDbm != null) 'signalStrengthDbm': signalStrengthDbm!,
    if (transmissionBitRateMbps != null)
      'transmissionBitRateMbps': transmissionBitRateMbps!,
    if (transmissionPowerDbm != null)
      'transmissionPowerDbm': transmissionPowerDbm!,
    if (wifiLinkQuality != null) 'wifiLinkQuality': wifiLinkQuality!,
    if (wifiPowerManagementEnabled != null)
      'wifiPowerManagementEnabled': wifiPowerManagementEnabled!,
  };
}

/// Contains information regarding the current OS update status.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportDeviceOsUpdateStatus](https://chromeenterprise.google/policies/#ReportDeviceOsUpdateStatus)
/// * Data Collection Frequency: Only at Upload * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_OS_REPORT
class GoogleChromeManagementV1OsUpdateStatus {
  /// Timestamp of the last reboot.
  ///
  /// Output only.
  core.String? lastRebootTime;

  /// Timestamp of the last update check.
  ///
  /// Output only.
  core.String? lastUpdateCheckTime;

  /// Timestamp of the last successful update.
  ///
  /// Output only.
  core.String? lastUpdateTime;

  /// New platform version of the os image being downloaded and applied.
  ///
  /// It is only set when update status is OS_IMAGE_DOWNLOAD_IN_PROGRESS or
  /// OS_UPDATE_NEED_REBOOT. Note this could be a dummy "0.0.0.0" for
  /// OS_UPDATE_NEED_REBOOT status for some edge cases, e.g. update engine is
  /// restarted without a reboot.
  ///
  /// Output only.
  core.String? newPlatformVersion;

  /// New requested platform version from the pending updated kiosk app.
  ///
  /// Output only.
  core.String? newRequestedPlatformVersion;

  /// Current state of the os update.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UPDATE_STATE_UNSPECIFIED" : State unspecified.
  /// - "OS_IMAGE_DOWNLOAD_NOT_STARTED" : OS has not started downloading.
  /// - "OS_IMAGE_DOWNLOAD_IN_PROGRESS" : OS has started download on device.
  /// - "OS_UPDATE_NEED_REBOOT" : Device needs reboot to finish upload.
  core.String? updateState;

  GoogleChromeManagementV1OsUpdateStatus({
    this.lastRebootTime,
    this.lastUpdateCheckTime,
    this.lastUpdateTime,
    this.newPlatformVersion,
    this.newRequestedPlatformVersion,
    this.updateState,
  });

  GoogleChromeManagementV1OsUpdateStatus.fromJson(core.Map json_)
    : this(
        lastRebootTime: json_['lastRebootTime'] as core.String?,
        lastUpdateCheckTime: json_['lastUpdateCheckTime'] as core.String?,
        lastUpdateTime: json_['lastUpdateTime'] as core.String?,
        newPlatformVersion: json_['newPlatformVersion'] as core.String?,
        newRequestedPlatformVersion:
            json_['newRequestedPlatformVersion'] as core.String?,
        updateState: json_['updateState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lastRebootTime != null) 'lastRebootTime': lastRebootTime!,
    if (lastUpdateCheckTime != null)
      'lastUpdateCheckTime': lastUpdateCheckTime!,
    if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
    if (newPlatformVersion != null) 'newPlatformVersion': newPlatformVersion!,
    if (newRequestedPlatformVersion != null)
      'newRequestedPlatformVersion': newRequestedPlatformVersion!,
    if (updateState != null) 'updateState': updateState!,
  };
}

/// Peripherals report.
///
/// * Granular permission needed: TELEMETRY_API_PERIPHERALS_REPORT
class GoogleChromeManagementV1PeripheralsReport {
  /// Timestamp of when the report was collected.
  ///
  /// Output only.
  core.String? reportTime;

  /// Reports of all usb connected devices.
  core.List<GoogleChromeManagementV1UsbPeripheralReport>? usbPeripheralReport;

  GoogleChromeManagementV1PeripheralsReport({
    this.reportTime,
    this.usbPeripheralReport,
  });

  GoogleChromeManagementV1PeripheralsReport.fromJson(core.Map json_)
    : this(
        reportTime: json_['reportTime'] as core.String?,
        usbPeripheralReport:
            (json_['usbPeripheralReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1UsbPeripheralReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reportTime != null) 'reportTime': reportTime!,
    if (usbPeripheralReport != null)
      'usbPeripheralReport': usbPeripheralReport!,
  };
}

/// Represents a request to print a document that has been submitted to a
/// printer.
class GoogleChromeManagementV1PrintJob {
  /// Color mode.
  /// Possible string values are:
  /// - "COLOR_MODE_UNSPECIFIED" : Unspecified.
  /// - "BLACK_AND_WHITE" : Black and white.
  /// - "COLOR" : Color.
  core.String? colorMode;

  /// Print job completion timestamp.
  core.String? completeTime;

  /// Number of copies.
  core.int? copyCount;

  /// Print job creation timestamp.
  core.String? createTime;

  /// Number of pages in the document.
  core.int? documentPageCount;

  /// Duplex mode.
  /// Possible string values are:
  /// - "DUPLEX_MODE_UNSPECIFIED" : Unspecified.
  /// - "ONE_SIDED" : One-sided.
  /// - "TWO_SIDED_LONG_EDGE" : Two-sided flipping over long edge.
  /// - "TWO_SIDED_SHORT_EDGE" : Two-sided flipping over short edge.
  core.String? duplexMode;

  /// Unique ID of the print job.
  core.String? id;

  /// Name of the printer used for printing.
  core.String? printer;

  /// API ID of the printer used for printing.
  core.String? printerId;

  /// The final state of the job.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Print job is in an unspecified state.
  /// - "PRINTED" : The document was successfully printed.
  /// - "CANCELLED" : Print job was cancelled.
  /// - "FAILED" : Print job failed.
  core.String? state;

  /// The title of the document.
  core.String? title;

  /// The primary e-mail address of the user who submitted the print job.
  core.String? userEmail;

  /// The unique Directory API ID of the user who submitted the print job.
  core.String? userId;

  GoogleChromeManagementV1PrintJob({
    this.colorMode,
    this.completeTime,
    this.copyCount,
    this.createTime,
    this.documentPageCount,
    this.duplexMode,
    this.id,
    this.printer,
    this.printerId,
    this.state,
    this.title,
    this.userEmail,
    this.userId,
  });

  GoogleChromeManagementV1PrintJob.fromJson(core.Map json_)
    : this(
        colorMode: json_['colorMode'] as core.String?,
        completeTime: json_['completeTime'] as core.String?,
        copyCount: json_['copyCount'] as core.int?,
        createTime: json_['createTime'] as core.String?,
        documentPageCount: json_['documentPageCount'] as core.int?,
        duplexMode: json_['duplexMode'] as core.String?,
        id: json_['id'] as core.String?,
        printer: json_['printer'] as core.String?,
        printerId: json_['printerId'] as core.String?,
        state: json_['state'] as core.String?,
        title: json_['title'] as core.String?,
        userEmail: json_['userEmail'] as core.String?,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (colorMode != null) 'colorMode': colorMode!,
    if (completeTime != null) 'completeTime': completeTime!,
    if (copyCount != null) 'copyCount': copyCount!,
    if (createTime != null) 'createTime': createTime!,
    if (documentPageCount != null) 'documentPageCount': documentPageCount!,
    if (duplexMode != null) 'duplexMode': duplexMode!,
    if (id != null) 'id': id!,
    if (printer != null) 'printer': printer!,
    if (printerId != null) 'printerId': printerId!,
    if (state != null) 'state': state!,
    if (title != null) 'title': title!,
    if (userEmail != null) 'userEmail': userEmail!,
    if (userId != null) 'userId': userId!,
  };
}

/// Report for CountPrintJobsByPrinter, contains statistics on printer usage.
///
/// Contains the total number of print jobs initiated with this printer, the
/// number of users and the number of devices that have initiated at least one
/// print job with this printer.
class GoogleChromeManagementV1PrinterReport {
  /// Number of chrome devices that have been used to send print jobs to the
  /// specified printer.
  core.String? deviceCount;

  /// Number of print jobs sent to the printer.
  core.String? jobCount;

  /// Printer name.
  core.String? printer;

  /// Printer API ID.
  core.String? printerId;

  /// Printer model.
  core.String? printerModel;

  /// Number of users that have sent print jobs to the printer.
  core.String? userCount;

  GoogleChromeManagementV1PrinterReport({
    this.deviceCount,
    this.jobCount,
    this.printer,
    this.printerId,
    this.printerModel,
    this.userCount,
  });

  GoogleChromeManagementV1PrinterReport.fromJson(core.Map json_)
    : this(
        deviceCount: json_['deviceCount'] as core.String?,
        jobCount: json_['jobCount'] as core.String?,
        printer: json_['printer'] as core.String?,
        printerId: json_['printerId'] as core.String?,
        printerModel: json_['printerModel'] as core.String?,
        userCount: json_['userCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceCount != null) 'deviceCount': deviceCount!,
    if (jobCount != null) 'jobCount': jobCount!,
    if (printer != null) 'printer': printer!,
    if (printerId != null) 'printerId': printerId!,
    if (printerModel != null) 'printerModel': printerModel!,
    if (userCount != null) 'userCount': userCount!,
  };
}

/// Risk assessment for a Chrome extension.
class GoogleChromeManagementV1RiskAssessment {
  /// Risk assessment for the extension.
  ///
  /// Currently, this is a numerical value, and its interpretation is specific
  /// to each risk assessment provider.
  core.String? assessment;

  /// A URL that a user can navigate to for more information about the risk
  /// assessment.
  core.String? detailsUrl;

  /// The version of the extension that this assessment applies to.
  core.String? version;

  GoogleChromeManagementV1RiskAssessment({
    this.assessment,
    this.detailsUrl,
    this.version,
  });

  GoogleChromeManagementV1RiskAssessment.fromJson(core.Map json_)
    : this(
        assessment: json_['assessment'] as core.String?,
        detailsUrl: json_['detailsUrl'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assessment != null) 'assessment': assessment!,
    if (detailsUrl != null) 'detailsUrl': detailsUrl!,
    if (version != null) 'version': version!,
  };
}

/// Risk assessment data about an extension/app.
class GoogleChromeManagementV1RiskAssessmentData {
  /// Individual risk assessments.
  core.List<GoogleChromeManagementV1RiskAssessmentEntry>? entries;

  /// Overall assessed risk level across all entries.
  ///
  /// This will be the highest risk level from all entries.
  /// Possible string values are:
  /// - "RISK_LEVEL_UNSPECIFIED" : Risk level not specified.
  /// - "RISK_LEVEL_LOW" : Extension that represents a low risk.
  /// - "RISK_LEVEL_MEDIUM" : Extension that represents a medium risk.
  /// - "RISK_LEVEL_HIGH" : Extension that represents a high risk.
  core.String? overallRiskLevel;

  GoogleChromeManagementV1RiskAssessmentData({
    this.entries,
    this.overallRiskLevel,
  });

  GoogleChromeManagementV1RiskAssessmentData.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1RiskAssessmentEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        overallRiskLevel: json_['overallRiskLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
    if (overallRiskLevel != null) 'overallRiskLevel': overallRiskLevel!,
  };
}

/// One risk assessment entry.
class GoogleChromeManagementV1RiskAssessmentEntry {
  /// The risk assessment provider from which this entry comes from.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RISK_ASSESSMENT_PROVIDER_UNSPECIFIED" : Default value when no provider
  /// is specified.
  /// - "RISK_ASSESSMENT_PROVIDER_CRXCAVATOR" : CRXcavator.
  /// - "RISK_ASSESSMENT_PROVIDER_SPIN_AI" : Spin.Ai.
  /// - "RISK_ASSESSMENT_PROVIDER_LAYERX" : LayerX Security.
  /// - "RISK_ASSESSMENT_PROVIDER_SPIN_AI_V2" : Spin.AI V2.
  core.String? provider;

  /// The details of the provider's risk assessment.
  ///
  /// Output only.
  GoogleChromeManagementV1RiskAssessment? riskAssessment;

  /// The bucketed risk level for the risk assessment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RISK_LEVEL_UNSPECIFIED" : Risk level not specified.
  /// - "RISK_LEVEL_LOW" : Extension that represents a low risk.
  /// - "RISK_LEVEL_MEDIUM" : Extension that represents a medium risk.
  /// - "RISK_LEVEL_HIGH" : Extension that represents a high risk.
  core.String? riskLevel;

  GoogleChromeManagementV1RiskAssessmentEntry({
    this.provider,
    this.riskAssessment,
    this.riskLevel,
  });

  GoogleChromeManagementV1RiskAssessmentEntry.fromJson(core.Map json_)
    : this(
        provider: json_['provider'] as core.String?,
        riskAssessment:
            json_.containsKey('riskAssessment')
                ? GoogleChromeManagementV1RiskAssessment.fromJson(
                  json_['riskAssessment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        riskLevel: json_['riskLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (provider != null) 'provider': provider!,
    if (riskAssessment != null) 'riskAssessment': riskAssessment!,
    if (riskLevel != null) 'riskLevel': riskLevel!,
  };
}

/// Runtime counters retrieved from CPU.
///
/// Currently the runtime counters telemetry is only supported by Intel vPro PSR
/// on Gen 14+.
class GoogleChromeManagementV1RuntimeCountersReport {
  /// Number of times that the device has entered into the hibernation state.
  ///
  /// Currently obtained via the PSR, count from S0-\>S4.
  core.String? enterHibernationCount;

  /// Number of times that the device has entered into the power-off state.
  ///
  /// Currently obtained via the PSR, count from S0-\>S5.
  core.String? enterPoweroffCount;

  /// Number of times that the device has entered into the sleep state.
  ///
  /// Currently obtained via the PSR, count from S0-\>S3.
  core.String? enterSleepCount;

  /// Timestamp when the report was collected.
  core.String? reportTime;

  /// Total lifetime runtime.
  ///
  /// Currently always S0 runtime from Intel vPro PSR.
  core.String? uptimeRuntimeDuration;

  GoogleChromeManagementV1RuntimeCountersReport({
    this.enterHibernationCount,
    this.enterPoweroffCount,
    this.enterSleepCount,
    this.reportTime,
    this.uptimeRuntimeDuration,
  });

  GoogleChromeManagementV1RuntimeCountersReport.fromJson(core.Map json_)
    : this(
        enterHibernationCount: json_['enterHibernationCount'] as core.String?,
        enterPoweroffCount: json_['enterPoweroffCount'] as core.String?,
        enterSleepCount: json_['enterSleepCount'] as core.String?,
        reportTime: json_['reportTime'] as core.String?,
        uptimeRuntimeDuration: json_['uptimeRuntimeDuration'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enterHibernationCount != null)
      'enterHibernationCount': enterHibernationCount!,
    if (enterPoweroffCount != null) 'enterPoweroffCount': enterPoweroffCount!,
    if (enterSleepCount != null) 'enterSleepCount': enterSleepCount!,
    if (reportTime != null) 'reportTime': reportTime!,
    if (uptimeRuntimeDuration != null)
      'uptimeRuntimeDuration': uptimeRuntimeDuration!,
  };
}

/// Status data for storage.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportDeviceStorageStatus](https://chromeenterprise.google/policies/#ReportDeviceStorageStatus)
/// * Data Collection Frequency: Only at Upload * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_STORAGE_INFO
class GoogleChromeManagementV1StorageInfo {
  /// The available space for user data storage in the device in bytes.
  core.String? availableDiskBytes;

  /// The total space for user data storage in the device in bytes.
  core.String? totalDiskBytes;

  /// Information for disk volumes
  core.List<GoogleChromeManagementV1StorageInfoDiskVolume>? volume;

  GoogleChromeManagementV1StorageInfo({
    this.availableDiskBytes,
    this.totalDiskBytes,
    this.volume,
  });

  GoogleChromeManagementV1StorageInfo.fromJson(core.Map json_)
    : this(
        availableDiskBytes: json_['availableDiskBytes'] as core.String?,
        totalDiskBytes: json_['totalDiskBytes'] as core.String?,
        volume:
            (json_['volume'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1StorageInfoDiskVolume.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (availableDiskBytes != null) 'availableDiskBytes': availableDiskBytes!,
    if (totalDiskBytes != null) 'totalDiskBytes': totalDiskBytes!,
    if (volume != null) 'volume': volume!,
  };
}

/// Information for disk volumes
class GoogleChromeManagementV1StorageInfoDiskVolume {
  /// Free storage space in bytes.
  core.String? storageFreeBytes;

  /// Total storage space in bytes.
  core.String? storageTotalBytes;

  /// Disk volume id.
  core.String? volumeId;

  GoogleChromeManagementV1StorageInfoDiskVolume({
    this.storageFreeBytes,
    this.storageTotalBytes,
    this.volumeId,
  });

  GoogleChromeManagementV1StorageInfoDiskVolume.fromJson(core.Map json_)
    : this(
        storageFreeBytes: json_['storageFreeBytes'] as core.String?,
        storageTotalBytes: json_['storageTotalBytes'] as core.String?,
        volumeId: json_['volumeId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (storageFreeBytes != null) 'storageFreeBytes': storageFreeBytes!,
    if (storageTotalBytes != null) 'storageTotalBytes': storageTotalBytes!,
    if (volumeId != null) 'volumeId': volumeId!,
  };
}

/// Status data for storage.
///
/// * This field is telemetry information and this will change over time as the
/// device is utilized. * Data for this field is controlled via policy:
/// [ReportDeviceStorageStatus](https://chromeenterprise.google/policies/#ReportDeviceStorageStatus)
/// * Data Collection Frequency: Only at Upload * Default Data Reporting
/// Frequency: 3 hours - Policy Controlled: Yes * Cache: If the device is
/// offline, the collected data is stored locally, and will be reported when the
/// device is next online: No * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_STORAGE_REPORT
class GoogleChromeManagementV1StorageStatusReport {
  /// Reports on disk.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1DiskInfo>? disk;

  /// Timestamp of when the sample was collected on device
  ///
  /// Output only.
  core.String? reportTime;

  GoogleChromeManagementV1StorageStatusReport({this.disk, this.reportTime});

  GoogleChromeManagementV1StorageStatusReport.fromJson(core.Map json_)
    : this(
        disk:
            (json_['disk'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1DiskInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        reportTime: json_['reportTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disk != null) 'disk': disk!,
    if (reportTime != null) 'reportTime': reportTime!,
  };
}

/// App installation data.
class GoogleChromeManagementV1TelemetryAppInstallEvent {
  /// App id.
  ///
  /// For PWAs this is the start URL, and for extensions this is the extension
  /// id.
  core.String? appId;

  /// App installation reason.
  /// Possible string values are:
  /// - "APPLICATION_INSTALL_REASON_UNSPECIFIED" : Application install reason is
  /// unknown.
  /// - "APPLICATION_INSTALL_REASON_SYSTEM" : Application installed with the
  /// system and is considered part of the OS.
  /// - "APPLICATION_INSTALL_REASON_POLICY" : Application installed by policy.
  /// - "APPLICATION_INSTALL_REASON_OEM" : Application installed by an original
  /// equipment manufacturer (OEM).
  /// - "APPLICATION_INSTALL_REASON_DEFAULT" : Application installed by default,
  /// but is not considered a system app.
  /// - "APPLICATION_INSTALL_REASON_SYNC" : Application installed by sync.
  /// - "APPLICATION_INSTALL_REASON_USER" : Application installed by user
  /// action.
  /// - "APPLICATION_INSTALL_REASON_SUB_APP" : Application installed bt SubApp
  /// API call.
  /// - "APPLICATION_INSTALL_REASON_KIOSK" : Application installed by Kiosk on
  /// Chrome OS.
  /// - "APPLICATION_INSTALL_REASON_COMMAND_LINE" : Application installed by
  /// command line argument.
  core.String? appInstallReason;

  /// App installation source.
  /// Possible string values are:
  /// - "APPLICATION_INSTALL_SOURCE_UNSPECIFIED" : Application install source is
  /// unknown.
  /// - "APPLICATION_INSTALL_SOURCE_SYSTEM" : Application installed as part of
  /// Chrome OS.
  /// - "APPLICATION_INSTALL_SOURCE_SYNC" : Application install source is a
  /// sync.
  /// - "APPLICATION_INSTALL_SOURCE_PLAY_STORE" : Application install source is
  /// the Play store.
  /// - "APPLICATION_INSTALL_SOURCE_CHROME_WEB_STORE" : Application install
  /// source is the Chrome web store.
  /// - "APPLICATION_INSTALL_SOURCE_BROWSER" : Application install source is a
  /// browser.
  core.String? appInstallSource;

  /// App installation time depending on the app lifecycle.
  /// Possible string values are:
  /// - "APPLICATION_INSTALL_TIME_UNSPECIFIED" : Application install time
  /// unknown.
  /// - "APPLICATION_INSTALL_TIME_INIT" : Application install is initialized.
  /// - "APPLICATION_INSTALL_TIME_RUNNING" : Application install is currently
  /// running.
  core.String? appInstallTime;

  /// Type of app.
  /// Possible string values are:
  /// - "TELEMETRY_APPLICATION_TYPE_UNSPECIFIED" : Application type unknown.
  /// - "APPLICATION_TYPE_ARC" : Application type arc (Android app).
  /// - "APPLICATION_TYPE_BUILT_IN" : Deprecated. This value is no longer used.
  /// Application type built-in.
  /// - "APPLICATION_TYPE_CROSTINI" : Application type Linux (via Crostini).
  /// - "APPLICATION_TYPE_CHROME_APP" : Application type Chrome app.
  /// - "APPLICATION_TYPE_WEB" : Application type web.
  /// - "APPLICATION_TYPE_MAC_OS" : Application type Mac OS.
  /// - "APPLICATION_TYPE_PLUGIN_VM" : Application type Plugin VM.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER" : Deprecated. This value is no
  /// longer used. Application type standalone browser (Lacros browser app).
  /// - "APPLICATION_TYPE_REMOTE" : Application type remote.
  /// - "APPLICATION_TYPE_BOREALIS" : Application type borealis.
  /// - "APPLICATION_TYPE_SYSTEM_WEB" : Application type system web.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER_CHROME_APP" : Deprecated. This
  /// value is no longer used. Application type standalone browser chrome app.
  /// - "APPLICATION_TYPE_EXTENSION" : Application type extension.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER_EXTENSION" : Deprecated. This value
  /// is no longer used. Application type standalone browser extension.
  /// - "APPLICATION_TYPE_BRUSCHETTA" : Application type bruschetta.
  core.String? appType;

  GoogleChromeManagementV1TelemetryAppInstallEvent({
    this.appId,
    this.appInstallReason,
    this.appInstallSource,
    this.appInstallTime,
    this.appType,
  });

  GoogleChromeManagementV1TelemetryAppInstallEvent.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        appInstallReason: json_['appInstallReason'] as core.String?,
        appInstallSource: json_['appInstallSource'] as core.String?,
        appInstallTime: json_['appInstallTime'] as core.String?,
        appType: json_['appType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appId != null) 'appId': appId!,
    if (appInstallReason != null) 'appInstallReason': appInstallReason!,
    if (appInstallSource != null) 'appInstallSource': appInstallSource!,
    if (appInstallTime != null) 'appInstallTime': appInstallTime!,
    if (appType != null) 'appType': appType!,
  };
}

/// App launch data.
class GoogleChromeManagementV1TelemetryAppLaunchEvent {
  /// App id.
  ///
  /// For PWAs this is the start URL, and for extensions this is the extension
  /// id.
  core.String? appId;

  /// App launch source.
  /// Possible string values are:
  /// - "APPLICATION_LAUNCH_SOURCE_UNSPECIFIED" : Application launch source
  /// unknown.
  /// - "APPLICATION_LAUNCH_SOURCE_APP_LIST_GRID" : Application launched from
  /// the grid of apps, not the search box.
  /// - "APPLICATION_LAUNCH_SOURCE_APP_LIST_GRID_CONTEXT_MENU" : Application
  /// launched from the grid of apps, off of the context menu.
  /// - "APPLICATION_LAUNCH_SOURCE_APP_LIST_QUERY" : Application launched from
  /// query-dependent results (larger icons).
  /// - "APPLICATION_LAUNCH_SOURCE_APP_LIST_QUERY_CONTEXT_MENU" : Application
  /// launched from query-dependent results, off of the context menu.
  /// - "APPLICATION_LAUNCH_SOURCE_APP_LIST_RECOMMENDATION" : Application
  /// launched from query-less recommendations (smaller icons).
  /// - "APPLICATION_LAUNCH_SOURCE_PARENTAL_CONTROLS" : Application launched
  /// from the Parental Controls Settings section and Per App time notification.
  /// - "APPLICATION_LAUNCH_SOURCE_SHELF" : Application launched from shelf.
  /// - "APPLICATION_LAUNCH_SOURCE_FILE_MANAGER" : Application launched from the
  /// file manager
  /// - "APPLICATION_LAUNCH_SOURCE_LINK" : Application launched from left click
  /// on a link in the browser.
  /// - "APPLICATION_LAUNCH_SOURCE_OMNIBOX" : Application launched from entering
  /// a URL in the Omnibox on the browser.
  /// - "APPLICATION_LAUNCH_SOURCE_CHROME_INTERNAL" : Application launched from
  /// a Chrome internal call.
  /// - "APPLICATION_LAUNCH_SOURCE_KEYBOARD" : Application launched from
  /// keyboard shortcut for opening app.
  /// - "APPLICATION_LAUNCH_SOURCE_OTHER_APP" : Application launched from
  /// clicking a link in another app or WebUI.
  /// - "APPLICATION_LAUNCH_SOURCE_MENU" : Application launched from menu.
  /// - "APPLICATION_LAUNCH_SOURCE_INSTALLED_NOTIFICATION" : Application
  /// launched from the installed notification.
  /// - "APPLICATION_LAUNCH_SOURCE_TEST" : Application launched from a test.
  /// - "APPLICATION_LAUNCH_SOURCE_ARC" : Application launched from Arc.
  /// - "APPLICATION_LAUNCH_SOURCE_SHARESHEET" : Application launched from
  /// Sharesheet.
  /// - "APPLICATION_LAUNCH_SOURCE_RELEASE_NOTES_NOTIFICATION" : Application
  /// launched from the release notes notification.
  /// - "APPLICATION_LAUNCH_SOURCE_FULL_RESTORE" : Application launched from a
  /// full restore.
  /// - "APPLICATION_LAUNCH_SOURCE_SMART_TEXT_CONTEXT_MENU" : Application
  /// launched from a smart text selection context menu.
  /// - "APPLICATION_LAUNCH_SOURCE_DISCOVER_TAB_NOTIFICATION" : Application
  /// launched from a discover tab notification.
  /// - "APPLICATION_LAUNCH_SOURCE_MANAGEMENT_API" : Application launched from
  /// the Management API.
  /// - "APPLICATION_LAUNCH_SOURCE_KIOSK" : Application launched from kiosk.
  /// - "APPLICATION_LAUNCH_SOURCE_COMMAND_LINE" : Application launched from the
  /// command line.
  /// - "APPLICATION_LAUNCH_SOURCE_BACKGROUND_MODE" : Application launched from
  /// background mode.
  /// - "APPLICATION_LAUNCH_SOURCE_NEW_TAB_PAGE" : Application launched from the
  /// new tab page.
  /// - "APPLICATION_LAUNCH_SOURCE_INTENT_URL" : Application launched from an
  /// intent URL.
  /// - "APPLICATION_LAUNCH_SOURCE_OS_LOGIN" : Application launched from OS
  /// login.
  /// - "APPLICATION_LAUNCH_SOURCE_PROTOCOL_HANDLER" : Application launched from
  /// protocol handler.
  /// - "APPLICATION_LAUNCH_SOURCE_URL_HANDLER" : Application launched from URL
  /// handler.
  /// - "APPLICATION_LAUNCH_SOURCE_LOCK_SCREEN" : Application launched from lock
  /// screen app launcher.
  /// - "APPLICATION_LAUNCH_SOURCE_APP_HOME_PAGE" : Application launched from
  /// app home (chrome://apps) page.
  /// - "APPLICATION_LAUNCH_SOURCE_REPARENTING" : Application launched from
  /// moving content into an app.
  /// - "APPLICATION_LAUNCH_SOURCE_PROFILE_MENU" : Application launched from
  /// profile menu of installable chrome://password-manager WebUI.
  /// - "APPLICATION_LAUNCH_SOURCE_SYSTEM_TRAY_CALENDAR" : Application launched
  /// from system tray calendar.
  /// - "APPLICATION_LAUNCH_SOURCE_INSTALLER" : Application launched from source
  /// installer.
  /// - "APPLICATION_LAUNCH_SOURCE_FIRST_RUN" : Count first-run Help app
  /// launches separately so that we can understand the number of user-triggered
  /// launches.
  /// - "APPLICATION_LAUNCH_SOURCE_WELCOME_TOUR" : Application launched from
  /// welcome tour.
  /// - "APPLICATION_LAUNCH_SOURCE_FOCUS_MODE" : Applicationed launched from
  /// focus panel.
  /// - "APPLICATION_LAUNCH_SOURCE_SPARKY" : Application launched from
  /// experimental feature Sparky.
  /// - "APPLICATION_LAUNCH_SOURCE_NAVIGATION_CAPTURING" : Application launched
  /// from navigation capturing.
  /// - "APPLICATION_LAUNCH_SOURCE_WEB_INSTALL_API" : Application launched from
  /// web install API.
  core.String? appLaunchSource;

  /// Type of app.
  /// Possible string values are:
  /// - "TELEMETRY_APPLICATION_TYPE_UNSPECIFIED" : Application type unknown.
  /// - "APPLICATION_TYPE_ARC" : Application type arc (Android app).
  /// - "APPLICATION_TYPE_BUILT_IN" : Deprecated. This value is no longer used.
  /// Application type built-in.
  /// - "APPLICATION_TYPE_CROSTINI" : Application type Linux (via Crostini).
  /// - "APPLICATION_TYPE_CHROME_APP" : Application type Chrome app.
  /// - "APPLICATION_TYPE_WEB" : Application type web.
  /// - "APPLICATION_TYPE_MAC_OS" : Application type Mac OS.
  /// - "APPLICATION_TYPE_PLUGIN_VM" : Application type Plugin VM.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER" : Deprecated. This value is no
  /// longer used. Application type standalone browser (Lacros browser app).
  /// - "APPLICATION_TYPE_REMOTE" : Application type remote.
  /// - "APPLICATION_TYPE_BOREALIS" : Application type borealis.
  /// - "APPLICATION_TYPE_SYSTEM_WEB" : Application type system web.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER_CHROME_APP" : Deprecated. This
  /// value is no longer used. Application type standalone browser chrome app.
  /// - "APPLICATION_TYPE_EXTENSION" : Application type extension.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER_EXTENSION" : Deprecated. This value
  /// is no longer used. Application type standalone browser extension.
  /// - "APPLICATION_TYPE_BRUSCHETTA" : Application type bruschetta.
  core.String? appType;

  GoogleChromeManagementV1TelemetryAppLaunchEvent({
    this.appId,
    this.appLaunchSource,
    this.appType,
  });

  GoogleChromeManagementV1TelemetryAppLaunchEvent.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        appLaunchSource: json_['appLaunchSource'] as core.String?,
        appType: json_['appType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appId != null) 'appId': appId!,
    if (appLaunchSource != null) 'appLaunchSource': appLaunchSource!,
    if (appType != null) 'appType': appType!,
  };
}

/// App uninstall data.
class GoogleChromeManagementV1TelemetryAppUninstallEvent {
  /// App id.
  ///
  /// For PWAs this is the start URL, and for extensions this is the extension
  /// id.
  core.String? appId;

  /// Type of app.
  /// Possible string values are:
  /// - "TELEMETRY_APPLICATION_TYPE_UNSPECIFIED" : Application type unknown.
  /// - "APPLICATION_TYPE_ARC" : Application type arc (Android app).
  /// - "APPLICATION_TYPE_BUILT_IN" : Deprecated. This value is no longer used.
  /// Application type built-in.
  /// - "APPLICATION_TYPE_CROSTINI" : Application type Linux (via Crostini).
  /// - "APPLICATION_TYPE_CHROME_APP" : Application type Chrome app.
  /// - "APPLICATION_TYPE_WEB" : Application type web.
  /// - "APPLICATION_TYPE_MAC_OS" : Application type Mac OS.
  /// - "APPLICATION_TYPE_PLUGIN_VM" : Application type Plugin VM.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER" : Deprecated. This value is no
  /// longer used. Application type standalone browser (Lacros browser app).
  /// - "APPLICATION_TYPE_REMOTE" : Application type remote.
  /// - "APPLICATION_TYPE_BOREALIS" : Application type borealis.
  /// - "APPLICATION_TYPE_SYSTEM_WEB" : Application type system web.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER_CHROME_APP" : Deprecated. This
  /// value is no longer used. Application type standalone browser chrome app.
  /// - "APPLICATION_TYPE_EXTENSION" : Application type extension.
  /// - "APPLICATION_TYPE_STANDALONE_BROWSER_EXTENSION" : Deprecated. This value
  /// is no longer used. Application type standalone browser extension.
  /// - "APPLICATION_TYPE_BRUSCHETTA" : Application type bruschetta.
  core.String? appType;

  /// App uninstall source.
  /// Possible string values are:
  /// - "APPLICATION_UNINSTALL_SOURCE_UNSPECIFIED" : Application uninstall
  /// source unknown.
  /// - "APPLICATION_UNINSTALL_SOURCE_APP_LIST" : Application uninstalled from
  /// the App List (Launcher).
  /// - "APPLICATION_UNINSTALL_SOURCE_APP_MANAGEMENT" : Application uninstalled
  /// from the App Managedment page.
  /// - "APPLICATION_UNINSTALL_SOURCE_SHELF" : Application uninstalled from the
  /// Shelf.
  /// - "APPLICATION_UNINSTALL_SOURCE_MIGRATION" : Application uninstalled by
  /// app migration.
  core.String? appUninstallSource;

  GoogleChromeManagementV1TelemetryAppUninstallEvent({
    this.appId,
    this.appType,
    this.appUninstallSource,
  });

  GoogleChromeManagementV1TelemetryAppUninstallEvent.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        appType: json_['appType'] as core.String?,
        appUninstallSource: json_['appUninstallSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appId != null) 'appId': appId!,
    if (appType != null) 'appType': appType!,
    if (appUninstallSource != null) 'appUninstallSource': appUninstallSource!,
  };
}

/// `TelemetryAudioSevereUnderrunEvent` is triggered when a audio devices run
/// out of buffer data for more than 5 seconds.
///
/// * Granular permission needed: TELEMETRY_API_AUDIO_REPORT
typedef GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent = $Empty;

/// Telemetry data collected from a managed device.
///
/// * Granular permission needed: TELEMETRY_API_DEVICE
class GoogleChromeManagementV1TelemetryDevice {
  /// App reports collected periodically sorted in a decreasing order of
  /// report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1AppReport>? appReport;

  /// Audio reports collected periodically sorted in a decreasing order of
  /// report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1AudioStatusReport>? audioStatusReport;

  /// Information on battery specs for the device.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1BatteryInfo>? batteryInfo;

  /// Battery reports collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1BatteryStatusReport>? batteryStatusReport;

  /// Boot performance reports of the device.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1BootPerformanceReport>?
  bootPerformanceReport;

  /// Information regarding CPU specs for the device.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1CpuInfo>? cpuInfo;

  /// CPU status reports collected periodically sorted in a decreasing order of
  /// report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1CpuStatusReport>? cpuStatusReport;

  /// Google Workspace Customer whose enterprise enrolled the device.
  ///
  /// Output only.
  core.String? customer;

  /// The unique Directory API ID of the device.
  ///
  /// This value is the same as the Admin Console's Directory API ID in the
  /// ChromeOS Devices tab
  ///
  /// Output only.
  core.String? deviceId;

  /// Contains information regarding Graphic peripherals for the device.
  ///
  /// Output only.
  GoogleChromeManagementV1GraphicsInfo? graphicsInfo;

  /// Graphics reports collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1GraphicsStatusReport>? graphicsStatusReport;

  /// Heartbeat status report containing timestamps periodically sorted in
  /// decreasing order of report_time
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1HeartbeatStatusReport>?
  heartbeatStatusReport;

  /// Kiosk app status report for the kiosk device
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1KioskAppStatusReport>? kioskAppStatusReport;

  /// Information regarding memory specs for the device.
  ///
  /// Output only.
  GoogleChromeManagementV1MemoryInfo? memoryInfo;

  /// Memory status reports collected periodically sorted decreasing by
  /// report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1MemoryStatusReport>? memoryStatusReport;

  /// Resource name of the device.
  ///
  /// Output only.
  core.String? name;

  /// Network bandwidth reports collected periodically sorted in a decreasing
  /// order of report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1NetworkBandwidthReport>?
  networkBandwidthReport;

  /// Network diagnostics collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1NetworkDiagnosticsReport>?
  networkDiagnosticsReport;

  /// Network devices information.
  ///
  /// Output only.
  GoogleChromeManagementV1NetworkInfo? networkInfo;

  /// Network specs collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1NetworkStatusReport>? networkStatusReport;

  /// Organization unit ID of the device.
  ///
  /// Output only.
  core.String? orgUnitId;

  /// Contains relevant information regarding ChromeOS update status.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1OsUpdateStatus>? osUpdateStatus;

  /// Peripherals reports collected periodically sorted in a decreasing order of
  /// report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1PeripheralsReport>? peripheralsReport;

  /// Runtime counters reports collected device lifetime runtime, as well as the
  /// counts of S0-\>S3, S0-\>S4, and S0-\>S5 transitions, meaning entering into
  /// sleep, hibernation, and power-off states
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1RuntimeCountersReport>?
  runtimeCountersReport;

  /// Device serial number.
  ///
  /// This value is the same as the Admin Console's Serial Number in the
  /// ChromeOS Devices tab.
  ///
  /// Output only.
  core.String? serialNumber;

  /// Information of storage specs for the device.
  ///
  /// Output only.
  GoogleChromeManagementV1StorageInfo? storageInfo;

  /// Storage reports collected periodically.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1StorageStatusReport>? storageStatusReport;

  /// Information on Thunderbolt bus.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1ThunderboltInfo>? thunderboltInfo;

  GoogleChromeManagementV1TelemetryDevice({
    this.appReport,
    this.audioStatusReport,
    this.batteryInfo,
    this.batteryStatusReport,
    this.bootPerformanceReport,
    this.cpuInfo,
    this.cpuStatusReport,
    this.customer,
    this.deviceId,
    this.graphicsInfo,
    this.graphicsStatusReport,
    this.heartbeatStatusReport,
    this.kioskAppStatusReport,
    this.memoryInfo,
    this.memoryStatusReport,
    this.name,
    this.networkBandwidthReport,
    this.networkDiagnosticsReport,
    this.networkInfo,
    this.networkStatusReport,
    this.orgUnitId,
    this.osUpdateStatus,
    this.peripheralsReport,
    this.runtimeCountersReport,
    this.serialNumber,
    this.storageInfo,
    this.storageStatusReport,
    this.thunderboltInfo,
  });

  GoogleChromeManagementV1TelemetryDevice.fromJson(core.Map json_)
    : this(
        appReport:
            (json_['appReport'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1AppReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        audioStatusReport:
            (json_['audioStatusReport'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1AudioStatusReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        batteryInfo:
            (json_['batteryInfo'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1BatteryInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        batteryStatusReport:
            (json_['batteryStatusReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1BatteryStatusReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        bootPerformanceReport:
            (json_['bootPerformanceReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1BootPerformanceReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        cpuInfo:
            (json_['cpuInfo'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1CpuInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        cpuStatusReport:
            (json_['cpuStatusReport'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1CpuStatusReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        customer: json_['customer'] as core.String?,
        deviceId: json_['deviceId'] as core.String?,
        graphicsInfo:
            json_.containsKey('graphicsInfo')
                ? GoogleChromeManagementV1GraphicsInfo.fromJson(
                  json_['graphicsInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        graphicsStatusReport:
            (json_['graphicsStatusReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1GraphicsStatusReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        heartbeatStatusReport:
            (json_['heartbeatStatusReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1HeartbeatStatusReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        kioskAppStatusReport:
            (json_['kioskAppStatusReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1KioskAppStatusReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        memoryInfo:
            json_.containsKey('memoryInfo')
                ? GoogleChromeManagementV1MemoryInfo.fromJson(
                  json_['memoryInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        memoryStatusReport:
            (json_['memoryStatusReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1MemoryStatusReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        networkBandwidthReport:
            (json_['networkBandwidthReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1NetworkBandwidthReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        networkDiagnosticsReport:
            (json_['networkDiagnosticsReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1NetworkDiagnosticsReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        networkInfo:
            json_.containsKey('networkInfo')
                ? GoogleChromeManagementV1NetworkInfo.fromJson(
                  json_['networkInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        networkStatusReport:
            (json_['networkStatusReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1NetworkStatusReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        orgUnitId: json_['orgUnitId'] as core.String?,
        osUpdateStatus:
            (json_['osUpdateStatus'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1OsUpdateStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        peripheralsReport:
            (json_['peripheralsReport'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1PeripheralsReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        runtimeCountersReport:
            (json_['runtimeCountersReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1RuntimeCountersReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        serialNumber: json_['serialNumber'] as core.String?,
        storageInfo:
            json_.containsKey('storageInfo')
                ? GoogleChromeManagementV1StorageInfo.fromJson(
                  json_['storageInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        storageStatusReport:
            (json_['storageStatusReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1StorageStatusReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        thunderboltInfo:
            (json_['thunderboltInfo'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1ThunderboltInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appReport != null) 'appReport': appReport!,
    if (audioStatusReport != null) 'audioStatusReport': audioStatusReport!,
    if (batteryInfo != null) 'batteryInfo': batteryInfo!,
    if (batteryStatusReport != null)
      'batteryStatusReport': batteryStatusReport!,
    if (bootPerformanceReport != null)
      'bootPerformanceReport': bootPerformanceReport!,
    if (cpuInfo != null) 'cpuInfo': cpuInfo!,
    if (cpuStatusReport != null) 'cpuStatusReport': cpuStatusReport!,
    if (customer != null) 'customer': customer!,
    if (deviceId != null) 'deviceId': deviceId!,
    if (graphicsInfo != null) 'graphicsInfo': graphicsInfo!,
    if (graphicsStatusReport != null)
      'graphicsStatusReport': graphicsStatusReport!,
    if (heartbeatStatusReport != null)
      'heartbeatStatusReport': heartbeatStatusReport!,
    if (kioskAppStatusReport != null)
      'kioskAppStatusReport': kioskAppStatusReport!,
    if (memoryInfo != null) 'memoryInfo': memoryInfo!,
    if (memoryStatusReport != null) 'memoryStatusReport': memoryStatusReport!,
    if (name != null) 'name': name!,
    if (networkBandwidthReport != null)
      'networkBandwidthReport': networkBandwidthReport!,
    if (networkDiagnosticsReport != null)
      'networkDiagnosticsReport': networkDiagnosticsReport!,
    if (networkInfo != null) 'networkInfo': networkInfo!,
    if (networkStatusReport != null)
      'networkStatusReport': networkStatusReport!,
    if (orgUnitId != null) 'orgUnitId': orgUnitId!,
    if (osUpdateStatus != null) 'osUpdateStatus': osUpdateStatus!,
    if (peripheralsReport != null) 'peripheralsReport': peripheralsReport!,
    if (runtimeCountersReport != null)
      'runtimeCountersReport': runtimeCountersReport!,
    if (serialNumber != null) 'serialNumber': serialNumber!,
    if (storageInfo != null) 'storageInfo': storageInfo!,
    if (storageStatusReport != null)
      'storageStatusReport': storageStatusReport!,
    if (thunderboltInfo != null) 'thunderboltInfo': thunderboltInfo!,
  };
}

/// Information about a device associated with telemetry data.
///
/// * Granular Permission needed: TELEMETRY_API_DEVICE
class GoogleChromeManagementV1TelemetryDeviceInfo {
  /// The unique Directory API ID of the device.
  ///
  /// This value is the same as the Admin Console's Directory API ID in the
  /// ChromeOS Devices tab.
  ///
  /// Output only.
  core.String? deviceId;

  /// Organization unit ID of the device.
  ///
  /// Output only.
  core.String? orgUnitId;

  GoogleChromeManagementV1TelemetryDeviceInfo({this.deviceId, this.orgUnitId});

  GoogleChromeManagementV1TelemetryDeviceInfo.fromJson(core.Map json_)
    : this(
        deviceId: json_['deviceId'] as core.String?,
        orgUnitId: json_['orgUnitId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceId != null) 'deviceId': deviceId!,
    if (orgUnitId != null) 'orgUnitId': orgUnitId!,
  };
}

/// Telemetry data reported by a managed device.
class GoogleChromeManagementV1TelemetryEvent {
  /// Payload for app install event.
  ///
  /// Present only when `event_type` is `APP_INSTALLED`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryAppInstallEvent? appInstallEvent;

  /// Payload for app launch event.Present only when `event_type` is
  /// `APP_LAUNCHED`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryAppLaunchEvent? appLaunchEvent;

  /// Payload for app uninstall event.
  ///
  /// Present only when `event_type` is `APP_UNINSTALLED`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryAppUninstallEvent? appUninstallEvent;

  /// Payload for audio severe underrun event.
  ///
  /// Present only when the `event_type` field is `AUDIO_SEVERE_UNDERRUN`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent?
  audioSevereUnderrunEvent;

  /// Information about the device associated with the event.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryDeviceInfo? device;

  /// The event type of the current event.
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED" : Event type unknown.
  /// - "AUDIO_SEVERE_UNDERRUN" : Triggered when a audio devices run out of
  /// buffer data for more than 5 seconds.
  /// - "NETWORK_STATE_CHANGE" : Triggered immediately on any changes to a
  /// network connection.
  /// - "USB_ADDED" : Triggered when USB devices are added.
  /// - "USB_REMOVED" : Triggered when USB devices are removed.
  /// - "NETWORK_HTTPS_LATENCY_CHANGE" : Triggered when a new HTTPS latency
  /// problem was detected or the device has recovered form an existing HTTPS
  /// latency problem.
  /// - "WIFI_SIGNAL_STRENGTH_LOW" : Triggered when connected WiFi network
  /// signal strength drops below -70dBm.
  /// - "WIFI_SIGNAL_STRENGTH_RECOVERED" : Triggered when connected WiFi network
  /// signal strength is recovered from a signal drop.
  /// - "VPN_CONNECTION_STATE_CHANGE" : Triggered on changes to VPN connections.
  /// - "APP_INSTALLED" : Triggered when an app is installed.
  /// - "APP_UNINSTALLED" : Triggered when an app is uninstalled.
  /// - "APP_LAUNCHED" : Triggered when an app is launched.
  /// - "OS_CRASH" : Triggered when a crash occurs.
  /// - "EXTERNAL_DISPLAY_CONNECTED" : Triggered when an external display is
  /// connected.
  /// - "EXTERNAL_DISPLAY_DISCONNECTED" : Triggered when an external display is
  /// disconnected.
  core.String? eventType;

  /// Payload for external display connected/disconnected event.
  ///
  /// Present only when `event_type` is `EXTERNAL_DISPLAY_CONNECTED` or
  /// `EXTERNAL_DISPLAY_DISCONNECTED`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryExternalDisplayEvent? externalDisplaysEvent;

  /// Payload for HTTPS latency change event.
  ///
  /// Present only when `event_type` is `NETWORK_HTTPS_LATENCY_CHANGE`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent?
  httpsLatencyChangeEvent;

  /// Resource name of the event.
  ///
  /// Output only.
  core.String? name;

  /// Payload for network connection state change event.
  ///
  /// Present only when `event_type` is `NETWORK_STATE_CHANGE`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent?
  networkStateChangeEvent;

  /// Payload for OS crash event.
  ///
  /// Present only when `event_type` is `OS_CRASH`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryOsCrashEvent? osCrashEvent;

  /// Timestamp that represents when the event was reported.
  core.String? reportTime;

  /// Payload for usb peripherals event.
  ///
  /// Present only when the `event_type` field is either `USB_ADDED` or
  /// `USB_REMOVED`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryUsbPeripheralsEvent? usbPeripheralsEvent;

  /// Information about the user associated with the event.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryUserInfo? user;

  /// Payload for VPN connection state change event.
  ///
  /// Present only when `event_type` is `VPN_CONNECTION_STATE_CHANGE`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent?
  vpnConnectionStateChangeEvent;

  /// Payload for WiFi signal strength events.
  ///
  /// Present only when `event_type` is `WIFI_SIGNAL_STRENGTH_LOW` or
  /// `WIFI_SIGNAL_STRENGTH_RECOVERED`.
  ///
  /// Output only.
  GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent?
  wifiSignalStrengthEvent;

  GoogleChromeManagementV1TelemetryEvent({
    this.appInstallEvent,
    this.appLaunchEvent,
    this.appUninstallEvent,
    this.audioSevereUnderrunEvent,
    this.device,
    this.eventType,
    this.externalDisplaysEvent,
    this.httpsLatencyChangeEvent,
    this.name,
    this.networkStateChangeEvent,
    this.osCrashEvent,
    this.reportTime,
    this.usbPeripheralsEvent,
    this.user,
    this.vpnConnectionStateChangeEvent,
    this.wifiSignalStrengthEvent,
  });

  GoogleChromeManagementV1TelemetryEvent.fromJson(core.Map json_)
    : this(
        appInstallEvent:
            json_.containsKey('appInstallEvent')
                ? GoogleChromeManagementV1TelemetryAppInstallEvent.fromJson(
                  json_['appInstallEvent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        appLaunchEvent:
            json_.containsKey('appLaunchEvent')
                ? GoogleChromeManagementV1TelemetryAppLaunchEvent.fromJson(
                  json_['appLaunchEvent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        appUninstallEvent:
            json_.containsKey('appUninstallEvent')
                ? GoogleChromeManagementV1TelemetryAppUninstallEvent.fromJson(
                  json_['appUninstallEvent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        audioSevereUnderrunEvent:
            json_.containsKey('audioSevereUnderrunEvent')
                ? GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent.fromJson(
                  json_['audioSevereUnderrunEvent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        device:
            json_.containsKey('device')
                ? GoogleChromeManagementV1TelemetryDeviceInfo.fromJson(
                  json_['device'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventType: json_['eventType'] as core.String?,
        externalDisplaysEvent:
            json_.containsKey('externalDisplaysEvent')
                ? GoogleChromeManagementV1TelemetryExternalDisplayEvent.fromJson(
                  json_['externalDisplaysEvent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        httpsLatencyChangeEvent:
            json_.containsKey('httpsLatencyChangeEvent')
                ? GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent.fromJson(
                  json_['httpsLatencyChangeEvent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        networkStateChangeEvent:
            json_.containsKey('networkStateChangeEvent')
                ? GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent.fromJson(
                  json_['networkStateChangeEvent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        osCrashEvent:
            json_.containsKey('osCrashEvent')
                ? GoogleChromeManagementV1TelemetryOsCrashEvent.fromJson(
                  json_['osCrashEvent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reportTime: json_['reportTime'] as core.String?,
        usbPeripheralsEvent:
            json_.containsKey('usbPeripheralsEvent')
                ? GoogleChromeManagementV1TelemetryUsbPeripheralsEvent.fromJson(
                  json_['usbPeripheralsEvent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        user:
            json_.containsKey('user')
                ? GoogleChromeManagementV1TelemetryUserInfo.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vpnConnectionStateChangeEvent:
            json_.containsKey('vpnConnectionStateChangeEvent')
                ? GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent.fromJson(
                  json_['vpnConnectionStateChangeEvent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        wifiSignalStrengthEvent:
            json_.containsKey('wifiSignalStrengthEvent')
                ? GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent.fromJson(
                  json_['wifiSignalStrengthEvent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appInstallEvent != null) 'appInstallEvent': appInstallEvent!,
    if (appLaunchEvent != null) 'appLaunchEvent': appLaunchEvent!,
    if (appUninstallEvent != null) 'appUninstallEvent': appUninstallEvent!,
    if (audioSevereUnderrunEvent != null)
      'audioSevereUnderrunEvent': audioSevereUnderrunEvent!,
    if (device != null) 'device': device!,
    if (eventType != null) 'eventType': eventType!,
    if (externalDisplaysEvent != null)
      'externalDisplaysEvent': externalDisplaysEvent!,
    if (httpsLatencyChangeEvent != null)
      'httpsLatencyChangeEvent': httpsLatencyChangeEvent!,
    if (name != null) 'name': name!,
    if (networkStateChangeEvent != null)
      'networkStateChangeEvent': networkStateChangeEvent!,
    if (osCrashEvent != null) 'osCrashEvent': osCrashEvent!,
    if (reportTime != null) 'reportTime': reportTime!,
    if (usbPeripheralsEvent != null)
      'usbPeripheralsEvent': usbPeripheralsEvent!,
    if (user != null) 'user': user!,
    if (vpnConnectionStateChangeEvent != null)
      'vpnConnectionStateChangeEvent': vpnConnectionStateChangeEvent!,
    if (wifiSignalStrengthEvent != null)
      'wifiSignalStrengthEvent': wifiSignalStrengthEvent!,
  };
}

/// Configures how the telemetry events should be filtered.
class GoogleChromeManagementV1TelemetryEventNotificationFilter {
  /// Only sends the notifications for events of these types.
  ///
  /// Must not be empty.
  core.List<core.String>? eventTypes;

  GoogleChromeManagementV1TelemetryEventNotificationFilter({this.eventTypes});

  GoogleChromeManagementV1TelemetryEventNotificationFilter.fromJson(
    core.Map json_,
  ) : this(
        eventTypes:
            (json_['eventTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventTypes != null) 'eventTypes': eventTypes!,
  };
}

/// External display data.
class GoogleChromeManagementV1TelemetryExternalDisplayData {
  /// The display name.
  core.String? displayName;

  /// The EDID version.
  core.String? edidVersion;

  /// The refresh rate.
  core.String? refreshRate;

  /// The horizontal resolution.
  core.int? resolutionHorizontal;

  /// The vertical resolution.
  core.int? resolutionVertical;

  /// The serial number.
  core.int? serialNumber;

  GoogleChromeManagementV1TelemetryExternalDisplayData({
    this.displayName,
    this.edidVersion,
    this.refreshRate,
    this.resolutionHorizontal,
    this.resolutionVertical,
    this.serialNumber,
  });

  GoogleChromeManagementV1TelemetryExternalDisplayData.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        edidVersion: json_['edidVersion'] as core.String?,
        refreshRate: json_['refreshRate'] as core.String?,
        resolutionHorizontal: json_['resolutionHorizontal'] as core.int?,
        resolutionVertical: json_['resolutionVertical'] as core.int?,
        serialNumber: json_['serialNumber'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (edidVersion != null) 'edidVersion': edidVersion!,
    if (refreshRate != null) 'refreshRate': refreshRate!,
    if (resolutionHorizontal != null)
      'resolutionHorizontal': resolutionHorizontal!,
    if (resolutionVertical != null) 'resolutionVertical': resolutionVertical!,
    if (serialNumber != null) 'serialNumber': serialNumber!,
  };
}

/// External display connected/disconnected event payload.
class GoogleChromeManagementV1TelemetryExternalDisplayEvent {
  /// List of external displays that were connected/disconnected.
  core.List<GoogleChromeManagementV1TelemetryExternalDisplayData>?
  externalDisplayData;

  GoogleChromeManagementV1TelemetryExternalDisplayEvent({
    this.externalDisplayData,
  });

  GoogleChromeManagementV1TelemetryExternalDisplayEvent.fromJson(core.Map json_)
    : this(
        externalDisplayData:
            (json_['externalDisplayData'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1TelemetryExternalDisplayData.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (externalDisplayData != null)
      'externalDisplayData': externalDisplayData!,
  };
}

/// Https latency routine is run periodically and
/// `TelemetryHttpsLatencyChangeEvent` is triggered if a latency problem was
/// detected or if the device has recovered from a latency problem.
///
/// * Granular permission needed: TELEMETRY_API_NETWORK_REPORT
class GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent {
  /// HTTPS latency routine data that triggered the event.
  GoogleChromeManagementV1HttpsLatencyRoutineData? httpsLatencyRoutineData;

  /// Current HTTPS latency state.
  /// Possible string values are:
  /// - "HTTPS_LATENCY_STATE_UNSPECIFIED" : HTTPS latency state is unspecified.
  /// - "RECOVERY" : HTTPS latency recovered from a problem.
  /// - "PROBLEM" : HTTPS latency problem.
  core.String? httpsLatencyState;

  GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent({
    this.httpsLatencyRoutineData,
    this.httpsLatencyState,
  });

  GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent.fromJson(
    core.Map json_,
  ) : this(
        httpsLatencyRoutineData:
            json_.containsKey('httpsLatencyRoutineData')
                ? GoogleChromeManagementV1HttpsLatencyRoutineData.fromJson(
                  json_['httpsLatencyRoutineData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        httpsLatencyState: json_['httpsLatencyState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (httpsLatencyRoutineData != null)
      'httpsLatencyRoutineData': httpsLatencyRoutineData!,
    if (httpsLatencyState != null) 'httpsLatencyState': httpsLatencyState!,
  };
}

/// `TelemetryNetworkConnectionStateChangeEvent` is triggered on network
/// connection state changes.
///
/// * Granular permission needed: TELEMETRY_API_NETWORK_REPORT
class GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent {
  /// Current connection state of the network.
  /// Possible string values are:
  /// - "NETWORK_CONNECTION_STATE_UNSPECIFIED" : Network connection state
  /// unspecified.
  /// - "ONLINE" : The network is connected and internet connectivity is
  /// available.
  /// - "CONNECTED" : The network is connected and not in a detected portal
  /// state, but internet connectivity may not be available.
  /// - "PORTAL" : The network is connected but a portal state was detected.
  /// Internet connectivity may be limited.
  /// - "CONNECTING" : The network is in the process of connecting.
  /// - "NOT_CONNECTED" : The network is not connected.
  core.String? connectionState;

  /// Unique identifier of the network.
  core.String? guid;

  GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent({
    this.connectionState,
    this.guid,
  });

  GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent.fromJson(
    core.Map json_,
  ) : this(
        connectionState: json_['connectionState'] as core.String?,
        guid: json_['guid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectionState != null) 'connectionState': connectionState!,
    if (guid != null) 'guid': guid!,
  };
}

/// `TelemetryNetworkSignalStrengthEvent` is triggered on WiFi signal strength
/// events.
///
/// * Granular permission needed: TELEMETRY_API_NETWORK_REPORT
class GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent {
  /// Unique identifier of the network.
  core.String? guid;

  /// Signal strength RSSI value.
  core.int? signalStrengthDbm;

  GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent({
    this.guid,
    this.signalStrengthDbm,
  });

  GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent.fromJson(
    core.Map json_,
  ) : this(
        guid: json_['guid'] as core.String?,
        signalStrengthDbm: json_['signalStrengthDbm'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (guid != null) 'guid': guid!,
    if (signalStrengthDbm != null) 'signalStrengthDbm': signalStrengthDbm!,
  };
}

/// Configuration to receive notifications of telemetry data.
class GoogleChromeManagementV1TelemetryNotificationConfig {
  /// Google Workspace customer that owns the resource.
  ///
  /// Output only.
  core.String? customer;

  /// Only send notifications for telemetry data matching this filter.
  GoogleChromeManagementV1TelemetryNotificationFilter? filter;

  /// The pubsub topic to which notifications are published to.
  core.String? googleCloudPubsubTopic;

  /// Resource name of the notification configuration.
  ///
  /// Output only.
  core.String? name;

  GoogleChromeManagementV1TelemetryNotificationConfig({
    this.customer,
    this.filter,
    this.googleCloudPubsubTopic,
    this.name,
  });

  GoogleChromeManagementV1TelemetryNotificationConfig.fromJson(core.Map json_)
    : this(
        customer: json_['customer'] as core.String?,
        filter:
            json_.containsKey('filter')
                ? GoogleChromeManagementV1TelemetryNotificationFilter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        googleCloudPubsubTopic: json_['googleCloudPubsubTopic'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customer != null) 'customer': customer!,
    if (filter != null) 'filter': filter!,
    if (googleCloudPubsubTopic != null)
      'googleCloudPubsubTopic': googleCloudPubsubTopic!,
    if (name != null) 'name': name!,
  };
}

/// Configures how the telemetry data should be filtered.
class GoogleChromeManagementV1TelemetryNotificationFilter {
  /// If set, only sends notifications for telemetry data coming from this
  /// device.
  core.String? deviceId;

  /// If set, only sends notifications for telemetry data coming from devices in
  /// this org unit.
  core.String? deviceOrgUnitId;

  /// Only sends notifications for the telemetry events matching this filter.
  GoogleChromeManagementV1TelemetryEventNotificationFilter?
  telemetryEventNotificationFilter;

  /// If set, only sends notifications for telemetry data coming from devices
  /// owned by this user.
  core.String? userEmail;

  /// If set, only sends notifications for telemetry data coming from devices
  /// owned by users in this org unit.
  core.String? userOrgUnitId;

  GoogleChromeManagementV1TelemetryNotificationFilter({
    this.deviceId,
    this.deviceOrgUnitId,
    this.telemetryEventNotificationFilter,
    this.userEmail,
    this.userOrgUnitId,
  });

  GoogleChromeManagementV1TelemetryNotificationFilter.fromJson(core.Map json_)
    : this(
        deviceId: json_['deviceId'] as core.String?,
        deviceOrgUnitId: json_['deviceOrgUnitId'] as core.String?,
        telemetryEventNotificationFilter:
            json_.containsKey('telemetryEventNotificationFilter')
                ? GoogleChromeManagementV1TelemetryEventNotificationFilter.fromJson(
                  json_['telemetryEventNotificationFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        userEmail: json_['userEmail'] as core.String?,
        userOrgUnitId: json_['userOrgUnitId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceId != null) 'deviceId': deviceId!,
    if (deviceOrgUnitId != null) 'deviceOrgUnitId': deviceOrgUnitId!,
    if (telemetryEventNotificationFilter != null)
      'telemetryEventNotificationFilter': telemetryEventNotificationFilter!,
    if (userEmail != null) 'userEmail': userEmail!,
    if (userOrgUnitId != null) 'userOrgUnitId': userOrgUnitId!,
  };
}

/// OS crash data.
class GoogleChromeManagementV1TelemetryOsCrashEvent {
  /// Crash id.
  core.String? crashId;

  /// Crash type.
  /// Possible string values are:
  /// - "CRASH_TYPE_UNSPECIFIED" : Crash type unknown.
  /// - "CRASH_TYPE_KERNEL" : Kernel crash.
  /// - "CRASH_TYPE_EMBEDDED_CONTROLLER" : Embedded controller crash.
  core.String? crashType;

  /// Session type.
  /// Possible string values are:
  /// - "SESSION_TYPE_UNSPECIFIED" : Session type unknown.
  /// - "SESSION_TYPE_SIGNED_IN_USER" : Signed in user.
  /// - "SESSION_TYPE_KIOSK" : Kiosk.
  /// - "SESSION_TYPE_MANAGED_GUEST" : Managed guest session.
  /// - "SESSION_TYPE_ACTIVE_DIRECTORY" : Active directory session.
  core.String? sessionType;

  GoogleChromeManagementV1TelemetryOsCrashEvent({
    this.crashId,
    this.crashType,
    this.sessionType,
  });

  GoogleChromeManagementV1TelemetryOsCrashEvent.fromJson(core.Map json_)
    : this(
        crashId: json_['crashId'] as core.String?,
        crashType: json_['crashType'] as core.String?,
        sessionType: json_['sessionType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (crashId != null) 'crashId': crashId!,
    if (crashType != null) 'crashType': crashType!,
    if (sessionType != null) 'sessionType': sessionType!,
  };
}

/// `TelemetryUsbPeripheralsEvent` is triggered USB devices are either added or
/// removed.
///
/// * Granular permission needed: TELEMETRY_API_PERIPHERALS_REPORT
class GoogleChromeManagementV1TelemetryUsbPeripheralsEvent {
  /// List of usb devices that were either added or removed.
  core.List<GoogleChromeManagementV1UsbPeripheralReport>? usbPeripheralReport;

  GoogleChromeManagementV1TelemetryUsbPeripheralsEvent({
    this.usbPeripheralReport,
  });

  GoogleChromeManagementV1TelemetryUsbPeripheralsEvent.fromJson(core.Map json_)
    : this(
        usbPeripheralReport:
            (json_['usbPeripheralReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1UsbPeripheralReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (usbPeripheralReport != null)
      'usbPeripheralReport': usbPeripheralReport!,
  };
}

/// Telemetry data collected from a managed user.
///
/// * Granular permission needed: TELEMETRY_API_USER
class GoogleChromeManagementV1TelemetryUser {
  /// G Suite Customer whose enterprise enrolled the device.
  core.String? customer;

  /// Resource name of the user.
  core.String? name;

  /// Organization unit of the user.
  core.String? orgUnitId;

  /// Telemetry data collected from a managed user and device.
  core.List<GoogleChromeManagementV1TelemetryUserDevice>? userDevice;

  /// Email address of the user.
  core.String? userEmail;

  /// Directory ID of the user.
  core.String? userId;

  GoogleChromeManagementV1TelemetryUser({
    this.customer,
    this.name,
    this.orgUnitId,
    this.userDevice,
    this.userEmail,
    this.userId,
  });

  GoogleChromeManagementV1TelemetryUser.fromJson(core.Map json_)
    : this(
        customer: json_['customer'] as core.String?,
        name: json_['name'] as core.String?,
        orgUnitId: json_['orgUnitId'] as core.String?,
        userDevice:
            (json_['userDevice'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1TelemetryUserDevice.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        userEmail: json_['userEmail'] as core.String?,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customer != null) 'customer': customer!,
    if (name != null) 'name': name!,
    if (orgUnitId != null) 'orgUnitId': orgUnitId!,
    if (userDevice != null) 'userDevice': userDevice!,
    if (userEmail != null) 'userEmail': userEmail!,
    if (userId != null) 'userId': userId!,
  };
}

/// Telemetry data collected for a managed user and device.
///
/// * Granular permission needed: TELEMETRY_API_DEVICE
class GoogleChromeManagementV1TelemetryUserDevice {
  /// App reports collected periodically sorted in a decreasing order of
  /// report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1AppReport>? appReport;

  /// Audio reports collected periodically sorted in a decreasing order of
  /// report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1AudioStatusReport>? audioStatusReport;

  /// Device activity reports collected periodically sorted in a decreasing
  /// order of report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1DeviceActivityReport>? deviceActivityReport;

  /// The unique Directory API ID of the device.
  ///
  /// This value is the same as the Admin Console's Directory API ID in the
  /// ChromeOS Devices tab.
  core.String? deviceId;

  /// Network bandwidth reports collected periodically sorted in a decreasing
  /// order of report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1NetworkBandwidthReport>?
  networkBandwidthReport;

  /// Peripherals reports collected periodically sorted in a decreasing order of
  /// report_time.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1PeripheralsReport>? peripheralsReport;

  GoogleChromeManagementV1TelemetryUserDevice({
    this.appReport,
    this.audioStatusReport,
    this.deviceActivityReport,
    this.deviceId,
    this.networkBandwidthReport,
    this.peripheralsReport,
  });

  GoogleChromeManagementV1TelemetryUserDevice.fromJson(core.Map json_)
    : this(
        appReport:
            (json_['appReport'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1AppReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        audioStatusReport:
            (json_['audioStatusReport'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1AudioStatusReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        deviceActivityReport:
            (json_['deviceActivityReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1DeviceActivityReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        deviceId: json_['deviceId'] as core.String?,
        networkBandwidthReport:
            (json_['networkBandwidthReport'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementV1NetworkBandwidthReport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        peripheralsReport:
            (json_['peripheralsReport'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1PeripheralsReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appReport != null) 'appReport': appReport!,
    if (audioStatusReport != null) 'audioStatusReport': audioStatusReport!,
    if (deviceActivityReport != null)
      'deviceActivityReport': deviceActivityReport!,
    if (deviceId != null) 'deviceId': deviceId!,
    if (networkBandwidthReport != null)
      'networkBandwidthReport': networkBandwidthReport!,
    if (peripheralsReport != null) 'peripheralsReport': peripheralsReport!,
  };
}

/// Information about a user associated with telemetry data.
///
/// * Granular permission needed: TELEMETRY_API_USER
class GoogleChromeManagementV1TelemetryUserInfo {
  /// User's email.
  ///
  /// Output only.
  core.String? email;

  /// Organization unit ID of the user.
  ///
  /// Output only.
  core.String? orgUnitId;

  GoogleChromeManagementV1TelemetryUserInfo({this.email, this.orgUnitId});

  GoogleChromeManagementV1TelemetryUserInfo.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        orgUnitId: json_['orgUnitId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (email != null) 'email': email!,
    if (orgUnitId != null) 'orgUnitId': orgUnitId!,
  };
}

/// Thunderbolt bus info.
///
/// * This field provides device information, which is static and will not
/// change over time. * Data for this field is controlled via policy:
/// [ReportDeviceSecurityStatus](https://chromeenterprise.google/policies/#ReportDeviceSecurityStatus)
/// * Data Collection Frequency: At device startup * Default Data Reporting
/// Frequency: At device startup - Policy Controlled: No * Cache: If the device
/// is offline, the collected data is stored locally, and will be reported when
/// the device is next online: Yes * Reported for affiliated users only: N/A *
/// Granular permission needed: TELEMETRY_API_BUS_DEVICE_INFO
class GoogleChromeManagementV1ThunderboltInfo {
  /// Security level of the Thunderbolt bus.
  /// Possible string values are:
  /// - "THUNDERBOLT_SECURITY_LEVEL_UNSPECIFIED" : Thunderbolt security level is
  /// not set.
  /// - "THUNDERBOLT_SECURITY_NONE_LEVEL" : All devices are automatically
  /// connected by the firmware. No user approval is needed.
  /// - "THUNDERBOLT_SECURITY_USER_LEVEL" : User is asked whether the device is
  /// allowed to be connected.
  /// - "THUNDERBOLT_SECURITY_SECURE_LEVEL" : User is asked whether the device
  /// is allowed to be connected. In addition the device is sent a challenge
  /// that should match the expected one based on a random key written to the
  /// key sysfs attribute
  /// - "THUNDERBOLT_SECURITY_DP_ONLY_LEVEL" : The firmware automatically
  /// creates tunnels for Thunderbolt.
  /// - "THUNDERBOLT_SECURITY_USB_ONLY_LEVEL" : The firmware automatically
  /// creates tunnels for the USB controller and Display Port in a dock. All
  /// PCIe links downstream of the dock are removed.
  /// - "THUNDERBOLT_SECURITY_NO_PCIE_LEVEL" : PCIE tunneling is disabled.
  core.String? securityLevel;

  GoogleChromeManagementV1ThunderboltInfo({this.securityLevel});

  GoogleChromeManagementV1ThunderboltInfo.fromJson(core.Map json_)
    : this(securityLevel: json_['securityLevel'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (securityLevel != null) 'securityLevel': securityLevel!,
  };
}

/// Memory encryption information of a device.
///
/// * This field provides device information, which is static and will not
/// change over time. * Data for this field is controlled via policy:
/// [ReportDeviceMemoryInfo](https://chromeenterprise.google/policies/#ReportDeviceMemoryInfo)
/// * Data Collection Frequency: At device startup * Default Data Reporting
/// Frequency: At device startup - Policy Controlled: Yes * Cache: If the device
/// is offline, the collected data is stored locally, and will be reported when
/// the device is next online: Yes * Reported for affiliated users only: N/A
class GoogleChromeManagementV1TotalMemoryEncryptionInfo {
  /// Memory encryption algorithm.
  /// Possible string values are:
  /// - "MEMORY_ENCRYPTION_ALGORITHM_UNSPECIFIED" : Memory encryption algorithm
  /// is not set.
  /// - "MEMORY_ENCRYPTION_ALGORITHM_UNKNOWN" : The memory encryption algorithm
  /// being used is unknown.
  /// - "MEMORY_ENCRYPTION_ALGORITHM_AES_XTS_128" : The memory encryption
  /// algorithm is using the AES_XTS encryption algorithm with a 128 bit block
  /// cypher.
  /// - "MEMORY_ENCRYPTION_ALGORITHM_AES_XTS_256" : The memory encryption
  /// algorithm is using the AES_XTS encryption algorithm with a 256 bit block
  /// cypher.
  core.String? encryptionAlgorithm;

  /// The state of memory encryption on the device.
  /// Possible string values are:
  /// - "MEMORY_ENCRYPTION_STATE_UNSPECIFIED" : Memory encryption state is not
  /// set.
  /// - "MEMORY_ENCRYPTION_STATE_UNKNOWN" : The memory encryption state is
  /// unknown.
  /// - "MEMORY_ENCRYPTION_STATE_DISABLED" : Memory encrpytion on the device is
  /// disabled.
  /// - "MEMORY_ENCRYPTION_STATE_TME" : Memory encryption on the device uses
  /// total memory encryption.
  /// - "MEMORY_ENCRYPTION_STATE_MKTME" : Memory encryption on the device uses
  /// multi-key total memory encryption.
  core.String? encryptionState;

  /// The length of the encryption keys.
  core.String? keyLength;

  /// The maximum number of keys that can be used for encryption.
  core.String? maxKeys;

  GoogleChromeManagementV1TotalMemoryEncryptionInfo({
    this.encryptionAlgorithm,
    this.encryptionState,
    this.keyLength,
    this.maxKeys,
  });

  GoogleChromeManagementV1TotalMemoryEncryptionInfo.fromJson(core.Map json_)
    : this(
        encryptionAlgorithm: json_['encryptionAlgorithm'] as core.String?,
        encryptionState: json_['encryptionState'] as core.String?,
        keyLength: json_['keyLength'] as core.String?,
        maxKeys: json_['maxKeys'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (encryptionAlgorithm != null)
      'encryptionAlgorithm': encryptionAlgorithm!,
    if (encryptionState != null) 'encryptionState': encryptionState!,
    if (keyLength != null) 'keyLength': keyLength!,
    if (maxKeys != null) 'maxKeys': maxKeys!,
  };
}

/// Information of an internal touch screen device.
class GoogleChromeManagementV1TouchScreenDevice {
  /// Touch screen device display name.
  ///
  /// Output only.
  core.String? displayName;

  /// Touch screen device is stylus capable or not.
  ///
  /// Output only.
  core.bool? stylusCapable;

  /// Number of touch points supported on the device.
  ///
  /// Output only.
  core.int? touchPointCount;

  GoogleChromeManagementV1TouchScreenDevice({
    this.displayName,
    this.stylusCapable,
    this.touchPointCount,
  });

  GoogleChromeManagementV1TouchScreenDevice.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        stylusCapable: json_['stylusCapable'] as core.bool?,
        touchPointCount: json_['touchPointCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (stylusCapable != null) 'stylusCapable': stylusCapable!,
    if (touchPointCount != null) 'touchPointCount': touchPointCount!,
  };
}

/// Information on the device touch screen.
class GoogleChromeManagementV1TouchScreenInfo {
  /// List of the internal touch screen devices.
  ///
  /// Output only.
  core.List<GoogleChromeManagementV1TouchScreenDevice>? devices;

  /// Touchpad library name used by the input stack.
  ///
  /// Output only.
  core.String? touchpadLibrary;

  GoogleChromeManagementV1TouchScreenInfo({this.devices, this.touchpadLibrary});

  GoogleChromeManagementV1TouchScreenInfo.fromJson(core.Map json_)
    : this(
        devices:
            (json_['devices'] as core.List?)
                ?.map(
                  (value) => GoogleChromeManagementV1TouchScreenDevice.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        touchpadLibrary: json_['touchpadLibrary'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (devices != null) 'devices': devices!,
    if (touchpadLibrary != null) 'touchpadLibrary': touchpadLibrary!,
  };
}

/// USB connected peripheral report.
class GoogleChromeManagementV1UsbPeripheralReport {
  /// Categories the device belongs to https://www.usb.org/defined-class-codes
  ///
  /// Output only.
  core.List<core.String>? categories;

  /// Class ID https://www.usb.org/defined-class-codes
  ///
  /// Output only.
  core.int? classId;

  /// Firmware version
  ///
  /// Output only.
  core.String? firmwareVersion;

  /// Device name, model name, or product name
  ///
  /// Output only.
  core.String? name;

  /// Product ID
  ///
  /// Output only.
  core.int? pid;

  /// Subclass ID https://www.usb.org/defined-class-codes
  ///
  /// Output only.
  core.int? subclassId;

  /// Vendor name
  ///
  /// Output only.
  core.String? vendor;

  /// Vendor ID
  ///
  /// Output only.
  core.int? vid;

  GoogleChromeManagementV1UsbPeripheralReport({
    this.categories,
    this.classId,
    this.firmwareVersion,
    this.name,
    this.pid,
    this.subclassId,
    this.vendor,
    this.vid,
  });

  GoogleChromeManagementV1UsbPeripheralReport.fromJson(core.Map json_)
    : this(
        categories:
            (json_['categories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        classId: json_['classId'] as core.int?,
        firmwareVersion: json_['firmwareVersion'] as core.String?,
        name: json_['name'] as core.String?,
        pid: json_['pid'] as core.int?,
        subclassId: json_['subclassId'] as core.int?,
        vendor: json_['vendor'] as core.String?,
        vid: json_['vid'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (categories != null) 'categories': categories!,
    if (classId != null) 'classId': classId!,
    if (firmwareVersion != null) 'firmwareVersion': firmwareVersion!,
    if (name != null) 'name': name!,
    if (pid != null) 'pid': pid!,
    if (subclassId != null) 'subclassId': subclassId!,
    if (vendor != null) 'vendor': vendor!,
    if (vid != null) 'vid': vid!,
  };
}

/// Report for CountPrintJobsByUser, contains printing statistics for a user.
///
/// Contains the number of printers, the number of devices used to initiate
/// print jobs, and the number of print jobs initiated.
class GoogleChromeManagementV1UserPrintReport {
  /// Number of chrome devices that have been used to initiate print jobs by the
  /// user.
  core.String? deviceCount;

  /// Number of print jobs initiated by the user.
  core.String? jobCount;

  /// Number of printers used by the user.
  core.String? printerCount;

  /// The primary e-mail address of the user.
  core.String? userEmail;

  /// The unique Directory API ID of the user.
  core.String? userId;

  GoogleChromeManagementV1UserPrintReport({
    this.deviceCount,
    this.jobCount,
    this.printerCount,
    this.userEmail,
    this.userId,
  });

  GoogleChromeManagementV1UserPrintReport.fromJson(core.Map json_)
    : this(
        deviceCount: json_['deviceCount'] as core.String?,
        jobCount: json_['jobCount'] as core.String?,
        printerCount: json_['printerCount'] as core.String?,
        userEmail: json_['userEmail'] as core.String?,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceCount != null) 'deviceCount': deviceCount!,
    if (jobCount != null) 'jobCount': jobCount!,
    if (printerCount != null) 'printerCount': printerCount!,
    if (userEmail != null) 'userEmail': userEmail!,
    if (userId != null) 'userId': userId!,
  };
}

/// Details of a user requesting an extension, including the email and the
/// justification.
class GoogleChromeManagementV1UserRequestingExtensionDetails {
  /// The e-mail address of a user that has requested the extension.
  core.String? email;

  /// Request justification as entered by the user.
  core.String? justification;

  GoogleChromeManagementV1UserRequestingExtensionDetails({
    this.email,
    this.justification,
  });

  GoogleChromeManagementV1UserRequestingExtensionDetails.fromJson(
    core.Map json_,
  ) : this(
        email: json_['email'] as core.String?,
        justification: json_['justification'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (email != null) 'email': email!,
    if (justification != null) 'justification': justification!,
  };
}

/// Information of public key associated with a Chrome browser profile.
class GoogleChromeManagementVersionsV1AttestationCredential {
  /// Latest rotation timestamp of the public key rotation.
  ///
  /// Output only.
  core.String? keyRotationTime;

  /// Trust level of the public key.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KEY_TRUST_LEVEL_UNSPECIFIED" : Represents an unspecified public key
  /// trust level.
  /// - "CHROME_BROWSER_HW_KEY" : Represents a HW key.
  /// - "CHROME_BROWSER_OS_KEY" : Represents an OS key.
  core.String? keyTrustLevel;

  /// Type of the public key.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : Represents an unspecified public key type.
  /// - "RSA_KEY" : Represents a RSA key.
  /// - "EC_KEY" : Represents an EC key.
  core.String? keyType;

  /// Value of the public key.
  ///
  /// Output only.
  core.String? publicKey;
  core.List<core.int> get publicKeyAsBytes => convert.base64.decode(publicKey!);

  set publicKeyAsBytes(core.List<core.int> bytes_) {
    publicKey = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleChromeManagementVersionsV1AttestationCredential({
    this.keyRotationTime,
    this.keyTrustLevel,
    this.keyType,
    this.publicKey,
  });

  GoogleChromeManagementVersionsV1AttestationCredential.fromJson(core.Map json_)
    : this(
        keyRotationTime: json_['keyRotationTime'] as core.String?,
        keyTrustLevel: json_['keyTrustLevel'] as core.String?,
        keyType: json_['keyType'] as core.String?,
        publicKey: json_['publicKey'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (keyRotationTime != null) 'keyRotationTime': keyRotationTime!,
    if (keyTrustLevel != null) 'keyTrustLevel': keyTrustLevel!,
    if (keyType != null) 'keyType': keyType!,
    if (publicKey != null) 'publicKey': publicKey!,
  };
}

/// A certificate provisioning process.
class GoogleChromeManagementVersionsV1CertificateProvisioningProcess {
  /// The client certificate is being provisioned for a ChromeOS device.
  ///
  /// This contains information about the device.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1ChromeOsDevice? chromeOsDevice;

  /// The client certificate is being provisioned for a ChromeOS user.
  ///
  /// This contains information about the current user session.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1ChromeOsUserSession? chromeOsUserSession;

  /// A message describing why this `CertificateProvisioningProcess` has failed.
  ///
  /// Presence of this field indicates that the `CertificateProvisioningProcess`
  /// has failed.
  ///
  /// Output only.
  core.String? failureMessage;

  /// The CA connection is a generic CA connection.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1GenericCaConnection? genericCaConnection;

  /// The profile is a generic certificate provisioning profile.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1GenericProfile? genericProfile;

  /// The issued certificate for this `CertificateProvisioningProcess` in PEM
  /// format.
  ///
  /// Output only.
  core.String? issuedCertificate;

  /// Identifier.
  ///
  /// Resource name of the `CertificateProvisioningProcess`. The name pattern is
  /// given as
  /// `customers/{customer}/certificateProvisioningProcesses/{certificate_provisioning_process}`
  /// with `{customer}` being the obfuscated customer id and
  /// `{certificate_provisioning_process}` being the certificate provisioning
  /// process id.
  core.String? name;

  /// The ID of the certificate provisioning profile.
  ///
  /// Output only.
  core.String? provisioningProfileId;

  /// The CA connection is a SCEP CA connection.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1ScepCaConnection? scepCaConnection;

  /// The profile is a SCEP certificate provisioning profile.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1ScepProfile? scepProfile;

  /// The data that the client was asked to sign.
  ///
  /// This field is only present after the `SignData` operation has been
  /// initiated.
  ///
  /// Output only.
  core.String? signData;
  core.List<core.int> get signDataAsBytes => convert.base64.decode(signData!);

  set signDataAsBytes(core.List<core.int> bytes_) {
    signData = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The signature of `signature_algorithm`, generated using the client's
  /// private key using `signature_algorithm`.
  ///
  /// This field is only present after the `SignData` operation has finished.
  ///
  /// Output only.
  core.String? signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature!);

  set signatureAsBytes(core.List<core.int> bytes_) {
    signature = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The signature algorithm that the client and backend components use when
  /// processing `sign_data`.
  ///
  /// If the `profile_type` is a `GenericProfile`, this field will only be
  /// present after the `SignData` operation was initiated. If the
  /// `profile_type` is a `ScepProfile`, the field will always be present.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SIGNATURE_ALGORITHM_UNSPECIFIED" : Default value. This value is unused.
  /// - "SIGNATURE_ALGORITHM_RSA_PKCS1_V1_5_SHA256" : The server-side builds the
  /// PKCS#1 DigestInfo and sends a SHA256 hash of it to the client. The client
  /// should sign using RSA with PKCS#1 v1.5 padding.
  /// - "SIGNATURE_ALGORITHM_ECDSA_SHA256" : The server-side builds the PKCS#1
  /// DigestInfo and sends it unhashed to the client. The client is responsible
  /// for signing and hashing using the P-256 curve.
  core.String? signatureAlgorithm;

  /// Server-generated timestamp of when the certificate provisioning process
  /// has been created.
  ///
  /// Output only.
  core.String? startTime;

  /// The public key for which a certificate should be provisioned.
  ///
  /// Represented as a DER-encoded X.509 SubjectPublicKeyInfo.
  ///
  /// Output only.
  core.String? subjectPublicKeyInfo;
  core.List<core.int> get subjectPublicKeyInfoAsBytes =>
      convert.base64.decode(subjectPublicKeyInfo!);

  set subjectPublicKeyInfoAsBytes(core.List<core.int> bytes_) {
    subjectPublicKeyInfo = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleChromeManagementVersionsV1CertificateProvisioningProcess({
    this.chromeOsDevice,
    this.chromeOsUserSession,
    this.failureMessage,
    this.genericCaConnection,
    this.genericProfile,
    this.issuedCertificate,
    this.name,
    this.provisioningProfileId,
    this.scepCaConnection,
    this.scepProfile,
    this.signData,
    this.signature,
    this.signatureAlgorithm,
    this.startTime,
    this.subjectPublicKeyInfo,
  });

  GoogleChromeManagementVersionsV1CertificateProvisioningProcess.fromJson(
    core.Map json_,
  ) : this(
        chromeOsDevice:
            json_.containsKey('chromeOsDevice')
                ? GoogleChromeManagementVersionsV1ChromeOsDevice.fromJson(
                  json_['chromeOsDevice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        chromeOsUserSession:
            json_.containsKey('chromeOsUserSession')
                ? GoogleChromeManagementVersionsV1ChromeOsUserSession.fromJson(
                  json_['chromeOsUserSession']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        failureMessage: json_['failureMessage'] as core.String?,
        genericCaConnection:
            json_.containsKey('genericCaConnection')
                ? GoogleChromeManagementVersionsV1GenericCaConnection.fromJson(
                  json_['genericCaConnection']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        genericProfile:
            json_.containsKey('genericProfile')
                ? GoogleChromeManagementVersionsV1GenericProfile.fromJson(
                  json_['genericProfile']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        issuedCertificate: json_['issuedCertificate'] as core.String?,
        name: json_['name'] as core.String?,
        provisioningProfileId: json_['provisioningProfileId'] as core.String?,
        scepCaConnection:
            json_.containsKey('scepCaConnection')
                ? GoogleChromeManagementVersionsV1ScepCaConnection.fromJson(
                  json_['scepCaConnection']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        scepProfile:
            json_.containsKey('scepProfile')
                ? GoogleChromeManagementVersionsV1ScepProfile.fromJson(
                  json_['scepProfile'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        signData: json_['signData'] as core.String?,
        signature: json_['signature'] as core.String?,
        signatureAlgorithm: json_['signatureAlgorithm'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        subjectPublicKeyInfo: json_['subjectPublicKeyInfo'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chromeOsDevice != null) 'chromeOsDevice': chromeOsDevice!,
    if (chromeOsUserSession != null)
      'chromeOsUserSession': chromeOsUserSession!,
    if (failureMessage != null) 'failureMessage': failureMessage!,
    if (genericCaConnection != null)
      'genericCaConnection': genericCaConnection!,
    if (genericProfile != null) 'genericProfile': genericProfile!,
    if (issuedCertificate != null) 'issuedCertificate': issuedCertificate!,
    if (name != null) 'name': name!,
    if (provisioningProfileId != null)
      'provisioningProfileId': provisioningProfileId!,
    if (scepCaConnection != null) 'scepCaConnection': scepCaConnection!,
    if (scepProfile != null) 'scepProfile': scepProfile!,
    if (signData != null) 'signData': signData!,
    if (signature != null) 'signature': signature!,
    if (signatureAlgorithm != null) 'signatureAlgorithm': signatureAlgorithm!,
    if (startTime != null) 'startTime': startTime!,
    if (subjectPublicKeyInfo != null)
      'subjectPublicKeyInfo': subjectPublicKeyInfo!,
  };
}

/// A representation of a Chrome browser profile.
class GoogleChromeManagementVersionsV1ChromeBrowserProfile {
  /// The specific affiliation state of the profile.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AFFILIATION_STATE_UNSPECIFIED" : Unspecified affiliation state.
  /// - "UNAFFILIATED_GENERIC" : Unaffiliated - but we do not have the details
  /// for the type of unaffiliated profile.
  /// - "PROFILE_ONLY" : Unaffiliated - A managed profile that appears on a
  /// totally unamanaged browser.
  /// - "UNAFFILIATED_LOCAL_MACHINE" : Unaffiliated - A managed profile that
  /// appears on a machine that is locally managed by a different organization
  /// (through platform management mechanisms like GPO).
  /// - "UNAFFILIATED_CLOUD_MACHINE" : Unaffiliated - A managed profile that
  /// appears on a managed browser that is cloud managed by a different
  /// organization (using Chrome Browser Cloud Management).
  /// - "AFFILIATED_CLOUD_MANAGED" : Affiliated - Both the profile and the
  /// managed browser are managed by the same organization.
  core.String? affiliationState;

  /// Location of the profile annotated by the admin.
  ///
  /// Optional.
  core.String? annotatedLocation;

  /// User of the profile annotated by the admin.
  ///
  /// Optional.
  core.String? annotatedUser;

  /// Attestation credential information of the profile.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1AttestationCredential? attestationCredential;

  /// Channel of the browser on which the profile exists.
  ///
  /// Output only.
  core.String? browserChannel;

  /// Version of the browser on which the profile exists.
  ///
  /// Output only.
  core.String? browserVersion;

  /// Basic information of the device on which the profile exists.
  ///
  /// This information is only available for the affiliated profiles.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1DeviceInfo? deviceInfo;

  /// Profile display name set by client.
  ///
  /// Output only.
  core.String? displayName;

  /// Etag of this ChromeBrowserProfile resource.
  ///
  /// This etag can be used with UPDATE operation to ensure consistency.
  ///
  /// Output only.
  core.String? etag;

  /// Number of extensions installed on the profile.
  ///
  /// Output only.
  core.String? extensionCount;

  /// Timestamp of the first enrollment of the profile.
  ///
  /// Output only.
  core.String? firstEnrollmentTime;

  /// Identify provider of the profile.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "IDENTITY_PROVIDER_UNSPECIFIED" : Represents an unspecified identity
  /// provider.
  /// - "GOOGLE_IDENTITY_PROVIDER" : Represents a Google identity provider.
  /// - "EXTERNAL_IDENTITY_PROVIDER" : Represents an external identity provider.
  core.String? identityProvider;

  /// Timestamp of the latest activity by the profile.
  ///
  /// Output only.
  core.String? lastActivityTime;

  /// Timestamp of the latest policy fetch by the profile.
  ///
  /// Output only.
  core.String? lastPolicyFetchTime;

  /// Timestamp of the latest policy sync by the profile.
  ///
  /// Output only.
  core.String? lastPolicySyncTime;

  /// Timestamp of the latest status report by the profile.
  ///
  /// Output only.
  core.String? lastStatusReportTime;

  /// Identifier.
  ///
  /// Format: customers/{customer_id}/profiles/{profile_permanent_id}
  core.String? name;

  /// OS platform of the device on which the profile exists.
  ///
  /// Output only.
  core.String? osPlatformType;

  /// Major OS platform version of the device on which the profile exists, from
  /// profile reporting.
  ///
  /// Output only.
  core.String? osPlatformVersion;

  /// OS version of the device on which the profile exists.
  ///
  /// Output only.
  core.String? osVersion;

  /// Number of policies applied on the profile.
  ///
  /// Output only.
  core.String? policyCount;

  /// Chrome client side profile ID.
  ///
  /// Output only.
  core.String? profileId;

  /// Profile permanent ID is the unique identifier of a profile within one
  /// customer.
  ///
  /// Output only.
  core.String? profilePermanentId;

  /// Detailed reporting data of the profile.
  ///
  /// This information is only available when the profile reporting policy is
  /// enabled.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1ReportingData? reportingData;

  /// Whether the profile supports FCM notifications.
  ///
  /// Output only.
  core.bool? supportsFcmNotifications;

  /// Email address of the user to which the profile belongs.
  ///
  /// Output only.
  core.String? userEmail;

  /// Unique Directory API ID of the user that can be used in Admin SDK Users
  /// API.
  ///
  /// Output only.
  core.String? userId;

  GoogleChromeManagementVersionsV1ChromeBrowserProfile({
    this.affiliationState,
    this.annotatedLocation,
    this.annotatedUser,
    this.attestationCredential,
    this.browserChannel,
    this.browserVersion,
    this.deviceInfo,
    this.displayName,
    this.etag,
    this.extensionCount,
    this.firstEnrollmentTime,
    this.identityProvider,
    this.lastActivityTime,
    this.lastPolicyFetchTime,
    this.lastPolicySyncTime,
    this.lastStatusReportTime,
    this.name,
    this.osPlatformType,
    this.osPlatformVersion,
    this.osVersion,
    this.policyCount,
    this.profileId,
    this.profilePermanentId,
    this.reportingData,
    this.supportsFcmNotifications,
    this.userEmail,
    this.userId,
  });

  GoogleChromeManagementVersionsV1ChromeBrowserProfile.fromJson(core.Map json_)
    : this(
        affiliationState: json_['affiliationState'] as core.String?,
        annotatedLocation: json_['annotatedLocation'] as core.String?,
        annotatedUser: json_['annotatedUser'] as core.String?,
        attestationCredential:
            json_.containsKey('attestationCredential')
                ? GoogleChromeManagementVersionsV1AttestationCredential.fromJson(
                  json_['attestationCredential']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        browserChannel: json_['browserChannel'] as core.String?,
        browserVersion: json_['browserVersion'] as core.String?,
        deviceInfo:
            json_.containsKey('deviceInfo')
                ? GoogleChromeManagementVersionsV1DeviceInfo.fromJson(
                  json_['deviceInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        extensionCount: json_['extensionCount'] as core.String?,
        firstEnrollmentTime: json_['firstEnrollmentTime'] as core.String?,
        identityProvider: json_['identityProvider'] as core.String?,
        lastActivityTime: json_['lastActivityTime'] as core.String?,
        lastPolicyFetchTime: json_['lastPolicyFetchTime'] as core.String?,
        lastPolicySyncTime: json_['lastPolicySyncTime'] as core.String?,
        lastStatusReportTime: json_['lastStatusReportTime'] as core.String?,
        name: json_['name'] as core.String?,
        osPlatformType: json_['osPlatformType'] as core.String?,
        osPlatformVersion: json_['osPlatformVersion'] as core.String?,
        osVersion: json_['osVersion'] as core.String?,
        policyCount: json_['policyCount'] as core.String?,
        profileId: json_['profileId'] as core.String?,
        profilePermanentId: json_['profilePermanentId'] as core.String?,
        reportingData:
            json_.containsKey('reportingData')
                ? GoogleChromeManagementVersionsV1ReportingData.fromJson(
                  json_['reportingData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        supportsFcmNotifications:
            json_['supportsFcmNotifications'] as core.bool?,
        userEmail: json_['userEmail'] as core.String?,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (affiliationState != null) 'affiliationState': affiliationState!,
    if (annotatedLocation != null) 'annotatedLocation': annotatedLocation!,
    if (annotatedUser != null) 'annotatedUser': annotatedUser!,
    if (attestationCredential != null)
      'attestationCredential': attestationCredential!,
    if (browserChannel != null) 'browserChannel': browserChannel!,
    if (browserVersion != null) 'browserVersion': browserVersion!,
    if (deviceInfo != null) 'deviceInfo': deviceInfo!,
    if (displayName != null) 'displayName': displayName!,
    if (etag != null) 'etag': etag!,
    if (extensionCount != null) 'extensionCount': extensionCount!,
    if (firstEnrollmentTime != null)
      'firstEnrollmentTime': firstEnrollmentTime!,
    if (identityProvider != null) 'identityProvider': identityProvider!,
    if (lastActivityTime != null) 'lastActivityTime': lastActivityTime!,
    if (lastPolicyFetchTime != null)
      'lastPolicyFetchTime': lastPolicyFetchTime!,
    if (lastPolicySyncTime != null) 'lastPolicySyncTime': lastPolicySyncTime!,
    if (lastStatusReportTime != null)
      'lastStatusReportTime': lastStatusReportTime!,
    if (name != null) 'name': name!,
    if (osPlatformType != null) 'osPlatformType': osPlatformType!,
    if (osPlatformVersion != null) 'osPlatformVersion': osPlatformVersion!,
    if (osVersion != null) 'osVersion': osVersion!,
    if (policyCount != null) 'policyCount': policyCount!,
    if (profileId != null) 'profileId': profileId!,
    if (profilePermanentId != null) 'profilePermanentId': profilePermanentId!,
    if (reportingData != null) 'reportingData': reportingData!,
    if (supportsFcmNotifications != null)
      'supportsFcmNotifications': supportsFcmNotifications!,
    if (userEmail != null) 'userEmail': userEmail!,
    if (userId != null) 'userId': userId!,
  };
}

/// A representation of a remote command for a Chrome browser profile.
class GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand {
  /// Result of the remote command.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult?
  commandResult;

  /// State of the remote command.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMMAND_STATE_UNSPECIFIED" : Represents an unspecified command state.
  /// - "PENDING" : Represents a command in a pending state.
  /// - "EXPIRED" : Represents a command that has expired.
  /// - "EXECUTED_BY_CLIENT" : Represents a command that has been executed by
  /// the client.
  core.String? commandState;

  /// Type of the remote command.
  ///
  /// The only supported command_type is "clearBrowsingData".
  ///
  /// Required.
  core.String? commandType;

  /// Timestamp of the issurance of the remote command.
  ///
  /// Output only.
  core.String? issueTime;

  /// Identifier.
  ///
  /// Format:
  /// customers/{customer_id}/profiles/{profile_permanent_id}/commands/{command_id}
  core.String? name;

  /// Payload of the remote command.
  ///
  /// The payload for "clearBrowsingData" command supports: - fields
  /// "clearCache" and "clearCookies" - values of boolean type.
  ///
  /// Required.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// Valid duration of the remote command.
  ///
  /// Output only.
  core.String? validDuration;

  GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand({
    this.commandResult,
    this.commandState,
    this.commandType,
    this.issueTime,
    this.name,
    this.payload,
    this.validDuration,
  });

  GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand.fromJson(
    core.Map json_,
  ) : this(
        commandResult:
            json_.containsKey('commandResult')
                ? GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult.fromJson(
                  json_['commandResult'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        commandState: json_['commandState'] as core.String?,
        commandType: json_['commandType'] as core.String?,
        issueTime: json_['issueTime'] as core.String?,
        name: json_['name'] as core.String?,
        payload:
            json_.containsKey('payload')
                ? json_['payload'] as core.Map<core.String, core.dynamic>
                : null,
        validDuration: json_['validDuration'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commandResult != null) 'commandResult': commandResult!,
    if (commandState != null) 'commandState': commandState!,
    if (commandType != null) 'commandType': commandType!,
    if (issueTime != null) 'issueTime': issueTime!,
    if (name != null) 'name': name!,
    if (payload != null) 'payload': payload!,
    if (validDuration != null) 'validDuration': validDuration!,
  };
}

/// Result of the execution of a command.
class GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult {
  /// Timestamp of the client execution of the remote command.
  ///
  /// Output only.
  core.String? clientExecutionTime;

  /// Result code that indicates the type of error or success of the command.
  ///
  /// Output only.
  core.String? resultCode;

  /// Result type of the remote command.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMMAND_RESULT_TYPE_UNSPECIFIED" : Represents an unspecified command
  /// result.
  /// - "IGNORED" : Represents a command with an ignored result.
  /// - "FAILURE" : Represents a failed command.
  /// - "SUCCESS" : Represents a succeeded command.
  core.String? resultType;

  GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult({
    this.clientExecutionTime,
    this.resultCode,
    this.resultType,
  });

  GoogleChromeManagementVersionsV1ChromeBrowserProfileCommandCommandResult.fromJson(
    core.Map json_,
  ) : this(
        clientExecutionTime: json_['clientExecutionTime'] as core.String?,
        resultCode: json_['resultCode'] as core.String?,
        resultType: json_['resultType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientExecutionTime != null)
      'clientExecutionTime': clientExecutionTime!,
    if (resultCode != null) 'resultCode': resultCode!,
    if (resultType != null) 'resultType': resultType!,
  };
}

/// Describes the ChromeOS device that a `CertificateProvisioningProcess`
/// belongs to.
class GoogleChromeManagementVersionsV1ChromeOsDevice {
  /// The unique Directory API ID of the device.
  ///
  /// This value is the same as the Admin Console's Directory API ID in the
  /// ChromeOS Devices tab.
  ///
  /// Output only.
  core.String? deviceDirectoryApiId;

  /// Device serial number.
  ///
  /// This value is the same as the Admin Console's Serial Number in the
  /// ChromeOS Devices tab.
  ///
  /// Output only.
  core.String? serialNumber;

  GoogleChromeManagementVersionsV1ChromeOsDevice({
    this.deviceDirectoryApiId,
    this.serialNumber,
  });

  GoogleChromeManagementVersionsV1ChromeOsDevice.fromJson(core.Map json_)
    : this(
        deviceDirectoryApiId: json_['deviceDirectoryApiId'] as core.String?,
        serialNumber: json_['serialNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceDirectoryApiId != null)
      'deviceDirectoryApiId': deviceDirectoryApiId!,
    if (serialNumber != null) 'serialNumber': serialNumber!,
  };
}

/// Describes the ChromeOS user session that a `CertificateProvisioningProcess`
/// belongs to.
class GoogleChromeManagementVersionsV1ChromeOsUserSession {
  /// This field contains information about the ChromeOS device that the user
  /// session is running on.
  ///
  /// It is only set if the user is affiliated, i.e., if the user is managed by
  /// the same organization that manages the ChromeOS device.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1ChromeOsDevice? chromeOsDevice;

  /// The unique Directory API ID of the user.
  ///
  /// Output only.
  core.String? userDirectoryApiId;

  /// The primary e-mail address of the user.
  ///
  /// Output only.
  core.String? userPrimaryEmail;

  GoogleChromeManagementVersionsV1ChromeOsUserSession({
    this.chromeOsDevice,
    this.userDirectoryApiId,
    this.userPrimaryEmail,
  });

  GoogleChromeManagementVersionsV1ChromeOsUserSession.fromJson(core.Map json_)
    : this(
        chromeOsDevice:
            json_.containsKey('chromeOsDevice')
                ? GoogleChromeManagementVersionsV1ChromeOsDevice.fromJson(
                  json_['chromeOsDevice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        userDirectoryApiId: json_['userDirectoryApiId'] as core.String?,
        userPrimaryEmail: json_['userPrimaryEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chromeOsDevice != null) 'chromeOsDevice': chromeOsDevice!,
    if (userDirectoryApiId != null) 'userDirectoryApiId': userDirectoryApiId!,
    if (userPrimaryEmail != null) 'userPrimaryEmail': userPrimaryEmail!,
  };
}

/// Request message for claiming a certificate provisioning process.
class GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest {
  /// The instance id of the caller.
  ///
  /// Required.
  core.String? callerInstanceId;

  GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest({
    this.callerInstanceId,
  });

  GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest.fromJson(
    core.Map json_,
  ) : this(callerInstanceId: json_['callerInstanceId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (callerInstanceId != null) 'callerInstanceId': callerInstanceId!,
  };
}

/// Response message for claiming a certificate provisioning process.
typedef GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse =
    $Empty;

/// Information of a device that runs a Chrome browser profile.
class GoogleChromeManagementVersionsV1DeviceInfo {
  /// Device ID that identifies the affiliated device on which the profile
  /// exists.
  ///
  /// If the device type is CHROME_BROWSER, then this represents a unique
  /// Directory API ID of the device that can be used in Admin SDK Browsers API.
  ///
  /// Output only.
  core.String? affiliatedDeviceId;

  /// Type of the device on which the profile exists.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEVICE_TYPE_UNSPECIFIED" : Represents an unspecified device type.
  /// - "CHROME_BROWSER" : Represents a Chrome browser device.
  core.String? deviceType;

  /// Hostname of the device on which the profile exists.
  ///
  /// Output only.
  core.String? hostname;

  /// Machine name of the device on which the profile exists.
  ///
  /// On platforms which do not report the machine name (currently iOS and
  /// Android) this is instead set to the browser's device_id - but note that
  /// this is a different device_id than the |affiliated_device_id|.
  ///
  /// Output only.
  core.String? machine;

  GoogleChromeManagementVersionsV1DeviceInfo({
    this.affiliatedDeviceId,
    this.deviceType,
    this.hostname,
    this.machine,
  });

  GoogleChromeManagementVersionsV1DeviceInfo.fromJson(core.Map json_)
    : this(
        affiliatedDeviceId: json_['affiliatedDeviceId'] as core.String?,
        deviceType: json_['deviceType'] as core.String?,
        hostname: json_['hostname'] as core.String?,
        machine: json_['machine'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (affiliatedDeviceId != null) 'affiliatedDeviceId': affiliatedDeviceId!,
    if (deviceType != null) 'deviceType': deviceType!,
    if (hostname != null) 'hostname': hostname!,
    if (machine != null) 'machine': machine!,
  };
}

/// Describes a generic Certificate Authority Connection.
typedef GoogleChromeManagementVersionsV1GenericCaConnection = $CaConnection;

/// Describes a generic certificate provisioning profile.
class GoogleChromeManagementVersionsV1GenericProfile {
  /// A string that references the administrator-provided configuration for the
  /// certificate provisioning profile.
  ///
  /// Output only.
  core.String? profileAdapterConfigReference;

  GoogleChromeManagementVersionsV1GenericProfile({
    this.profileAdapterConfigReference,
  });

  GoogleChromeManagementVersionsV1GenericProfile.fromJson(core.Map json_)
    : this(
        profileAdapterConfigReference:
            json_['profileAdapterConfigReference'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (profileAdapterConfigReference != null)
      'profileAdapterConfigReference': profileAdapterConfigReference!,
  };
}

/// Response to ListChromeBrowserProfileCommands method.
class GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse {
  /// The list of commands returned.
  core.List<GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand>?
  chromeBrowserProfileCommands;

  /// The pagination token that can be used to list the next page.
  core.String? nextPageToken;

  /// Total size represents an estimated number of resources returned.
  core.String? totalSize;

  GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse({
    this.chromeBrowserProfileCommands,
    this.nextPageToken,
    this.totalSize,
  });

  GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse.fromJson(
    core.Map json_,
  ) : this(
        chromeBrowserProfileCommands:
            (json_['chromeBrowserProfileCommands'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chromeBrowserProfileCommands != null)
      'chromeBrowserProfileCommands': chromeBrowserProfileCommands!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Response to ListChromeBrowserProfiles method.
class GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse {
  /// The list of profiles returned.
  core.List<GoogleChromeManagementVersionsV1ChromeBrowserProfile>?
  chromeBrowserProfiles;

  /// The pagination token that can be used to list the next page.
  core.String? nextPageToken;

  /// Total size represents an estimated number of resources returned.
  ///
  /// Not guaranteed to be accurate above 10k profiles.
  core.String? totalSize;

  GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse({
    this.chromeBrowserProfiles,
    this.nextPageToken,
    this.totalSize,
  });

  GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse.fromJson(
    core.Map json_,
  ) : this(
        chromeBrowserProfiles:
            (json_['chromeBrowserProfiles'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementVersionsV1ChromeBrowserProfile.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chromeBrowserProfiles != null)
      'chromeBrowserProfiles': chromeBrowserProfiles!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Request to MoveThirdPartyProfileUser method.
class GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest {
  /// Destination organizational unit where the third party chrome profile user
  /// will be moved to.
  ///
  /// Required.
  core.String? destinationOrgUnit;

  GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest({
    this.destinationOrgUnit,
  });

  GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest.fromJson(
    core.Map json_,
  ) : this(destinationOrgUnit: json_['destinationOrgUnit'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinationOrgUnit != null) 'destinationOrgUnit': destinationOrgUnit!,
  };
}

/// Response for MoveThirdPartyProfileUser method.
class GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse {
  /// The moved third party profile user.
  ///
  /// Output only.
  GoogleChromeManagementVersionsV1ThirdPartyProfileUser? thirdPartyProfileUser;

  GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse({
    this.thirdPartyProfileUser,
  });

  GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse.fromJson(
    core.Map json_,
  ) : this(
        thirdPartyProfileUser:
            json_.containsKey('thirdPartyProfileUser')
                ? GoogleChromeManagementVersionsV1ThirdPartyProfileUser.fromJson(
                  json_['thirdPartyProfileUser']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (thirdPartyProfileUser != null)
      'thirdPartyProfileUser': thirdPartyProfileUser!,
  };
}

/// Reporting data of a Chrome browser profile.
class GoogleChromeManagementVersionsV1ReportingData {
  /// Executable path of the installed Chrome browser.
  ///
  /// A valid path is included only in affiliated profiles.
  ///
  /// Output only.
  core.String? browserExecutablePath;

  /// Information of the extensions installed on the profile.
  ///
  /// Output only.
  core.List<GoogleChromeManagementVersionsV1ReportingDataExtensionData>?
  extensionData;

  /// Information of the policies applied on the extensions.
  ///
  /// Output only.
  core.List<GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData>?
  extensionPolicyData;

  /// Updated version of a browser, if it is different from the active browser
  /// version.
  ///
  /// Output only.
  core.String? installedBrowserVersion;

  /// Information of the policies applied on the profile.
  ///
  /// Output only.
  core.List<GoogleChromeManagementVersionsV1ReportingDataPolicyData>?
  policyData;

  /// Path of the profile.
  ///
  /// A valid path is included only in affiliated profiles.
  ///
  /// Output only.
  core.String? profilePath;

  GoogleChromeManagementVersionsV1ReportingData({
    this.browserExecutablePath,
    this.extensionData,
    this.extensionPolicyData,
    this.installedBrowserVersion,
    this.policyData,
    this.profilePath,
  });

  GoogleChromeManagementVersionsV1ReportingData.fromJson(core.Map json_)
    : this(
        browserExecutablePath: json_['browserExecutablePath'] as core.String?,
        extensionData:
            (json_['extensionData'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementVersionsV1ReportingDataExtensionData.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        extensionPolicyData:
            (json_['extensionPolicyData'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        installedBrowserVersion:
            json_['installedBrowserVersion'] as core.String?,
        policyData:
            (json_['policyData'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementVersionsV1ReportingDataPolicyData.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        profilePath: json_['profilePath'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (browserExecutablePath != null)
      'browserExecutablePath': browserExecutablePath!,
    if (extensionData != null) 'extensionData': extensionData!,
    if (extensionPolicyData != null)
      'extensionPolicyData': extensionPolicyData!,
    if (installedBrowserVersion != null)
      'installedBrowserVersion': installedBrowserVersion!,
    if (policyData != null) 'policyData': policyData!,
    if (profilePath != null) 'profilePath': profilePath!,
  };
}

/// Information of conflicting policy applied on a Chrome browser profile.
class GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData {
  /// Source of the policy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "POLICY_SOURCE_UNSPECIFIED" : Represents an unspecified policy source.
  /// - "MACHINE_PLATFORM" : Represents a machine level platform policy.
  /// - "USER_PLATFORM" : Represents a user level platform policy.
  /// - "MACHINE_LEVEL_USER_CLOUD" : Represents a machine level user cloud
  /// policy.
  /// - "USER_CLOUD" : Represents a user level cloud policy.
  /// - "MACHINE_MERGED" : Represents a machine level merged policy.
  core.String? source;

  GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData({
    this.source,
  });

  GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData.fromJson(
    core.Map json_,
  ) : this(source: json_['source'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (source != null) 'source': source!,
  };
}

/// Information of an extension installed on a Chrome browser profile.
class GoogleChromeManagementVersionsV1ReportingDataExtensionData {
  /// Description of the extension.
  ///
  /// Output only.
  core.String? description;

  /// ID of the extension.
  ///
  /// Output only.
  core.String? extensionId;

  /// Type of the extension.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EXTENSION_TYPE_UNSPECIFIED" : Represents an unspecified extension type.
  /// - "EXTENSION" : Represents an extension.
  /// - "APP" : Represents an app.
  /// - "THEME" : Represents a theme.
  /// - "HOSTED_APP" : Represents a hosted app.
  core.String? extensionType;

  /// The URL of the homepage of the extension.
  ///
  /// Output only.
  core.String? homepageUri;

  /// Installation type of the extension.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INSTALLATION_TYPE_UNSPECIFIED" : Represents an unspecified installation
  /// type.
  /// - "MULTIPLE" : Represents instances of the extension having mixed
  /// installation types.
  /// - "NORMAL" : Represents a normal installation type.
  /// - "ADMIN" : Represents an installation by admin.
  /// - "DEVELOPMENT" : Represents a development installation type.
  /// - "SIDELOAD" : Represents a sideload installation type.
  /// - "OTHER" : Represents an installation type that is not covered in the
  /// other options.
  core.String? installationType;

  /// Represents whether the user disabled the extension.
  ///
  /// Output only.
  core.bool? isDisabled;

  /// Represents whether the extension is from the webstore.
  ///
  /// Output only.
  core.bool? isWebstoreExtension;

  /// Manifest version of the extension.
  ///
  /// Output only.
  core.int? manifestVersion;

  /// Name of the extension.
  ///
  /// Output only.
  core.String? name;

  /// Permissions requested by the extension.
  ///
  /// Output only.
  core.List<core.String>? permissions;

  /// Version of the extension.
  ///
  /// Output only.
  core.String? version;

  GoogleChromeManagementVersionsV1ReportingDataExtensionData({
    this.description,
    this.extensionId,
    this.extensionType,
    this.homepageUri,
    this.installationType,
    this.isDisabled,
    this.isWebstoreExtension,
    this.manifestVersion,
    this.name,
    this.permissions,
    this.version,
  });

  GoogleChromeManagementVersionsV1ReportingDataExtensionData.fromJson(
    core.Map json_,
  ) : this(
        description: json_['description'] as core.String?,
        extensionId: json_['extensionId'] as core.String?,
        extensionType: json_['extensionType'] as core.String?,
        homepageUri: json_['homepageUri'] as core.String?,
        installationType: json_['installationType'] as core.String?,
        isDisabled: json_['isDisabled'] as core.bool?,
        isWebstoreExtension: json_['isWebstoreExtension'] as core.bool?,
        manifestVersion: json_['manifestVersion'] as core.int?,
        name: json_['name'] as core.String?,
        permissions:
            (json_['permissions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (extensionId != null) 'extensionId': extensionId!,
    if (extensionType != null) 'extensionType': extensionType!,
    if (homepageUri != null) 'homepageUri': homepageUri!,
    if (installationType != null) 'installationType': installationType!,
    if (isDisabled != null) 'isDisabled': isDisabled!,
    if (isWebstoreExtension != null)
      'isWebstoreExtension': isWebstoreExtension!,
    if (manifestVersion != null) 'manifestVersion': manifestVersion!,
    if (name != null) 'name': name!,
    if (permissions != null) 'permissions': permissions!,
    if (version != null) 'version': version!,
  };
}

/// Information of the policies applied on an extension.
class GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData {
  /// ID of the extension.
  ///
  /// Output only.
  core.String? extensionId;

  /// Name of the extension.
  ///
  /// Output only.
  core.String? extensionName;

  /// Information of the policies applied on the extension.
  ///
  /// Output only.
  core.List<GoogleChromeManagementVersionsV1ReportingDataPolicyData>?
  policyData;

  GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData({
    this.extensionId,
    this.extensionName,
    this.policyData,
  });

  GoogleChromeManagementVersionsV1ReportingDataExtensionPolicyData.fromJson(
    core.Map json_,
  ) : this(
        extensionId: json_['extensionId'] as core.String?,
        extensionName: json_['extensionName'] as core.String?,
        policyData:
            (json_['policyData'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementVersionsV1ReportingDataPolicyData.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (extensionId != null) 'extensionId': extensionId!,
    if (extensionName != null) 'extensionName': extensionName!,
    if (policyData != null) 'policyData': policyData!,
  };
}

/// Information of a policy applied on a Chrome browser profile.
class GoogleChromeManagementVersionsV1ReportingDataPolicyData {
  /// Conflicting policy information.
  ///
  /// Output only.
  core.List<GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData>?
  conflicts;

  /// Error message of the policy, if any.
  ///
  /// Output only.
  core.String? error;

  /// Name of the policy.
  ///
  /// Output only.
  core.String? name;

  /// Source of the policy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "POLICY_SOURCE_UNSPECIFIED" : Represents an unspecified policy source.
  /// - "MACHINE_PLATFORM" : Represents a machine level platform policy.
  /// - "USER_PLATFORM" : Represents a user level platform policy.
  /// - "MACHINE_LEVEL_USER_CLOUD" : Represents a machine level user cloud
  /// policy.
  /// - "USER_CLOUD" : Represents a user level cloud policy.
  /// - "MACHINE_MERGED" : Represents a machine level merged policy.
  core.String? source;

  /// Value of the policy.
  ///
  /// Output only.
  core.String? value;

  GoogleChromeManagementVersionsV1ReportingDataPolicyData({
    this.conflicts,
    this.error,
    this.name,
    this.source,
    this.value,
  });

  GoogleChromeManagementVersionsV1ReportingDataPolicyData.fromJson(
    core.Map json_,
  ) : this(
        conflicts:
            (json_['conflicts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        error: json_['error'] as core.String?,
        name: json_['name'] as core.String?,
        source: json_['source'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conflicts != null) 'conflicts': conflicts!,
    if (error != null) 'error': error!,
    if (name != null) 'name': name!,
    if (source != null) 'source': source!,
    if (value != null) 'value': value!,
  };
}

/// Describes a SCEP Certificate Authority Connection.
typedef GoogleChromeManagementVersionsV1ScepCaConnection = $CaConnection;

/// Describes a SCEP certificate provisioning profile.
class GoogleChromeManagementVersionsV1ScepProfile {
  /// The certificate template name as defined by the admin on their on-prem
  /// infrastructure.
  ///
  /// The Certificate Authority uses this name to identify the certificate
  /// template.
  ///
  /// Output only.
  core.String? certificateTemplateName;

  /// The country of the subject.
  ///
  /// Output only.
  core.String? country;

  /// The allowed key usages for certificate's key.
  ///
  /// Output only.
  core.List<core.String>? keyUsages;

  /// The locality of the subject.
  ///
  /// Output only.
  core.String? locality;

  /// The name of the organization the subject belongs to.
  ///
  /// Output only.
  core.String? organization;

  /// The organizational units of the subject.
  ///
  /// Output only.
  core.List<core.String>? organizationalUnits;

  /// The state of the subject.
  ///
  /// Output only.
  core.String? state;

  /// The subject alternative names.
  ///
  /// Output only.
  core.List<GoogleChromeManagementVersionsV1SubjectAltName>? subjectAltNames;

  /// The common name of the subject.
  ///
  /// Output only.
  core.String? subjectCommonName;

  GoogleChromeManagementVersionsV1ScepProfile({
    this.certificateTemplateName,
    this.country,
    this.keyUsages,
    this.locality,
    this.organization,
    this.organizationalUnits,
    this.state,
    this.subjectAltNames,
    this.subjectCommonName,
  });

  GoogleChromeManagementVersionsV1ScepProfile.fromJson(core.Map json_)
    : this(
        certificateTemplateName:
            json_['certificateTemplateName'] as core.String?,
        country: json_['country'] as core.String?,
        keyUsages:
            (json_['keyUsages'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        locality: json_['locality'] as core.String?,
        organization: json_['organization'] as core.String?,
        organizationalUnits:
            (json_['organizationalUnits'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        state: json_['state'] as core.String?,
        subjectAltNames:
            (json_['subjectAltNames'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleChromeManagementVersionsV1SubjectAltName.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        subjectCommonName: json_['subjectCommonName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificateTemplateName != null)
      'certificateTemplateName': certificateTemplateName!,
    if (country != null) 'country': country!,
    if (keyUsages != null) 'keyUsages': keyUsages!,
    if (locality != null) 'locality': locality!,
    if (organization != null) 'organization': organization!,
    if (organizationalUnits != null)
      'organizationalUnits': organizationalUnits!,
    if (state != null) 'state': state!,
    if (subjectAltNames != null) 'subjectAltNames': subjectAltNames!,
    if (subjectCommonName != null) 'subjectCommonName': subjectCommonName!,
  };
}

/// Request message for marking a certificate provisioning process as failed.
class GoogleChromeManagementVersionsV1SetFailureRequest {
  /// A message describing the failure details.
  ///
  /// It is displayed on the ChromeOS client device.
  ///
  /// Required.
  core.String? errorMessage;

  GoogleChromeManagementVersionsV1SetFailureRequest({this.errorMessage});

  GoogleChromeManagementVersionsV1SetFailureRequest.fromJson(core.Map json_)
    : this(errorMessage: json_['errorMessage'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorMessage != null) 'errorMessage': errorMessage!,
  };
}

/// Response message for publishing a failure for a certificate provisioning
/// process.
typedef GoogleChromeManagementVersionsV1SetFailureResponse = $Empty;

/// Request message for requesting a signature from the client that initated a
/// certificate provisioning process.
class GoogleChromeManagementVersionsV1SignDataRequest {
  /// The data that the client was asked to sign.
  ///
  /// Required.
  core.String? signData;
  core.List<core.int> get signDataAsBytes => convert.base64.decode(signData!);

  set signDataAsBytes(core.List<core.int> bytes_) {
    signData = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The signature algorithm that the adapter expects the client and backend
  /// components to use when processing `sign_data`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SIGNATURE_ALGORITHM_UNSPECIFIED" : Default value. This value is unused.
  /// - "SIGNATURE_ALGORITHM_RSA_PKCS1_V1_5_SHA256" : The server-side builds the
  /// PKCS#1 DigestInfo and sends a SHA256 hash of it to the client. The client
  /// should sign using RSA with PKCS#1 v1.5 padding.
  /// - "SIGNATURE_ALGORITHM_ECDSA_SHA256" : The server-side builds the PKCS#1
  /// DigestInfo and sends it unhashed to the client. The client is responsible
  /// for signing and hashing using the P-256 curve.
  core.String? signatureAlgorithm;

  GoogleChromeManagementVersionsV1SignDataRequest({
    this.signData,
    this.signatureAlgorithm,
  });

  GoogleChromeManagementVersionsV1SignDataRequest.fromJson(core.Map json_)
    : this(
        signData: json_['signData'] as core.String?,
        signatureAlgorithm: json_['signatureAlgorithm'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (signData != null) 'signData': signData!,
    if (signatureAlgorithm != null) 'signatureAlgorithm': signatureAlgorithm!,
  };
}

/// Describes a subject alternative name.
class GoogleChromeManagementVersionsV1SubjectAltName {
  /// The type of the SubjectAltName extension.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SUBJECT_ALT_NAME_TYPE_UNSPECIFIED" : The subject alternative name type
  /// is unspecified.
  /// - "RFC822_NAME" : The subject alternative name type is an email address
  /// adhering to RFC822.
  /// - "DNS_NAME" : The subject alternative name type is a Domain Name System
  /// (DNS).
  /// - "OTHER_NAME_USER_PRINCIPAL_NAME" : The subject alternative name type is
  /// a User Principal Name (UPN).
  /// - "UNIFORM_RESOURCE_IDENTIFIER" : The subject alternative name type is a
  /// Uniform Resource Identifier (URI).
  core.String? type;

  /// The value of the subject alternative name with respect to the `type`.
  ///
  /// Output only.
  core.String? value;

  GoogleChromeManagementVersionsV1SubjectAltName({this.type, this.value});

  GoogleChromeManagementVersionsV1SubjectAltName.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
    if (value != null) 'value': value!,
  };
}

/// A representation of non-Google (third party) user that is associated with a
/// managed Chrome profile.
class GoogleChromeManagementVersionsV1ThirdPartyProfileUser {
  /// Identifier.
  ///
  /// Format:
  /// customers/{customer_id}/thirdPartyProfileUsers/{third_party_profile_user_id}
  core.String? name;

  /// The ID of the organizational unit assigned to the user.
  ///
  /// Output only.
  core.String? orgUnitId;

  GoogleChromeManagementVersionsV1ThirdPartyProfileUser({
    this.name,
    this.orgUnitId,
  });

  GoogleChromeManagementVersionsV1ThirdPartyProfileUser.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        orgUnitId: json_['orgUnitId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (orgUnitId != null) 'orgUnitId': orgUnitId!,
  };
}

/// Request message for uploading an issued certificate for a certificate
/// provisioning process.
class GoogleChromeManagementVersionsV1UploadCertificateRequest {
  /// The issued certificate in PEM format.
  ///
  /// Required.
  core.String? certificatePem;

  GoogleChromeManagementVersionsV1UploadCertificateRequest({
    this.certificatePem,
  });

  GoogleChromeManagementVersionsV1UploadCertificateRequest.fromJson(
    core.Map json_,
  ) : this(certificatePem: json_['certificatePem'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificatePem != null) 'certificatePem': certificatePem!,
  };
}

/// Response message for publishing an issued certificate for a certificate
/// provisioning process.
typedef GoogleChromeManagementVersionsV1UploadCertificateResponse = $Empty;

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
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => GoogleLongrunningOperation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
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
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
                ? json_['response'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (done != null) 'done': done!,
    if (error != null) 'error': error!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (response != null) 'response': response!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;

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
typedef GoogleTypeDate = $Date;
