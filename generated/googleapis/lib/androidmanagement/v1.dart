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

/// Android Management API - v1
///
/// The Android Management API provides remote enterprise management of Android
/// devices and apps.
///
/// For more information, see <https://developers.google.com/android/management>
///
/// Create an instance of [AndroidManagementApi] to access these resources:
///
/// - [EnterprisesResource]
///   - [EnterprisesApplicationsResource]
///   - [EnterprisesDevicesResource]
///     - [EnterprisesDevicesOperationsResource]
///   - [EnterprisesEnrollmentTokensResource]
///   - [EnterprisesMigrationTokensResource]
///   - [EnterprisesPoliciesResource]
///   - [EnterprisesWebAppsResource]
///   - [EnterprisesWebTokensResource]
/// - [ProvisioningInfoResource]
/// - [SignupUrlsResource]
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

/// The Android Management API provides remote enterprise management of Android
/// devices and apps.
class AndroidManagementApi {
  /// Manage Android devices and apps for your customers
  static const androidmanagementScope =
      'https://www.googleapis.com/auth/androidmanagement';

  final commons.ApiRequester _requester;

  EnterprisesResource get enterprises => EnterprisesResource(_requester);
  ProvisioningInfoResource get provisioningInfo =>
      ProvisioningInfoResource(_requester);
  SignupUrlsResource get signupUrls => SignupUrlsResource(_requester);

  AndroidManagementApi(
    http.Client client, {
    core.String rootUrl = 'https://androidmanagement.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class EnterprisesResource {
  final commons.ApiRequester _requester;

  EnterprisesApplicationsResource get applications =>
      EnterprisesApplicationsResource(_requester);
  EnterprisesDevicesResource get devices =>
      EnterprisesDevicesResource(_requester);
  EnterprisesEnrollmentTokensResource get enrollmentTokens =>
      EnterprisesEnrollmentTokensResource(_requester);
  EnterprisesMigrationTokensResource get migrationTokens =>
      EnterprisesMigrationTokensResource(_requester);
  EnterprisesPoliciesResource get policies =>
      EnterprisesPoliciesResource(_requester);
  EnterprisesWebAppsResource get webApps =>
      EnterprisesWebAppsResource(_requester);
  EnterprisesWebTokensResource get webTokens =>
      EnterprisesWebTokensResource(_requester);

  EnterprisesResource(commons.ApiRequester client) : _requester = client;

  /// Creates an enterprise.
  ///
  /// This is the last step in the enterprise signup flow. See also:
  /// SigninDetail
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [agreementAccepted] - Whether the enterprise admin has seen and agreed to
  /// the managed Google Play Agreement
  /// (https://www.android.com/enterprise/terms/). Do not set this field for any
  /// customer-managed enterprise
  /// (https://developers.google.com/android/management/create-enterprise#customer-managed_enterprises).
  /// Set this to field to true for all EMM-managed enterprises
  /// (https://developers.google.com/android/management/create-enterprise#emm-managed_enterprises).
  ///
  /// [enterpriseToken] - The enterprise token appended to the callback URL. Set
  /// this when creating a customer-managed enterprise
  /// (https://developers.google.com/android/management/create-enterprise#customer-managed_enterprises)
  /// and not when creating a deprecated EMM-managed enterprise
  /// (https://developers.google.com/android/management/create-enterprise#emm-managed_enterprises).
  ///
  /// [projectId] - The ID of the Google Cloud Platform project which will own
  /// the enterprise.
  ///
  /// [signupUrlName] - The name of the SignupUrl used to sign up for the
  /// enterprise. Set this when creating a customer-managed enterprise
  /// (https://developers.google.com/android/management/create-enterprise#customer-managed_enterprises)
  /// and not when creating a deprecated EMM-managed enterprise
  /// (https://developers.google.com/android/management/create-enterprise#emm-managed_enterprises).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Enterprise].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enterprise> create(
    Enterprise request, {
    core.bool? agreementAccepted,
    core.String? enterpriseToken,
    core.String? projectId,
    core.String? signupUrlName,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (agreementAccepted != null)
        'agreementAccepted': ['${agreementAccepted}'],
      if (enterpriseToken != null) 'enterpriseToken': [enterpriseToken],
      if (projectId != null) 'projectId': [projectId],
      if (signupUrlName != null) 'signupUrlName': [signupUrlName],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/enterprises';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Enterprise.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Permanently deletes an enterprise and all accounts and data associated
  /// with it.
  ///
  /// Warning: this will result in a cascaded deletion of all AM API devices
  /// associated with the deleted enterprise. Only available for EMM-managed
  /// enterprises.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates an enterprise upgrade URL to upgrade an existing managed Google
  /// Play Accounts enterprise to a managed Google domain.
  ///
  /// See the guide
  /// (https://developers.google.com/android/management/upgrade-an-enterprise)
  /// for more details.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the enterprise to be upgraded in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateEnterpriseUpgradeUrlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateEnterpriseUpgradeUrlResponse>
  generateEnterpriseUpgradeUrl(
    GenerateEnterpriseUpgradeUrlRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':generateEnterpriseUpgradeUrl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateEnterpriseUpgradeUrlResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets an enterprise.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Enterprise].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enterprise> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Enterprise.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists EMM-managed enterprises.
  ///
  /// Only BASIC fields are returned.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The requested page size. The actual page size may be fixed to
  /// a min or max value.
  ///
  /// [pageToken] - A token identifying a page of results returned by the
  /// server.
  ///
  /// [projectId] - Required. The Cloud project ID of the EMM managing the
  /// enterprises.
  ///
  /// [view] - Specifies which Enterprise fields to return. This method only
  /// supports BASIC.
  /// Possible string values are:
  /// - "ENTERPRISE_VIEW_UNSPECIFIED" : The API will default to the BASIC view
  /// for the List method.
  /// - "BASIC" : Includes name and enterprise_display_name fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEnterprisesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEnterprisesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? projectId,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (projectId != null) 'projectId': [projectId],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/enterprises';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEnterprisesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an enterprise.
  ///
  /// See also: SigninDetail
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Enterprise].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enterprise> patch(
    Enterprise request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Enterprise.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EnterprisesApplicationsResource {
  final commons.ApiRequester _requester;

  EnterprisesApplicationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets info about an application.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the application in the form
  /// enterprises/{enterpriseId}/applications/{package_name}.
  /// Value must have pattern `^enterprises/\[^/\]+/applications/\[^/\]+$`.
  ///
  /// [languageCode] - The preferred language for localized application info, as
  /// a BCP47 tag (e.g. "en-US", "de"). If not specified the default language of
  /// the application will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Application].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Application> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Application.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EnterprisesDevicesResource {
  final commons.ApiRequester _requester;

  EnterprisesDevicesOperationsResource get operations =>
      EnterprisesDevicesOperationsResource(_requester);

  EnterprisesDevicesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a device.
  ///
  /// This operation attempts to wipe the device but this is not guaranteed to
  /// succeed if the device is offline for an extended period. Deleted devices
  /// do not show up in enterprises.devices.list calls and a 404 is returned
  /// from enterprises.devices.get.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}.
  /// Value must have pattern `^enterprises/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [wipeDataFlags] - Optional flags that control the device wiping behavior.
  ///
  /// [wipeReasonMessage] - Optional. A short message displayed to the user
  /// before wiping the work profile on personal devices. This has no effect on
  /// company owned devices. The maximum message length is 200 characters.
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
  async.Future<Empty> delete(
    core.String name, {
    core.List<core.String>? wipeDataFlags,
    core.String? wipeReasonMessage,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (wipeDataFlags != null) 'wipeDataFlags': wipeDataFlags,
      if (wipeReasonMessage != null) 'wipeReasonMessage': [wipeReasonMessage],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a device.
  ///
  /// Deleted devices will respond with a 404 error.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}.
  /// Value must have pattern `^enterprises/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Device].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Device> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Device.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Issues a command to a device.
  ///
  /// The Operation resource returned contains a Command in its metadata field.
  /// Use the get operation method to get the status of the command.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}.
  /// Value must have pattern `^enterprises/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> issueCommand(
    Command request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':issueCommand';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists devices for a given enterprise.
  ///
  /// Deleted devices are not returned in the response.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [pageSize] - The requested page size. The actual page size may be fixed to
  /// a min or max value.
  ///
  /// [pageToken] - A token identifying a page of results returned by the
  /// server.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDevicesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/devices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDevicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a device.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}.
  /// Value must have pattern `^enterprises/\[^/\]+/devices/\[^/\]+$`.
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Device].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Device> patch(
    Device request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Device.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class EnterprisesDevicesOperationsResource {
  final commons.ApiRequester _requester;

  EnterprisesDevicesOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation, the
  /// operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// Code.CANCELLED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^enterprises/\[^/\]+/devices/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',

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
  /// `^enterprises/\[^/\]+/devices/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^enterprises/\[^/\]+/devices/\[^/\]+/operations$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EnterprisesEnrollmentTokensResource {
  final commons.ApiRequester _requester;

  EnterprisesEnrollmentTokensResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an enrollment token for a given enterprise.
  ///
  /// It's up to the caller's responsibility to manage the lifecycle of newly
  /// created tokens and deleting them when they're not intended to be used
  /// anymore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EnrollmentToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EnrollmentToken> create(
    EnrollmentToken request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/enrollmentTokens';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EnrollmentToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an enrollment token.
  ///
  /// This operation invalidates the token, preventing its future use.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the enrollment token in the form
  /// enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.
  /// Value must have pattern `^enterprises/\[^/\]+/enrollmentTokens/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an active, unexpired enrollment token.
  ///
  /// A partial view of the enrollment token is returned. Only the following
  /// fields are populated: name, expirationTimestamp, allowPersonalUsage,
  /// value, qrCode. This method is meant to help manage active enrollment
  /// tokens lifecycle. For security reasons, it's recommended to delete active
  /// enrollment tokens as soon as they're not intended to be used anymore.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the enrollment token in the form
  /// enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.
  /// Value must have pattern `^enterprises/\[^/\]+/enrollmentTokens/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EnrollmentToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EnrollmentToken> get(
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
    return EnrollmentToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists active, unexpired enrollment tokens for a given enterprise.
  ///
  /// The list items contain only a partial view of EnrollmentToken object. Only
  /// the following fields are populated: name, expirationTimestamp,
  /// allowPersonalUsage, value, qrCode. This method is meant to help manage
  /// active enrollment tokens lifecycle. For security reasons, it's recommended
  /// to delete active enrollment tokens as soon as they're not intended to be
  /// used anymore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [pageSize] - The requested page size. The service may return fewer than
  /// this value. If unspecified, at most 10 items will be returned. The maximum
  /// value is 100; values above 100 will be coerced to 100.
  ///
  /// [pageToken] - A token identifying a page of results returned by the
  /// server.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEnrollmentTokensResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEnrollmentTokensResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/enrollmentTokens';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEnrollmentTokensResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EnterprisesMigrationTokensResource {
  final commons.ApiRequester _requester;

  EnterprisesMigrationTokensResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a migration token, to migrate an existing device from being
  /// managed by the EMM's Device Policy Controller (DPC) to being managed by
  /// the Android Management API.
  ///
  /// See the guide
  /// (https://developers.google.com/android/management/dpc-migration) for more
  /// details.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The enterprise in which this migration token is
  /// created. This must be the same enterprise which already manages the device
  /// in the Play EMM API. Format: enterprises/{enterprise}
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MigrationToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MigrationToken> create(
    MigrationToken request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/migrationTokens';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MigrationToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a migration token.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the migration token to retrieve. Format:
  /// enterprises/{enterprise}/migrationTokens/{migration_token}
  /// Value must have pattern `^enterprises/\[^/\]+/migrationTokens/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MigrationToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MigrationToken> get(
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
    return MigrationToken.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists migration tokens.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The enterprise which the migration tokens belong to.
  /// Format: enterprises/{enterprise}
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of migration tokens to return. Fewer
  /// migration tokens may be returned. If unspecified, at most 100 migration
  /// tokens will be returned. The maximum value is 100; values above 100 will
  /// be coerced to 100.
  ///
  /// [pageToken] - A page token, received from a previous ListMigrationTokens
  /// call. Provide this to retrieve the subsequent page.When paginating, all
  /// other parameters provided to ListMigrationTokens must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMigrationTokensResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMigrationTokensResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/migrationTokens';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMigrationTokensResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EnterprisesPoliciesResource {
  final commons.ApiRequester _requester;

  EnterprisesPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes a policy.
  ///
  /// This operation is only permitted if no devices are currently referencing
  /// the policy.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the policy in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  /// Value must have pattern `^enterprises/\[^/\]+/policies/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a policy.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the policy in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  /// Value must have pattern `^enterprises/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists policies for a given enterprise.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [pageSize] - The requested page size. The actual page size may be fixed to
  /// a min or max value.
  ///
  /// [pageToken] - A token identifying a page of results returned by the
  /// server.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPoliciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/policies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates or creates applications in a policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Policy containing the ApplicationPolicy
  /// objects to be updated, in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  /// Value must have pattern `^enterprises/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ModifyPolicyApplicationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ModifyPolicyApplicationsResponse> modifyPolicyApplications(
    ModifyPolicyApplicationsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':modifyPolicyApplications';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ModifyPolicyApplicationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates or creates a policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the policy in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  /// Value must have pattern `^enterprises/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> patch(
    Policy request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes applications in a policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the policy containing the ApplicationPolicy
  /// objects to be removed, in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  /// Value must have pattern `^enterprises/\[^/\]+/policies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemovePolicyApplicationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemovePolicyApplicationsResponse> removePolicyApplications(
    RemovePolicyApplicationsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':removePolicyApplications';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemovePolicyApplicationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EnterprisesWebAppsResource {
  final commons.ApiRequester _requester;

  EnterprisesWebAppsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a web app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebApp> create(
    WebApp request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/webApps';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WebApp.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a web app.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the web app in the form
  /// enterprises/{enterpriseId}/webApps/{packageName}.
  /// Value must have pattern `^enterprises/\[^/\]+/webApps/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',

      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a web app.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the web app in the form
  /// enterprises/{enterpriseId}/webApps/{packageName}.
  /// Value must have pattern `^enterprises/\[^/\]+/webApps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebApp> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WebApp.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists web apps for a given enterprise.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [pageSize] - The requested page size. This is a hint and the actual page
  /// size in the response may be different.
  ///
  /// [pageToken] - A token identifying a page of results returned by the
  /// server.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWebAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWebAppsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/webApps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWebAppsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a web app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the web app in the form
  /// enterprises/{enterpriseId}/webApps/{packageName}.
  /// Value must have pattern `^enterprises/\[^/\]+/webApps/\[^/\]+$`.
  ///
  /// [updateMask] - The field mask indicating the fields to update. If not set,
  /// all modifiable fields will be modified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebApp> patch(
    WebApp request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return WebApp.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class EnterprisesWebTokensResource {
  final commons.ApiRequester _requester;

  EnterprisesWebTokensResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a web token to access an embeddable managed Google Play web UI for
  /// a given enterprise.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the enterprise in the form
  /// enterprises/{enterpriseId}.
  /// Value must have pattern `^enterprises/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebToken> create(
    WebToken request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/webTokens';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WebToken.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProvisioningInfoResource {
  final commons.ApiRequester _requester;

  ProvisioningInfoResource(commons.ApiRequester client) : _requester = client;

  /// Get the device provisioning information by the identifier provided in the
  /// sign-in url.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The identifier that Android Device Policy passes to the
  /// 3P sign-in page in the form of provisioningInfo/{provisioning_info}.
  /// Value must have pattern `^provisioningInfo/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProvisioningInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProvisioningInfo> get(
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
    return ProvisioningInfo.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SignupUrlsResource {
  final commons.ApiRequester _requester;

  SignupUrlsResource(commons.ApiRequester client) : _requester = client;

  /// Creates an enterprise signup URL.
  ///
  /// Request parameters:
  ///
  /// [adminEmail] - Optional. Email address used to prefill the admin field of
  /// the enterprise signup form. This value is a hint only and can be altered
  /// by the user. If allowedDomains is non-empty then this must belong to one
  /// of the allowedDomains.
  ///
  /// [allowedDomains] - Optional. A list of domains that are permitted for the
  /// admin email. The IT admin cannot enter an email address with a domain name
  /// that is not in this list. Subdomains of domains in this list are not
  /// allowed but can be allowed by adding a second entry which has *. prefixed
  /// to the domain name (e.g. *.example.com). If the field is not present or is
  /// an empty list then the IT admin is free to use any valid domain name.
  /// Personal email domains are always allowed, but will result in the creation
  /// of a managed Google Play Accounts enterprise.
  ///
  /// [callbackUrl] - The callback URL that the admin will be redirected to
  /// after successfully creating an enterprise. Before redirecting there the
  /// system will add a query parameter to this URL named enterpriseToken which
  /// will contain an opaque token to be used for the create enterprise request.
  /// The URL will be parsed then reformatted in order to add the
  /// enterpriseToken parameter, so there may be some minor formatting changes.
  ///
  /// [projectId] - The ID of the Google Cloud Platform project which will own
  /// the enterprise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignupUrl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SignupUrl> create({
    core.String? adminEmail,
    core.List<core.String>? allowedDomains,
    core.String? callbackUrl,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (adminEmail != null) 'adminEmail': [adminEmail],
      if (allowedDomains != null) 'allowedDomains': allowedDomains,
      if (callbackUrl != null) 'callbackUrl': [callbackUrl],
      if (projectId != null) 'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/signupUrls';

    final response_ = await _requester.request(
      url_,
      'POST',

      queryParams: queryParams_,
    );
    return SignupUrl.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Parameters associated with the ADD_ESIM command to add an eSIM profile to
/// the device.
class AddEsimParams {
  /// The activation code for the eSIM profile.
  ///
  /// Required.
  core.String? activationCode;

  /// The activation state of the eSIM profile once it is downloaded.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACTIVATION_STATE_UNSPECIFIED" : eSIM activation state is not specified.
  /// This defaults to the eSIM profile being NOT_ACTIVATED on personally-owned
  /// devices and ACTIVATED on company-owned devices.
  /// - "ACTIVATED" : The eSIM is automatically activated after downloading.
  /// Setting this as the activation state for personally-owned devices will
  /// result in the command being rejected.
  /// - "NOT_ACTIVATED" : The eSIM profile is downloaded but not activated. In
  /// this case, the user will need to activate the eSIM manually on the device.
  core.String? activationState;

  AddEsimParams({this.activationCode, this.activationState});

  AddEsimParams.fromJson(core.Map json_)
    : this(
        activationCode: json_['activationCode'] as core.String?,
        activationState: json_['activationState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activationCode != null) 'activationCode': activationCode!,
    if (activationState != null) 'activationState': activationState!,
  };
}

/// Advanced security settings.
///
/// In most cases, setting these is not needed.
class AdvancedSecurityOverrides {
  /// Controls Common Criteria Mode—security standards defined in the Common
  /// Criteria for Information Technology Security Evaluation
  /// (https://www.commoncriteriaportal.org/) (CC).
  ///
  /// Enabling Common Criteria Mode increases certain security components on a
  /// device, see CommonCriteriaMode for details.Warning: Common Criteria Mode
  /// enforces a strict security model typically only required for IT products
  /// used in national security systems and other highly sensitive
  /// organizations. Standard device use may be affected. Only enabled if
  /// required. If Common Criteria Mode is turned off after being enabled
  /// previously, all user-configured Wi-Fi networks may be lost and any
  /// enterprise-configured Wi-Fi networks that require user input may need to
  /// be reconfigured.
  /// Possible string values are:
  /// - "COMMON_CRITERIA_MODE_UNSPECIFIED" : Unspecified. Defaults to
  /// COMMON_CRITERIA_MODE_DISABLED.
  /// - "COMMON_CRITERIA_MODE_DISABLED" : Default. Disables Common Criteria
  /// Mode.
  /// - "COMMON_CRITERIA_MODE_ENABLED" : Enables Common Criteria Mode.
  core.String? commonCriteriaMode;

  /// Controls whether content protection, which scans for deceptive apps, is
  /// enabled.
  ///
  /// This is supported on Android 15 and above.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONTENT_PROTECTION_POLICY_UNSPECIFIED" : Unspecified. Defaults to
  /// CONTENT_PROTECTION_DISABLED.
  /// - "CONTENT_PROTECTION_DISABLED" : Content protection is disabled and the
  /// user cannot change this.
  /// - "CONTENT_PROTECTION_ENFORCED" : Content protection is enabled and the
  /// user cannot change this.Supported on Android 15 and above. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 15.
  /// - "CONTENT_PROTECTION_USER_CHOICE" : Content protection is not controlled
  /// by the policy. The user is allowed to choose the behavior of content
  /// protection.Supported on Android 15 and above. A NonComplianceDetail with
  /// API_LEVEL is reported if the Android version is less than 15.
  core.String? contentProtectionPolicy;

  /// Controls access to developer settings: developer options and safe boot.
  ///
  /// Replaces safeBootDisabled (deprecated) and debuggingFeaturesAllowed
  /// (deprecated).
  /// Possible string values are:
  /// - "DEVELOPER_SETTINGS_UNSPECIFIED" : Unspecified. Defaults to
  /// DEVELOPER_SETTINGS_DISABLED.
  /// - "DEVELOPER_SETTINGS_DISABLED" : Default. Disables all developer settings
  /// and prevents the user from accessing them.
  /// - "DEVELOPER_SETTINGS_ALLOWED" : Allows all developer settings. The user
  /// can access and optionally configure the settings.
  core.String? developerSettings;

  /// Whether Google Play Protect verification
  /// (https://support.google.com/accounts/answer/2812853) is enforced.
  ///
  /// Replaces ensureVerifyAppsEnabled (deprecated).
  /// Possible string values are:
  /// - "GOOGLE_PLAY_PROTECT_VERIFY_APPS_UNSPECIFIED" : Unspecified. Defaults to
  /// VERIFY_APPS_ENFORCED.
  /// - "VERIFY_APPS_ENFORCED" : Default. Force-enables app verification.
  /// - "VERIFY_APPS_USER_CHOICE" : Allows the user to choose whether to enable
  /// app verification.
  core.String? googlePlayProtectVerifyApps;

  /// Controls Memory Tagging Extension (MTE)
  /// (https://source.android.com/docs/security/test/memory-safety/arm-mte) on
  /// the device.
  ///
  /// The device needs to be rebooted to apply changes to the MTE policy.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MTE_POLICY_UNSPECIFIED" : Unspecified. Defaults to MTE_USER_CHOICE.
  /// - "MTE_USER_CHOICE" : The user can choose to enable or disable MTE on the
  /// device if the device supports this.
  /// - "MTE_ENFORCED" : MTE is enabled on the device and the user is not
  /// allowed to change this setting. This can be set on fully managed devices
  /// and work profiles on company-owned devices. A NonComplianceDetail with
  /// MANAGEMENT_MODE is reported for other management modes. A
  /// NonComplianceDetail with DEVICE_INCOMPATIBLE is reported if the device
  /// does not support MTE.Supported on Android 14 and above. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 14.
  /// - "MTE_DISABLED" : MTE is disabled on the device and the user is not
  /// allowed to change this setting. This applies only on fully managed
  /// devices. In other cases, a NonComplianceDetail with MANAGEMENT_MODE is
  /// reported. A NonComplianceDetail with DEVICE_INCOMPATIBLE is reported if
  /// the device does not support MTE.Supported on Android 14 and above. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 14.
  core.String? mtePolicy;

  /// Personal apps that can read work profile notifications using a
  /// NotificationListenerService
  /// (https://developer.android.com/reference/android/service/notification/NotificationListenerService).
  ///
  /// By default, no personal apps (aside from system apps) can read work
  /// notifications. Each value in the list must be a package name.
  core.List<core.String>? personalAppsThatCanReadWorkNotifications;

  /// The policy for untrusted apps (apps from unknown sources) enforced on the
  /// device.
  ///
  /// Replaces install_unknown_sources_allowed (deprecated).
  /// Possible string values are:
  /// - "UNTRUSTED_APPS_POLICY_UNSPECIFIED" : Unspecified. Defaults to
  /// DISALLOW_INSTALL.
  /// - "DISALLOW_INSTALL" : Default. Disallow untrusted app installs on entire
  /// device.
  /// - "ALLOW_INSTALL_IN_PERSONAL_PROFILE_ONLY" : For devices with work
  /// profiles, allow untrusted app installs in the device's personal profile
  /// only.
  /// - "ALLOW_INSTALL_DEVICE_WIDE" : Allow untrusted app installs on entire
  /// device.
  core.String? untrustedAppsPolicy;

  AdvancedSecurityOverrides({
    this.commonCriteriaMode,
    this.contentProtectionPolicy,
    this.developerSettings,
    this.googlePlayProtectVerifyApps,
    this.mtePolicy,
    this.personalAppsThatCanReadWorkNotifications,
    this.untrustedAppsPolicy,
  });

  AdvancedSecurityOverrides.fromJson(core.Map json_)
    : this(
        commonCriteriaMode: json_['commonCriteriaMode'] as core.String?,
        contentProtectionPolicy:
            json_['contentProtectionPolicy'] as core.String?,
        developerSettings: json_['developerSettings'] as core.String?,
        googlePlayProtectVerifyApps:
            json_['googlePlayProtectVerifyApps'] as core.String?,
        mtePolicy: json_['mtePolicy'] as core.String?,
        personalAppsThatCanReadWorkNotifications:
            (json_['personalAppsThatCanReadWorkNotifications'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        untrustedAppsPolicy: json_['untrustedAppsPolicy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commonCriteriaMode != null) 'commonCriteriaMode': commonCriteriaMode!,
    if (contentProtectionPolicy != null)
      'contentProtectionPolicy': contentProtectionPolicy!,
    if (developerSettings != null) 'developerSettings': developerSettings!,
    if (googlePlayProtectVerifyApps != null)
      'googlePlayProtectVerifyApps': googlePlayProtectVerifyApps!,
    if (mtePolicy != null) 'mtePolicy': mtePolicy!,
    if (personalAppsThatCanReadWorkNotifications != null)
      'personalAppsThatCanReadWorkNotifications':
          personalAppsThatCanReadWorkNotifications!,
    if (untrustedAppsPolicy != null)
      'untrustedAppsPolicy': untrustedAppsPolicy!,
  };
}

/// Configuration for an always-on VPN connection.
class AlwaysOnVpnPackage {
  /// Disallows networking when the VPN is not connected.
  core.bool? lockdownEnabled;

  /// The package name of the VPN app.
  core.String? packageName;

  AlwaysOnVpnPackage({this.lockdownEnabled, this.packageName});

  AlwaysOnVpnPackage.fromJson(core.Map json_)
    : this(
        lockdownEnabled: json_['lockdownEnabled'] as core.bool?,
        packageName: json_['packageName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lockdownEnabled != null) 'lockdownEnabled': lockdownEnabled!,
    if (packageName != null) 'packageName': packageName!,
  };
}

/// A compliance rule condition which is satisfied if the Android Framework API
/// level on the device doesn't meet a minimum requirement.
///
/// There can only be one rule with this type of condition per policy.
class ApiLevelCondition {
  /// The minimum desired Android Framework API level.
  ///
  /// If the device doesn't meet the minimum requirement, this condition is
  /// satisfied. Must be greater than zero.
  core.int? minApiLevel;

  ApiLevelCondition({this.minApiLevel});

  ApiLevelCondition.fromJson(core.Map json_)
    : this(minApiLevel: json_['minApiLevel'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (minApiLevel != null) 'minApiLevel': minApiLevel!,
  };
}

/// Access Point Name (APN) policy.
///
/// Configuration for Access Point Names (APNs) which may override any other
/// APNs on the device. See OVERRIDE_APNS_ENABLED and overrideApns for details.
class ApnPolicy {
  /// APN settings for override APNs.
  ///
  /// There must not be any conflict between any of APN settings provided,
  /// otherwise the policy will be rejected. Two ApnSettings are considered to
  /// conflict when all of the following fields match on both:
  /// numericOperatorId, apn, proxyAddress, proxyPort, mmsProxyAddress,
  /// mmsProxyPort, mmsc, mvnoType, protocol, roamingProtocol. If some of the
  /// APN settings result in non-compliance of INVALID_VALUE , they will be
  /// ignored. This can be set on fully managed devices on Android 10 and above.
  /// This can also be set on work profiles on Android 13 and above and only
  /// with ApnSetting's with ENTERPRISE APN type. A NonComplianceDetail with
  /// API_LEVEL is reported if the Android version is less than 10. A
  /// NonComplianceDetail with MANAGEMENT_MODE is reported for work profiles on
  /// Android versions less than 13.
  ///
  /// Optional.
  core.List<ApnSetting>? apnSettings;

  /// Whether override APNs are disabled or enabled.
  ///
  /// See DevicePolicyManager.setOverrideApnsEnabled
  /// (https://developer.android.com/reference/android/app/admin/DevicePolicyManager#setOverrideApnsEnabled)
  /// for more details.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "OVERRIDE_APNS_UNSPECIFIED" : Unspecified. Defaults to
  /// OVERRIDE_APNS_DISABLED.
  /// - "OVERRIDE_APNS_DISABLED" : Override APNs disabled. Any configured
  /// apnSettings are saved on the device, but are disabled and have no effect.
  /// Any other APNs on the device remain in use.
  /// - "OVERRIDE_APNS_ENABLED" : Override APNs enabled. Only override APNs are
  /// in use, any other APNs are ignored. This can only be set on fully managed
  /// devices on Android 10 and above. For work profiles override APNs are
  /// enabled via preferentialNetworkServiceSettings and this value cannot be
  /// set. A NonComplianceDetail with API_LEVEL is reported if the Android
  /// version is less than 10. A NonComplianceDetail with MANAGEMENT_MODE is
  /// reported for work profiles.
  core.String? overrideApns;

  ApnPolicy({this.apnSettings, this.overrideApns});

  ApnPolicy.fromJson(core.Map json_)
    : this(
        apnSettings:
            (json_['apnSettings'] as core.List?)
                ?.map(
                  (value) => ApnSetting.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        overrideApns: json_['overrideApns'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apnSettings != null) 'apnSettings': apnSettings!,
    if (overrideApns != null) 'overrideApns': overrideApns!,
  };
}

/// An Access Point Name (APN) configuration for a carrier data connection.
///
/// The APN provides configuration to connect a cellular network device to an IP
/// data network. A carrier uses this setting to decide which IP address to
/// assign, any security methods to apply, and how the device might be connected
/// to private networks.
class ApnSetting {
  /// Whether User Plane resources have to be activated during every transition
  /// from CM-IDLE mode to CM-CONNECTED state for this APN.
  ///
  /// See 3GPP TS 23.501 section 5.6.13.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ALWAYS_ON_SETTING_UNSPECIFIED" : Unspecified. Defaults to
  /// NOT_ALWAYS_ON.
  /// - "NOT_ALWAYS_ON" : The PDU session brought up by this APN should not be
  /// always on.
  /// - "ALWAYS_ON" : The PDU session brought up by this APN should always be
  /// on. Supported on Android 15 and above. A NonComplianceDetail with
  /// API_LEVEL is reported if the Android version is less than 15.
  core.String? alwaysOnSetting;

  /// Name of the APN.
  ///
  /// Policy will be rejected if this field is empty.
  ///
  /// Required.
  core.String? apn;

  /// Usage categories for the APN.
  ///
  /// Policy will be rejected if this field is empty or contains
  /// APN_TYPE_UNSPECIFIED or duplicates. Multiple APN types can be set on fully
  /// managed devices. ENTERPRISE is the only allowed APN type on work profiles.
  /// A NonComplianceDetail with MANAGEMENT_MODE is reported for any other value
  /// on work profiles. APN types that are not supported on the device or
  /// management mode will be ignored. If this results in the empty list, the
  /// APN setting will be ignored, because apnTypes is a required field. A
  /// NonComplianceDetail with INVALID_VALUE is reported if none of the APN
  /// types are supported on the device or management mode.
  ///
  /// Required.
  core.List<core.String>? apnTypes;

  /// Authentication type of the APN.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED" : Unspecified. If username is empty, defaults to
  /// NONE. Otherwise, defaults to PAP_OR_CHAP.
  /// - "NONE" : Authentication is not required.
  /// - "PAP" : Authentication type for PAP.
  /// - "CHAP" : Authentication type for CHAP.
  /// - "PAP_OR_CHAP" : Authentication type for PAP or CHAP.
  core.String? authType;

  /// Carrier ID for the APN.
  ///
  /// A value of 0 (default) means not set and negative values are rejected.
  ///
  /// Optional.
  core.int? carrierId;

  /// Human-readable name that describes the APN.
  ///
  /// Policy will be rejected if this field is empty.
  ///
  /// Required.
  core.String? displayName;

  /// MMS (Multimedia Messaging Service) proxy address of the APN which can be
  /// an IP address or hostname (not a URL).
  ///
  /// Optional.
  core.String? mmsProxyAddress;

  /// MMS (Multimedia Messaging Service) proxy port of the APN.
  ///
  /// A value of 0 (default) means not set and negative values are rejected.
  ///
  /// Optional.
  core.int? mmsProxyPort;

  /// MMSC (Multimedia Messaging Service Center) URI of the APN.
  ///
  /// Optional.
  core.String? mmsc;

  /// The default MTU (Maximum Transmission Unit) size in bytes of the IPv4
  /// routes brought up by this APN setting.
  ///
  /// A value of 0 (default) means not set and negative values are rejected.
  /// Supported on Android 13 and above. A NonComplianceDetail with API_LEVEL is
  /// reported if the Android version is less than 13.
  ///
  /// Optional.
  core.int? mtuV4;

  /// The MTU (Maximum Transmission Unit) size of the IPv6 mobile interface to
  /// which the APN connected.
  ///
  /// A value of 0 (default) means not set and negative values are rejected.
  /// Supported on Android 13 and above. A NonComplianceDetail with API_LEVEL is
  /// reported if the Android version is less than 13.
  ///
  /// Optional.
  core.int? mtuV6;

  /// MVNO match type for the APN.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MVNO_TYPE_UNSPECIFIED" : The MVNO type is not specified.
  /// - "GID" : MVNO type for group identifier level 1.
  /// - "ICCID" : MVNO type for ICCID.
  /// - "IMSI" : MVNO type for IMSI.
  /// - "SPN" : MVNO type for SPN (service provider name).
  core.String? mvnoType;

  /// Radio technologies (network types) the APN may use.
  ///
  /// Policy will be rejected if this field contains NETWORK_TYPE_UNSPECIFIED or
  /// duplicates.
  ///
  /// Optional.
  core.List<core.String>? networkTypes;

  /// The numeric operator ID of the APN.
  ///
  /// Numeric operator ID is defined as MCC (Mobile Country Code) + MNC (Mobile
  /// Network Code).
  ///
  /// Optional.
  core.String? numericOperatorId;

  /// APN password of the APN.
  ///
  /// Optional.
  core.String? password;

  /// The protocol to use to connect to this APN.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PROTOCOL_UNSPECIFIED" : The protocol is not specified.
  /// - "IP" : Internet protocol.
  /// - "IPV4V6" : Virtual PDP type introduced to handle dual IP stack UE
  /// capability.
  /// - "IPV6" : Internet protocol, version 6.
  /// - "NON_IP" : Transfer of Non-IP data to external packet data network.
  /// - "PPP" : Point to point protocol.
  /// - "UNSTRUCTURED" : Transfer of Unstructured data to the Data Network via
  /// N6.
  core.String? protocol;

  /// The proxy address of the APN.
  ///
  /// Optional.
  core.String? proxyAddress;

  /// The proxy port of the APN.
  ///
  /// A value of 0 (default) means not set and negative values are rejected.
  ///
  /// Optional.
  core.int? proxyPort;

  /// The protocol to use to connect to this APN while the device is roaming.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PROTOCOL_UNSPECIFIED" : The protocol is not specified.
  /// - "IP" : Internet protocol.
  /// - "IPV4V6" : Virtual PDP type introduced to handle dual IP stack UE
  /// capability.
  /// - "IPV6" : Internet protocol, version 6.
  /// - "NON_IP" : Transfer of Non-IP data to external packet data network.
  /// - "PPP" : Point to point protocol.
  /// - "UNSTRUCTURED" : Transfer of Unstructured data to the Data Network via
  /// N6.
  core.String? roamingProtocol;

  /// APN username of the APN.
  ///
  /// Optional.
  core.String? username;

  ApnSetting({
    this.alwaysOnSetting,
    this.apn,
    this.apnTypes,
    this.authType,
    this.carrierId,
    this.displayName,
    this.mmsProxyAddress,
    this.mmsProxyPort,
    this.mmsc,
    this.mtuV4,
    this.mtuV6,
    this.mvnoType,
    this.networkTypes,
    this.numericOperatorId,
    this.password,
    this.protocol,
    this.proxyAddress,
    this.proxyPort,
    this.roamingProtocol,
    this.username,
  });

  ApnSetting.fromJson(core.Map json_)
    : this(
        alwaysOnSetting: json_['alwaysOnSetting'] as core.String?,
        apn: json_['apn'] as core.String?,
        apnTypes:
            (json_['apnTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        authType: json_['authType'] as core.String?,
        carrierId: json_['carrierId'] as core.int?,
        displayName: json_['displayName'] as core.String?,
        mmsProxyAddress: json_['mmsProxyAddress'] as core.String?,
        mmsProxyPort: json_['mmsProxyPort'] as core.int?,
        mmsc: json_['mmsc'] as core.String?,
        mtuV4: json_['mtuV4'] as core.int?,
        mtuV6: json_['mtuV6'] as core.int?,
        mvnoType: json_['mvnoType'] as core.String?,
        networkTypes:
            (json_['networkTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        numericOperatorId: json_['numericOperatorId'] as core.String?,
        password: json_['password'] as core.String?,
        protocol: json_['protocol'] as core.String?,
        proxyAddress: json_['proxyAddress'] as core.String?,
        proxyPort: json_['proxyPort'] as core.int?,
        roamingProtocol: json_['roamingProtocol'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alwaysOnSetting != null) 'alwaysOnSetting': alwaysOnSetting!,
    if (apn != null) 'apn': apn!,
    if (apnTypes != null) 'apnTypes': apnTypes!,
    if (authType != null) 'authType': authType!,
    if (carrierId != null) 'carrierId': carrierId!,
    if (displayName != null) 'displayName': displayName!,
    if (mmsProxyAddress != null) 'mmsProxyAddress': mmsProxyAddress!,
    if (mmsProxyPort != null) 'mmsProxyPort': mmsProxyPort!,
    if (mmsc != null) 'mmsc': mmsc!,
    if (mtuV4 != null) 'mtuV4': mtuV4!,
    if (mtuV6 != null) 'mtuV6': mtuV6!,
    if (mvnoType != null) 'mvnoType': mvnoType!,
    if (networkTypes != null) 'networkTypes': networkTypes!,
    if (numericOperatorId != null) 'numericOperatorId': numericOperatorId!,
    if (password != null) 'password': password!,
    if (protocol != null) 'protocol': protocol!,
    if (proxyAddress != null) 'proxyAddress': proxyAddress!,
    if (proxyPort != null) 'proxyPort': proxyPort!,
    if (roamingProtocol != null) 'roamingProtocol': roamingProtocol!,
    if (username != null) 'username': username!,
  };
}

/// Id to name association of a app track.
class AppTrackInfo {
  /// The track name associated with the trackId, set in the Play Console.
  ///
  /// The name is modifiable from Play Console.
  core.String? trackAlias;

  /// The unmodifiable unique track identifier, taken from the releaseTrackId in
  /// the URL of the Play Console page that displays the app’s track
  /// information.
  core.String? trackId;

  AppTrackInfo({this.trackAlias, this.trackId});

  AppTrackInfo.fromJson(core.Map json_)
    : this(
        trackAlias: json_['trackAlias'] as core.String?,
        trackId: json_['trackId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (trackAlias != null) 'trackAlias': trackAlias!,
    if (trackId != null) 'trackId': trackId!,
  };
}

/// This represents a single version of the app.
class AppVersion {
  /// If the value is True, it indicates that this version is a production
  /// track.
  core.bool? production;

  /// Track identifiers that the app version is published in.
  ///
  /// This does not include the production track (see production instead).
  core.List<core.String>? trackIds;

  /// Unique increasing identifier for the app version.
  core.int? versionCode;

  /// The string used in the Play store by the app developer to identify the
  /// version.
  ///
  /// The string is not necessarily unique or localized (for example, the string
  /// could be "1.4").
  core.String? versionString;

  AppVersion({
    this.production,
    this.trackIds,
    this.versionCode,
    this.versionString,
  });

  AppVersion.fromJson(core.Map json_)
    : this(
        production: json_['production'] as core.bool?,
        trackIds:
            (json_['trackIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        versionCode: json_['versionCode'] as core.int?,
        versionString: json_['versionString'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (production != null) 'production': production!,
    if (trackIds != null) 'trackIds': trackIds!,
    if (versionCode != null) 'versionCode': versionCode!,
    if (versionString != null) 'versionString': versionString!,
  };
}

/// Information about an app.
class Application {
  /// Whether this app is free, free with in-app purchases, or paid.
  ///
  /// If the pricing is unspecified, this means the app is not generally
  /// available anymore (even though it might still be available to people who
  /// own it).
  /// Possible string values are:
  /// - "APP_PRICING_UNSPECIFIED" : Unknown pricing, used to denote an approved
  /// app that is not generally available.
  /// - "FREE" : The app is free.
  /// - "FREE_WITH_IN_APP_PURCHASE" : The app is free, but offers in-app
  /// purchases.
  /// - "PAID" : The app is paid.
  core.String? appPricing;

  /// Application tracks visible to the enterprise.
  core.List<AppTrackInfo>? appTracks;

  /// Versions currently available for this app.
  core.List<AppVersion>? appVersions;

  /// The name of the author of the apps (for example, the app developer).
  core.String? author;

  /// The countries which this app is available in as per ISO 3166-1 alpha-2.
  core.List<core.String>? availableCountries;

  /// The app category (e.g. RACING, SOCIAL, etc.)
  core.String? category;

  /// The content rating for this app.
  /// Possible string values are:
  /// - "CONTENT_RATING_UNSPECIFIED" : Unspecified.
  /// - "THREE_YEARS" : Content suitable for ages 3 and above only.
  /// - "SEVEN_YEARS" : Content suitable for ages 7 and above only.
  /// - "TWELVE_YEARS" : Content suitable for ages 12 and above only.
  /// - "SIXTEEN_YEARS" : Content suitable for ages 16 and above only.
  /// - "EIGHTEEN_YEARS" : Content suitable for ages 18 and above only.
  core.String? contentRating;

  /// The localized promotional description, if available.
  core.String? description;

  /// How and to whom the package is made available.
  /// Possible string values are:
  /// - "DISTRIBUTION_CHANNEL_UNSPECIFIED" : Unspecified.
  /// - "PUBLIC_GOOGLE_HOSTED" : Package is available through the Play store and
  /// not restricted to a specific enterprise.
  /// - "PRIVATE_GOOGLE_HOSTED" : Package is a private app (restricted to an
  /// enterprise) but hosted by Google.
  /// - "PRIVATE_SELF_HOSTED" : Private app (restricted to an enterprise) and is
  /// privately hosted.
  core.String? distributionChannel;

  /// Noteworthy features (if any) of this app.
  core.List<core.String>? features;

  /// Full app description, if available.
  core.String? fullDescription;

  /// A link to an image that can be used as an icon for the app.
  ///
  /// This image is suitable for use up to a pixel size of 512 x 512.
  core.String? iconUrl;

  /// The set of managed properties available to be pre-configured for the app.
  core.List<ManagedProperty>? managedProperties;

  /// The minimum Android SDK necessary to run the app.
  core.int? minAndroidSdkVersion;

  /// The name of the app in the form
  /// enterprises/{enterprise}/applications/{package_name}.
  core.String? name;

  /// The permissions required by the app.
  core.List<ApplicationPermission>? permissions;

  /// A link to the (consumer) Google Play details page for the app.
  core.String? playStoreUrl;

  /// A localised description of the recent changes made to the app.
  core.String? recentChanges;

  /// A list of screenshot links representing the app.
  core.List<core.String>? screenshotUrls;

  /// A link to a smaller image that can be used as an icon for the app.
  ///
  /// This image is suitable for use up to a pixel size of 128 x 128.
  core.String? smallIconUrl;

  /// The title of the app.
  ///
  /// Localized.
  core.String? title;

  /// The approximate time (within 7 days) the app was last published.
  ///
  /// Output only.
  core.String? updateTime;

  Application({
    this.appPricing,
    this.appTracks,
    this.appVersions,
    this.author,
    this.availableCountries,
    this.category,
    this.contentRating,
    this.description,
    this.distributionChannel,
    this.features,
    this.fullDescription,
    this.iconUrl,
    this.managedProperties,
    this.minAndroidSdkVersion,
    this.name,
    this.permissions,
    this.playStoreUrl,
    this.recentChanges,
    this.screenshotUrls,
    this.smallIconUrl,
    this.title,
    this.updateTime,
  });

  Application.fromJson(core.Map json_)
    : this(
        appPricing: json_['appPricing'] as core.String?,
        appTracks:
            (json_['appTracks'] as core.List?)
                ?.map(
                  (value) => AppTrackInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        appVersions:
            (json_['appVersions'] as core.List?)
                ?.map(
                  (value) => AppVersion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        author: json_['author'] as core.String?,
        availableCountries:
            (json_['availableCountries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        category: json_['category'] as core.String?,
        contentRating: json_['contentRating'] as core.String?,
        description: json_['description'] as core.String?,
        distributionChannel: json_['distributionChannel'] as core.String?,
        features:
            (json_['features'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        fullDescription: json_['fullDescription'] as core.String?,
        iconUrl: json_['iconUrl'] as core.String?,
        managedProperties:
            (json_['managedProperties'] as core.List?)
                ?.map(
                  (value) => ManagedProperty.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        minAndroidSdkVersion: json_['minAndroidSdkVersion'] as core.int?,
        name: json_['name'] as core.String?,
        permissions:
            (json_['permissions'] as core.List?)
                ?.map(
                  (value) => ApplicationPermission.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        playStoreUrl: json_['playStoreUrl'] as core.String?,
        recentChanges: json_['recentChanges'] as core.String?,
        screenshotUrls:
            (json_['screenshotUrls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        smallIconUrl: json_['smallIconUrl'] as core.String?,
        title: json_['title'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appPricing != null) 'appPricing': appPricing!,
    if (appTracks != null) 'appTracks': appTracks!,
    if (appVersions != null) 'appVersions': appVersions!,
    if (author != null) 'author': author!,
    if (availableCountries != null) 'availableCountries': availableCountries!,
    if (category != null) 'category': category!,
    if (contentRating != null) 'contentRating': contentRating!,
    if (description != null) 'description': description!,
    if (distributionChannel != null)
      'distributionChannel': distributionChannel!,
    if (features != null) 'features': features!,
    if (fullDescription != null) 'fullDescription': fullDescription!,
    if (iconUrl != null) 'iconUrl': iconUrl!,
    if (managedProperties != null) 'managedProperties': managedProperties!,
    if (minAndroidSdkVersion != null)
      'minAndroidSdkVersion': minAndroidSdkVersion!,
    if (name != null) 'name': name!,
    if (permissions != null) 'permissions': permissions!,
    if (playStoreUrl != null) 'playStoreUrl': playStoreUrl!,
    if (recentChanges != null) 'recentChanges': recentChanges!,
    if (screenshotUrls != null) 'screenshotUrls': screenshotUrls!,
    if (smallIconUrl != null) 'smallIconUrl': smallIconUrl!,
    if (title != null) 'title': title!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// An app-related event.
class ApplicationEvent {
  /// The creation time of the event.
  core.String? createTime;

  /// App event type.
  /// Possible string values are:
  /// - "APPLICATION_EVENT_TYPE_UNSPECIFIED" : This value is disallowed.
  /// - "INSTALLED" : The app was installed.
  /// - "CHANGED" : The app was changed, for example, a component was enabled or
  /// disabled.
  /// - "DATA_CLEARED" : The app data was cleared.
  /// - "REMOVED" : The app was removed.
  /// - "REPLACED" : A new version of the app has been installed, replacing the
  /// old version.
  /// - "RESTARTED" : The app was restarted.
  /// - "PINNED" : The app was pinned to the foreground.
  /// - "UNPINNED" : The app was unpinned.
  core.String? eventType;

  ApplicationEvent({this.createTime, this.eventType});

  ApplicationEvent.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        eventType: json_['eventType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (eventType != null) 'eventType': eventType!,
  };
}

/// A permission required by the app.
class ApplicationPermission {
  /// A longer description of the permission, providing more detail on what it
  /// affects.
  ///
  /// Localized.
  core.String? description;

  /// The name of the permission.
  ///
  /// Localized.
  core.String? name;

  /// An opaque string uniquely identifying the permission.
  ///
  /// Not localized.
  core.String? permissionId;

  ApplicationPermission({this.description, this.name, this.permissionId});

  ApplicationPermission.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        permissionId: json_['permissionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
    if (permissionId != null) 'permissionId': permissionId!,
  };
}

/// Policy for an individual app.
///
/// Note: Application availability on a given device cannot be changed using
/// this policy if installAppsDisabled is enabled. The maximum number of
/// applications that you can specify per policy is 3,000.
class ApplicationPolicy {
  /// List of the app’s track IDs that a device belonging to the enterprise can
  /// access.
  ///
  /// If the list contains multiple track IDs, devices receive the latest
  /// version among all accessible tracks. If the list contains no track IDs,
  /// devices only have access to the app’s production track. More details about
  /// each track are available in AppTrackInfo.
  core.List<core.String>? accessibleTrackIds;

  /// Specifies whether the app is allowed networking when the VPN is not
  /// connected and alwaysOnVpnPackage.lockdownEnabled is enabled.
  ///
  /// If set to VPN_LOCKDOWN_ENFORCED, the app is not allowed networking, and if
  /// set to VPN_LOCKDOWN_EXEMPTION, the app is allowed networking. Only
  /// supported on devices running Android 10 and above. If this is not
  /// supported by the device, the device will contain a NonComplianceDetail
  /// with non_compliance_reason set to API_LEVEL and a fieldPath. If this is
  /// not applicable to the app, the device will contain a NonComplianceDetail
  /// with non_compliance_reason set to UNSUPPORTED and a fieldPath. The
  /// fieldPath is set to applications\[i\].alwaysOnVpnLockdownExemption, where
  /// i is the index of the package in the applications policy.
  /// Possible string values are:
  /// - "ALWAYS_ON_VPN_LOCKDOWN_EXEMPTION_UNSPECIFIED" : Unspecified. Defaults
  /// to VPN_LOCKDOWN_ENFORCED.
  /// - "VPN_LOCKDOWN_ENFORCED" : The app respects the always-on VPN lockdown
  /// setting.
  /// - "VPN_LOCKDOWN_EXEMPTION" : The app is exempt from the always-on VPN
  /// lockdown setting.
  core.String? alwaysOnVpnLockdownExemption;

  /// Controls the auto-update mode for the app.
  /// Possible string values are:
  /// - "AUTO_UPDATE_MODE_UNSPECIFIED" : Unspecified. Defaults to
  /// AUTO_UPDATE_DEFAULT.
  /// - "AUTO_UPDATE_DEFAULT" : The default update mode.The app is automatically
  /// updated with low priority to minimize the impact on the user.The app is
  /// updated when all of the following constraints are met: The device is not
  /// actively used. The device is connected to an unmetered network. The device
  /// is charging. The app to be updated is not running in the foreground.The
  /// device is notified about a new update within 24 hours after it is
  /// published by the developer, after which the app is updated the next time
  /// the constraints above are met.
  /// - "AUTO_UPDATE_POSTPONED" : The app is not automatically updated for a
  /// maximum of 90 days after the app becomes out of date.90 days after the app
  /// becomes out of date, the latest available version is installed
  /// automatically with low priority (see AUTO_UPDATE_DEFAULT). After the app
  /// is updated it is not automatically updated again until 90 days after it
  /// becomes out of date again.The user can still manually update the app from
  /// the Play Store at any time.
  /// - "AUTO_UPDATE_HIGH_PRIORITY" : The app is updated as soon as possible. No
  /// constraints are applied.The device is notified as soon as possible about a
  /// new update after it becomes available.*NOTE:* Updates to apps with larger
  /// deployments across Android's ecosystem can take up to 24h.
  core.String? autoUpdateMode;

  /// Controls whether the app can communicate with itself across a device’s
  /// work and personal profiles, subject to user consent.
  /// Possible string values are:
  /// - "CONNECTED_WORK_AND_PERSONAL_APP_UNSPECIFIED" : Unspecified. Defaults to
  /// CONNECTED_WORK_AND_PERSONAL_APPS_DISALLOWED.
  /// - "CONNECTED_WORK_AND_PERSONAL_APP_DISALLOWED" : Default. Prevents the app
  /// from communicating cross-profile.
  /// - "CONNECTED_WORK_AND_PERSONAL_APP_ALLOWED" : Allows the app to
  /// communicate across profiles after receiving user consent.
  core.String? connectedWorkAndPersonalApp;

  /// Whether the app is allowed to act as a credential provider on Android 14
  /// and above.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CREDENTIAL_PROVIDER_POLICY_UNSPECIFIED" : Unspecified. The behaviour is
  /// governed by credentialProviderPolicyDefault.
  /// - "CREDENTIAL_PROVIDER_ALLOWED" : App is allowed to act as a credential
  /// provider.
  core.String? credentialProviderPolicy;

  /// The default policy for all permissions requested by the app.
  ///
  /// If specified, this overrides the policy-level default_permission_policy
  /// which applies to all apps. It does not override the permission_grants
  /// which applies to all apps.
  /// Possible string values are:
  /// - "PERMISSION_POLICY_UNSPECIFIED" : Policy not specified. If no policy is
  /// specified for a permission at any level, then the PROMPT behavior is used
  /// by default.
  /// - "PROMPT" : Prompt the user to grant a permission.
  /// - "GRANT" : Automatically grant a permission.On Android 12 and above,
  /// READ_SMS
  /// (https://developer.android.com/reference/android/Manifest.permission#READ_SMS)
  /// and following sensor-related permissions can only be granted on fully
  /// managed devices: ACCESS_FINE_LOCATION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACCESS_FINE_LOCATION)
  /// ACCESS_BACKGROUND_LOCATION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACCESS_BACKGROUND_LOCATION)
  /// ACCESS_COARSE_LOCATION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACCESS_COARSE_LOCATION)
  /// CAMERA
  /// (https://developer.android.com/reference/android/Manifest.permission#CAMERA)
  /// RECORD_AUDIO
  /// (https://developer.android.com/reference/android/Manifest.permission#RECORD_AUDIO)
  /// ACTIVITY_RECOGNITION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACTIVITY_RECOGNITION)
  /// BODY_SENSORS
  /// (https://developer.android.com/reference/android/Manifest.permission#BODY_SENSORS)
  /// - "DENY" : Automatically deny a permission.
  core.String? defaultPermissionPolicy;

  /// The scopes delegated to the app from Android Device Policy.
  ///
  /// These provide additional privileges for the applications they are applied
  /// to.
  core.List<core.String>? delegatedScopes;

  /// Whether the app is disabled.
  ///
  /// When disabled, the app data is still preserved.
  core.bool? disabled;

  /// Configuration to enable this app as an extension app, with the capability
  /// of interacting with Android Device Policy offline.This field can be set
  /// for at most one app.The signing key certificate fingerprint of the app on
  /// the device must match one of the entries in signingKeyFingerprintsSha256
  /// or the signing key certificate fingerprints obtained from Play Store for
  /// the app to be able to communicate with Android Device Policy.
  ///
  /// If the app is not on Play Store and signingKeyFingerprintsSha256 is not
  /// set, a NonComplianceDetail with INVALID_VALUE is reported.
  ExtensionConfig? extensionConfig;

  /// The constraints for installing the app.
  ///
  /// You can specify a maximum of one InstallConstraint. Multiple constraints
  /// are rejected.
  ///
  /// Optional.
  core.List<InstallConstraint>? installConstraint;

  /// Amongst apps with installType set to: FORCE_INSTALLED PREINSTALLEDthis
  /// controls the relative priority of installation.
  ///
  /// A value of 0 (default) means this app has no priority over other apps. For
  /// values between 1 and 10,000, a lower value means a higher priority. Values
  /// outside of the range 0 to 10,000 inclusive are rejected.
  ///
  /// Optional.
  core.int? installPriority;

  /// The type of installation to perform.
  /// Possible string values are:
  /// - "INSTALL_TYPE_UNSPECIFIED" : Unspecified. Defaults to AVAILABLE.
  /// - "PREINSTALLED" : The app is automatically installed and can be removed
  /// by the user.
  /// - "FORCE_INSTALLED" : The app is automatically installed regardless of a
  /// set maintenance window and can't be removed by the user.
  /// - "BLOCKED" : The app is blocked and can't be installed. If the app was
  /// installed under a previous policy, it will be uninstalled. This also
  /// blocks its instant app functionality.
  /// - "AVAILABLE" : The app is available to install.
  /// - "REQUIRED_FOR_SETUP" : The app is automatically installed and can't be
  /// removed by the user and will prevent setup from completion until
  /// installation is complete.
  /// - "KIOSK" : The app is automatically installed in kiosk mode: it's set as
  /// the preferred home intent and whitelisted for lock task mode. Device setup
  /// won't complete until the app is installed. After installation, users won't
  /// be able to remove the app. You can only set this installType for one app
  /// per policy. When this is present in the policy, status bar will be
  /// automatically disabled.
  core.String? installType;

  /// Whether the app is allowed to lock itself in full-screen mode.
  ///
  /// DEPRECATED. Use InstallType KIOSK or kioskCustomLauncherEnabled to
  /// configure a dedicated device.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? lockTaskAllowed;

  /// Managed configuration applied to the app.
  ///
  /// The format for the configuration is dictated by the ManagedProperty values
  /// supported by the app. Each field name in the managed configuration must
  /// match the key field of the ManagedProperty. The field value must be
  /// compatible with the type of the ManagedProperty: *type* *JSON value* BOOL
  /// true or false STRING string INTEGER number CHOICE string MULTISELECT array
  /// of strings HIDDEN string BUNDLE_ARRAY array of objects
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? managedConfiguration;

  /// The managed configurations template for the app, saved from the managed
  /// configurations iframe.
  ///
  /// This field is ignored if managed_configuration is set.
  ManagedConfigurationTemplate? managedConfigurationTemplate;

  /// The minimum version of the app that runs on the device.
  ///
  /// If set, the device attempts to update the app to at least this version
  /// code. If the app is not up-to-date, the device will contain a
  /// NonComplianceDetail with non_compliance_reason set to APP_NOT_UPDATED. The
  /// app must already be published to Google Play with a version code greater
  /// than or equal to this value. At most 20 apps may specify a minimum version
  /// code per policy.
  core.int? minimumVersionCode;

  /// The package name of the app.
  ///
  /// For example, com.google.android.youtube for the YouTube app.
  core.String? packageName;

  /// Explicit permission grants or denials for the app.
  ///
  /// These values override the default_permission_policy and permission_grants
  /// which apply to all apps.
  core.List<PermissionGrant>? permissionGrants;

  /// ID of the preferential network the application uses.
  ///
  /// There must be a configuration for the specified network ID in
  /// preferentialNetworkServiceConfigs. If set to
  /// PREFERENTIAL_NETWORK_ID_UNSPECIFIED, the application will use the default
  /// network ID specified in defaultPreferentialNetworkId. See the
  /// documentation of defaultPreferentialNetworkId for the list of apps
  /// excluded from this defaulting. This applies on both work profiles and
  /// fully managed devices on Android 13 and above.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PREFERENTIAL_NETWORK_ID_UNSPECIFIED" : Whether this value is valid and
  /// what it means depends on where it is used, and this is documented on the
  /// relevant fields.
  /// - "NO_PREFERENTIAL_NETWORK" : Application does not use any preferential
  /// network.
  /// - "PREFERENTIAL_NETWORK_ID_ONE" : Preferential network identifier 1.
  /// - "PREFERENTIAL_NETWORK_ID_TWO" : Preferential network identifier 2.
  /// - "PREFERENTIAL_NETWORK_ID_THREE" : Preferential network identifier 3.
  /// - "PREFERENTIAL_NETWORK_ID_FOUR" : Preferential network identifier 4.
  /// - "PREFERENTIAL_NETWORK_ID_FIVE" : Preferential network identifier 5.
  core.String? preferentialNetworkId;

  /// Specifies whether user control is permitted for the app.
  ///
  /// User control includes user actions like force-stopping and clearing app
  /// data. Certain types of apps have special treatment, see
  /// USER_CONTROL_SETTINGS_UNSPECIFIED and USER_CONTROL_ALLOWED for more
  /// details.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "USER_CONTROL_SETTINGS_UNSPECIFIED" : Uses the default behaviour of the
  /// app to determine if user control is allowed or disallowed. User control is
  /// allowed by default for most apps but disallowed for following types of
  /// apps: extension apps (see extensionConfig for more details) kiosk apps
  /// (see KIOSK install type for more details) other critical system apps
  /// - "USER_CONTROL_ALLOWED" : User control is allowed for the app. Kiosk apps
  /// can use this to allow user control. For extension apps (see
  /// extensionConfig for more details), user control is disallowed even if this
  /// value is set. For kiosk apps (see KIOSK install type for more details),
  /// this value can be used to allow user control.
  /// - "USER_CONTROL_DISALLOWED" : User control is disallowed for the app. This
  /// is supported on Android 11 and above. A NonComplianceDetail with API_LEVEL
  /// is reported if the Android version is less than 11.
  core.String? userControlSettings;

  /// Specifies whether the app installed in the work profile is allowed to add
  /// widgets to the home screen.
  /// Possible string values are:
  /// - "WORK_PROFILE_WIDGETS_UNSPECIFIED" : Unspecified. Defaults to
  /// work_profile_widgets_default
  /// - "WORK_PROFILE_WIDGETS_ALLOWED" : Work profile widgets are allowed. This
  /// means the application will be able to add widgets to the home screen.
  /// - "WORK_PROFILE_WIDGETS_DISALLOWED" : Work profile widgets are disallowed.
  /// This means the application will not be able to add widgets to the home
  /// screen.
  core.String? workProfileWidgets;

  ApplicationPolicy({
    this.accessibleTrackIds,
    this.alwaysOnVpnLockdownExemption,
    this.autoUpdateMode,
    this.connectedWorkAndPersonalApp,
    this.credentialProviderPolicy,
    this.defaultPermissionPolicy,
    this.delegatedScopes,
    this.disabled,
    this.extensionConfig,
    this.installConstraint,
    this.installPriority,
    this.installType,
    this.lockTaskAllowed,
    this.managedConfiguration,
    this.managedConfigurationTemplate,
    this.minimumVersionCode,
    this.packageName,
    this.permissionGrants,
    this.preferentialNetworkId,
    this.userControlSettings,
    this.workProfileWidgets,
  });

  ApplicationPolicy.fromJson(core.Map json_)
    : this(
        accessibleTrackIds:
            (json_['accessibleTrackIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        alwaysOnVpnLockdownExemption:
            json_['alwaysOnVpnLockdownExemption'] as core.String?,
        autoUpdateMode: json_['autoUpdateMode'] as core.String?,
        connectedWorkAndPersonalApp:
            json_['connectedWorkAndPersonalApp'] as core.String?,
        credentialProviderPolicy:
            json_['credentialProviderPolicy'] as core.String?,
        defaultPermissionPolicy:
            json_['defaultPermissionPolicy'] as core.String?,
        delegatedScopes:
            (json_['delegatedScopes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        disabled: json_['disabled'] as core.bool?,
        extensionConfig:
            json_.containsKey('extensionConfig')
                ? ExtensionConfig.fromJson(
                  json_['extensionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        installConstraint:
            (json_['installConstraint'] as core.List?)
                ?.map(
                  (value) => InstallConstraint.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        installPriority: json_['installPriority'] as core.int?,
        installType: json_['installType'] as core.String?,
        lockTaskAllowed: json_['lockTaskAllowed'] as core.bool?,
        managedConfiguration:
            json_.containsKey('managedConfiguration')
                ? json_['managedConfiguration']
                    as core.Map<core.String, core.dynamic>
                : null,
        managedConfigurationTemplate:
            json_.containsKey('managedConfigurationTemplate')
                ? ManagedConfigurationTemplate.fromJson(
                  json_['managedConfigurationTemplate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        minimumVersionCode: json_['minimumVersionCode'] as core.int?,
        packageName: json_['packageName'] as core.String?,
        permissionGrants:
            (json_['permissionGrants'] as core.List?)
                ?.map(
                  (value) => PermissionGrant.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        preferentialNetworkId: json_['preferentialNetworkId'] as core.String?,
        userControlSettings: json_['userControlSettings'] as core.String?,
        workProfileWidgets: json_['workProfileWidgets'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessibleTrackIds != null) 'accessibleTrackIds': accessibleTrackIds!,
    if (alwaysOnVpnLockdownExemption != null)
      'alwaysOnVpnLockdownExemption': alwaysOnVpnLockdownExemption!,
    if (autoUpdateMode != null) 'autoUpdateMode': autoUpdateMode!,
    if (connectedWorkAndPersonalApp != null)
      'connectedWorkAndPersonalApp': connectedWorkAndPersonalApp!,
    if (credentialProviderPolicy != null)
      'credentialProviderPolicy': credentialProviderPolicy!,
    if (defaultPermissionPolicy != null)
      'defaultPermissionPolicy': defaultPermissionPolicy!,
    if (delegatedScopes != null) 'delegatedScopes': delegatedScopes!,
    if (disabled != null) 'disabled': disabled!,
    if (extensionConfig != null) 'extensionConfig': extensionConfig!,
    if (installConstraint != null) 'installConstraint': installConstraint!,
    if (installPriority != null) 'installPriority': installPriority!,
    if (installType != null) 'installType': installType!,
    if (lockTaskAllowed != null) 'lockTaskAllowed': lockTaskAllowed!,
    if (managedConfiguration != null)
      'managedConfiguration': managedConfiguration!,
    if (managedConfigurationTemplate != null)
      'managedConfigurationTemplate': managedConfigurationTemplate!,
    if (minimumVersionCode != null) 'minimumVersionCode': minimumVersionCode!,
    if (packageName != null) 'packageName': packageName!,
    if (permissionGrants != null) 'permissionGrants': permissionGrants!,
    if (preferentialNetworkId != null)
      'preferentialNetworkId': preferentialNetworkId!,
    if (userControlSettings != null)
      'userControlSettings': userControlSettings!,
    if (workProfileWidgets != null) 'workProfileWidgets': workProfileWidgets!,
  };
}

/// A change to be made to a single ApplicationPolicy object.
class ApplicationPolicyChange {
  /// If ApplicationPolicy.packageName matches an existing ApplicationPolicy
  /// object within the Policy being modified, then that object will be updated.
  ///
  /// Otherwise, it will be added to the end of the Policy.applications.
  ApplicationPolicy? application;

  /// The field mask indicating the fields to update.
  ///
  /// If omitted, all modifiable fields are updated.
  core.String? updateMask;

  ApplicationPolicyChange({this.application, this.updateMask});

  ApplicationPolicyChange.fromJson(core.Map json_)
    : this(
        application:
            json_.containsKey('application')
                ? ApplicationPolicy.fromJson(
                  json_['application'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (application != null) 'application': application!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Information reported about an installed app.
class ApplicationReport {
  /// The source of the package.
  /// Possible string values are:
  /// - "APPLICATION_SOURCE_UNSPECIFIED" : The app was sideloaded from an
  /// unspecified source.
  /// - "SYSTEM_APP_FACTORY_VERSION" : This is a system app from the device's
  /// factory image.
  /// - "SYSTEM_APP_UPDATED_VERSION" : This is an updated system app.
  /// - "INSTALLED_FROM_PLAY_STORE" : The app was installed from the Google Play
  /// Store.
  core.String? applicationSource;

  /// The display name of the app.
  core.String? displayName;

  /// The list of app events which have occurred in the last 30 hours.
  core.List<ApplicationEvent>? events;

  /// The package name of the app that installed this app.
  core.String? installerPackageName;

  /// List of keyed app states reported by the app.
  core.List<KeyedAppState>? keyedAppStates;

  /// Package name of the app.
  core.String? packageName;

  /// The SHA-256 hash of the app's APK file, which can be used to verify the
  /// app hasn't been modified.
  ///
  /// Each byte of the hash value is represented as a two-digit hexadecimal
  /// number.
  core.String? packageSha256Hash;

  /// The SHA-1 hash of each android.content.pm.Signature
  /// (https://developer.android.com/reference/android/content/pm/Signature.html)
  /// associated with the app package.
  ///
  /// Each byte of each hash value is represented as a two-digit hexadecimal
  /// number.
  core.List<core.String>? signingKeyCertFingerprints;

  /// Application state.
  /// Possible string values are:
  /// - "APPLICATION_STATE_UNSPECIFIED" : App state is unspecified
  /// - "REMOVED" : App was removed from the device
  /// - "INSTALLED" : App is installed on the device
  core.String? state;

  /// Whether the app is user facing.
  /// Possible string values are:
  /// - "USER_FACING_TYPE_UNSPECIFIED" : App user facing type is unspecified.
  /// - "NOT_USER_FACING" : App is not user facing.
  /// - "USER_FACING" : App is user facing.
  core.String? userFacingType;

  /// The app version code, which can be used to determine whether one version
  /// is more recent than another.
  core.int? versionCode;

  /// The app version as displayed to the user.
  core.String? versionName;

  ApplicationReport({
    this.applicationSource,
    this.displayName,
    this.events,
    this.installerPackageName,
    this.keyedAppStates,
    this.packageName,
    this.packageSha256Hash,
    this.signingKeyCertFingerprints,
    this.state,
    this.userFacingType,
    this.versionCode,
    this.versionName,
  });

  ApplicationReport.fromJson(core.Map json_)
    : this(
        applicationSource: json_['applicationSource'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        events:
            (json_['events'] as core.List?)
                ?.map(
                  (value) => ApplicationEvent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        installerPackageName: json_['installerPackageName'] as core.String?,
        keyedAppStates:
            (json_['keyedAppStates'] as core.List?)
                ?.map(
                  (value) => KeyedAppState.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        packageName: json_['packageName'] as core.String?,
        packageSha256Hash: json_['packageSha256Hash'] as core.String?,
        signingKeyCertFingerprints:
            (json_['signingKeyCertFingerprints'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        state: json_['state'] as core.String?,
        userFacingType: json_['userFacingType'] as core.String?,
        versionCode: json_['versionCode'] as core.int?,
        versionName: json_['versionName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationSource != null) 'applicationSource': applicationSource!,
    if (displayName != null) 'displayName': displayName!,
    if (events != null) 'events': events!,
    if (installerPackageName != null)
      'installerPackageName': installerPackageName!,
    if (keyedAppStates != null) 'keyedAppStates': keyedAppStates!,
    if (packageName != null) 'packageName': packageName!,
    if (packageSha256Hash != null) 'packageSha256Hash': packageSha256Hash!,
    if (signingKeyCertFingerprints != null)
      'signingKeyCertFingerprints': signingKeyCertFingerprints!,
    if (state != null) 'state': state!,
    if (userFacingType != null) 'userFacingType': userFacingType!,
    if (versionCode != null) 'versionCode': versionCode!,
    if (versionName != null) 'versionName': versionName!,
  };
}

/// Settings controlling the behavior of application reports.
class ApplicationReportingSettings {
  /// Whether removed apps are included in application reports.
  core.bool? includeRemovedApps;

  ApplicationReportingSettings({this.includeRemovedApps});

  ApplicationReportingSettings.fromJson(core.Map json_)
    : this(includeRemovedApps: json_['includeRemovedApps'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (includeRemovedApps != null) 'includeRemovedApps': includeRemovedApps!,
  };
}

/// An action to block access to apps and data on a fully managed device or in a
/// work profile.
///
/// This action also triggers a device or work profile to displays a user-facing
/// notification with information (where possible) on how to correct the
/// compliance issue. Note: wipeAction must also be specified.
class BlockAction {
  /// Number of days the policy is non-compliant before the device or work
  /// profile is blocked.
  ///
  /// To block access immediately, set to 0. blockAfterDays must be less than
  /// wipeAfterDays.
  core.int? blockAfterDays;

  /// Specifies the scope of this BlockAction.
  ///
  /// Only applicable to devices that are company-owned.
  /// Possible string values are:
  /// - "BLOCK_SCOPE_UNSPECIFIED" : Unspecified. Defaults to
  /// BLOCK_SCOPE_WORK_PROFILE.
  /// - "BLOCK_SCOPE_WORK_PROFILE" : Block action is only applied to apps in the
  /// work profile. Apps in the personal profile are unaffected.
  /// - "BLOCK_SCOPE_DEVICE" : Block action is applied to the entire device,
  /// including apps in the personal profile.
  core.String? blockScope;

  BlockAction({this.blockAfterDays, this.blockScope});

  BlockAction.fromJson(core.Map json_)
    : this(
        blockAfterDays: json_['blockAfterDays'] as core.int?,
        blockScope: json_['blockScope'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blockAfterDays != null) 'blockAfterDays': blockAfterDays!,
    if (blockScope != null) 'blockScope': blockScope!,
  };
}

/// Controls apps' access to private keys.
///
/// The rule determines which private key, if any, Android Device Policy grants
/// to the specified app. Access is granted either when the app calls
/// KeyChain.choosePrivateKeyAlias
/// (https://developer.android.com/reference/android/security/KeyChain#choosePrivateKeyAlias%28android.app.Activity,%20android.security.KeyChainAliasCallback,%20java.lang.String\[\],%20java.security.Principal\[\],%20java.lang.String,%20int,%20java.lang.String%29)
/// (or any overloads) to request a private key alias for a given URL, or for
/// rules that are not URL-specific (that is, if urlPattern is not set, or set
/// to the empty string or .*) on Android 11 and above, directly so that the app
/// can call KeyChain.getPrivateKey
/// (https://developer.android.com/reference/android/security/KeyChain#getPrivateKey%28android.content.Context,%20java.lang.String%29),
/// without first having to call KeyChain.choosePrivateKeyAlias.When an app
/// calls KeyChain.choosePrivateKeyAlias if more than one choosePrivateKeyRules
/// matches, the last matching rule defines which key alias to return.
class ChoosePrivateKeyRule {
  /// The package names to which this rule applies.
  ///
  /// The hash of the signing certificate for each app is verified against the
  /// hash provided by Play. If no package names are specified, then the alias
  /// is provided to all apps that call KeyChain.choosePrivateKeyAlias
  /// (https://developer.android.com/reference/android/security/KeyChain#choosePrivateKeyAlias%28android.app.Activity,%20android.security.KeyChainAliasCallback,%20java.lang.String\[\],%20java.security.Principal\[\],%20java.lang.String,%20int,%20java.lang.String%29)
  /// or any overloads (but not without calling KeyChain.choosePrivateKeyAlias,
  /// even on Android 11 and above). Any app with the same Android UID as a
  /// package specified here will have access when they call
  /// KeyChain.choosePrivateKeyAlias.
  core.List<core.String>? packageNames;

  /// The alias of the private key to be used.
  core.String? privateKeyAlias;

  /// The URL pattern to match against the URL of the request.
  ///
  /// If not set or empty, it matches all URLs. This uses the regular expression
  /// syntax of java.util.regex.Pattern.
  core.String? urlPattern;

  ChoosePrivateKeyRule({
    this.packageNames,
    this.privateKeyAlias,
    this.urlPattern,
  });

  ChoosePrivateKeyRule.fromJson(core.Map json_)
    : this(
        packageNames:
            (json_['packageNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        privateKeyAlias: json_['privateKeyAlias'] as core.String?,
        urlPattern: json_['urlPattern'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (packageNames != null) 'packageNames': packageNames!,
    if (privateKeyAlias != null) 'privateKeyAlias': privateKeyAlias!,
    if (urlPattern != null) 'urlPattern': urlPattern!,
  };
}

/// Parameters associated with the CLEAR_APP_DATA command to clear the data of
/// specified apps from the device.
class ClearAppsDataParams {
  /// The package names of the apps whose data will be cleared when the command
  /// is executed.
  core.List<core.String>? packageNames;

  ClearAppsDataParams({this.packageNames});

  ClearAppsDataParams.fromJson(core.Map json_)
    : this(
        packageNames:
            (json_['packageNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (packageNames != null) 'packageNames': packageNames!,
  };
}

/// Status of the CLEAR_APP_DATA command to clear the data of specified apps
/// from the device.
class ClearAppsDataStatus {
  /// The per-app results, a mapping from package names to the respective
  /// clearing result.
  core.Map<core.String, PerAppResult>? results;

  ClearAppsDataStatus({this.results});

  ClearAppsDataStatus.fromJson(core.Map json_)
    : this(
        results: (json_['results'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                PerAppResult.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (results != null) 'results': results!,
  };
}

/// A command.
class Command {
  /// Parameters for the ADD_ESIM command to add an eSIM profile to the device.
  ///
  /// If this is set, then it is suggested that type should not be set. In this
  /// case, the server automatically sets it to ADD_ESIM. It is also acceptable
  /// to explicitly set type to ADD_ESIM.
  ///
  /// Optional.
  AddEsimParams? addEsimParams;

  /// Parameters for the CLEAR_APP_DATA command to clear the data of specified
  /// apps from the device.
  ///
  /// See ClearAppsDataParams. If this is set, then it is suggested that type
  /// should not be set. In this case, the server automatically sets it to
  /// CLEAR_APP_DATA. It is also acceptable to explicitly set type to
  /// CLEAR_APP_DATA.
  ClearAppsDataParams? clearAppsDataParams;

  /// Status of the CLEAR_APP_DATA command to clear the data of specified apps
  /// from the device.
  ///
  /// See ClearAppsDataStatus.
  ///
  /// Output only.
  ClearAppsDataStatus? clearAppsDataStatus;

  /// The timestamp at which the command was created.
  ///
  /// The timestamp is automatically generated by the server.
  core.String? createTime;

  /// The duration for which the command is valid.
  ///
  /// The command will expire if not executed by the device during this time.
  /// The default duration if unspecified is ten minutes. There is no maximum
  /// duration.
  core.String? duration;

  /// If the command failed, an error code explaining the failure.
  ///
  /// This is not set when the command is cancelled by the caller. For reasoning
  /// about command errors, prefer fields in the following order (most preferred
  /// first): 1. Command-specific fields like clearAppsDataStatus,
  /// startLostModeStatus, or similar, if they exist. 2. This field, if set. 3.
  /// The generic error field in the Operation that wraps the command.
  /// Possible string values are:
  /// - "COMMAND_ERROR_CODE_UNSPECIFIED" : There was no error.
  /// - "UNKNOWN" : An unknown error occurred.
  /// - "API_LEVEL" : The API level of the device does not support this command.
  /// - "MANAGEMENT_MODE" : The management mode (profile owner, device owner,
  /// etc.) does not support the command.
  /// - "INVALID_VALUE" : The command has an invalid parameter value.
  /// - "UNSUPPORTED" : The device doesn't support the command. Updating Android
  /// Device Policy to the latest version may resolve the issue.
  core.String? errorCode;

  /// Status of an ADD_ESIM or REMOVE_ESIM command.
  ///
  /// Output only.
  EsimCommandStatus? esimStatus;

  /// For commands of type RESET_PASSWORD, optionally specifies the new
  /// password.
  ///
  /// Note: The new password must be at least 6 characters long if it is numeric
  /// in case of Android 14 devices. Else the command will fail with
  /// INVALID_VALUE.
  core.String? newPassword;

  /// Parameters for the REMOVE_ESIM command to remove an eSIM profile from the
  /// device.
  ///
  /// If this is set, then it is suggested that type should not be set. In this
  /// case, the server automatically sets it to REMOVE_ESIM. It is also
  /// acceptable to explicitly set type to REMOVE_ESIM.
  ///
  /// Optional.
  RemoveEsimParams? removeEsimParams;

  /// Parameters for the REQUEST_DEVICE_INFO command to get device related
  /// information.
  ///
  /// If this is set, then it is suggested that type should not be set. In this
  /// case, the server automatically sets it to REQUEST_DEVICE_INFO . It is also
  /// acceptable to explicitly set type to REQUEST_DEVICE_INFO.
  ///
  /// Optional.
  RequestDeviceInfoParams? requestDeviceInfoParams;

  /// Status of the REQUEST_DEVICE_INFO command.
  ///
  /// Output only.
  RequestDeviceInfoStatus? requestDeviceInfoStatus;

  /// For commands of type RESET_PASSWORD, optionally specifies flags.
  core.List<core.String>? resetPasswordFlags;

  /// Parameters for the START_LOST_MODE command to put the device into lost
  /// mode.
  ///
  /// See StartLostModeParams. If this is set, then it is suggested that type
  /// should not be set. In this case, the server automatically sets it to
  /// START_LOST_MODE. It is also acceptable to explicitly set type to
  /// START_LOST_MODE.
  StartLostModeParams? startLostModeParams;

  /// Status of the START_LOST_MODE command to put the device into lost mode.
  ///
  /// See StartLostModeStatus.
  ///
  /// Output only.
  StartLostModeStatus? startLostModeStatus;

  /// Parameters for the STOP_LOST_MODE command to take the device out of lost
  /// mode.
  ///
  /// See StopLostModeParams. If this is set, then it is suggested that type
  /// should not be set. In this case, the server automatically sets it to
  /// STOP_LOST_MODE. It is also acceptable to explicitly set type to
  /// STOP_LOST_MODE.
  StopLostModeParams? stopLostModeParams;

  /// Status of the STOP_LOST_MODE command to take the device out of lost mode.
  ///
  /// See StopLostModeStatus.
  ///
  /// Output only.
  StopLostModeStatus? stopLostModeStatus;

  /// The type of the command.
  /// Possible string values are:
  /// - "COMMAND_TYPE_UNSPECIFIED" : This value is disallowed.
  /// - "LOCK" : Lock the device, as if the lock screen timeout had expired.
  /// - "RESET_PASSWORD" : Reset the user's password.
  /// - "REBOOT" : Reboot the device. Only supported on fully managed devices
  /// running Android 7.0 (API level 24) or higher.
  /// - "RELINQUISH_OWNERSHIP" : Removes the work profile and all policies from
  /// a company-owned Android 8.0+ device, relinquishing the device for personal
  /// use. Apps and data associated with the personal profile(s) are preserved.
  /// The device will be deleted from the server after it acknowledges the
  /// command.
  /// - "CLEAR_APP_DATA" : Clears the application data of specified apps. This
  /// is supported on Android 9 and above. Note that an application can store
  /// data outside of its application data, for example in external storage or
  /// in a user dictionary. See also clear_apps_data_params.
  /// - "START_LOST_MODE" : Puts the device into lost mode. Only supported on
  /// fully managed devices or organization-owned devices with a managed
  /// profile. See also start_lost_mode_params.
  /// - "STOP_LOST_MODE" : Takes the device out of lost mode. Only supported on
  /// fully managed devices or organization-owned devices with a managed
  /// profile. See also stop_lost_mode_params.
  /// - "ADD_ESIM" : Adds an eSIM profile to the device. This is supported on
  /// Android 15 and above. See also addEsimParams. To remove an eSIM profile,
  /// use the REMOVE_ESIM command. To determine what happens to the eSIM profile
  /// when a device is wiped, set wipeDataFlags in the policy. Note: To
  /// provision multiple eSIMs on a single device, it is recommended to
  /// introduce a delay of a few minutes between successive executions of the
  /// command.
  /// - "REMOVE_ESIM" : Removes an eSIM profile from the device. This is
  /// supported on Android 15 and above. See also removeEsimParams.
  /// - "REQUEST_DEVICE_INFO" : Request information related to the device.
  /// - "WIPE" : Wipes the device, via a factory reset for a company owned
  /// device, or by deleting the work profile for a personally owned device with
  /// work profile. The wipe only occurs once the device acknowledges the
  /// command. The command can be cancelled before then.
  core.String? type;

  /// The resource name of the user that owns the device in the form
  /// enterprises/{enterpriseId}/users/{userId}.
  ///
  /// This is automatically generated by the server based on the device the
  /// command is sent to.
  core.String? userName;

  /// Parameters for the WIPE command to wipe the device.
  ///
  /// If this is set, then it is suggested that type should not be set. In this
  /// case, the server automatically sets it to WIPE. It is also acceptable to
  /// explicitly set type to WIPE.
  ///
  /// Optional.
  WipeParams? wipeParams;

  Command({
    this.addEsimParams,
    this.clearAppsDataParams,
    this.clearAppsDataStatus,
    this.createTime,
    this.duration,
    this.errorCode,
    this.esimStatus,
    this.newPassword,
    this.removeEsimParams,
    this.requestDeviceInfoParams,
    this.requestDeviceInfoStatus,
    this.resetPasswordFlags,
    this.startLostModeParams,
    this.startLostModeStatus,
    this.stopLostModeParams,
    this.stopLostModeStatus,
    this.type,
    this.userName,
    this.wipeParams,
  });

  Command.fromJson(core.Map json_)
    : this(
        addEsimParams:
            json_.containsKey('addEsimParams')
                ? AddEsimParams.fromJson(
                  json_['addEsimParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        clearAppsDataParams:
            json_.containsKey('clearAppsDataParams')
                ? ClearAppsDataParams.fromJson(
                  json_['clearAppsDataParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        clearAppsDataStatus:
            json_.containsKey('clearAppsDataStatus')
                ? ClearAppsDataStatus.fromJson(
                  json_['clearAppsDataStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        duration: json_['duration'] as core.String?,
        errorCode: json_['errorCode'] as core.String?,
        esimStatus:
            json_.containsKey('esimStatus')
                ? EsimCommandStatus.fromJson(
                  json_['esimStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        newPassword: json_['newPassword'] as core.String?,
        removeEsimParams:
            json_.containsKey('removeEsimParams')
                ? RemoveEsimParams.fromJson(
                  json_['removeEsimParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestDeviceInfoParams:
            json_.containsKey('requestDeviceInfoParams')
                ? RequestDeviceInfoParams.fromJson(
                  json_['requestDeviceInfoParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestDeviceInfoStatus:
            json_.containsKey('requestDeviceInfoStatus')
                ? RequestDeviceInfoStatus.fromJson(
                  json_['requestDeviceInfoStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resetPasswordFlags:
            (json_['resetPasswordFlags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        startLostModeParams:
            json_.containsKey('startLostModeParams')
                ? StartLostModeParams.fromJson(
                  json_['startLostModeParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        startLostModeStatus:
            json_.containsKey('startLostModeStatus')
                ? StartLostModeStatus.fromJson(
                  json_['startLostModeStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stopLostModeParams:
            json_.containsKey('stopLostModeParams')
                ? StopLostModeParams.fromJson(
                  json_['stopLostModeParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stopLostModeStatus:
            json_.containsKey('stopLostModeStatus')
                ? StopLostModeStatus.fromJson(
                  json_['stopLostModeStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
        userName: json_['userName'] as core.String?,
        wipeParams:
            json_.containsKey('wipeParams')
                ? WipeParams.fromJson(
                  json_['wipeParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (addEsimParams != null) 'addEsimParams': addEsimParams!,
    if (clearAppsDataParams != null)
      'clearAppsDataParams': clearAppsDataParams!,
    if (clearAppsDataStatus != null)
      'clearAppsDataStatus': clearAppsDataStatus!,
    if (createTime != null) 'createTime': createTime!,
    if (duration != null) 'duration': duration!,
    if (errorCode != null) 'errorCode': errorCode!,
    if (esimStatus != null) 'esimStatus': esimStatus!,
    if (newPassword != null) 'newPassword': newPassword!,
    if (removeEsimParams != null) 'removeEsimParams': removeEsimParams!,
    if (requestDeviceInfoParams != null)
      'requestDeviceInfoParams': requestDeviceInfoParams!,
    if (requestDeviceInfoStatus != null)
      'requestDeviceInfoStatus': requestDeviceInfoStatus!,
    if (resetPasswordFlags != null) 'resetPasswordFlags': resetPasswordFlags!,
    if (startLostModeParams != null)
      'startLostModeParams': startLostModeParams!,
    if (startLostModeStatus != null)
      'startLostModeStatus': startLostModeStatus!,
    if (stopLostModeParams != null) 'stopLostModeParams': stopLostModeParams!,
    if (stopLostModeStatus != null) 'stopLostModeStatus': stopLostModeStatus!,
    if (type != null) 'type': type!,
    if (userName != null) 'userName': userName!,
    if (wipeParams != null) 'wipeParams': wipeParams!,
  };
}

/// Information about Common Criteria Mode—security standards defined in the
/// Common Criteria for Information Technology Security Evaluation
/// (https://www.commoncriteriaportal.org/) (CC).This information is only
/// available if statusReportingSettings.commonCriteriaModeEnabled is true in
/// the device's policy.
class CommonCriteriaModeInfo {
  /// Whether Common Criteria Mode is enabled.
  /// Possible string values are:
  /// - "COMMON_CRITERIA_MODE_STATUS_UNKNOWN" : Unknown status.
  /// - "COMMON_CRITERIA_MODE_DISABLED" : Common Criteria Mode is currently
  /// disabled.
  /// - "COMMON_CRITERIA_MODE_ENABLED" : Common Criteria Mode is currently
  /// enabled.
  core.String? commonCriteriaModeStatus;

  /// The status of policy signature verification.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "POLICY_SIGNATURE_VERIFICATION_STATUS_UNSPECIFIED" : Unspecified. The
  /// verification status has not been reported. This is set only if
  /// statusReportingSettings.commonCriteriaModeEnabled is false.
  /// - "POLICY_SIGNATURE_VERIFICATION_DISABLED" : Policy signature verification
  /// is disabled on the device as common_criteria_mode is set to false.
  /// - "POLICY_SIGNATURE_VERIFICATION_SUCCEEDED" : Policy signature
  /// verification succeeded.
  /// - "POLICY_SIGNATURE_VERIFICATION_NOT_SUPPORTED" : Policy signature
  /// verification is not supported, e.g. because the device has been enrolled
  /// with a CloudDPC version that does not support the policy signature
  /// verification.
  /// - "POLICY_SIGNATURE_VERIFICATION_FAILED" : The policy signature
  /// verification failed. The policy has not been applied.
  core.String? policySignatureVerificationStatus;

  CommonCriteriaModeInfo({
    this.commonCriteriaModeStatus,
    this.policySignatureVerificationStatus,
  });

  CommonCriteriaModeInfo.fromJson(core.Map json_)
    : this(
        commonCriteriaModeStatus:
            json_['commonCriteriaModeStatus'] as core.String?,
        policySignatureVerificationStatus:
            json_['policySignatureVerificationStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commonCriteriaModeStatus != null)
      'commonCriteriaModeStatus': commonCriteriaModeStatus!,
    if (policySignatureVerificationStatus != null)
      'policySignatureVerificationStatus': policySignatureVerificationStatus!,
  };
}

/// A rule declaring which mitigating actions to take when a device is not
/// compliant with its policy.
///
/// For every rule, there is always an implicit mitigating action to set
/// policy_compliant to false for the Device resource, and display a message on
/// the device indicating that the device is not compliant with its policy.
/// Other mitigating actions may optionally be taken as well, depending on the
/// field values in the rule.
class ComplianceRule {
  /// A condition which is satisfied if the Android Framework API level on the
  /// device doesn't meet a minimum requirement.
  ApiLevelCondition? apiLevelCondition;

  /// If set to true, the rule includes a mitigating action to disable apps so
  /// that the device is effectively disabled, but app data is preserved.
  ///
  /// If the device is running an app in locked task mode, the app will be
  /// closed and a UI showing the reason for non-compliance will be displayed.
  core.bool? disableApps;

  /// A condition which is satisfied if there exists any matching
  /// NonComplianceDetail for the device.
  NonComplianceDetailCondition? nonComplianceDetailCondition;

  /// If set, the rule includes a mitigating action to disable apps specified in
  /// the list, but app data is preserved.
  core.List<core.String>? packageNamesToDisable;

  ComplianceRule({
    this.apiLevelCondition,
    this.disableApps,
    this.nonComplianceDetailCondition,
    this.packageNamesToDisable,
  });

  ComplianceRule.fromJson(core.Map json_)
    : this(
        apiLevelCondition:
            json_.containsKey('apiLevelCondition')
                ? ApiLevelCondition.fromJson(
                  json_['apiLevelCondition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        disableApps: json_['disableApps'] as core.bool?,
        nonComplianceDetailCondition:
            json_.containsKey('nonComplianceDetailCondition')
                ? NonComplianceDetailCondition.fromJson(
                  json_['nonComplianceDetailCondition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        packageNamesToDisable:
            (json_['packageNamesToDisable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiLevelCondition != null) 'apiLevelCondition': apiLevelCondition!,
    if (disableApps != null) 'disableApps': disableApps!,
    if (nonComplianceDetailCondition != null)
      'nonComplianceDetailCondition': nonComplianceDetailCondition!,
    if (packageNamesToDisable != null)
      'packageNamesToDisable': packageNamesToDisable!,
  };
}

/// Contact details for managed Google Play enterprises.
class ContactInfo {
  /// Email address for a point of contact, which will be used to send important
  /// announcements related to managed Google Play.
  core.String? contactEmail;

  /// The email of the data protection officer.
  ///
  /// The email is validated but not verified.
  core.String? dataProtectionOfficerEmail;

  /// The name of the data protection officer.
  core.String? dataProtectionOfficerName;

  /// The phone number of the data protection officer The phone number is
  /// validated but not verified.
  core.String? dataProtectionOfficerPhone;

  /// The email of the EU representative.
  ///
  /// The email is validated but not verified.
  core.String? euRepresentativeEmail;

  /// The name of the EU representative.
  core.String? euRepresentativeName;

  /// The phone number of the EU representative.
  ///
  /// The phone number is validated but not verified.
  core.String? euRepresentativePhone;

  ContactInfo({
    this.contactEmail,
    this.dataProtectionOfficerEmail,
    this.dataProtectionOfficerName,
    this.dataProtectionOfficerPhone,
    this.euRepresentativeEmail,
    this.euRepresentativeName,
    this.euRepresentativePhone,
  });

  ContactInfo.fromJson(core.Map json_)
    : this(
        contactEmail: json_['contactEmail'] as core.String?,
        dataProtectionOfficerEmail:
            json_['dataProtectionOfficerEmail'] as core.String?,
        dataProtectionOfficerName:
            json_['dataProtectionOfficerName'] as core.String?,
        dataProtectionOfficerPhone:
            json_['dataProtectionOfficerPhone'] as core.String?,
        euRepresentativeEmail: json_['euRepresentativeEmail'] as core.String?,
        euRepresentativeName: json_['euRepresentativeName'] as core.String?,
        euRepresentativePhone: json_['euRepresentativePhone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contactEmail != null) 'contactEmail': contactEmail!,
    if (dataProtectionOfficerEmail != null)
      'dataProtectionOfficerEmail': dataProtectionOfficerEmail!,
    if (dataProtectionOfficerName != null)
      'dataProtectionOfficerName': dataProtectionOfficerName!,
    if (dataProtectionOfficerPhone != null)
      'dataProtectionOfficerPhone': dataProtectionOfficerPhone!,
    if (euRepresentativeEmail != null)
      'euRepresentativeEmail': euRepresentativeEmail!,
    if (euRepresentativeName != null)
      'euRepresentativeName': euRepresentativeName!,
    if (euRepresentativePhone != null)
      'euRepresentativePhone': euRepresentativePhone!,
  };
}

/// This feature is not generally available.
class ContentProviderEndpoint {
  /// This feature is not generally available.
  core.String? packageName;

  /// This feature is not generally available.
  ///
  /// Required.
  core.List<core.String>? signingCertsSha256;

  /// This feature is not generally available.
  core.String? uri;

  ContentProviderEndpoint({
    this.packageName,
    this.signingCertsSha256,
    this.uri,
  });

  ContentProviderEndpoint.fromJson(core.Map json_)
    : this(
        packageName: json_['packageName'] as core.String?,
        signingCertsSha256:
            (json_['signingCertsSha256'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (packageName != null) 'packageName': packageName!,
    if (signingCertsSha256 != null) 'signingCertsSha256': signingCertsSha256!,
    if (uri != null) 'uri': uri!,
  };
}

/// Controls the data from the work profile that can be accessed from the
/// personal profile and vice versa.
///
/// A NonComplianceDetail with MANAGEMENT_MODE is reported if the device does
/// not have a work profile.
class CrossProfilePolicies {
  /// Controls whether personal profile apps can invoke app functions exposed by
  /// apps in the work profile.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CROSS_PROFILE_APP_FUNCTIONS_UNSPECIFIED" : Unspecified. If appFunctions
  /// is set to APP_FUNCTIONS_ALLOWED, defaults to
  /// CROSS_PROFILE_APP_FUNCTIONS_ALLOWED. If appFunctions is set to
  /// APP_FUNCTIONS_DISALLOWED, defaults to
  /// CROSS_PROFILE_APP_FUNCTIONS_DISALLOWED.
  /// - "CROSS_PROFILE_APP_FUNCTIONS_DISALLOWED" : Personal profile apps are not
  /// allowed to invoke app functions exposed by apps in the work profile.
  /// - "CROSS_PROFILE_APP_FUNCTIONS_ALLOWED" : Personal profile apps can invoke
  /// app functions exposed by apps in the work profile. If this is set,
  /// appFunctions must not be set to APP_FUNCTIONS_DISALLOWED, otherwise the
  /// policy will be rejected.
  core.String? crossProfileAppFunctions;

  /// Whether text copied from one profile (personal or work) can be pasted in
  /// the other profile.
  /// Possible string values are:
  /// - "CROSS_PROFILE_COPY_PASTE_UNSPECIFIED" : Unspecified. Defaults to
  /// COPY_FROM_WORK_TO_PERSONAL_DISALLOWED
  /// - "COPY_FROM_WORK_TO_PERSONAL_DISALLOWED" : Default. Prevents users from
  /// pasting into the personal profile text copied from the work profile. Text
  /// copied from the personal profile can be pasted into the work profile, and
  /// text copied from the work profile can be pasted into the work profile.
  /// - "CROSS_PROFILE_COPY_PASTE_ALLOWED" : Text copied in either profile can
  /// be pasted in the other profile.
  core.String? crossProfileCopyPaste;

  /// Whether data from one profile (personal or work) can be shared with apps
  /// in the other profile.
  ///
  /// Specifically controls simple data sharing via intents. Management of other
  /// cross-profile communication channels, such as contact search, copy/paste,
  /// or connected work & personal apps, are configured separately.
  /// Possible string values are:
  /// - "CROSS_PROFILE_DATA_SHARING_UNSPECIFIED" : Unspecified. Defaults to
  /// DATA_SHARING_FROM_WORK_TO_PERSONAL_DISALLOWED.
  /// - "CROSS_PROFILE_DATA_SHARING_DISALLOWED" : Prevents data from being
  /// shared from both the personal profile to the work profile and the work
  /// profile to the personal profile.
  /// - "DATA_SHARING_FROM_WORK_TO_PERSONAL_DISALLOWED" : Default. Prevents
  /// users from sharing data from the work profile to apps in the personal
  /// profile. Personal data can be shared with work apps.
  /// - "CROSS_PROFILE_DATA_SHARING_ALLOWED" : Data from either profile can be
  /// shared with the other profile.
  core.String? crossProfileDataSharing;

  /// List of apps which are excluded from the ShowWorkContactsInPersonalProfile
  /// setting.
  ///
  /// For this to be set, ShowWorkContactsInPersonalProfile must be set to one
  /// of the following values: SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_ALLOWED.
  /// In this case, these exemptions act as a blocklist.
  /// SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_DISALLOWED. In this case, these
  /// exemptions act as an allowlist.
  /// SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_DISALLOWED_EXCEPT_SYSTEM. In this
  /// case, these exemptions act as an allowlist, in addition to the already
  /// allowlisted system apps.Supported on Android 14 and above. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 14.
  PackageNameList? exemptionsToShowWorkContactsInPersonalProfile;

  /// Whether personal apps can access contacts stored in the work profile.See
  /// also exemptions_to_show_work_contacts_in_personal_profile.
  /// Possible string values are:
  /// - "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_UNSPECIFIED" : Unspecified.
  /// Defaults to SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_ALLOWED.When this is
  /// set, exemptions_to_show_work_contacts_in_personal_profile must not be set.
  /// - "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_DISALLOWED" : Prevents personal
  /// apps from accessing work profile contacts and looking up work
  /// contacts.When this is set, personal apps specified in
  /// exemptions_to_show_work_contacts_in_personal_profile are allowlisted and
  /// can access work profile contacts directly.Supported on Android 7.0 and
  /// above. A NonComplianceDetail with API_LEVEL is reported if the Android
  /// version is less than 7.0.
  /// - "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_ALLOWED" : Default. Allows apps
  /// in the personal profile to access work profile contacts including contact
  /// searches and incoming calls.When this is set, personal apps specified in
  /// exemptions_to_show_work_contacts_in_personal_profile are blocklisted and
  /// can not access work profile contacts directly.Supported on Android 7.0 and
  /// above. A NonComplianceDetail with API_LEVEL is reported if the Android
  /// version is less than 7.0.
  /// - "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_DISALLOWED_EXCEPT_SYSTEM" :
  /// Prevents most personal apps from accessing work profile contacts including
  /// contact searches and incoming calls, except for the OEM default Dialer,
  /// Messages, and Contacts apps. Neither user-configured Dialer, Messages, and
  /// Contacts apps, nor any other system or play installed apps, will be able
  /// to query work contacts directly.When this is set, personal apps specified
  /// in exemptions_to_show_work_contacts_in_personal_profile are allowlisted
  /// and can access work profile contacts.Supported on Android 14 and above. If
  /// this is set on a device with Android version less than 14, the behaviour
  /// falls back to SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_DISALLOWED and a
  /// NonComplianceDetail with API_LEVEL is reported.
  core.String? showWorkContactsInPersonalProfile;

  /// Specifies the default behaviour for work profile widgets.
  ///
  /// If the policy does not specify work_profile_widgets for a specific
  /// application, it will behave according to the value specified here.
  /// Possible string values are:
  /// - "WORK_PROFILE_WIDGETS_DEFAULT_UNSPECIFIED" : Unspecified. Defaults to
  /// WORK_PROFILE_WIDGETS_DEFAULT_DISALLOWED.
  /// - "WORK_PROFILE_WIDGETS_DEFAULT_ALLOWED" : Work profile widgets are
  /// allowed by default. This means that if the policy does not specify
  /// work_profile_widgets as WORK_PROFILE_WIDGETS_DISALLOWED for the
  /// application, it will be able to add widgets to the home screen.
  /// - "WORK_PROFILE_WIDGETS_DEFAULT_DISALLOWED" : Work profile widgets are
  /// disallowed by default. This means that if the policy does not specify
  /// work_profile_widgets as WORK_PROFILE_WIDGETS_ALLOWED for the application,
  /// it will be unable to add widgets to the home screen.
  core.String? workProfileWidgetsDefault;

  CrossProfilePolicies({
    this.crossProfileAppFunctions,
    this.crossProfileCopyPaste,
    this.crossProfileDataSharing,
    this.exemptionsToShowWorkContactsInPersonalProfile,
    this.showWorkContactsInPersonalProfile,
    this.workProfileWidgetsDefault,
  });

  CrossProfilePolicies.fromJson(core.Map json_)
    : this(
        crossProfileAppFunctions:
            json_['crossProfileAppFunctions'] as core.String?,
        crossProfileCopyPaste: json_['crossProfileCopyPaste'] as core.String?,
        crossProfileDataSharing:
            json_['crossProfileDataSharing'] as core.String?,
        exemptionsToShowWorkContactsInPersonalProfile:
            json_.containsKey('exemptionsToShowWorkContactsInPersonalProfile')
                ? PackageNameList.fromJson(
                  json_['exemptionsToShowWorkContactsInPersonalProfile']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        showWorkContactsInPersonalProfile:
            json_['showWorkContactsInPersonalProfile'] as core.String?,
        workProfileWidgetsDefault:
            json_['workProfileWidgetsDefault'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (crossProfileAppFunctions != null)
      'crossProfileAppFunctions': crossProfileAppFunctions!,
    if (crossProfileCopyPaste != null)
      'crossProfileCopyPaste': crossProfileCopyPaste!,
    if (crossProfileDataSharing != null)
      'crossProfileDataSharing': crossProfileDataSharing!,
    if (exemptionsToShowWorkContactsInPersonalProfile != null)
      'exemptionsToShowWorkContactsInPersonalProfile':
          exemptionsToShowWorkContactsInPersonalProfile!,
    if (showWorkContactsInPersonalProfile != null)
      'showWorkContactsInPersonalProfile': showWorkContactsInPersonalProfile!,
    if (workProfileWidgetsDefault != null)
      'workProfileWidgetsDefault': workProfileWidgetsDefault!,
  };
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: A full date, with non-zero year, month, and
/// day values. A month and day, with a zero year (for example, an anniversary).
/// A year on its own, with a zero month and a zero day. A year and month, with
/// a zero day (for example, a credit card expiration date).Related types:
/// google.type.TimeOfDay google.type.DateTime google.protobuf.Timestamp
typedef Date = $Date;

/// A device owned by an enterprise.
///
/// Unless otherwise noted, all fields are read-only and can't be modified by
/// enterprises.devices.patch.
class Device {
  /// The API level of the Android platform version running on the device.
  core.int? apiLevel;

  /// Reports for apps installed on the device.
  ///
  /// This information is only available when application_reports_enabled is
  /// true in the device's policy.
  core.List<ApplicationReport>? applicationReports;

  /// The password requirements currently applied to the device.
  ///
  /// The applied requirements may be slightly different from those specified in
  /// passwordPolicies in some cases. fieldPath is set based on
  /// passwordPolicies.
  core.List<PasswordRequirements>? appliedPasswordPolicies;

  /// The name of the policy currently applied to the device.
  core.String? appliedPolicyName;

  /// The version of the policy currently applied to the device.
  core.String? appliedPolicyVersion;

  /// The state currently applied to the device.
  /// Possible string values are:
  /// - "DEVICE_STATE_UNSPECIFIED" : This value is disallowed.
  /// - "ACTIVE" : The device is active.
  /// - "DISABLED" : The device is disabled.
  /// - "DELETED" : The device was deleted. This state is never returned by an
  /// API call, but is used in the final status report when the device
  /// acknowledges the deletion. If the device is deleted via the API call, this
  /// state is published to Pub/Sub. If the user deletes the work profile or
  /// resets the device, the device state will remain unknown to the server.
  /// - "PROVISIONING" : The device is being provisioned. Newly enrolled devices
  /// are in this state until they have a policy applied.
  /// - "LOST" : The device is lost. This state is only possible on
  /// organization-owned devices.
  /// - "PREPARING_FOR_MIGRATION" : The device is preparing for migrating to
  /// Android Management API. No further action is needed for the migration to
  /// continue.
  /// - "DEACTIVATED_BY_DEVICE_FINANCE" : This is a financed device that has
  /// been "locked" by the financing agent. This means certain policy settings
  /// have been applied which limit device functionality until the device has
  /// been "unlocked" by the financing agent. The device will continue to apply
  /// policy settings excluding those overridden by the financing agent. When
  /// the device is "locked", the state is reported in appliedState as
  /// DEACTIVATED_BY_DEVICE_FINANCE.
  core.String? appliedState;

  /// Information about Common Criteria Mode—security standards defined in the
  /// Common Criteria for Information Technology Security Evaluation
  /// (https://www.commoncriteriaportal.org/) (CC).This information is only
  /// available if statusReportingSettings.commonCriteriaModeEnabled is true in
  /// the device's policy the device is company-owned.
  CommonCriteriaModeInfo? commonCriteriaModeInfo;

  /// Device settings information.
  ///
  /// This information is only available if deviceSettingsEnabled is true in the
  /// device's policy.
  DeviceSettings? deviceSettings;

  /// If the device state is DISABLED, an optional message that is displayed on
  /// the device indicating the reason the device is disabled.
  ///
  /// This field can be modified by a patch request.
  UserFacingMessage? disabledReason;

  /// Detailed information about displays on the device.
  ///
  /// This information is only available if displayInfoEnabled is true in the
  /// device's policy.
  core.List<Display>? displays;

  /// Information related to whether this device was migrated from being managed
  /// by another Device Policy Controller (DPC).
  ///
  /// Output only.
  DpcMigrationInfo? dpcMigrationInfo;

  /// The time of device enrollment.
  core.String? enrollmentTime;

  /// If the device was enrolled with an enrollment token with additional data
  /// provided, this field contains that data.
  core.String? enrollmentTokenData;

  /// If the device was enrolled with an enrollment token, this field contains
  /// the name of the token.
  core.String? enrollmentTokenName;

  /// Detailed information about the device hardware.
  HardwareInfo? hardwareInfo;

  /// Hardware status samples in chronological order.
  ///
  /// This information is only available if hardwareStatusEnabled is true in the
  /// device's policy.
  core.List<HardwareStatus>? hardwareStatusSamples;

  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? lastPolicyComplianceReportTime;

  /// The last time the device fetched its policy.
  core.String? lastPolicySyncTime;

  /// The last time the device sent a status report.
  core.String? lastStatusReportTime;

  /// The type of management mode Android Device Policy takes on the device.
  ///
  /// This influences which policy settings are supported.
  /// Possible string values are:
  /// - "MANAGEMENT_MODE_UNSPECIFIED" : This value is disallowed.
  /// - "DEVICE_OWNER" : Device owner. Android Device Policy has full control
  /// over the device.
  /// - "PROFILE_OWNER" : Profile owner. Android Device Policy has control over
  /// a managed profile on the device.
  core.String? managementMode;

  /// Events related to memory and storage measurements in chronological order.
  ///
  /// This information is only available if memoryInfoEnabled is true in the
  /// device's policy.Events are retained for a certain period of time and old
  /// events are deleted.
  core.List<MemoryEvent>? memoryEvents;

  /// Memory information: contains information about device memory and storage.
  MemoryInfo? memoryInfo;

  /// The name of the device in the form
  /// enterprises/{enterpriseId}/devices/{deviceId}.
  core.String? name;

  /// Device network information.
  ///
  /// This information is only available if networkInfoEnabled is true in the
  /// device's policy.
  NetworkInfo? networkInfo;

  /// Details about policy settings that the device is not compliant with.
  core.List<NonComplianceDetail>? nonComplianceDetails;

  /// Ownership of the managed device.
  /// Possible string values are:
  /// - "OWNERSHIP_UNSPECIFIED" : Ownership is unspecified.
  /// - "COMPANY_OWNED" : Device is company-owned.
  /// - "PERSONALLY_OWNED" : Device is personally-owned.
  core.String? ownership;

  /// Whether the device is compliant with its policy.
  core.bool? policyCompliant;

  /// The name of the policy applied to the device, in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  ///
  /// If not specified, the policy_name for the device's user is applied. This
  /// field can be modified by a patch request. You can specify only the
  /// policyId when calling enterprises.devices.patch, as long as the policyId
  /// doesn’t contain any slashes. The rest of the policy name is inferred.
  core.String? policyName;

  /// Power management events on the device in chronological order.
  ///
  /// This information is only available if powerManagementEventsEnabled is true
  /// in the device's policy.
  core.List<PowerManagementEvent>? powerManagementEvents;

  /// If the same physical device has been enrolled multiple times, this field
  /// contains its previous device names.
  ///
  /// The serial number is used as the unique identifier to determine if the
  /// same physical device has enrolled previously. The names are in
  /// chronological order.
  core.List<core.String>? previousDeviceNames;

  /// Device's security posture value that reflects how secure the device is.
  SecurityPosture? securityPosture;

  /// Detailed information about the device software.
  ///
  /// This information is only available if softwareInfoEnabled is true in the
  /// device's policy.
  SoftwareInfo? softwareInfo;

  /// The state to be applied to the device.
  ///
  /// This field can be modified by a patch request. Note that when calling
  /// enterprises.devices.patch, ACTIVE and DISABLED are the only allowable
  /// values. To enter the device into a DELETED state, call
  /// enterprises.devices.delete.
  /// Possible string values are:
  /// - "DEVICE_STATE_UNSPECIFIED" : This value is disallowed.
  /// - "ACTIVE" : The device is active.
  /// - "DISABLED" : The device is disabled.
  /// - "DELETED" : The device was deleted. This state is never returned by an
  /// API call, but is used in the final status report when the device
  /// acknowledges the deletion. If the device is deleted via the API call, this
  /// state is published to Pub/Sub. If the user deletes the work profile or
  /// resets the device, the device state will remain unknown to the server.
  /// - "PROVISIONING" : The device is being provisioned. Newly enrolled devices
  /// are in this state until they have a policy applied.
  /// - "LOST" : The device is lost. This state is only possible on
  /// organization-owned devices.
  /// - "PREPARING_FOR_MIGRATION" : The device is preparing for migrating to
  /// Android Management API. No further action is needed for the migration to
  /// continue.
  /// - "DEACTIVATED_BY_DEVICE_FINANCE" : This is a financed device that has
  /// been "locked" by the financing agent. This means certain policy settings
  /// have been applied which limit device functionality until the device has
  /// been "unlocked" by the financing agent. The device will continue to apply
  /// policy settings excluding those overridden by the financing agent. When
  /// the device is "locked", the state is reported in appliedState as
  /// DEACTIVATED_BY_DEVICE_FINANCE.
  core.String? state;

  /// Map of selected system properties name and value related to the device.
  ///
  /// This information is only available if systemPropertiesEnabled is true in
  /// the device's policy.
  core.Map<core.String, core.String>? systemProperties;

  /// The user who owns the device.
  User? user;

  /// The resource name of the user that owns this device in the form
  /// enterprises/{enterpriseId}/users/{userId}.
  core.String? userName;

  Device({
    this.apiLevel,
    this.applicationReports,
    this.appliedPasswordPolicies,
    this.appliedPolicyName,
    this.appliedPolicyVersion,
    this.appliedState,
    this.commonCriteriaModeInfo,
    this.deviceSettings,
    this.disabledReason,
    this.displays,
    this.dpcMigrationInfo,
    this.enrollmentTime,
    this.enrollmentTokenData,
    this.enrollmentTokenName,
    this.hardwareInfo,
    this.hardwareStatusSamples,
    this.lastPolicyComplianceReportTime,
    this.lastPolicySyncTime,
    this.lastStatusReportTime,
    this.managementMode,
    this.memoryEvents,
    this.memoryInfo,
    this.name,
    this.networkInfo,
    this.nonComplianceDetails,
    this.ownership,
    this.policyCompliant,
    this.policyName,
    this.powerManagementEvents,
    this.previousDeviceNames,
    this.securityPosture,
    this.softwareInfo,
    this.state,
    this.systemProperties,
    this.user,
    this.userName,
  });

  Device.fromJson(core.Map json_)
    : this(
        apiLevel: json_['apiLevel'] as core.int?,
        applicationReports:
            (json_['applicationReports'] as core.List?)
                ?.map(
                  (value) => ApplicationReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        appliedPasswordPolicies:
            (json_['appliedPasswordPolicies'] as core.List?)
                ?.map(
                  (value) => PasswordRequirements.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        appliedPolicyName: json_['appliedPolicyName'] as core.String?,
        appliedPolicyVersion: json_['appliedPolicyVersion'] as core.String?,
        appliedState: json_['appliedState'] as core.String?,
        commonCriteriaModeInfo:
            json_.containsKey('commonCriteriaModeInfo')
                ? CommonCriteriaModeInfo.fromJson(
                  json_['commonCriteriaModeInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deviceSettings:
            json_.containsKey('deviceSettings')
                ? DeviceSettings.fromJson(
                  json_['deviceSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        disabledReason:
            json_.containsKey('disabledReason')
                ? UserFacingMessage.fromJson(
                  json_['disabledReason']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        displays:
            (json_['displays'] as core.List?)
                ?.map(
                  (value) => Display.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dpcMigrationInfo:
            json_.containsKey('dpcMigrationInfo')
                ? DpcMigrationInfo.fromJson(
                  json_['dpcMigrationInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enrollmentTime: json_['enrollmentTime'] as core.String?,
        enrollmentTokenData: json_['enrollmentTokenData'] as core.String?,
        enrollmentTokenName: json_['enrollmentTokenName'] as core.String?,
        hardwareInfo:
            json_.containsKey('hardwareInfo')
                ? HardwareInfo.fromJson(
                  json_['hardwareInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hardwareStatusSamples:
            (json_['hardwareStatusSamples'] as core.List?)
                ?.map(
                  (value) => HardwareStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        lastPolicyComplianceReportTime:
            json_['lastPolicyComplianceReportTime'] as core.String?,
        lastPolicySyncTime: json_['lastPolicySyncTime'] as core.String?,
        lastStatusReportTime: json_['lastStatusReportTime'] as core.String?,
        managementMode: json_['managementMode'] as core.String?,
        memoryEvents:
            (json_['memoryEvents'] as core.List?)
                ?.map(
                  (value) => MemoryEvent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        memoryInfo:
            json_.containsKey('memoryInfo')
                ? MemoryInfo.fromJson(
                  json_['memoryInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        networkInfo:
            json_.containsKey('networkInfo')
                ? NetworkInfo.fromJson(
                  json_['networkInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nonComplianceDetails:
            (json_['nonComplianceDetails'] as core.List?)
                ?.map(
                  (value) => NonComplianceDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        ownership: json_['ownership'] as core.String?,
        policyCompliant: json_['policyCompliant'] as core.bool?,
        policyName: json_['policyName'] as core.String?,
        powerManagementEvents:
            (json_['powerManagementEvents'] as core.List?)
                ?.map(
                  (value) => PowerManagementEvent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        previousDeviceNames:
            (json_['previousDeviceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        securityPosture:
            json_.containsKey('securityPosture')
                ? SecurityPosture.fromJson(
                  json_['securityPosture']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        softwareInfo:
            json_.containsKey('softwareInfo')
                ? SoftwareInfo.fromJson(
                  json_['softwareInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        systemProperties: (json_['systemProperties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        user:
            json_.containsKey('user')
                ? User.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userName: json_['userName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiLevel != null) 'apiLevel': apiLevel!,
    if (applicationReports != null) 'applicationReports': applicationReports!,
    if (appliedPasswordPolicies != null)
      'appliedPasswordPolicies': appliedPasswordPolicies!,
    if (appliedPolicyName != null) 'appliedPolicyName': appliedPolicyName!,
    if (appliedPolicyVersion != null)
      'appliedPolicyVersion': appliedPolicyVersion!,
    if (appliedState != null) 'appliedState': appliedState!,
    if (commonCriteriaModeInfo != null)
      'commonCriteriaModeInfo': commonCriteriaModeInfo!,
    if (deviceSettings != null) 'deviceSettings': deviceSettings!,
    if (disabledReason != null) 'disabledReason': disabledReason!,
    if (displays != null) 'displays': displays!,
    if (dpcMigrationInfo != null) 'dpcMigrationInfo': dpcMigrationInfo!,
    if (enrollmentTime != null) 'enrollmentTime': enrollmentTime!,
    if (enrollmentTokenData != null)
      'enrollmentTokenData': enrollmentTokenData!,
    if (enrollmentTokenName != null)
      'enrollmentTokenName': enrollmentTokenName!,
    if (hardwareInfo != null) 'hardwareInfo': hardwareInfo!,
    if (hardwareStatusSamples != null)
      'hardwareStatusSamples': hardwareStatusSamples!,
    if (lastPolicyComplianceReportTime != null)
      'lastPolicyComplianceReportTime': lastPolicyComplianceReportTime!,
    if (lastPolicySyncTime != null) 'lastPolicySyncTime': lastPolicySyncTime!,
    if (lastStatusReportTime != null)
      'lastStatusReportTime': lastStatusReportTime!,
    if (managementMode != null) 'managementMode': managementMode!,
    if (memoryEvents != null) 'memoryEvents': memoryEvents!,
    if (memoryInfo != null) 'memoryInfo': memoryInfo!,
    if (name != null) 'name': name!,
    if (networkInfo != null) 'networkInfo': networkInfo!,
    if (nonComplianceDetails != null)
      'nonComplianceDetails': nonComplianceDetails!,
    if (ownership != null) 'ownership': ownership!,
    if (policyCompliant != null) 'policyCompliant': policyCompliant!,
    if (policyName != null) 'policyName': policyName!,
    if (powerManagementEvents != null)
      'powerManagementEvents': powerManagementEvents!,
    if (previousDeviceNames != null)
      'previousDeviceNames': previousDeviceNames!,
    if (securityPosture != null) 'securityPosture': securityPosture!,
    if (softwareInfo != null) 'softwareInfo': softwareInfo!,
    if (state != null) 'state': state!,
    if (systemProperties != null) 'systemProperties': systemProperties!,
    if (user != null) 'user': user!,
    if (userName != null) 'userName': userName!,
  };
}

/// Covers controls for device connectivity such as Wi-Fi, USB data access,
/// keyboard/mouse connections, and more.
class DeviceConnectivityManagement {
  /// Access Point Name (APN) policy.
  ///
  /// Configuration for Access Point Names (APNs) which may override any other
  /// APNs on the device. See OVERRIDE_APNS_ENABLED and overrideApns for
  /// details.
  ///
  /// Optional.
  ApnPolicy? apnPolicy;

  /// Controls whether Bluetooth sharing is allowed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BLUETOOTH_SHARING_UNSPECIFIED" : Unspecified. Defaults to
  /// BLUETOOTH_SHARING_DISALLOWED on work profiles and
  /// BLUETOOTH_SHARING_ALLOWED on fully managed devices.
  /// - "BLUETOOTH_SHARING_ALLOWED" : Bluetooth sharing is allowed.Supported on
  /// Android 8 and above. A NonComplianceDetail with API_LEVEL is reported on
  /// work profiles if the Android version is less than 8.
  /// - "BLUETOOTH_SHARING_DISALLOWED" : Bluetooth sharing is
  /// disallowed.Supported on Android 8 and above. A NonComplianceDetail with
  /// API_LEVEL is reported on fully managed devices if the Android version is
  /// less than 8.
  core.String? bluetoothSharing;

  /// Controls Wi-Fi configuring privileges.
  ///
  /// Based on the option set, user will have either full or limited or no
  /// control in configuring Wi-Fi networks.
  /// Possible string values are:
  /// - "CONFIGURE_WIFI_UNSPECIFIED" : Unspecified. Defaults to
  /// ALLOW_CONFIGURING_WIFI unless wifiConfigDisabled is set to true. If
  /// wifiConfigDisabled is set to true, this is equivalent to
  /// DISALLOW_CONFIGURING_WIFI.
  /// - "ALLOW_CONFIGURING_WIFI" : The user is allowed to configure Wi-Fi.
  /// wifiConfigDisabled is ignored.
  /// - "DISALLOW_ADD_WIFI_CONFIG" : Adding new Wi-Fi configurations is
  /// disallowed. The user is only able to switch between already configured
  /// networks. Supported on Android 13 and above, on fully managed devices and
  /// work profiles on company-owned devices. If the setting is not supported,
  /// ALLOW_CONFIGURING_WIFI is set. A NonComplianceDetail with API_LEVEL is
  /// reported if the Android version is less than 13. wifiConfigDisabled is
  /// ignored.
  /// - "DISALLOW_CONFIGURING_WIFI" : Disallows configuring Wi-Fi networks. The
  /// setting wifiConfigDisabled is ignored when this value is set. Supported on
  /// fully managed devices and work profile on company-owned devices, on all
  /// supported API levels. For fully managed devices, setting this removes all
  /// configured networks and retains only the networks configured using
  /// openNetworkConfiguration policy. For work profiles on company-owned
  /// devices, existing configured networks are not affected and the user is not
  /// allowed to add, remove, or modify Wi-Fi networks. Note: If a network
  /// connection can't be made at boot time and configuring Wi-Fi is disabled
  /// then network escape hatch will be shown in order to refresh the device
  /// policy (see networkEscapeHatchEnabled).
  core.String? configureWifi;

  /// Preferential network service configuration.
  ///
  /// Setting this field will override preferentialNetworkService. This can be
  /// set on both work profiles and fully managed devices on Android 13 and
  /// above. See 5G network slicing
  /// (https://developers.google.com/android/management/5g-network-slicing)
  /// guide for more details.
  ///
  /// Optional.
  PreferentialNetworkServiceSettings? preferentialNetworkServiceSettings;

  /// Controls tethering settings.
  ///
  /// Based on the value set, the user is partially or fully disallowed from
  /// using different forms of tethering.
  /// Possible string values are:
  /// - "TETHERING_SETTINGS_UNSPECIFIED" : Unspecified. Defaults to
  /// ALLOW_ALL_TETHERING unless tetheringConfigDisabled is set to true. If
  /// tetheringConfigDisabled is set to true, this is equivalent to
  /// DISALLOW_ALL_TETHERING.
  /// - "ALLOW_ALL_TETHERING" : Allows configuration and use of all forms of
  /// tethering. tetheringConfigDisabled is ignored.
  /// - "DISALLOW_WIFI_TETHERING" : Disallows the user from using Wi-Fi
  /// tethering. Supported on company owned devices running Android 13 and
  /// above. If the setting is not supported, ALLOW_ALL_TETHERING will be set. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 13. tetheringConfigDisabled is ignored.
  /// - "DISALLOW_ALL_TETHERING" : Disallows all forms of tethering. Supported
  /// on fully managed devices and work profile on company-owned devices, on all
  /// supported android versions. The setting tetheringConfigDisabled is
  /// ignored.
  core.String? tetheringSettings;

  /// Controls what files and/or data can be transferred via USB.
  ///
  /// Supported only on company-owned devices.
  /// Possible string values are:
  /// - "USB_DATA_ACCESS_UNSPECIFIED" : Unspecified. Defaults to
  /// DISALLOW_USB_FILE_TRANSFER.
  /// - "ALLOW_USB_DATA_TRANSFER" : All types of USB data transfers are allowed.
  /// usbFileTransferDisabled is ignored.
  /// - "DISALLOW_USB_FILE_TRANSFER" : Transferring files over USB is
  /// disallowed. Other types of USB data connections, such as mouse and
  /// keyboard connection, are allowed. usbFileTransferDisabled is ignored.
  /// - "DISALLOW_USB_DATA_TRANSFER" : When set, all types of USB data transfers
  /// are prohibited. Supported for devices running Android 12 or above with USB
  /// HAL 1.3 or above. If the setting is not supported,
  /// DISALLOW_USB_FILE_TRANSFER will be set. A NonComplianceDetail with
  /// API_LEVEL is reported if the Android version is less than 12. A
  /// NonComplianceDetail with DEVICE_INCOMPATIBLE is reported if the device
  /// does not have USB HAL 1.3 or above. usbFileTransferDisabled is ignored.
  core.String? usbDataAccess;

  /// Controls configuring and using Wi-Fi direct settings.
  ///
  /// Supported on company-owned devices running Android 13 and above.
  /// Possible string values are:
  /// - "WIFI_DIRECT_SETTINGS_UNSPECIFIED" : Unspecified. Defaults to
  /// ALLOW_WIFI_DIRECT
  /// - "ALLOW_WIFI_DIRECT" : The user is allowed to use Wi-Fi direct.
  /// - "DISALLOW_WIFI_DIRECT" : The user is not allowed to use Wi-Fi direct. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 13.
  core.String? wifiDirectSettings;

  /// Wi-Fi roaming policy.
  ///
  /// Optional.
  WifiRoamingPolicy? wifiRoamingPolicy;

  /// Restrictions on which Wi-Fi SSIDs the device can connect to.
  ///
  /// Note that this does not affect which networks can be configured on the
  /// device. Supported on company-owned devices running Android 13 and above.
  WifiSsidPolicy? wifiSsidPolicy;

  DeviceConnectivityManagement({
    this.apnPolicy,
    this.bluetoothSharing,
    this.configureWifi,
    this.preferentialNetworkServiceSettings,
    this.tetheringSettings,
    this.usbDataAccess,
    this.wifiDirectSettings,
    this.wifiRoamingPolicy,
    this.wifiSsidPolicy,
  });

  DeviceConnectivityManagement.fromJson(core.Map json_)
    : this(
        apnPolicy:
            json_.containsKey('apnPolicy')
                ? ApnPolicy.fromJson(
                  json_['apnPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        bluetoothSharing: json_['bluetoothSharing'] as core.String?,
        configureWifi: json_['configureWifi'] as core.String?,
        preferentialNetworkServiceSettings:
            json_.containsKey('preferentialNetworkServiceSettings')
                ? PreferentialNetworkServiceSettings.fromJson(
                  json_['preferentialNetworkServiceSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tetheringSettings: json_['tetheringSettings'] as core.String?,
        usbDataAccess: json_['usbDataAccess'] as core.String?,
        wifiDirectSettings: json_['wifiDirectSettings'] as core.String?,
        wifiRoamingPolicy:
            json_.containsKey('wifiRoamingPolicy')
                ? WifiRoamingPolicy.fromJson(
                  json_['wifiRoamingPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        wifiSsidPolicy:
            json_.containsKey('wifiSsidPolicy')
                ? WifiSsidPolicy.fromJson(
                  json_['wifiSsidPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apnPolicy != null) 'apnPolicy': apnPolicy!,
    if (bluetoothSharing != null) 'bluetoothSharing': bluetoothSharing!,
    if (configureWifi != null) 'configureWifi': configureWifi!,
    if (preferentialNetworkServiceSettings != null)
      'preferentialNetworkServiceSettings': preferentialNetworkServiceSettings!,
    if (tetheringSettings != null) 'tetheringSettings': tetheringSettings!,
    if (usbDataAccess != null) 'usbDataAccess': usbDataAccess!,
    if (wifiDirectSettings != null) 'wifiDirectSettings': wifiDirectSettings!,
    if (wifiRoamingPolicy != null) 'wifiRoamingPolicy': wifiRoamingPolicy!,
    if (wifiSsidPolicy != null) 'wifiSsidPolicy': wifiSsidPolicy!,
  };
}

/// Controls for device radio settings.
class DeviceRadioState {
  /// Controls whether airplane mode can be toggled by the user or not.
  /// Possible string values are:
  /// - "AIRPLANE_MODE_STATE_UNSPECIFIED" : Unspecified. Defaults to
  /// AIRPLANE_MODE_USER_CHOICE.
  /// - "AIRPLANE_MODE_USER_CHOICE" : The user is allowed to toggle airplane
  /// mode on or off.
  /// - "AIRPLANE_MODE_DISABLED" : Airplane mode is disabled. The user is not
  /// allowed to toggle airplane mode on. A NonComplianceDetail with API_LEVEL
  /// is reported if the Android version is less than 9.
  core.String? airplaneModeState;

  /// Controls whether cellular 2G setting can be toggled by the user or not.
  /// Possible string values are:
  /// - "CELLULAR_TWO_G_STATE_UNSPECIFIED" : Unspecified. Defaults to
  /// CELLULAR_TWO_G_USER_CHOICE.
  /// - "CELLULAR_TWO_G_USER_CHOICE" : The user is allowed to toggle cellular 2G
  /// on or off.
  /// - "CELLULAR_TWO_G_DISABLED" : Cellular 2G is disabled. The user is not
  /// allowed to toggle cellular 2G on via settings. A NonComplianceDetail with
  /// API_LEVEL is reported if the Android version is less than 14.
  core.String? cellularTwoGState;

  /// The minimum required security level of Wi-Fi networks that the device can
  /// connect to.
  /// Possible string values are:
  /// - "MINIMUM_WIFI_SECURITY_LEVEL_UNSPECIFIED" : Defaults to
  /// OPEN_NETWORK_SECURITY, which means the device will be able to connect to
  /// all types of Wi-Fi networks.
  /// - "OPEN_NETWORK_SECURITY" : The device will be able to connect to all
  /// types of Wi-Fi networks.
  /// - "PERSONAL_NETWORK_SECURITY" : A personal network such as WEP, WPA2-PSK
  /// is the minimum required security. The device will not be able to connect
  /// to open wifi networks. This is stricter than OPEN_NETWORK_SECURITY. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 13.
  /// - "ENTERPRISE_NETWORK_SECURITY" : An enterprise EAP network is the minimum
  /// required security level. The device will not be able to connect to Wi-Fi
  /// network below this security level. This is stricter than
  /// PERSONAL_NETWORK_SECURITY. A NonComplianceDetail with API_LEVEL is
  /// reported if the Android version is less than 13.
  /// - "ENTERPRISE_BIT192_NETWORK_SECURITY" : A 192-bit enterprise network is
  /// the minimum required security level. The device will not be able to
  /// connect to Wi-Fi network below this security level. This is stricter than
  /// ENTERPRISE_NETWORK_SECURITY. A NonComplianceDetail with API_LEVEL is
  /// reported if the Android version is less than 13.
  core.String? minimumWifiSecurityLevel;

  /// Controls the state of the ultra wideband setting and whether the user can
  /// toggle it on or off.
  /// Possible string values are:
  /// - "ULTRA_WIDEBAND_STATE_UNSPECIFIED" : Unspecified. Defaults to
  /// ULTRA_WIDEBAND_USER_CHOICE.
  /// - "ULTRA_WIDEBAND_USER_CHOICE" : The user is allowed to toggle ultra
  /// wideband on or off.
  /// - "ULTRA_WIDEBAND_DISABLED" : Ultra wideband is disabled. The user is not
  /// allowed to toggle ultra wideband on via settings. A NonComplianceDetail
  /// with API_LEVEL is reported if the Android version is less than 14.
  core.String? ultraWidebandState;

  /// Controls current state of Wi-Fi and if user can change its state.
  /// Possible string values are:
  /// - "WIFI_STATE_UNSPECIFIED" : Unspecified. Defaults to
  /// WIFI_STATE_USER_CHOICE
  /// - "WIFI_STATE_USER_CHOICE" : User is allowed to enable/disable Wi-Fi.
  /// - "WIFI_ENABLED" : Wi-Fi is on and the user is not allowed to turn it off.
  /// A NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 13.
  /// - "WIFI_DISABLED" : Wi-Fi is off and the user is not allowed to turn it
  /// on. A NonComplianceDetail with API_LEVEL is reported if the Android
  /// version is less than 13.
  core.String? wifiState;

  DeviceRadioState({
    this.airplaneModeState,
    this.cellularTwoGState,
    this.minimumWifiSecurityLevel,
    this.ultraWidebandState,
    this.wifiState,
  });

  DeviceRadioState.fromJson(core.Map json_)
    : this(
        airplaneModeState: json_['airplaneModeState'] as core.String?,
        cellularTwoGState: json_['cellularTwoGState'] as core.String?,
        minimumWifiSecurityLevel:
            json_['minimumWifiSecurityLevel'] as core.String?,
        ultraWidebandState: json_['ultraWidebandState'] as core.String?,
        wifiState: json_['wifiState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (airplaneModeState != null) 'airplaneModeState': airplaneModeState!,
    if (cellularTwoGState != null) 'cellularTwoGState': cellularTwoGState!,
    if (minimumWifiSecurityLevel != null)
      'minimumWifiSecurityLevel': minimumWifiSecurityLevel!,
    if (ultraWidebandState != null) 'ultraWidebandState': ultraWidebandState!,
    if (wifiState != null) 'wifiState': wifiState!,
  };
}

/// Information about security related device settings on device.
class DeviceSettings {
  /// Whether ADB (https://developer.android.com/studio/command-line/adb.html)
  /// is enabled on the device.
  core.bool? adbEnabled;

  /// Whether developer mode is enabled on the device.
  core.bool? developmentSettingsEnabled;

  /// Encryption status from DevicePolicyManager.
  /// Possible string values are:
  /// - "ENCRYPTION_STATUS_UNSPECIFIED" : Unspecified. No device should have
  /// this type.
  /// - "UNSUPPORTED" : Encryption is not supported by the device.
  /// - "INACTIVE" : Encryption is supported by the device, but is not currently
  /// active.
  /// - "ACTIVATING" : Encryption is not currently active, but is currently
  /// being activated.
  /// - "ACTIVE" : Encryption is active.
  /// - "ACTIVE_DEFAULT_KEY" : Encryption is active, but an encryption key is
  /// not set by the user.
  /// - "ACTIVE_PER_USER" : Encryption is active, and the encryption key is tied
  /// to the user profile.
  core.String? encryptionStatus;

  /// Whether the device is secured with PIN/password.
  core.bool? isDeviceSecure;

  /// Whether the storage encryption is enabled.
  core.bool? isEncrypted;

  /// Whether installing apps from unknown sources is enabled.
  core.bool? unknownSourcesEnabled;

  /// Whether Google Play Protect verification
  /// (https://support.google.com/accounts/answer/2812853) is enforced on the
  /// device.
  core.bool? verifyAppsEnabled;

  DeviceSettings({
    this.adbEnabled,
    this.developmentSettingsEnabled,
    this.encryptionStatus,
    this.isDeviceSecure,
    this.isEncrypted,
    this.unknownSourcesEnabled,
    this.verifyAppsEnabled,
  });

  DeviceSettings.fromJson(core.Map json_)
    : this(
        adbEnabled: json_['adbEnabled'] as core.bool?,
        developmentSettingsEnabled:
            json_['developmentSettingsEnabled'] as core.bool?,
        encryptionStatus: json_['encryptionStatus'] as core.String?,
        isDeviceSecure: json_['isDeviceSecure'] as core.bool?,
        isEncrypted: json_['isEncrypted'] as core.bool?,
        unknownSourcesEnabled: json_['unknownSourcesEnabled'] as core.bool?,
        verifyAppsEnabled: json_['verifyAppsEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adbEnabled != null) 'adbEnabled': adbEnabled!,
    if (developmentSettingsEnabled != null)
      'developmentSettingsEnabled': developmentSettingsEnabled!,
    if (encryptionStatus != null) 'encryptionStatus': encryptionStatus!,
    if (isDeviceSecure != null) 'isDeviceSecure': isDeviceSecure!,
    if (isEncrypted != null) 'isEncrypted': isEncrypted!,
    if (unknownSourcesEnabled != null)
      'unknownSourcesEnabled': unknownSourcesEnabled!,
    if (verifyAppsEnabled != null) 'verifyAppsEnabled': verifyAppsEnabled!,
  };
}

/// Device display information.
class Display {
  /// Display density expressed as dots-per-inch.
  core.int? density;

  /// Unique display id.
  core.int? displayId;

  /// Display height in pixels.
  core.int? height;

  /// Name of the display.
  core.String? name;

  /// Refresh rate of the display in frames per second.
  core.int? refreshRate;

  /// State of the display.
  /// Possible string values are:
  /// - "DISPLAY_STATE_UNSPECIFIED" : This value is disallowed.
  /// - "OFF" : Display is off.
  /// - "ON" : Display is on.
  /// - "DOZE" : Display is dozing in a low power state
  /// - "SUSPENDED" : Display is dozing in a suspended low power state.
  core.String? state;

  /// Display width in pixels.
  core.int? width;

  Display({
    this.density,
    this.displayId,
    this.height,
    this.name,
    this.refreshRate,
    this.state,
    this.width,
  });

  Display.fromJson(core.Map json_)
    : this(
        density: json_['density'] as core.int?,
        displayId: json_['displayId'] as core.int?,
        height: json_['height'] as core.int?,
        name: json_['name'] as core.String?,
        refreshRate: json_['refreshRate'] as core.int?,
        state: json_['state'] as core.String?,
        width: json_['width'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (density != null) 'density': density!,
    if (displayId != null) 'displayId': displayId!,
    if (height != null) 'height': height!,
    if (name != null) 'name': name!,
    if (refreshRate != null) 'refreshRate': refreshRate!,
    if (state != null) 'state': state!,
    if (width != null) 'width': width!,
  };
}

/// Controls for the display settings.
class DisplaySettings {
  /// Controls the screen brightness settings.
  ///
  /// Optional.
  ScreenBrightnessSettings? screenBrightnessSettings;

  /// Controls the screen timeout settings.
  ///
  /// Optional.
  ScreenTimeoutSettings? screenTimeoutSettings;

  DisplaySettings({this.screenBrightnessSettings, this.screenTimeoutSettings});

  DisplaySettings.fromJson(core.Map json_)
    : this(
        screenBrightnessSettings:
            json_.containsKey('screenBrightnessSettings')
                ? ScreenBrightnessSettings.fromJson(
                  json_['screenBrightnessSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        screenTimeoutSettings:
            json_.containsKey('screenTimeoutSettings')
                ? ScreenTimeoutSettings.fromJson(
                  json_['screenTimeoutSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (screenBrightnessSettings != null)
      'screenBrightnessSettings': screenBrightnessSettings!,
    if (screenTimeoutSettings != null)
      'screenTimeoutSettings': screenTimeoutSettings!,
  };
}

/// Information related to whether this device was migrated from being managed
/// by another Device Policy Controller (DPC).
class DpcMigrationInfo {
  /// If this device was migrated from another DPC, the additionalData field of
  /// the migration token is populated here.
  ///
  /// Output only.
  core.String? additionalData;

  /// If this device was migrated from another DPC, this is its package name.
  ///
  /// Not populated otherwise.
  ///
  /// Output only.
  core.String? previousDpc;

  DpcMigrationInfo({this.additionalData, this.previousDpc});

  DpcMigrationInfo.fromJson(core.Map json_)
    : this(
        additionalData: json_['additionalData'] as core.String?,
        previousDpc: json_['previousDpc'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalData != null) 'additionalData': additionalData!,
    if (previousDpc != null) 'previousDpc': previousDpc!,
  };
}

/// EID information for each eUICC chip.
class Eid {
  /// The EID
  ///
  /// Output only.
  core.String? eid;

  Eid({this.eid});

  Eid.fromJson(core.Map json_) : this(eid: json_['eid'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (eid != null) 'eid': eid!,
  };
}

/// Information related to the EIDs of the device.
class EidInfo {
  /// EID information for each eUICC chip.
  ///
  /// Output only.
  core.List<Eid>? eids;

  EidInfo({this.eids});

  EidInfo.fromJson(core.Map json_)
    : this(
        eids:
            (json_['eids'] as core.List?)
                ?.map(
                  (value) => Eid.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eids != null) 'eids': eids!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// An enrollment token.
class EnrollmentToken {
  /// Optional, arbitrary data associated with the enrollment token.
  ///
  /// This could contain, for example, the ID of an org unit the device is
  /// assigned to after enrollment. After a device enrolls with the token, this
  /// data will be exposed in the enrollment_token_data field of the Device
  /// resource. The data must be 1024 characters or less; otherwise, the
  /// creation request will fail.
  core.String? additionalData;

  /// Controls whether personal usage is allowed on a device provisioned with
  /// this enrollment token.For company-owned devices: Enabling personal usage
  /// allows the user to set up a work profile on the device.
  ///
  /// Disabling personal usage requires the user provision the device as a fully
  /// managed device.For personally-owned devices: Enabling personal usage
  /// allows the user to set up a work profile on the device. Disabling personal
  /// usage will prevent the device from provisioning. Personal usage cannot be
  /// disabled on personally-owned device.
  /// Possible string values are:
  /// - "ALLOW_PERSONAL_USAGE_UNSPECIFIED" : Personal usage restriction is not
  /// specified
  /// - "PERSONAL_USAGE_ALLOWED" : Personal usage is allowed
  /// - "PERSONAL_USAGE_DISALLOWED" : Personal usage is disallowed
  /// - "PERSONAL_USAGE_DISALLOWED_USERLESS" : Device is not associated with a
  /// single user, and thus both personal usage and corporate identity
  /// authentication are not expected. Important: This setting is mandatory for
  /// dedicated device enrollment and it is a breaking change. This change needs
  /// to be implemented before January 2025.For additional details see the
  /// dedicated device provisioning guide
  /// (https://developers.google.com/android/management/provision-device#company-owned_devices_for_work_use_only).
  core.String? allowPersonalUsage;

  /// The length of time the enrollment token is valid, ranging from 1 minute to
  /// Durations.MAX_VALUE
  /// (https://developers.google.com/protocol-buffers/docs/reference/java/com/google/protobuf/util/Durations.html#MAX_VALUE),
  /// approximately 10,000 years.
  ///
  /// If not specified, the default duration is 1 hour. Please note that if
  /// requested duration causes the resulting expiration_timestamp to exceed
  /// Timestamps.MAX_VALUE
  /// (https://developers.google.com/protocol-buffers/docs/reference/java/com/google/protobuf/util/Timestamps.html#MAX_VALUE),
  /// then expiration_timestamp is coerced to Timestamps.MAX_VALUE.
  core.String? duration;

  /// The expiration time of the token.
  ///
  /// This is a read-only field generated by the server.
  core.String? expirationTimestamp;

  /// The name of the enrollment token, which is generated by the server during
  /// creation, in the form
  /// enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.
  core.String? name;

  /// Whether the enrollment token is for one time use only.
  ///
  /// If the flag is set to true, only one device can use it for registration.
  core.bool? oneTimeOnly;

  /// The name of the policy initially applied to the enrolled device, in the
  /// form enterprises/{enterpriseId}/policies/{policyId}.
  ///
  /// If not specified, the policy_name for the device’s user is applied. If
  /// user_name is also not specified,
  /// enterprises/{enterpriseId}/policies/default is applied by default. When
  /// updating this field, you can specify only the policyId as long as the
  /// policyId doesn’t contain any slashes. The rest of the policy name will be
  /// inferred.
  core.String? policyName;

  /// A JSON string whose UTF-8 representation can be used to generate a QR code
  /// to enroll a device with this enrollment token.
  ///
  /// To enroll a device using NFC, the NFC record must contain a serialized
  /// java.util.Properties representation of the properties in the JSON.
  core.String? qrCode;

  /// This field is deprecated and the value is ignored.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  User? user;

  /// The token value that's passed to the device and authorizes the device to
  /// enroll.
  ///
  /// This is a read-only field generated by the server.
  core.String? value;

  EnrollmentToken({
    this.additionalData,
    this.allowPersonalUsage,
    this.duration,
    this.expirationTimestamp,
    this.name,
    this.oneTimeOnly,
    this.policyName,
    this.qrCode,
    this.user,
    this.value,
  });

  EnrollmentToken.fromJson(core.Map json_)
    : this(
        additionalData: json_['additionalData'] as core.String?,
        allowPersonalUsage: json_['allowPersonalUsage'] as core.String?,
        duration: json_['duration'] as core.String?,
        expirationTimestamp: json_['expirationTimestamp'] as core.String?,
        name: json_['name'] as core.String?,
        oneTimeOnly: json_['oneTimeOnly'] as core.bool?,
        policyName: json_['policyName'] as core.String?,
        qrCode: json_['qrCode'] as core.String?,
        user:
            json_.containsKey('user')
                ? User.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalData != null) 'additionalData': additionalData!,
    if (allowPersonalUsage != null) 'allowPersonalUsage': allowPersonalUsage!,
    if (duration != null) 'duration': duration!,
    if (expirationTimestamp != null)
      'expirationTimestamp': expirationTimestamp!,
    if (name != null) 'name': name!,
    if (oneTimeOnly != null) 'oneTimeOnly': oneTimeOnly!,
    if (policyName != null) 'policyName': policyName!,
    if (qrCode != null) 'qrCode': qrCode!,
    if (user != null) 'user': user!,
    if (value != null) 'value': value!,
  };
}

/// The configuration applied to an enterprise.
class Enterprise {
  /// Deprecated and unused.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? appAutoApprovalEnabled;

  /// The enterprise contact info of an EMM-managed enterprise.
  ContactInfo? contactInfo;

  /// The types of Google Pub/Sub notifications enabled for the enterprise.
  core.List<core.String>? enabledNotificationTypes;

  /// The name of the enterprise displayed to users.
  ///
  /// This field has a maximum length of 100 characters.
  core.String? enterpriseDisplayName;

  /// The type of the enterprise.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENTERPRISE_TYPE_UNSPECIFIED" : This value is not used.
  /// - "MANAGED_GOOGLE_DOMAIN" : The enterprise belongs to a managed Google
  /// domain
  /// (https://developers.google.com/android/work/terminology#managed_google_domain).
  /// - "MANAGED_GOOGLE_PLAY_ACCOUNTS_ENTERPRISE" : The enterprise is a managed
  /// Google Play Accounts enterprise
  /// (https://developers.google.com/android/work/terminology#managed_google_play_accounts_enterprise).
  core.String? enterpriseType;

  /// Settings for Google-provided user authentication.
  GoogleAuthenticationSettings? googleAuthenticationSettings;

  /// An image displayed as a logo during device provisioning.
  ///
  /// Supported types are: image/bmp, image/gif, image/x-ico, image/jpeg,
  /// image/png, image/webp, image/vnd.wap.wbmp, image/x-adobe-dng.
  ExternalData? logo;

  /// The type of managed Google domain.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MANAGED_GOOGLE_DOMAIN_TYPE_UNSPECIFIED" : The managed Google domain
  /// type is not specified.
  /// - "TYPE_TEAM" : The managed Google domain is an email-verified team.
  /// - "TYPE_DOMAIN" : The managed Google domain is domain-verified.
  core.String? managedGoogleDomainType;

  /// The type of a managed Google Play Accounts enterprise.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MANAGED_GOOGLE_PLAY_ACCOUNTS_ENTERPRISE_TYPE_UNSPECIFIED" : The managed
  /// Google Play Accounts enterprise type is not specified.
  /// - "CUSTOMER_MANAGED" : The enterprise is customer-managed
  /// - "EMM_MANAGED" : The enterprise is EMM-managed (deprecated).
  core.String? managedGooglePlayAccountsEnterpriseType;

  /// The name of the enterprise which is generated by the server during
  /// creation, in the form enterprises/{enterpriseId}.
  core.String? name;

  /// A color in RGB format that indicates the predominant color to display in
  /// the device management app UI.
  ///
  /// The color components are stored as follows: (red \<\< 16) | (green \<\< 8)
  /// | blue, where the value of each component is between 0 and 255, inclusive.
  core.int? primaryColor;

  /// The topic which Pub/Sub notifications are published to, in the form
  /// projects/{project}/topics/{topic}.
  ///
  /// This field is only required if Pub/Sub notifications are enabled.
  core.String? pubsubTopic;

  /// Sign-in details of the enterprise.
  core.List<SigninDetail>? signinDetails;

  /// Terms and conditions that must be accepted when provisioning a device for
  /// this enterprise.
  ///
  /// A page of terms is generated for each value in this list.
  core.List<TermsAndConditions>? termsAndConditions;

  Enterprise({
    this.appAutoApprovalEnabled,
    this.contactInfo,
    this.enabledNotificationTypes,
    this.enterpriseDisplayName,
    this.enterpriseType,
    this.googleAuthenticationSettings,
    this.logo,
    this.managedGoogleDomainType,
    this.managedGooglePlayAccountsEnterpriseType,
    this.name,
    this.primaryColor,
    this.pubsubTopic,
    this.signinDetails,
    this.termsAndConditions,
  });

  Enterprise.fromJson(core.Map json_)
    : this(
        appAutoApprovalEnabled: json_['appAutoApprovalEnabled'] as core.bool?,
        contactInfo:
            json_.containsKey('contactInfo')
                ? ContactInfo.fromJson(
                  json_['contactInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        enabledNotificationTypes:
            (json_['enabledNotificationTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        enterpriseDisplayName: json_['enterpriseDisplayName'] as core.String?,
        enterpriseType: json_['enterpriseType'] as core.String?,
        googleAuthenticationSettings:
            json_.containsKey('googleAuthenticationSettings')
                ? GoogleAuthenticationSettings.fromJson(
                  json_['googleAuthenticationSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        logo:
            json_.containsKey('logo')
                ? ExternalData.fromJson(
                  json_['logo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        managedGoogleDomainType:
            json_['managedGoogleDomainType'] as core.String?,
        managedGooglePlayAccountsEnterpriseType:
            json_['managedGooglePlayAccountsEnterpriseType'] as core.String?,
        name: json_['name'] as core.String?,
        primaryColor: json_['primaryColor'] as core.int?,
        pubsubTopic: json_['pubsubTopic'] as core.String?,
        signinDetails:
            (json_['signinDetails'] as core.List?)
                ?.map(
                  (value) => SigninDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        termsAndConditions:
            (json_['termsAndConditions'] as core.List?)
                ?.map(
                  (value) => TermsAndConditions.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appAutoApprovalEnabled != null)
      'appAutoApprovalEnabled': appAutoApprovalEnabled!,
    if (contactInfo != null) 'contactInfo': contactInfo!,
    if (enabledNotificationTypes != null)
      'enabledNotificationTypes': enabledNotificationTypes!,
    if (enterpriseDisplayName != null)
      'enterpriseDisplayName': enterpriseDisplayName!,
    if (enterpriseType != null) 'enterpriseType': enterpriseType!,
    if (googleAuthenticationSettings != null)
      'googleAuthenticationSettings': googleAuthenticationSettings!,
    if (logo != null) 'logo': logo!,
    if (managedGoogleDomainType != null)
      'managedGoogleDomainType': managedGoogleDomainType!,
    if (managedGooglePlayAccountsEnterpriseType != null)
      'managedGooglePlayAccountsEnterpriseType':
          managedGooglePlayAccountsEnterpriseType!,
    if (name != null) 'name': name!,
    if (primaryColor != null) 'primaryColor': primaryColor!,
    if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
    if (signinDetails != null) 'signinDetails': signinDetails!,
    if (termsAndConditions != null) 'termsAndConditions': termsAndConditions!,
  };
}

/// Status and error details (if present) of an ADD_ESIM or REMOVE_ESIM command.
class EsimCommandStatus {
  /// Information about the eSIM added or removed.
  ///
  /// This is populated only when the eSIM operation status is SUCCESS.
  ///
  /// Output only.
  EsimInfo? esimInfo;

  /// Details of the error if the status is set to INTERNAL_ERROR.
  ///
  /// Output only.
  InternalErrorDetails? internalErrorDetails;

  /// Status of an ADD_ESIM or REMOVE_ESIM command.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified. This value is not used.
  /// - "SUCCESS" : The eSIM operation was successfully performed on the device.
  /// - "IN_PROGRESS" : The eSIM operation is in progress.
  /// - "PENDING_USER_ACTION" : The user needs to take an action for the eSIM
  /// operation to proceed.
  /// - "ERROR_SETUP_IN_PROGRESS" : The eSIM operation cannot be executed when
  /// setup is in progress.
  /// - "ERROR_USER_DENIED" : The user has denied the eSIM operation.
  /// - "INTERNAL_ERROR" : An error has occurred while trying to add or remove
  /// the eSIM on the device, see internal_error_details.
  /// - "ERROR_ICC_ID_NOT_FOUND" : For a REMOVE_ESIM command, the iccId of the
  /// eSIM to be removed was not found on the device. This could either mean the
  /// eSIM does not belong to the enterprise or the eSIM corresponding to the
  /// iccId is not present on the device.
  /// - "ERROR_MULTIPLE_ACTIVE_ESIMS_NO_AVAILABLE_SLOT" : The ADD_ESIM command
  /// failed when attempting to add a new eSIM with its activation state set to
  /// ACTIVATED since multiple eSIM slots on the device contain active eSIM
  /// profiles and there is no free eSIM slot available. To resolve this, the
  /// new eSIM can be added with its activation state as NOT_ACTIVATED for later
  /// manual activation, or the user must first deactivate an existing active
  /// eSIM for the operation to proceed.
  core.String? status;

  EsimCommandStatus({this.esimInfo, this.internalErrorDetails, this.status});

  EsimCommandStatus.fromJson(core.Map json_)
    : this(
        esimInfo:
            json_.containsKey('esimInfo')
                ? EsimInfo.fromJson(
                  json_['esimInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        internalErrorDetails:
            json_.containsKey('internalErrorDetails')
                ? InternalErrorDetails.fromJson(
                  json_['internalErrorDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (esimInfo != null) 'esimInfo': esimInfo!,
    if (internalErrorDetails != null)
      'internalErrorDetails': internalErrorDetails!,
    if (status != null) 'status': status!,
  };
}

/// Details of the eSIM added or removed.
class EsimInfo {
  /// ICC ID of the eSIM.
  ///
  /// Output only.
  core.String? iccId;

  EsimInfo({this.iccId});

  EsimInfo.fromJson(core.Map json_)
    : this(iccId: json_['iccId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (iccId != null) 'iccId': iccId!,
  };
}

/// Information related to the eUICC chip.
class EuiccChipInfo {
  /// The Embedded Identity Document (EID) that identifies the eUICC chip for
  /// each eUICC chip on the device.
  ///
  /// This is available on company owned devices running Android 13 and above.
  ///
  /// Output only.
  core.String? eid;

  EuiccChipInfo({this.eid});

  EuiccChipInfo.fromJson(core.Map json_)
    : this(eid: json_['eid'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (eid != null) 'eid': eid!,
  };
}

/// Configuration to enable an app as an extension app, with the capability of
/// interacting with Android Device Policy offline.
///
/// For Android versions 11 and above, extension apps are exempt from battery
/// restrictions so will not be placed into the restricted App Standby Bucket
/// (https://developer.android.com/topic/performance/appstandby#restricted-bucket).
/// Extensions apps are also protected against users clearing their data or
/// force-closing the application, although admins can continue to use the clear
/// app data command on extension apps if needed for Android 11 and above.
class ExtensionConfig {
  /// Fully qualified class name of the receiver service class for Android
  /// Device Policy to notify the extension app of any local command status
  /// updates.
  ///
  /// The service must be exported in the extension app's AndroidManifest.xml
  /// and extend NotificationReceiverService
  /// (https://developers.google.com/android/management/reference/amapi/com/google/android/managementapi/notification/NotificationReceiverService)
  /// (see Integrate with the AMAPI SDK
  /// (https://developers.google.com/android/management/sdk-integration) guide
  /// for more details).
  core.String? notificationReceiver;

  /// Hex-encoded SHA-256 hashes of the signing key certificates of the
  /// extension app.
  ///
  /// Only hexadecimal string representations of 64 characters are valid.The
  /// signing key certificate fingerprints are always obtained from the Play
  /// Store and this field is used to provide additional signing key certificate
  /// fingerprints. However, if the application is not available on the Play
  /// Store, this field needs to be set. A NonComplianceDetail with
  /// INVALID_VALUE is reported if this field is not set when the application is
  /// not available on the Play Store.The signing key certificate fingerprint of
  /// the extension app on the device must match one of the signing key
  /// certificate fingerprints obtained from the Play Store or the ones provided
  /// in this field for the app to be able to communicate with Android Device
  /// Policy.In production use cases, it is recommended to leave this empty.
  core.List<core.String>? signingKeyFingerprintsSha256;

  ExtensionConfig({
    this.notificationReceiver,
    this.signingKeyFingerprintsSha256,
  });

  ExtensionConfig.fromJson(core.Map json_)
    : this(
        notificationReceiver: json_['notificationReceiver'] as core.String?,
        signingKeyFingerprintsSha256:
            (json_['signingKeyFingerprintsSha256'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (notificationReceiver != null)
      'notificationReceiver': notificationReceiver!,
    if (signingKeyFingerprintsSha256 != null)
      'signingKeyFingerprintsSha256': signingKeyFingerprintsSha256!,
  };
}

/// Data hosted at an external location.
///
/// The data is to be downloaded by Android Device Policy and verified against
/// the hash.
class ExternalData {
  /// The base-64 encoded SHA-256 hash of the content hosted at url.
  ///
  /// If the content doesn't match this hash, Android Device Policy won't use
  /// the data.
  core.String? sha256Hash;

  /// The absolute URL to the data, which must use either the http or https
  /// scheme.
  ///
  /// Android Device Policy doesn't provide any credentials in the GET request,
  /// so the URL must be publicly accessible. Including a long, random component
  /// in the URL may be used to prevent attackers from discovering the URL.
  core.String? url;

  ExternalData({this.sha256Hash, this.url});

  ExternalData.fromJson(core.Map json_)
    : this(
        sha256Hash: json_['sha256Hash'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sha256Hash != null) 'sha256Hash': sha256Hash!,
    if (url != null) 'url': url!,
  };
}

/// A system freeze period.
///
/// When a device’s clock is within the freeze period, all incoming system
/// updates (including security patches) are blocked and won’t be installed.When
/// the device is outside any set freeze periods, the normal policy behavior
/// (automatic, windowed, or postponed) applies.Leap years are ignored in freeze
/// period calculations, in particular: If Feb. 29th is set as the start or end
/// date of a freeze period, the freeze period will start or end on Feb. 28th
/// instead. When a device’s system clock reads Feb. 29th, it’s treated as Feb.
/// 28th. When calculating the number of days in a freeze period or the time
/// between two freeze periods, Feb. 29th is ignored and not counted as a
/// day.Note: For Freeze Periods to take effect, SystemUpdateType cannot be
/// specified as SYSTEM_UPDATE_TYPE_UNSPECIFIED, because freeze periods require
/// a defined policy to be specified.
class FreezePeriod {
  /// The end date (inclusive) of the freeze period.
  ///
  /// Must be no later than 90 days from the start date. If the end date is
  /// earlier than the start date, the freeze period is considered wrapping
  /// year-end. Note: day and month must be set. year should not be set as it is
  /// not used. For example, {"month": 1,"date": 30}.
  Date? endDate;

  /// The start date (inclusive) of the freeze period.
  ///
  /// Note: day and month must be set. year should not be set as it is not used.
  /// For example, {"month": 1,"date": 30}.
  Date? startDate;

  FreezePeriod({this.endDate, this.startDate});

  FreezePeriod.fromJson(core.Map json_)
    : this(
        endDate:
            json_.containsKey('endDate')
                ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startDate:
            json_.containsKey('startDate')
                ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endDate != null) 'endDate': endDate!,
    if (startDate != null) 'startDate': startDate!,
  };
}

/// Request message for generating a URL to upgrade an existing managed Google
/// Play Accounts enterprise to a managed Google domain.Note: This feature is
/// not generally available.
class GenerateEnterpriseUpgradeUrlRequest {
  /// Email address used to prefill the admin field of the enterprise signup
  /// form as part of the upgrade process.
  ///
  /// This value is a hint only and can be altered by the user. Personal email
  /// addresses are not allowed. If allowedDomains is non-empty then this must
  /// belong to one of the allowedDomains.
  ///
  /// Optional.
  core.String? adminEmail;

  /// A list of domains that are permitted for the admin email.
  ///
  /// The IT admin cannot enter an email address with a domain name that is not
  /// in this list. Subdomains of domains in this list are not allowed but can
  /// be allowed by adding a second entry which has *. prefixed to the domain
  /// name (e.g. *.example.com). If the field is not present or is an empty list
  /// then the IT admin is free to use any valid domain name. Personal email
  /// domains are not allowed.
  ///
  /// Optional.
  core.List<core.String>? allowedDomains;

  GenerateEnterpriseUpgradeUrlRequest({this.adminEmail, this.allowedDomains});

  GenerateEnterpriseUpgradeUrlRequest.fromJson(core.Map json_)
    : this(
        adminEmail: json_['adminEmail'] as core.String?,
        allowedDomains:
            (json_['allowedDomains'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adminEmail != null) 'adminEmail': adminEmail!,
    if (allowedDomains != null) 'allowedDomains': allowedDomains!,
  };
}

/// Response message for generating a URL to upgrade an existing managed Google
/// Play Accounts enterprise to a managed Google domain.Note: This feature is
/// not generally available.
typedef GenerateEnterpriseUpgradeUrlResponse =
    $GenerateEnterpriseUpgradeUrlResponse;

/// Contains settings for Google-provided user authentication.
class GoogleAuthenticationSettings {
  /// Whether users need to be authenticated by Google during the enrollment
  /// process.
  ///
  /// IT admin can specify if Google authentication is enabled for the
  /// enterprise for knowledge worker devices. This value can be set only via
  /// the Google Admin Console. Google authentication can be used with
  /// signin_url In the case where Google authentication is required and a
  /// signin_url is specified, Google authentication will be launched before
  /// signin_url.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GOOGLE_AUTHENTICATION_REQUIRED_UNSPECIFIED" : This value is not used.
  /// - "NOT_REQUIRED" : Google authentication is not required.
  /// - "REQUIRED" : User is required to be successfully authenticated by
  /// Google.
  core.String? googleAuthenticationRequired;

  GoogleAuthenticationSettings({this.googleAuthenticationRequired});

  GoogleAuthenticationSettings.fromJson(core.Map json_)
    : this(
        googleAuthenticationRequired:
            json_['googleAuthenticationRequired'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (googleAuthenticationRequired != null)
      'googleAuthenticationRequired': googleAuthenticationRequired!,
  };
}

/// Information about device hardware.
///
/// The fields related to temperature thresholds are only available if
/// hardwareStatusEnabled is true in the device's policy.
class HardwareInfo {
  /// Battery shutdown temperature thresholds in Celsius for each battery on the
  /// device.
  core.List<core.double>? batteryShutdownTemperatures;

  /// Battery throttling temperature thresholds in Celsius for each battery on
  /// the device.
  core.List<core.double>? batteryThrottlingTemperatures;

  /// Brand of the device.
  ///
  /// For example, Google.
  core.String? brand;

  /// CPU shutdown temperature thresholds in Celsius for each CPU on the device.
  core.List<core.double>? cpuShutdownTemperatures;

  /// CPU throttling temperature thresholds in Celsius for each CPU on the
  /// device.
  core.List<core.double>? cpuThrottlingTemperatures;

  /// Baseband version.
  ///
  /// For example, MDM9625_104662.22.05.34p.
  core.String? deviceBasebandVersion;

  /// ID that uniquely identifies a personally-owned device in a particular
  /// organization.
  ///
  /// On the same physical device when enrolled with the same organization, this
  /// ID persists across setups and even factory resets. This ID is available on
  /// personally-owned devices with a work profile on devices running Android 12
  /// and above.
  ///
  /// Output only.
  core.String? enterpriseSpecificId;

  /// Information related to the eUICC chip.
  ///
  /// Output only.
  core.List<EuiccChipInfo>? euiccChipInfo;

  /// GPU shutdown temperature thresholds in Celsius for each GPU on the device.
  core.List<core.double>? gpuShutdownTemperatures;

  /// GPU throttling temperature thresholds in Celsius for each GPU on the
  /// device.
  core.List<core.double>? gpuThrottlingTemperatures;

  /// Name of the hardware.
  ///
  /// For example, Angler.
  core.String? hardware;

  /// Manufacturer.
  ///
  /// For example, Motorola.
  core.String? manufacturer;

  /// The model of the device.
  ///
  /// For example, Asus Nexus 7.
  core.String? model;

  /// The device serial number.
  core.String? serialNumber;

  /// Device skin shutdown temperature thresholds in Celsius.
  core.List<core.double>? skinShutdownTemperatures;

  /// Device skin throttling temperature thresholds in Celsius.
  core.List<core.double>? skinThrottlingTemperatures;

  HardwareInfo({
    this.batteryShutdownTemperatures,
    this.batteryThrottlingTemperatures,
    this.brand,
    this.cpuShutdownTemperatures,
    this.cpuThrottlingTemperatures,
    this.deviceBasebandVersion,
    this.enterpriseSpecificId,
    this.euiccChipInfo,
    this.gpuShutdownTemperatures,
    this.gpuThrottlingTemperatures,
    this.hardware,
    this.manufacturer,
    this.model,
    this.serialNumber,
    this.skinShutdownTemperatures,
    this.skinThrottlingTemperatures,
  });

  HardwareInfo.fromJson(core.Map json_)
    : this(
        batteryShutdownTemperatures:
            (json_['batteryShutdownTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        batteryThrottlingTemperatures:
            (json_['batteryThrottlingTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        brand: json_['brand'] as core.String?,
        cpuShutdownTemperatures:
            (json_['cpuShutdownTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        cpuThrottlingTemperatures:
            (json_['cpuThrottlingTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        deviceBasebandVersion: json_['deviceBasebandVersion'] as core.String?,
        enterpriseSpecificId: json_['enterpriseSpecificId'] as core.String?,
        euiccChipInfo:
            (json_['euiccChipInfo'] as core.List?)
                ?.map(
                  (value) => EuiccChipInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        gpuShutdownTemperatures:
            (json_['gpuShutdownTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        gpuThrottlingTemperatures:
            (json_['gpuThrottlingTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        hardware: json_['hardware'] as core.String?,
        manufacturer: json_['manufacturer'] as core.String?,
        model: json_['model'] as core.String?,
        serialNumber: json_['serialNumber'] as core.String?,
        skinShutdownTemperatures:
            (json_['skinShutdownTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        skinThrottlingTemperatures:
            (json_['skinThrottlingTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batteryShutdownTemperatures != null)
      'batteryShutdownTemperatures': batteryShutdownTemperatures!,
    if (batteryThrottlingTemperatures != null)
      'batteryThrottlingTemperatures': batteryThrottlingTemperatures!,
    if (brand != null) 'brand': brand!,
    if (cpuShutdownTemperatures != null)
      'cpuShutdownTemperatures': cpuShutdownTemperatures!,
    if (cpuThrottlingTemperatures != null)
      'cpuThrottlingTemperatures': cpuThrottlingTemperatures!,
    if (deviceBasebandVersion != null)
      'deviceBasebandVersion': deviceBasebandVersion!,
    if (enterpriseSpecificId != null)
      'enterpriseSpecificId': enterpriseSpecificId!,
    if (euiccChipInfo != null) 'euiccChipInfo': euiccChipInfo!,
    if (gpuShutdownTemperatures != null)
      'gpuShutdownTemperatures': gpuShutdownTemperatures!,
    if (gpuThrottlingTemperatures != null)
      'gpuThrottlingTemperatures': gpuThrottlingTemperatures!,
    if (hardware != null) 'hardware': hardware!,
    if (manufacturer != null) 'manufacturer': manufacturer!,
    if (model != null) 'model': model!,
    if (serialNumber != null) 'serialNumber': serialNumber!,
    if (skinShutdownTemperatures != null)
      'skinShutdownTemperatures': skinShutdownTemperatures!,
    if (skinThrottlingTemperatures != null)
      'skinThrottlingTemperatures': skinThrottlingTemperatures!,
  };
}

/// Hardware status.
///
/// Temperatures may be compared to the temperature thresholds available in
/// hardwareInfo to determine hardware health.
class HardwareStatus {
  /// Current battery temperatures in Celsius for each battery on the device.
  core.List<core.double>? batteryTemperatures;

  /// Current CPU temperatures in Celsius for each CPU on the device.
  core.List<core.double>? cpuTemperatures;

  /// CPU usages in percentage for each core available on the device.
  ///
  /// Usage is 0 for each unplugged core. Empty array implies that CPU usage is
  /// not supported in the system.
  core.List<core.double>? cpuUsages;

  /// The time the measurements were taken.
  core.String? createTime;

  /// Fan speeds in RPM for each fan on the device.
  ///
  /// Empty array means that there are no fans or fan speed is not supported on
  /// the system.
  core.List<core.double>? fanSpeeds;

  /// Current GPU temperatures in Celsius for each GPU on the device.
  core.List<core.double>? gpuTemperatures;

  /// Current device skin temperatures in Celsius.
  core.List<core.double>? skinTemperatures;

  HardwareStatus({
    this.batteryTemperatures,
    this.cpuTemperatures,
    this.cpuUsages,
    this.createTime,
    this.fanSpeeds,
    this.gpuTemperatures,
    this.skinTemperatures,
  });

  HardwareStatus.fromJson(core.Map json_)
    : this(
        batteryTemperatures:
            (json_['batteryTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        cpuTemperatures:
            (json_['cpuTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        cpuUsages:
            (json_['cpuUsages'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        createTime: json_['createTime'] as core.String?,
        fanSpeeds:
            (json_['fanSpeeds'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        gpuTemperatures:
            (json_['gpuTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        skinTemperatures:
            (json_['skinTemperatures'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batteryTemperatures != null)
      'batteryTemperatures': batteryTemperatures!,
    if (cpuTemperatures != null) 'cpuTemperatures': cpuTemperatures!,
    if (cpuUsages != null) 'cpuUsages': cpuUsages!,
    if (createTime != null) 'createTime': createTime!,
    if (fanSpeeds != null) 'fanSpeeds': fanSpeeds!,
    if (gpuTemperatures != null) 'gpuTemperatures': gpuTemperatures!,
    if (skinTemperatures != null) 'skinTemperatures': skinTemperatures!,
  };
}

/// Amongst apps with InstallType set to: FORCE_INSTALLED PREINSTALLEDthis
/// defines a set of restrictions for the app installation.
///
/// At least one of the fields must be set. When multiple fields are set, then
/// all the constraints need to be satisfied for the app to be installed.
class InstallConstraint {
  /// Charging constraint.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CHARGING_CONSTRAINT_UNSPECIFIED" : Unspecified. Default to
  /// CHARGING_NOT_REQUIRED.
  /// - "CHARGING_NOT_REQUIRED" : Device doesn't have to be charging.
  /// - "INSTALL_ONLY_WHEN_CHARGING" : Device has to be charging.
  core.String? chargingConstraint;

  /// Device idle constraint.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DEVICE_IDLE_CONSTRAINT_UNSPECIFIED" : Unspecified. Default to
  /// DEVICE_IDLE_NOT_REQUIRED.
  /// - "DEVICE_IDLE_NOT_REQUIRED" : Device doesn't have to be idle, app can be
  /// installed while the user is interacting with the device.
  /// - "INSTALL_ONLY_WHEN_DEVICE_IDLE" : Device has to be idle.
  core.String? deviceIdleConstraint;

  /// Network type constraint.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "NETWORK_TYPE_CONSTRAINT_UNSPECIFIED" : Unspecified. Default to
  /// INSTALL_ON_ANY_NETWORK.
  /// - "INSTALL_ON_ANY_NETWORK" : Any active networks (Wi-Fi, cellular, etc.).
  /// - "INSTALL_ONLY_ON_UNMETERED_NETWORK" : Any unmetered network (e.g.
  /// Wi-FI).
  core.String? networkTypeConstraint;

  InstallConstraint({
    this.chargingConstraint,
    this.deviceIdleConstraint,
    this.networkTypeConstraint,
  });

  InstallConstraint.fromJson(core.Map json_)
    : this(
        chargingConstraint: json_['chargingConstraint'] as core.String?,
        deviceIdleConstraint: json_['deviceIdleConstraint'] as core.String?,
        networkTypeConstraint: json_['networkTypeConstraint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chargingConstraint != null) 'chargingConstraint': chargingConstraint!,
    if (deviceIdleConstraint != null)
      'deviceIdleConstraint': deviceIdleConstraint!,
    if (networkTypeConstraint != null)
      'networkTypeConstraint': networkTypeConstraint!,
  };
}

/// Internal error details if present for the ADD_ESIM or REMOVE_ESIM command.
class InternalErrorDetails {
  /// Integer representation of the error code as specified here
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE).
  ///
  /// See also, OPERATION_SMDX_SUBJECT_REASON_CODE. See error_code_detail for
  /// more details.
  ///
  /// Output only.
  core.String? errorCode;

  /// The error code detail corresponding to the error_code.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ERROR_CODE_DETAIL_UNSPECIFIED" : Error code detail is unspecified. The
  /// error_code is not recognized by Android Management API. However, see
  /// error_code
  /// - "ERROR_TIME_OUT" : See EuiccManager.ERROR_TIME_OUT
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_TIME_OUT)
  /// for details.
  /// - "ERROR_EUICC_MISSING" : See EuiccManager.ERROR_EUICC_MISSING
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_EUICC_MISSING)
  /// for details.
  /// - "ERROR_UNSUPPORTED_VERSION" : See EuiccManager.ERROR_UNSUPPORTED_VERSION
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_UNSUPPORTED_VERSION)
  /// for details.
  /// - "ERROR_ADDRESS_MISSING" : See EuiccManager.ERROR_ADDRESS_MISSING
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_ADDRESS_MISSING)
  /// for details.
  /// - "ERROR_INVALID_CONFIRMATION_CODE" : See
  /// EuiccManager.ERROR_INVALID_CONFIRMATION_CODE
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_INVALID_CONFIRMATION_CODE)
  /// for details.
  /// - "ERROR_CERTIFICATE_ERROR" : See EuiccManager.ERROR_CERTIFICATE_ERROR
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_CERTIFICATE_ERROR)
  /// for details.
  /// - "ERROR_NO_PROFILES_AVAILABLE" : See
  /// EuiccManager.ERROR_NO_PROFILES_AVAILABLE
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_NO_PROFILES_AVAILABLE)
  /// for details.
  /// - "ERROR_CONNECTION_ERROR" : See EuiccManager.ERROR_CONNECTION_ERROR
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_CONNECTION_ERROR)
  /// for details.
  /// - "ERROR_INVALID_RESPONSE" : See EuiccManager.ERROR_INVALID_RESPONSE
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_INVALID_RESPONSE)
  /// for details.
  /// - "ERROR_CARRIER_LOCKED" : See EuiccManager.ERROR_CARRIER_LOCKED
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_CARRIER_LOCKED)
  /// for details.
  /// - "ERROR_DISALLOWED_BY_PPR" : See EuiccManager.ERROR_DISALLOWED_BY_PPR
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_DISALLOWED_BY_PPR)
  /// for details.
  /// - "ERROR_INVALID_ACTIVATION_CODE" : See
  /// EuiccManager.ERROR_INVALID_ACTIVATION_CODE
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_INVALID_ACTIVATION_CODE)
  /// for details.
  /// - "ERROR_INCOMPATIBLE_CARRIER" : See
  /// EuiccManager.ERROR_INCOMPATIBLE_CARRIER
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_INCOMPATIBLE_CARRIER)
  /// for details.
  /// - "ERROR_OPERATION_BUSY" : See EuiccManager.ERROR_OPERATION_BUSY
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_OPERATION_BUSY)
  /// for details.
  /// - "ERROR_INSTALL_PROFILE" : See EuiccManager.ERROR_INSTALL_PROFILE
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_INSTALL_PROFILE)
  /// for details.
  /// - "ERROR_EUICC_INSUFFICIENT_MEMORY" : See
  /// EuiccManager.ERROR_EUICC_INSUFFICIENT_MEMORY
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_EUICC_INSUFFICIENT_MEMORY)
  /// for details.
  /// - "ERROR_INVALID_PORT" : See EuiccManager.ERROR_INVALID_PORT
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_INVALID_PORT)
  /// for details.
  /// - "ERROR_SIM_MISSING" : See EuiccManager.ERROR_SIM_MISSING
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#ERROR_SIM_MISSING)
  /// for details.
  core.String? errorCodeDetail;

  /// Integer representation of the operation code as specified here
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE).
  ///
  /// See operation_code_detail for more details.
  ///
  /// Output only.
  core.String? operationCode;

  /// The operation code detail corresponding to the operation_code.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OPERATION_CODE_DETAIL_UNSPECIFIED" : Operation code detail is
  /// unspecified. The operation_code is not recognized by Android Management
  /// API. However, see operation_code.
  /// - "OPERATION_SYSTEM" : See EuiccManager.OPERATION_SYSTEM
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_SYSTEM)
  /// for details.
  /// - "OPERATION_SIM_SLOT" : See EuiccManager.OPERATION_SIM_SLOT
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_SIM_SLOT)
  /// for details.
  /// - "OPERATION_EUICC_CARD" : See EuiccManager.OPERATION_EUICC_CARD
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_EUICC_CARD)
  /// for details.
  /// - "OPERATION_SMDX" : See EuiccManager.OPERATION_SMDX
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_SMDX)
  /// for details.
  /// - "OPERATION_SWITCH" : See EuiccManager.OPERATION_SWITCH
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_SWITCH)
  /// for details.
  /// - "OPERATION_DOWNLOAD" : See EuiccManager.OPERATION_DOWNLOAD
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_DOWNLOAD)
  /// for details.
  /// - "OPERATION_METADATA" : See EuiccManager.OPERATION_METADATA
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_METADATA)
  /// for details.
  /// - "OPERATION_EUICC_GSMA" : See EuiccManager.OPERATION_EUICC_GSMA
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_EUICC_GSMA)
  /// for details.
  /// - "OPERATION_APDU" : See EuiccManager.OPERATION_APDU
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_APDU)
  /// for details.
  /// - "OPERATION_SMDX_SUBJECT_REASON_CODE" : See
  /// EuiccManager.OPERATION_SMDX_SUBJECT_REASON_CODE
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_SMDX_SUBJECT_REASON_CODE)
  /// for details. Note that, in this case, error_code is the least significant
  /// 3 bytes of the EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE)
  /// specifying the subject code and the reason code as indicated here
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_SMDX_SUBJECT_REASON_CODE).
  /// The most significant byte of the integer is zeroed out. For example, a
  /// Subject Code of 8.11.1 and a Reason Code of 5.1 is represented in
  /// error_code as 0000 0000 1000 1011 0001 0000 0101 0001 in binary, which is
  /// 9113681 in decimal.
  /// - "OPERATION_HTTP" : See EuiccManager.OPERATION_HTTP
  /// (https://developer.android.com/reference/android/telephony/euicc/EuiccManager#OPERATION_HTTP)
  /// for details.
  core.String? operationCodeDetail;

  InternalErrorDetails({
    this.errorCode,
    this.errorCodeDetail,
    this.operationCode,
    this.operationCodeDetail,
  });

  InternalErrorDetails.fromJson(core.Map json_)
    : this(
        errorCode: json_['errorCode'] as core.String?,
        errorCodeDetail: json_['errorCodeDetail'] as core.String?,
        operationCode: json_['operationCode'] as core.String?,
        operationCodeDetail: json_['operationCodeDetail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorCode != null) 'errorCode': errorCode!,
    if (errorCodeDetail != null) 'errorCodeDetail': errorCodeDetail!,
    if (operationCode != null) 'operationCode': operationCode!,
    if (operationCodeDetail != null)
      'operationCodeDetail': operationCodeDetail!,
  };
}

/// Keyed app state reported by the app.
class KeyedAppState {
  /// The creation time of the app state on the device.
  core.String? createTime;

  /// Optionally, a machine-readable value to be read by the EMM.
  ///
  /// For example, setting values that the admin can choose to query against in
  /// the EMM console (e.g. “notify me if the battery_warning data \< 10”).
  core.String? data;

  /// The key for the app state.
  ///
  /// Acts as a point of reference for what the app is providing state for. For
  /// example, when providing managed configuration feedback, this key could be
  /// the managed configuration key.
  core.String? key;

  /// The time the app state was most recently updated.
  core.String? lastUpdateTime;

  /// Optionally, a free-form message string to explain the app state.
  ///
  /// If the state was triggered by a particular value (e.g. a managed
  /// configuration value), it should be included in the message.
  core.String? message;

  /// The severity of the app state.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified severity level.
  /// - "INFO" : Information severity level.
  /// - "ERROR" : Error severity level. This should only be set for genuine
  /// error conditions that a management organization needs to take action to
  /// fix.
  core.String? severity;

  KeyedAppState({
    this.createTime,
    this.data,
    this.key,
    this.lastUpdateTime,
    this.message,
    this.severity,
  });

  KeyedAppState.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        data: json_['data'] as core.String?,
        key: json_['key'] as core.String?,
        lastUpdateTime: json_['lastUpdateTime'] as core.String?,
        message: json_['message'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (data != null) 'data': data!,
    if (key != null) 'key': key!,
    if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
    if (message != null) 'message': message!,
    if (severity != null) 'severity': severity!,
  };
}

/// Settings controlling the behavior of a device in kiosk mode.
///
/// To enable kiosk mode, set kioskCustomLauncherEnabled to true or specify an
/// app in the policy with installType KIOSK.
class KioskCustomization {
  /// Specifies whether the Settings app is allowed in kiosk mode.
  /// Possible string values are:
  /// - "DEVICE_SETTINGS_UNSPECIFIED" : Unspecified, defaults to
  /// SETTINGS_ACCESS_ALLOWED.
  /// - "SETTINGS_ACCESS_ALLOWED" : Access to the Settings app is allowed in
  /// kiosk mode.
  /// - "SETTINGS_ACCESS_BLOCKED" : Access to the Settings app is not allowed in
  /// kiosk mode.
  core.String? deviceSettings;

  /// Sets the behavior of a device in kiosk mode when a user presses and holds
  /// (long-presses) the Power button.
  /// Possible string values are:
  /// - "POWER_BUTTON_ACTIONS_UNSPECIFIED" : Unspecified, defaults to
  /// POWER_BUTTON_AVAILABLE.
  /// - "POWER_BUTTON_AVAILABLE" : The power menu (e.g. Power off, Restart) is
  /// shown when a user long-presses the Power button of a device in kiosk mode.
  /// - "POWER_BUTTON_BLOCKED" : The power menu (e.g. Power off, Restart) is not
  /// shown when a user long-presses the Power button of a device in kiosk mode.
  /// Note: this may prevent users from turning off the device.
  core.String? powerButtonActions;

  /// Specifies whether system info and notifications are disabled in kiosk
  /// mode.
  /// Possible string values are:
  /// - "STATUS_BAR_UNSPECIFIED" : Unspecified, defaults to
  /// INFO_AND_NOTIFICATIONS_DISABLED.
  /// - "NOTIFICATIONS_AND_SYSTEM_INFO_ENABLED" : System info and notifications
  /// are shown on the status bar in kiosk mode.Note: For this policy to take
  /// effect, the device's home button must be enabled using
  /// kioskCustomization.systemNavigation.
  /// - "NOTIFICATIONS_AND_SYSTEM_INFO_DISABLED" : System info and notifications
  /// are disabled in kiosk mode.
  /// - "SYSTEM_INFO_ONLY" : Only system info is shown on the status bar.
  core.String? statusBar;

  /// Specifies whether system error dialogs for crashed or unresponsive apps
  /// are blocked in kiosk mode.
  ///
  /// When blocked, the system will force-stop the app as if the user chooses
  /// the "close app" option on the UI.
  /// Possible string values are:
  /// - "SYSTEM_ERROR_WARNINGS_UNSPECIFIED" : Unspecified, defaults to
  /// ERROR_AND_WARNINGS_MUTED.
  /// - "ERROR_AND_WARNINGS_ENABLED" : All system error dialogs such as crash
  /// and app not responding (ANR) are displayed.
  /// - "ERROR_AND_WARNINGS_MUTED" : All system error dialogs, such as crash and
  /// app not responding (ANR) are blocked. When blocked, the system force-stops
  /// the app as if the user closes the app from the UI.
  core.String? systemErrorWarnings;

  /// Specifies which navigation features are enabled (e.g. Home, Overview
  /// buttons) in kiosk mode.
  /// Possible string values are:
  /// - "SYSTEM_NAVIGATION_UNSPECIFIED" : Unspecified, defaults to
  /// NAVIGATION_DISABLED.
  /// - "NAVIGATION_ENABLED" : Home and overview buttons are enabled.
  /// - "NAVIGATION_DISABLED" : The home and Overview buttons are not
  /// accessible.
  /// - "HOME_BUTTON_ONLY" : Only the home button is enabled.
  core.String? systemNavigation;

  KioskCustomization({
    this.deviceSettings,
    this.powerButtonActions,
    this.statusBar,
    this.systemErrorWarnings,
    this.systemNavigation,
  });

  KioskCustomization.fromJson(core.Map json_)
    : this(
        deviceSettings: json_['deviceSettings'] as core.String?,
        powerButtonActions: json_['powerButtonActions'] as core.String?,
        statusBar: json_['statusBar'] as core.String?,
        systemErrorWarnings: json_['systemErrorWarnings'] as core.String?,
        systemNavigation: json_['systemNavigation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceSettings != null) 'deviceSettings': deviceSettings!,
    if (powerButtonActions != null) 'powerButtonActions': powerButtonActions!,
    if (statusBar != null) 'statusBar': statusBar!,
    if (systemErrorWarnings != null)
      'systemErrorWarnings': systemErrorWarnings!,
    if (systemNavigation != null) 'systemNavigation': systemNavigation!,
  };
}

/// An action to launch an app.
class LaunchAppAction {
  /// Package name of app to be launched
  core.String? packageName;

  LaunchAppAction({this.packageName});

  LaunchAppAction.fromJson(core.Map json_)
    : this(packageName: json_['packageName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (packageName != null) 'packageName': packageName!,
  };
}

/// Response to a request to list devices for a given enterprise.
class ListDevicesResponse {
  /// The list of devices.
  core.List<Device>? devices;

  /// If there are more results, a token to retrieve next page of results.
  core.String? nextPageToken;

  ListDevicesResponse({this.devices, this.nextPageToken});

  ListDevicesResponse.fromJson(core.Map json_)
    : this(
        devices:
            (json_['devices'] as core.List?)
                ?.map(
                  (value) => Device.fromJson(
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

/// Response to a request to list enrollment tokens for a given enterprise.
class ListEnrollmentTokensResponse {
  /// The list of enrollment tokens.
  core.List<EnrollmentToken>? enrollmentTokens;

  /// If there are more results, a token to retrieve next page of results.
  core.String? nextPageToken;

  ListEnrollmentTokensResponse({this.enrollmentTokens, this.nextPageToken});

  ListEnrollmentTokensResponse.fromJson(core.Map json_)
    : this(
        enrollmentTokens:
            (json_['enrollmentTokens'] as core.List?)
                ?.map(
                  (value) => EnrollmentToken.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enrollmentTokens != null) 'enrollmentTokens': enrollmentTokens!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response to a request to list enterprises.
class ListEnterprisesResponse {
  /// The list of enterprises.
  core.List<Enterprise>? enterprises;

  /// If there are more results, a token to retrieve next page of results.
  core.String? nextPageToken;

  ListEnterprisesResponse({this.enterprises, this.nextPageToken});

  ListEnterprisesResponse.fromJson(core.Map json_)
    : this(
        enterprises:
            (json_['enterprises'] as core.List?)
                ?.map(
                  (value) => Enterprise.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enterprises != null) 'enterprises': enterprises!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response to a request to list migration tokens for a given enterprise.
class ListMigrationTokensResponse {
  /// The migration tokens from the specified enterprise.
  core.List<MigrationToken>? migrationTokens;

  /// A token, which can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListMigrationTokensResponse({this.migrationTokens, this.nextPageToken});

  ListMigrationTokensResponse.fromJson(core.Map json_)
    : this(
        migrationTokens:
            (json_['migrationTokens'] as core.List?)
                ?.map(
                  (value) => MigrationToken.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (migrationTokens != null) 'migrationTokens': migrationTokens!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
  };
}

/// Response to a request to list policies for a given enterprise.
class ListPoliciesResponse {
  /// If there are more results, a token to retrieve next page of results.
  core.String? nextPageToken;

  /// The list of policies.
  core.List<Policy>? policies;

  ListPoliciesResponse({this.nextPageToken, this.policies});

  ListPoliciesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        policies:
            (json_['policies'] as core.List?)
                ?.map(
                  (value) => Policy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (policies != null) 'policies': policies!,
  };
}

/// Response to a request to list web apps for a given enterprise.
class ListWebAppsResponse {
  /// If there are more results, a token to retrieve next page of results.
  core.String? nextPageToken;

  /// The list of web apps.
  core.List<WebApp>? webApps;

  ListWebAppsResponse({this.nextPageToken, this.webApps});

  ListWebAppsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        webApps:
            (json_['webApps'] as core.List?)
                ?.map(
                  (value) => WebApp.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (webApps != null) 'webApps': webApps!,
  };
}

/// The managed configurations template for the app, saved from the managed
/// configurations iframe.
class ManagedConfigurationTemplate {
  /// Optional, a map containing configuration variables defined for the
  /// configuration.
  core.Map<core.String, core.String>? configurationVariables;

  /// The ID of the managed configurations template.
  core.String? templateId;

  ManagedConfigurationTemplate({this.configurationVariables, this.templateId});

  ManagedConfigurationTemplate.fromJson(core.Map json_)
    : this(
        configurationVariables: (json_['configurationVariables']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        templateId: json_['templateId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (configurationVariables != null)
      'configurationVariables': configurationVariables!,
    if (templateId != null) 'templateId': templateId!,
  };
}

/// Managed property.
class ManagedProperty {
  /// The default value of the property.
  ///
  /// BUNDLE_ARRAY properties don't have a default value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? defaultValue;

  /// A longer description of the property, providing more detail of what it
  /// affects.
  ///
  /// Localized.
  core.String? description;

  /// For CHOICE or MULTISELECT properties, the list of possible entries.
  core.List<ManagedPropertyEntry>? entries;

  /// The unique key that the app uses to identify the property, e.g.
  /// "com.google.android.gm.fieldname".
  core.String? key;

  /// For BUNDLE_ARRAY properties, the list of nested properties.
  ///
  /// A BUNDLE_ARRAY property is at most two levels deep.
  core.List<ManagedProperty>? nestedProperties;

  /// The name of the property.
  ///
  /// Localized.
  core.String? title;

  /// The type of the property.
  /// Possible string values are:
  /// - "MANAGED_PROPERTY_TYPE_UNSPECIFIED" : Not used.
  /// - "BOOL" : A property of boolean type.
  /// - "STRING" : A property of string type.
  /// - "INTEGER" : A property of integer type.
  /// - "CHOICE" : A choice of one item from a set.
  /// - "MULTISELECT" : A choice of multiple items from a set.
  /// - "HIDDEN" : A hidden restriction of string type (the default value can be
  /// used to pass along information that can't be modified, such as a version
  /// code).
  /// - "BUNDLE" : A bundle of properties
  /// - "BUNDLE_ARRAY" : An array of property bundles.
  core.String? type;

  ManagedProperty({
    this.defaultValue,
    this.description,
    this.entries,
    this.key,
    this.nestedProperties,
    this.title,
    this.type,
  });

  ManagedProperty.fromJson(core.Map json_)
    : this(
        defaultValue: json_['defaultValue'],
        description: json_['description'] as core.String?,
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => ManagedPropertyEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        key: json_['key'] as core.String?,
        nestedProperties:
            (json_['nestedProperties'] as core.List?)
                ?.map(
                  (value) => ManagedProperty.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        title: json_['title'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultValue != null) 'defaultValue': defaultValue!,
    if (description != null) 'description': description!,
    if (entries != null) 'entries': entries!,
    if (key != null) 'key': key!,
    if (nestedProperties != null) 'nestedProperties': nestedProperties!,
    if (title != null) 'title': title!,
    if (type != null) 'type': type!,
  };
}

/// An entry of a managed property.
class ManagedPropertyEntry {
  /// The human-readable name of the value.
  ///
  /// Localized.
  core.String? name;

  /// The machine-readable value of the entry, which should be used in the
  /// configuration.
  ///
  /// Not localized.
  core.String? value;

  ManagedPropertyEntry({this.name, this.value});

  ManagedPropertyEntry.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (value != null) 'value': value!,
  };
}

/// An event related to memory and storage measurements.To distinguish between
/// new and old events, we recommend using the createTime field.
class MemoryEvent {
  /// The number of free bytes in the medium, or for EXTERNAL_STORAGE_DETECTED,
  /// the total capacity in bytes of the storage medium.
  core.String? byteCount;

  /// The creation time of the event.
  core.String? createTime;

  /// Event type.
  /// Possible string values are:
  /// - "MEMORY_EVENT_TYPE_UNSPECIFIED" : Unspecified. No events have this type.
  /// - "RAM_MEASURED" : Free space in RAM was measured.
  /// - "INTERNAL_STORAGE_MEASURED" : Free space in internal storage was
  /// measured.
  /// - "EXTERNAL_STORAGE_DETECTED" : A new external storage medium was
  /// detected. The reported byte count is the total capacity of the storage
  /// medium.
  /// - "EXTERNAL_STORAGE_REMOVED" : An external storage medium was removed. The
  /// reported byte count is zero.
  /// - "EXTERNAL_STORAGE_MEASURED" : Free space in an external storage medium
  /// was measured.
  core.String? eventType;

  MemoryEvent({this.byteCount, this.createTime, this.eventType});

  MemoryEvent.fromJson(core.Map json_)
    : this(
        byteCount: json_['byteCount'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        eventType: json_['eventType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (byteCount != null) 'byteCount': byteCount!,
    if (createTime != null) 'createTime': createTime!,
    if (eventType != null) 'eventType': eventType!,
  };
}

/// Information about device memory and storage.
class MemoryInfo {
  /// Total internal storage on device in bytes.
  core.String? totalInternalStorage;

  /// Total RAM on device in bytes.
  core.String? totalRam;

  MemoryInfo({this.totalInternalStorage, this.totalRam});

  MemoryInfo.fromJson(core.Map json_)
    : this(
        totalInternalStorage: json_['totalInternalStorage'] as core.String?,
        totalRam: json_['totalRam'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (totalInternalStorage != null)
      'totalInternalStorage': totalInternalStorage!,
    if (totalRam != null) 'totalRam': totalRam!,
  };
}

/// A token to initiate the migration of a device from being managed by a
/// third-party DPC to being managed by Android Management API.
///
/// A migration token is valid only for a single device. See the guide
/// (https://developers.google.com/android/management/dpc-migration) for more
/// details.
class MigrationToken {
  /// Optional EMM-specified additional data.
  ///
  /// Once the device is migrated this will be populated in the
  /// migrationAdditionalData field of the Device resource. This must be at most
  /// 1024 characters.
  ///
  /// Immutable.
  core.String? additionalData;

  /// Time when this migration token was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Once this migration token is used to migrate a device, the name of the
  /// resulting Device resource will be populated here, in the form
  /// enterprises/{enterprise}/devices/{device}.
  ///
  /// Output only.
  core.String? device;

  /// The id of the device, as in the Play EMM API.
  ///
  /// This corresponds to the deviceId parameter in Play EMM API's Devices.get
  /// (https://developers.google.com/android/work/play/emm-api/v1/devices/get#parameters)
  /// call.
  ///
  /// Required. Immutable.
  core.String? deviceId;

  /// The time when this migration token expires.
  ///
  /// This can be at most seven days from the time of creation. The migration
  /// token is deleted seven days after it expires.
  ///
  /// Immutable.
  core.String? expireTime;

  /// The management mode of the device or profile being migrated.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "MANAGEMENT_MODE_UNSPECIFIED" : This value must not be used.
  /// - "WORK_PROFILE_PERSONALLY_OWNED" : A work profile on a personally owned
  /// device. Supported only on devices running Android 9 and above.
  /// - "WORK_PROFILE_COMPANY_OWNED" : A work profile on a company-owned device.
  /// Supported only on devices running Android 11 and above.
  /// - "FULLY_MANAGED" : A fully-managed device. Supported only on devices
  /// running Android 9 and above.
  core.String? managementMode;

  /// The name of the migration token, which is generated by the server during
  /// creation, in the form
  /// enterprises/{enterprise}/migrationTokens/{migration_token}.
  ///
  /// Output only.
  core.String? name;

  /// The name of the policy initially applied to the enrolled device, in the
  /// form enterprises/{enterprise}/policies/{policy}.
  ///
  /// Required. Immutable.
  core.String? policy;

  /// Input only.
  ///
  /// The time that this migration token is valid for. This is input-only, and
  /// for returning a migration token the server will populate the expireTime
  /// field. This can be at most seven days. The default is seven days.
  core.String? ttl;

  /// The user id of the Managed Google Play account on the device, as in the
  /// Play EMM API.
  ///
  /// This corresponds to the userId parameter in Play EMM API's Devices.get
  /// (https://developers.google.com/android/work/play/emm-api/v1/devices/get#parameters)
  /// call.
  ///
  /// Required. Immutable.
  core.String? userId;

  /// The value of the migration token.
  ///
  /// Output only.
  core.String? value;

  MigrationToken({
    this.additionalData,
    this.createTime,
    this.device,
    this.deviceId,
    this.expireTime,
    this.managementMode,
    this.name,
    this.policy,
    this.ttl,
    this.userId,
    this.value,
  });

  MigrationToken.fromJson(core.Map json_)
    : this(
        additionalData: json_['additionalData'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        device: json_['device'] as core.String?,
        deviceId: json_['deviceId'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        managementMode: json_['managementMode'] as core.String?,
        name: json_['name'] as core.String?,
        policy: json_['policy'] as core.String?,
        ttl: json_['ttl'] as core.String?,
        userId: json_['userId'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalData != null) 'additionalData': additionalData!,
    if (createTime != null) 'createTime': createTime!,
    if (device != null) 'device': device!,
    if (deviceId != null) 'deviceId': deviceId!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (managementMode != null) 'managementMode': managementMode!,
    if (name != null) 'name': name!,
    if (policy != null) 'policy': policy!,
    if (ttl != null) 'ttl': ttl!,
    if (userId != null) 'userId': userId!,
    if (value != null) 'value': value!,
  };
}

/// Request to update or create ApplicationPolicy objects in the given Policy.
class ModifyPolicyApplicationsRequest {
  /// The changes to be made to the ApplicationPolicy objects.
  ///
  /// There must be at least one ApplicationPolicyChange.
  ///
  /// Required.
  core.List<ApplicationPolicyChange>? changes;

  ModifyPolicyApplicationsRequest({this.changes});

  ModifyPolicyApplicationsRequest.fromJson(core.Map json_)
    : this(
        changes:
            (json_['changes'] as core.List?)
                ?.map(
                  (value) => ApplicationPolicyChange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (changes != null) 'changes': changes!,
  };
}

/// Response to a request to update or create ApplicationPolicy objects in the
/// given policy.
class ModifyPolicyApplicationsResponse {
  /// The updated policy.
  Policy? policy;

  ModifyPolicyApplicationsResponse({this.policy});

  ModifyPolicyApplicationsResponse.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policy != null) 'policy': policy!,
  };
}

/// Device network info.
class NetworkInfo {
  /// IMEI number of the GSM device.
  ///
  /// For example, A1000031212.
  core.String? imei;

  /// MEID number of the CDMA device.
  ///
  /// For example, A00000292788E1.
  core.String? meid;

  /// Alphabetic name of current registered operator.
  ///
  /// For example, Vodafone.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? networkOperatorName;

  /// Provides telephony information associated with each SIM card on the
  /// device.
  ///
  /// Only supported on fully managed devices starting from Android API level
  /// 23.
  core.List<TelephonyInfo>? telephonyInfos;

  /// Wi-Fi MAC address of the device.
  ///
  /// For example, 7c:11:11:11:11:11.
  core.String? wifiMacAddress;

  NetworkInfo({
    this.imei,
    this.meid,
    this.networkOperatorName,
    this.telephonyInfos,
    this.wifiMacAddress,
  });

  NetworkInfo.fromJson(core.Map json_)
    : this(
        imei: json_['imei'] as core.String?,
        meid: json_['meid'] as core.String?,
        networkOperatorName: json_['networkOperatorName'] as core.String?,
        telephonyInfos:
            (json_['telephonyInfos'] as core.List?)
                ?.map(
                  (value) => TelephonyInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        wifiMacAddress: json_['wifiMacAddress'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (imei != null) 'imei': imei!,
    if (meid != null) 'meid': meid!,
    if (networkOperatorName != null)
      'networkOperatorName': networkOperatorName!,
    if (telephonyInfos != null) 'telephonyInfos': telephonyInfos!,
    if (wifiMacAddress != null) 'wifiMacAddress': wifiMacAddress!,
  };
}

/// Provides detail about non-compliance with a policy setting.
class NonComplianceDetail {
  /// If the policy setting could not be applied, the current value of the
  /// setting on the device.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? currentValue;

  /// For settings with nested fields, if a particular nested field is out of
  /// compliance, this specifies the full path to the offending field.
  ///
  /// The path is formatted in the same way the policy JSON field would be
  /// referenced in JavaScript, that is: 1) For object-typed fields, the field
  /// name is followed by a dot then by a subfield name. 2) For array-typed
  /// fields, the field name is followed by the array index enclosed in
  /// brackets. For example, to indicate a problem with the url field in the
  /// externalData field in the 3rd application, the path would be
  /// applications\[2\].externalData.url
  core.String? fieldPath;

  /// If package_name is set and the non-compliance reason is APP_NOT_INSTALLED
  /// or APP_NOT_UPDATED, the detailed reason the app can't be installed or
  /// updated.
  /// Possible string values are:
  /// - "INSTALLATION_FAILURE_REASON_UNSPECIFIED" : This value is disallowed.
  /// - "INSTALLATION_FAILURE_REASON_UNKNOWN" : An unknown condition is
  /// preventing the app from being installed. Some potential reasons are that
  /// the device doesn't have enough storage, the device network connection is
  /// unreliable, or the installation is taking longer than expected. The
  /// installation will be retried automatically.
  /// - "IN_PROGRESS" : The installation is still in progress.
  /// - "NOT_FOUND" : The app was not found in Play.
  /// - "NOT_COMPATIBLE_WITH_DEVICE" : The app is incompatible with the device.
  /// - "NOT_APPROVED" : The app has not been approved by the admin.
  /// - "PERMISSIONS_NOT_ACCEPTED" : The app has new permissions that have not
  /// been accepted by the admin.
  /// - "NOT_AVAILABLE_IN_COUNTRY" : The app is not available in the user's
  /// country.
  /// - "NO_LICENSES_REMAINING" : There are no licenses available to assign to
  /// the user.
  /// - "NOT_ENROLLED" : The enterprise is no longer enrolled with Managed
  /// Google Play or the admin has not accepted the latest Managed Google Play
  /// Terms of Service.
  /// - "USER_INVALID" : The user is no longer valid. The user may have been
  /// deleted or disabled.
  /// - "NETWORK_ERROR_UNRELIABLE_CONNECTION" : A network error on the user's
  /// device has prevented the install from succeeding. This usually happens
  /// when the device's internet connectivity is degraded, unavailable or
  /// there's a network configuration issue. Please ensure the device has access
  /// to full internet connectivity on a network that meets Android Enterprise
  /// Network Requirements
  /// (https://support.google.com/work/android/answer/10513641). App install or
  /// update will automatically resume once this is the case.
  /// - "INSUFFICIENT_STORAGE" : The user's device does not have sufficient
  /// storage space to install the app. This can be resolved by clearing up
  /// storage space on the device. App install or update will automatically
  /// resume once the device has sufficient storage.
  core.String? installationFailureReason;

  /// The reason the device is not in compliance with the setting.
  /// Possible string values are:
  /// - "NON_COMPLIANCE_REASON_UNSPECIFIED" : This value is not used.
  /// - "API_LEVEL" : The setting is not supported in the API level of the
  /// Android version running on the device.
  /// - "MANAGEMENT_MODE" : The management mode (such as fully managed or work
  /// profile) doesn't support the setting.
  /// - "USER_ACTION" : The user has not taken required action to comply with
  /// the setting.
  /// - "INVALID_VALUE" : The setting has an invalid value.
  /// - "APP_NOT_INSTALLED" : The app required to implement the policy is not
  /// installed.
  /// - "UNSUPPORTED" : The policy is not supported by the version of Android
  /// Device Policy on the device.
  /// - "APP_INSTALLED" : A blocked app is installed.
  /// - "PENDING" : The setting hasn't been applied at the time of the report,
  /// but is expected to be applied shortly.
  /// - "APP_INCOMPATIBLE" : The setting can't be applied to the app because the
  /// app doesn't support it, for example because its target SDK version is not
  /// high enough.
  /// - "APP_NOT_UPDATED" : The app is installed, but it hasn't been updated to
  /// the minimum version code specified by policy.
  /// - "DEVICE_INCOMPATIBLE" : The device is incompatible with the policy
  /// requirements.
  /// - "PROJECT_NOT_PERMITTED" : The Google Cloud Platform project used to
  /// manage the device is not permitted to use this policy.
  core.String? nonComplianceReason;

  /// The package name indicating which app is out of compliance, if applicable.
  core.String? packageName;

  /// The name of the policy setting.
  ///
  /// This is the JSON field name of a top-level Policy field.
  core.String? settingName;

  /// Additional context for specific_non_compliance_reason.
  SpecificNonComplianceContext? specificNonComplianceContext;

  /// The policy-specific reason the device is not in compliance with the
  /// setting.
  /// Possible string values are:
  /// - "SPECIFIC_NON_COMPLIANCE_REASON_UNSPECIFIED" : Specific non-compliance
  /// reason is not specified. Fields in specific_non_compliance_context are not
  /// set.
  /// - "PASSWORD_POLICIES_USER_CREDENTIALS_CONFIRMATION_REQUIRED" : User needs
  /// to confirm credentials by entering the screen lock. Fields in
  /// specific_non_compliance_context are not set. nonComplianceReason is set to
  /// USER_ACTION.
  /// - "PASSWORD_POLICIES_PASSWORD_EXPIRED" : The device or profile password
  /// has expired. passwordPoliciesContext is set. nonComplianceReason is set to
  /// USER_ACTION.
  /// - "PASSWORD_POLICIES_PASSWORD_NOT_SUFFICIENT" : The device password does
  /// not satisfy password requirements. passwordPoliciesContext is set.
  /// nonComplianceReason is set to USER_ACTION.
  /// - "ONC_WIFI_INVALID_VALUE" : There is an incorrect value in ONC Wi-Fi
  /// configuration. fieldPath specifies which field value is incorrect.
  /// oncWifiContext is set. nonComplianceReason is set to INVALID_VALUE.
  /// - "ONC_WIFI_API_LEVEL" : The ONC Wi-Fi setting is not supported in the API
  /// level of the Android version running on the device. fieldPath specifies
  /// which field value is not supported. oncWifiContext is set.
  /// nonComplianceReason is set to API_LEVEL.
  /// - "ONC_WIFI_INVALID_ENTERPRISE_CONFIG" : The enterprise Wi-Fi network is
  /// missing either the root CA or domain name. nonComplianceReason is set to
  /// INVALID_VALUE.
  /// - "ONC_WIFI_USER_SHOULD_REMOVE_NETWORK" : User needs to remove the
  /// configured Wi-Fi network manually. This is applicable only on work
  /// profiles on personally-owned devices. nonComplianceReason is set to
  /// USER_ACTION.
  /// - "ONC_WIFI_KEY_PAIR_ALIAS_NOT_CORRESPONDING_TO_EXISTING_KEY" : Key pair
  /// alias specified via ClientCertKeyPairAlias
  /// (https://chromium.googlesource.com/chromium/src/+/main/components/onc/docs/onc_spec.md#eap-type)
  /// field in openNetworkConfiguration does not correspond to an existing key
  /// installed on the device. nonComplianceReason is set to INVALID_VALUE.
  /// - "PERMISSIBLE_USAGE_RESTRICTION" : This policy setting is restricted and
  /// cannot be set for this Google Cloud Platform project. More details
  /// (including how to enable usage of this policy setting) are available in
  /// the Permissible Usage policy
  /// (https://developers.google.com/android/management/permissible-usage).
  /// nonComplianceReason is set to PROJECT_NOT_PERMITTED.
  /// - "REQUIRED_ACCOUNT_NOT_IN_ENTERPRISE" : Work account required by the
  /// workAccountSetupConfig policy setting is not part of the enterprise
  /// anymore. nonComplianceReason is set to USER_ACTION.
  /// - "NEW_ACCOUNT_NOT_IN_ENTERPRISE" : Work account added by the user is not
  /// part of the enterprise. nonComplianceReason is set to USER_ACTION.
  core.String? specificNonComplianceReason;

  NonComplianceDetail({
    this.currentValue,
    this.fieldPath,
    this.installationFailureReason,
    this.nonComplianceReason,
    this.packageName,
    this.settingName,
    this.specificNonComplianceContext,
    this.specificNonComplianceReason,
  });

  NonComplianceDetail.fromJson(core.Map json_)
    : this(
        currentValue: json_['currentValue'],
        fieldPath: json_['fieldPath'] as core.String?,
        installationFailureReason:
            json_['installationFailureReason'] as core.String?,
        nonComplianceReason: json_['nonComplianceReason'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        settingName: json_['settingName'] as core.String?,
        specificNonComplianceContext:
            json_.containsKey('specificNonComplianceContext')
                ? SpecificNonComplianceContext.fromJson(
                  json_['specificNonComplianceContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        specificNonComplianceReason:
            json_['specificNonComplianceReason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (currentValue != null) 'currentValue': currentValue!,
    if (fieldPath != null) 'fieldPath': fieldPath!,
    if (installationFailureReason != null)
      'installationFailureReason': installationFailureReason!,
    if (nonComplianceReason != null)
      'nonComplianceReason': nonComplianceReason!,
    if (packageName != null) 'packageName': packageName!,
    if (settingName != null) 'settingName': settingName!,
    if (specificNonComplianceContext != null)
      'specificNonComplianceContext': specificNonComplianceContext!,
    if (specificNonComplianceReason != null)
      'specificNonComplianceReason': specificNonComplianceReason!,
  };
}

/// A compliance rule condition which is satisfied if there exists any matching
/// NonComplianceDetail for the device.
///
/// A NonComplianceDetail matches a NonComplianceDetailCondition if all the
/// fields which are set within the NonComplianceDetailCondition match the
/// corresponding NonComplianceDetail fields.
class NonComplianceDetailCondition {
  /// The reason the device is not in compliance with the setting.
  ///
  /// If not set, then this condition matches any reason.
  /// Possible string values are:
  /// - "NON_COMPLIANCE_REASON_UNSPECIFIED" : This value is not used.
  /// - "API_LEVEL" : The setting is not supported in the API level of the
  /// Android version running on the device.
  /// - "MANAGEMENT_MODE" : The management mode (such as fully managed or work
  /// profile) doesn't support the setting.
  /// - "USER_ACTION" : The user has not taken required action to comply with
  /// the setting.
  /// - "INVALID_VALUE" : The setting has an invalid value.
  /// - "APP_NOT_INSTALLED" : The app required to implement the policy is not
  /// installed.
  /// - "UNSUPPORTED" : The policy is not supported by the version of Android
  /// Device Policy on the device.
  /// - "APP_INSTALLED" : A blocked app is installed.
  /// - "PENDING" : The setting hasn't been applied at the time of the report,
  /// but is expected to be applied shortly.
  /// - "APP_INCOMPATIBLE" : The setting can't be applied to the app because the
  /// app doesn't support it, for example because its target SDK version is not
  /// high enough.
  /// - "APP_NOT_UPDATED" : The app is installed, but it hasn't been updated to
  /// the minimum version code specified by policy.
  /// - "DEVICE_INCOMPATIBLE" : The device is incompatible with the policy
  /// requirements.
  /// - "PROJECT_NOT_PERMITTED" : The Google Cloud Platform project used to
  /// manage the device is not permitted to use this policy.
  core.String? nonComplianceReason;

  /// The package name of the app that's out of compliance.
  ///
  /// If not set, then this condition matches any package name.
  core.String? packageName;

  /// The name of the policy setting.
  ///
  /// This is the JSON field name of a top-level Policy field. If not set, then
  /// this condition matches any setting name.
  core.String? settingName;

  NonComplianceDetailCondition({
    this.nonComplianceReason,
    this.packageName,
    this.settingName,
  });

  NonComplianceDetailCondition.fromJson(core.Map json_)
    : this(
        nonComplianceReason: json_['nonComplianceReason'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        settingName: json_['settingName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nonComplianceReason != null)
      'nonComplianceReason': nonComplianceReason!,
    if (packageName != null) 'packageName': packageName!,
    if (settingName != null) 'settingName': settingName!,
  };
}

/// This feature is not generally available.
class OncCertificateProvider {
  /// This feature is not generally available.
  core.List<core.String>? certificateReferences;

  /// This feature is not generally available.
  ContentProviderEndpoint? contentProviderEndpoint;

  OncCertificateProvider({
    this.certificateReferences,
    this.contentProviderEndpoint,
  });

  OncCertificateProvider.fromJson(core.Map json_)
    : this(
        certificateReferences:
            (json_['certificateReferences'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        contentProviderEndpoint:
            json_.containsKey('contentProviderEndpoint')
                ? ContentProviderEndpoint.fromJson(
                  json_['contentProviderEndpoint']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificateReferences != null)
      'certificateReferences': certificateReferences!,
    if (contentProviderEndpoint != null)
      'contentProviderEndpoint': contentProviderEndpoint!,
  };
}

/// Additional context for non-compliance related to Wi-Fi configuration.
class OncWifiContext {
  /// The GUID of non-compliant Wi-Fi configuration.
  core.String? wifiGuid;

  OncWifiContext({this.wifiGuid});

  OncWifiContext.fromJson(core.Map json_)
    : this(wifiGuid: json_['wifiGuid'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (wifiGuid != null) 'wifiGuid': wifiGuid!,
  };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is false, it means the operation is still in progress.
  ///
  /// If true, the operation is completed, and either error or response is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

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
  /// If you use the default HTTP mapping, the name should be a resource name
  /// ending with operations/{unique_id}.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as Delete, the
  /// response is google.protobuf.Empty. If the original method is standard
  /// Get/Create/Update, the response should be the resource. For other methods,
  /// the response should have the type XxxResponse, where Xxx is the original
  /// method name. For example, if the original method name is TakeSnapshot(),
  /// the inferred response type is TakeSnapshotResponse.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
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

/// A list of package names.
class PackageNameList {
  /// A list of package names.
  core.List<core.String>? packageNames;

  PackageNameList({this.packageNames});

  PackageNameList.fromJson(core.Map json_)
    : this(
        packageNames:
            (json_['packageNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (packageNames != null) 'packageNames': packageNames!,
  };
}

/// Additional context for non-compliance related to password policies.
class PasswordPoliciesContext {
  /// The scope of non-compliant password.
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED" : The scope is unspecified. The password
  /// requirements are applied to the work profile for work profile devices and
  /// the whole device for fully managed or dedicated devices.
  /// - "SCOPE_DEVICE" : The password requirements are only applied to the
  /// device.
  /// - "SCOPE_PROFILE" : The password requirements are only applied to the work
  /// profile.
  core.String? passwordPolicyScope;

  PasswordPoliciesContext({this.passwordPolicyScope});

  PasswordPoliciesContext.fromJson(core.Map json_)
    : this(passwordPolicyScope: json_['passwordPolicyScope'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (passwordPolicyScope != null)
      'passwordPolicyScope': passwordPolicyScope!,
  };
}

/// Requirements for the password used to unlock a device.
class PasswordRequirements {
  /// Number of incorrect device-unlock passwords that can be entered before a
  /// device is wiped.
  ///
  /// A value of 0 means there is no restriction.
  core.int? maximumFailedPasswordsForWipe;

  /// Password expiration timeout.
  core.String? passwordExpirationTimeout;

  /// The length of the password history.
  ///
  /// After setting this field, the user won't be able to enter a new password
  /// that is the same as any password in the history. A value of 0 means there
  /// is no restriction.
  core.int? passwordHistoryLength;

  /// The minimum allowed password length.
  ///
  /// A value of 0 means there is no restriction. Only enforced when
  /// password_quality is NUMERIC, NUMERIC_COMPLEX, ALPHABETIC, ALPHANUMERIC, or
  /// COMPLEX.
  core.int? passwordMinimumLength;

  /// Minimum number of letters required in the password.
  ///
  /// Only enforced when password_quality is COMPLEX.
  core.int? passwordMinimumLetters;

  /// Minimum number of lower case letters required in the password.
  ///
  /// Only enforced when password_quality is COMPLEX.
  core.int? passwordMinimumLowerCase;

  /// Minimum number of non-letter characters (numerical digits or symbols)
  /// required in the password.
  ///
  /// Only enforced when password_quality is COMPLEX.
  core.int? passwordMinimumNonLetter;

  /// Minimum number of numerical digits required in the password.
  ///
  /// Only enforced when password_quality is COMPLEX.
  core.int? passwordMinimumNumeric;

  /// Minimum number of symbols required in the password.
  ///
  /// Only enforced when password_quality is COMPLEX.
  core.int? passwordMinimumSymbols;

  /// Minimum number of upper case letters required in the password.
  ///
  /// Only enforced when password_quality is COMPLEX.
  core.int? passwordMinimumUpperCase;

  /// The required password quality.
  /// Possible string values are:
  /// - "PASSWORD_QUALITY_UNSPECIFIED" : There are no password requirements.
  /// - "BIOMETRIC_WEAK" : The device must be secured with a low-security
  /// biometric recognition technology, at minimum. This includes technologies
  /// that can recognize the identity of an individual that are roughly
  /// equivalent to a 3-digit PIN (false detection is less than 1 in
  /// 1,000).This, when applied on personally owned work profile devices on
  /// Android 12 device-scoped, will be treated as COMPLEXITY_LOW for
  /// application. See PasswordQuality for details.
  /// - "SOMETHING" : A password is required, but there are no restrictions on
  /// what the password must contain.This, when applied on personally owned work
  /// profile devices on Android 12 device-scoped, will be treated as
  /// COMPLEXITY_LOW for application. See PasswordQuality for details.
  /// - "NUMERIC" : The password must contain numeric characters.This, when
  /// applied on personally owned work profile devices on Android 12
  /// device-scoped, will be treated as COMPLEXITY_MEDIUM for application. See
  /// PasswordQuality for details.
  /// - "NUMERIC_COMPLEX" : The password must contain numeric characters with no
  /// repeating (4444) or ordered (1234, 4321, 2468) sequences.This, when
  /// applied on personally owned work profile devices on Android 12
  /// device-scoped, will be treated as COMPLEXITY_MEDIUM for application. See
  /// PasswordQuality for details.
  /// - "ALPHABETIC" : The password must contain alphabetic (or symbol)
  /// characters.This, when applied on personally owned work profile devices on
  /// Android 12 device-scoped, will be treated as COMPLEXITY_HIGH for
  /// application. See PasswordQuality for details.
  /// - "ALPHANUMERIC" : The password must contain both numeric and alphabetic
  /// (or symbol) characters.This, when applied on personally owned work profile
  /// devices on Android 12 device-scoped, will be treated as COMPLEXITY_HIGH
  /// for application. See PasswordQuality for details.
  /// - "COMPLEX" : The password must meet the minimum requirements specified in
  /// passwordMinimumLength, passwordMinimumLetters, passwordMinimumSymbols,
  /// etc. For example, if passwordMinimumSymbols is 2, the password must
  /// contain at least two symbols.This, when applied on personally owned work
  /// profile devices on Android 12 device-scoped, will be treated as
  /// COMPLEXITY_HIGH for application. In this case, the requirements in
  /// passwordMinimumLength, passwordMinimumLetters, passwordMinimumSymbols, etc
  /// are not applied. See PasswordQuality for details.
  /// - "COMPLEXITY_LOW" : Define the low password complexity band as: pattern
  /// PIN with repeating (4444) or ordered (1234, 4321, 2468) sequencesThis sets
  /// the minimum complexity band which the password must meet.Enforcement
  /// varies among different Android versions, management modes and password
  /// scopes. See PasswordQuality for details.
  /// - "COMPLEXITY_MEDIUM" : Define the medium password complexity band as: PIN
  /// with no repeating (4444) or ordered (1234, 4321, 2468) sequences, length
  /// at least 4 alphabetic, length at least 4 alphanumeric, length at least
  /// 4This sets the minimum complexity band which the password must
  /// meet.Enforcement varies among different Android versions, management modes
  /// and password scopes. See PasswordQuality for details.
  /// - "COMPLEXITY_HIGH" : Define the high password complexity band as:On
  /// Android 12 and above: PIN with no repeating (4444) or ordered (1234, 4321,
  /// 2468) sequences, length at least 8 alphabetic, length at least 6
  /// alphanumeric, length at least 6This sets the minimum complexity band which
  /// the password must meet.Enforcement varies among different Android
  /// versions, management modes and password scopes. See PasswordQuality for
  /// details.
  core.String? passwordQuality;

  /// The scope that the password requirement applies to.
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED" : The scope is unspecified. The password
  /// requirements are applied to the work profile for work profile devices and
  /// the whole device for fully managed or dedicated devices.
  /// - "SCOPE_DEVICE" : The password requirements are only applied to the
  /// device.
  /// - "SCOPE_PROFILE" : The password requirements are only applied to the work
  /// profile.
  core.String? passwordScope;

  /// The length of time after a device or work profile is unlocked using a
  /// strong form of authentication (password, PIN, pattern) that it can be
  /// unlocked using any other authentication method (e.g. fingerprint, trust
  /// agents, face).
  ///
  /// After the specified time period elapses, only strong forms of
  /// authentication can be used to unlock the device or work profile.
  /// Possible string values are:
  /// - "REQUIRE_PASSWORD_UNLOCK_UNSPECIFIED" : Unspecified. Defaults to
  /// USE_DEFAULT_DEVICE_TIMEOUT.
  /// - "USE_DEFAULT_DEVICE_TIMEOUT" : The timeout period is set to the device’s
  /// default.
  /// - "REQUIRE_EVERY_DAY" : The timeout period is set to 24 hours.
  core.String? requirePasswordUnlock;

  /// Controls whether a unified lock is allowed for the device and the work
  /// profile, on devices running Android 9 and above with a work profile.
  ///
  /// This can be set only if password_scope is set to SCOPE_PROFILE, the policy
  /// will be rejected otherwise. If user has not set a separate work lock and
  /// this field is set to REQUIRE_SEPARATE_WORK_LOCK, a NonComplianceDetail is
  /// reported with nonComplianceReason set to USER_ACTION.
  /// Possible string values are:
  /// - "UNIFIED_LOCK_SETTINGS_UNSPECIFIED" : Unspecified. Defaults to
  /// ALLOW_UNIFIED_WORK_AND_PERSONAL_LOCK.
  /// - "ALLOW_UNIFIED_WORK_AND_PERSONAL_LOCK" : A common lock for the device
  /// and the work profile is allowed.
  /// - "REQUIRE_SEPARATE_WORK_LOCK" : A separate lock for the work profile is
  /// required.
  core.String? unifiedLockSettings;

  PasswordRequirements({
    this.maximumFailedPasswordsForWipe,
    this.passwordExpirationTimeout,
    this.passwordHistoryLength,
    this.passwordMinimumLength,
    this.passwordMinimumLetters,
    this.passwordMinimumLowerCase,
    this.passwordMinimumNonLetter,
    this.passwordMinimumNumeric,
    this.passwordMinimumSymbols,
    this.passwordMinimumUpperCase,
    this.passwordQuality,
    this.passwordScope,
    this.requirePasswordUnlock,
    this.unifiedLockSettings,
  });

  PasswordRequirements.fromJson(core.Map json_)
    : this(
        maximumFailedPasswordsForWipe:
            json_['maximumFailedPasswordsForWipe'] as core.int?,
        passwordExpirationTimeout:
            json_['passwordExpirationTimeout'] as core.String?,
        passwordHistoryLength: json_['passwordHistoryLength'] as core.int?,
        passwordMinimumLength: json_['passwordMinimumLength'] as core.int?,
        passwordMinimumLetters: json_['passwordMinimumLetters'] as core.int?,
        passwordMinimumLowerCase:
            json_['passwordMinimumLowerCase'] as core.int?,
        passwordMinimumNonLetter:
            json_['passwordMinimumNonLetter'] as core.int?,
        passwordMinimumNumeric: json_['passwordMinimumNumeric'] as core.int?,
        passwordMinimumSymbols: json_['passwordMinimumSymbols'] as core.int?,
        passwordMinimumUpperCase:
            json_['passwordMinimumUpperCase'] as core.int?,
        passwordQuality: json_['passwordQuality'] as core.String?,
        passwordScope: json_['passwordScope'] as core.String?,
        requirePasswordUnlock: json_['requirePasswordUnlock'] as core.String?,
        unifiedLockSettings: json_['unifiedLockSettings'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maximumFailedPasswordsForWipe != null)
      'maximumFailedPasswordsForWipe': maximumFailedPasswordsForWipe!,
    if (passwordExpirationTimeout != null)
      'passwordExpirationTimeout': passwordExpirationTimeout!,
    if (passwordHistoryLength != null)
      'passwordHistoryLength': passwordHistoryLength!,
    if (passwordMinimumLength != null)
      'passwordMinimumLength': passwordMinimumLength!,
    if (passwordMinimumLetters != null)
      'passwordMinimumLetters': passwordMinimumLetters!,
    if (passwordMinimumLowerCase != null)
      'passwordMinimumLowerCase': passwordMinimumLowerCase!,
    if (passwordMinimumNonLetter != null)
      'passwordMinimumNonLetter': passwordMinimumNonLetter!,
    if (passwordMinimumNumeric != null)
      'passwordMinimumNumeric': passwordMinimumNumeric!,
    if (passwordMinimumSymbols != null)
      'passwordMinimumSymbols': passwordMinimumSymbols!,
    if (passwordMinimumUpperCase != null)
      'passwordMinimumUpperCase': passwordMinimumUpperCase!,
    if (passwordQuality != null) 'passwordQuality': passwordQuality!,
    if (passwordScope != null) 'passwordScope': passwordScope!,
    if (requirePasswordUnlock != null)
      'requirePasswordUnlock': requirePasswordUnlock!,
    if (unifiedLockSettings != null)
      'unifiedLockSettings': unifiedLockSettings!,
  };
}

/// The result of an attempt to clear the data of a single app.
class PerAppResult {
  /// The result of an attempt to clear the data of a single app.
  /// Possible string values are:
  /// - "CLEARING_RESULT_UNSPECIFIED" : Unspecified result.
  /// - "SUCCESS" : This app’s data was successfully cleared.
  /// - "APP_NOT_FOUND" : This app’s data could not be cleared because the app
  /// was not found.
  /// - "APP_PROTECTED" : This app’s data could not be cleared because the app
  /// is protected. For example, this may apply to apps critical to the
  /// functioning of the device, such as Google Play Store.
  /// - "API_LEVEL" : This app’s data could not be cleared because the device
  /// API level does not support this command.
  core.String? clearingResult;

  PerAppResult({this.clearingResult});

  PerAppResult.fromJson(core.Map json_)
    : this(clearingResult: json_['clearingResult'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (clearingResult != null) 'clearingResult': clearingResult!,
  };
}

/// Configuration for an Android permission and its grant state.
class PermissionGrant {
  /// The Android permission or group, e.g. android.permission.READ_CALENDAR or
  /// android.permission_group.CALENDAR.
  core.String? permission;

  /// The policy for granting the permission.
  /// Possible string values are:
  /// - "PERMISSION_POLICY_UNSPECIFIED" : Policy not specified. If no policy is
  /// specified for a permission at any level, then the PROMPT behavior is used
  /// by default.
  /// - "PROMPT" : Prompt the user to grant a permission.
  /// - "GRANT" : Automatically grant a permission.On Android 12 and above,
  /// READ_SMS
  /// (https://developer.android.com/reference/android/Manifest.permission#READ_SMS)
  /// and following sensor-related permissions can only be granted on fully
  /// managed devices: ACCESS_FINE_LOCATION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACCESS_FINE_LOCATION)
  /// ACCESS_BACKGROUND_LOCATION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACCESS_BACKGROUND_LOCATION)
  /// ACCESS_COARSE_LOCATION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACCESS_COARSE_LOCATION)
  /// CAMERA
  /// (https://developer.android.com/reference/android/Manifest.permission#CAMERA)
  /// RECORD_AUDIO
  /// (https://developer.android.com/reference/android/Manifest.permission#RECORD_AUDIO)
  /// ACTIVITY_RECOGNITION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACTIVITY_RECOGNITION)
  /// BODY_SENSORS
  /// (https://developer.android.com/reference/android/Manifest.permission#BODY_SENSORS)
  /// - "DENY" : Automatically deny a permission.
  core.String? policy;

  PermissionGrant({this.permission, this.policy});

  PermissionGrant.fromJson(core.Map json_)
    : this(
        permission: json_['permission'] as core.String?,
        policy: json_['policy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (permission != null) 'permission': permission!,
    if (policy != null) 'policy': policy!,
  };
}

/// A default activity for handling intents that match a particular intent
/// filter.
///
/// Note: To set up a kiosk, use InstallType to KIOSK rather than use persistent
/// preferred activities.
class PersistentPreferredActivity {
  /// The intent actions to match in the filter.
  ///
  /// If any actions are included in the filter, then an intent's action must be
  /// one of those values for it to match. If no actions are included, the
  /// intent action is ignored.
  core.List<core.String>? actions;

  /// The intent categories to match in the filter.
  ///
  /// An intent includes the categories that it requires, all of which must be
  /// included in the filter in order to match. In other words, adding a
  /// category to the filter has no impact on matching unless that category is
  /// specified in the intent.
  core.List<core.String>? categories;

  /// The activity that should be the default intent handler.
  ///
  /// This should be an Android component name, e.g.
  /// com.android.enterprise.app/.MainActivity. Alternatively, the value may be
  /// the package name of an app, which causes Android Device Policy to choose
  /// an appropriate activity from the app to handle the intent.
  core.String? receiverActivity;

  PersistentPreferredActivity({
    this.actions,
    this.categories,
    this.receiverActivity,
  });

  PersistentPreferredActivity.fromJson(core.Map json_)
    : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        categories:
            (json_['categories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        receiverActivity: json_['receiverActivity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (categories != null) 'categories': categories!,
    if (receiverActivity != null) 'receiverActivity': receiverActivity!,
  };
}

/// Policies for apps in the personal profile of a company-owned device with a
/// work profile.
class PersonalApplicationPolicy {
  /// The type of installation to perform.
  /// Possible string values are:
  /// - "INSTALL_TYPE_UNSPECIFIED" : Unspecified. Defaults to AVAILABLE.
  /// - "BLOCKED" : The app is blocked and can't be installed in the personal
  /// profile. If the app was previously installed in the device, it will be
  /// uninstalled.
  /// - "AVAILABLE" : The app is available to install in the personal profile.
  core.String? installType;

  /// The package name of the application.
  core.String? packageName;

  PersonalApplicationPolicy({this.installType, this.packageName});

  PersonalApplicationPolicy.fromJson(core.Map json_)
    : this(
        installType: json_['installType'] as core.String?,
        packageName: json_['packageName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (installType != null) 'installType': installType!,
    if (packageName != null) 'packageName': packageName!,
  };
}

/// Policies controlling personal usage on a company-owned device with a work
/// profile.
class PersonalUsagePolicies {
  /// Account types that can't be managed by the user.
  core.List<core.String>? accountTypesWithManagementDisabled;

  /// Whether bluetooth sharing is allowed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BLUETOOTH_SHARING_UNSPECIFIED" : Unspecified. Defaults to
  /// BLUETOOTH_SHARING_ALLOWED.
  /// - "BLUETOOTH_SHARING_ALLOWED" : Bluetooth sharing is allowed on personal
  /// profile.Supported on Android 8 and above. A NonComplianceDetail with
  /// MANAGEMENT_MODE is reported if this is set for a personal device.
  /// - "BLUETOOTH_SHARING_DISALLOWED" : Bluetooth sharing is disallowed on
  /// personal profile.Supported on Android 8 and above. A NonComplianceDetail
  /// with API_LEVEL is reported if the Android version is less than 8. A
  /// NonComplianceDetail with MANAGEMENT_MODE is reported if this is set for a
  /// personal device.
  core.String? bluetoothSharing;

  /// If true, the camera is disabled on the personal profile.
  core.bool? cameraDisabled;

  /// Controls how long the work profile can stay off.
  ///
  /// The minimum duration must be at least 3 days. Other details are as
  /// follows: - If the duration is set to 0, the feature is turned off. - If
  /// the duration is set to a value smaller than the minimum duration, the
  /// feature returns an error. *Note:* If you want to avoid personal profiles
  /// being suspended during long periods of off-time, you can temporarily set a
  /// large value for this parameter.
  core.int? maxDaysWithWorkOff;

  /// Policy applied to applications in the personal profile.
  core.List<PersonalApplicationPolicy>? personalApplications;

  /// Used together with personalApplications to control how apps in the
  /// personal profile are allowed or blocked.
  /// Possible string values are:
  /// - "PLAY_STORE_MODE_UNSPECIFIED" : Unspecified. Defaults to BLOCKLIST.
  /// - "BLACKLIST" : All Play Store apps are available for installation in the
  /// personal profile, except those whose installType is BLOCKED in
  /// personalApplications.
  /// - "BLOCKLIST" : All Play Store apps are available for installation in the
  /// personal profile, except those whose installType is BLOCKED in
  /// personalApplications.
  /// - "ALLOWLIST" : Only apps explicitly specified in personalApplications
  /// with installType set to AVAILABLE are allowed to be installed in the
  /// personal profile.
  core.String? personalPlayStoreMode;

  /// Controls whether a private space is allowed on the device.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRIVATE_SPACE_POLICY_UNSPECIFIED" : Unspecified. Defaults to
  /// PRIVATE_SPACE_ALLOWED.
  /// - "PRIVATE_SPACE_ALLOWED" : Users can create a private space profile.
  /// - "PRIVATE_SPACE_DISALLOWED" : Users cannot create a private space
  /// profile. Supported only for company-owned devices with a work profile.
  /// Caution: Any existing private space will be removed.
  core.String? privateSpacePolicy;

  /// If true, screen capture is disabled for all users.
  core.bool? screenCaptureDisabled;

  PersonalUsagePolicies({
    this.accountTypesWithManagementDisabled,
    this.bluetoothSharing,
    this.cameraDisabled,
    this.maxDaysWithWorkOff,
    this.personalApplications,
    this.personalPlayStoreMode,
    this.privateSpacePolicy,
    this.screenCaptureDisabled,
  });

  PersonalUsagePolicies.fromJson(core.Map json_)
    : this(
        accountTypesWithManagementDisabled:
            (json_['accountTypesWithManagementDisabled'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        bluetoothSharing: json_['bluetoothSharing'] as core.String?,
        cameraDisabled: json_['cameraDisabled'] as core.bool?,
        maxDaysWithWorkOff: json_['maxDaysWithWorkOff'] as core.int?,
        personalApplications:
            (json_['personalApplications'] as core.List?)
                ?.map(
                  (value) => PersonalApplicationPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        personalPlayStoreMode: json_['personalPlayStoreMode'] as core.String?,
        privateSpacePolicy: json_['privateSpacePolicy'] as core.String?,
        screenCaptureDisabled: json_['screenCaptureDisabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountTypesWithManagementDisabled != null)
      'accountTypesWithManagementDisabled': accountTypesWithManagementDisabled!,
    if (bluetoothSharing != null) 'bluetoothSharing': bluetoothSharing!,
    if (cameraDisabled != null) 'cameraDisabled': cameraDisabled!,
    if (maxDaysWithWorkOff != null) 'maxDaysWithWorkOff': maxDaysWithWorkOff!,
    if (personalApplications != null)
      'personalApplications': personalApplications!,
    if (personalPlayStoreMode != null)
      'personalPlayStoreMode': personalPlayStoreMode!,
    if (privateSpacePolicy != null) 'privateSpacePolicy': privateSpacePolicy!,
    if (screenCaptureDisabled != null)
      'screenCaptureDisabled': screenCaptureDisabled!,
  };
}

/// A policy resource represents a group of settings that govern the behavior of
/// a managed device and the apps installed on it.
class Policy {
  /// Account types that can't be managed by the user.
  core.List<core.String>? accountTypesWithManagementDisabled;

  /// Whether adding new users and profiles is disabled.
  ///
  /// For devices where managementMode is DEVICE_OWNER this field is ignored and
  /// the user is never allowed to add or remove users.
  core.bool? addUserDisabled;

  /// Whether adjusting the master volume is disabled.
  ///
  /// Also mutes the device. The setting has effect only on fully managed
  /// devices.
  core.bool? adjustVolumeDisabled;

  /// Advanced security settings.
  ///
  /// In most cases, setting these is not needed.
  AdvancedSecurityOverrides? advancedSecurityOverrides;

  /// Configuration for an always-on VPN connection.
  ///
  /// Use with vpn_config_disabled to prevent modification of this setting.
  AlwaysOnVpnPackage? alwaysOnVpnPackage;

  /// This setting is not supported.
  ///
  /// Any value is ignored.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? androidDevicePolicyTracks;

  /// Recommended alternative: autoUpdateMode which is set per app, provides
  /// greater flexibility around update frequency.When autoUpdateMode is set to
  /// AUTO_UPDATE_POSTPONED or AUTO_UPDATE_HIGH_PRIORITY, this field has no
  /// effect.The app auto update policy, which controls when automatic app
  /// updates can be applied.
  /// Possible string values are:
  /// - "APP_AUTO_UPDATE_POLICY_UNSPECIFIED" : The auto-update policy is not
  /// set. Equivalent to CHOICE_TO_THE_USER.
  /// - "CHOICE_TO_THE_USER" : The user can control auto-updates.
  /// - "NEVER" : Apps are never auto-updated.
  /// - "WIFI_ONLY" : Apps are auto-updated over Wi-Fi only.
  /// - "ALWAYS" : Apps are auto-updated at any time. Data charges may apply.
  core.String? appAutoUpdatePolicy;

  /// Controls whether apps on the device for fully managed devices or in the
  /// work profile for devices with work profiles are allowed to expose app
  /// functions.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "APP_FUNCTIONS_UNSPECIFIED" : Unspecified. Defaults to
  /// APP_FUNCTIONS_ALLOWED.
  /// - "APP_FUNCTIONS_DISALLOWED" : Apps on the device for fully managed
  /// devices or in the work profile for devices with work profiles are not
  /// allowed to expose app functions. If this is set, crossProfileAppFunctions
  /// must not be set to CROSS_PROFILE_APP_FUNCTIONS_ALLOWED, otherwise the
  /// policy will be rejected.
  /// - "APP_FUNCTIONS_ALLOWED" : Apps on the device for fully managed devices
  /// or in the work profile for devices with work profiles are allowed to
  /// expose app functions.
  core.String? appFunctions;

  /// Policy applied to apps.
  ///
  /// This can have at most 3,000 elements.
  core.List<ApplicationPolicy>? applications;

  /// Controls whether AssistContent
  /// (https://developer.android.com/reference/android/app/assist/AssistContent)
  /// is allowed to be sent to a privileged app such as an assistant app.
  ///
  /// AssistContent includes screenshots and information about an app, such as
  /// package name. This is supported on Android 15 and above.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ASSIST_CONTENT_POLICY_UNSPECIFIED" : Unspecified. Defaults to
  /// ASSIST_CONTENT_ALLOWED.
  /// - "ASSIST_CONTENT_DISALLOWED" : Assist content is blocked from being sent
  /// to a privileged app.Supported on Android 15 and above. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 15.
  /// - "ASSIST_CONTENT_ALLOWED" : Assist content is allowed to be sent to a
  /// privileged app.Supported on Android 15 and above.
  core.String? assistContentPolicy;

  /// Whether auto date, time, and time zone are enabled on a company-owned
  /// device.
  ///
  /// If this is set, then autoTimeRequired is ignored.
  /// Possible string values are:
  /// - "AUTO_DATE_AND_TIME_ZONE_UNSPECIFIED" : Unspecified. Defaults to
  /// AUTO_DATE_AND_TIME_ZONE_USER_CHOICE.
  /// - "AUTO_DATE_AND_TIME_ZONE_USER_CHOICE" : Auto date, time, and time zone
  /// are left to user's choice.
  /// - "AUTO_DATE_AND_TIME_ZONE_ENFORCED" : Enforce auto date, time, and time
  /// zone on the device.
  core.String? autoDateAndTimeZone;

  /// Whether auto time is required, which prevents the user from manually
  /// setting the date and time.
  ///
  /// If autoDateAndTimeZone is set, this field is ignored.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? autoTimeRequired;

  /// Whether applications other than the ones configured in applications are
  /// blocked from being installed.
  ///
  /// When set, applications that were installed under a previous policy but no
  /// longer appear in the policy are automatically uninstalled.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? blockApplicationsEnabled;

  /// Whether configuring bluetooth is disabled.
  core.bool? bluetoothConfigDisabled;

  /// Whether bluetooth contact sharing is disabled.
  core.bool? bluetoothContactSharingDisabled;

  /// Whether bluetooth is disabled.
  ///
  /// Prefer this setting over bluetooth_config_disabled because
  /// bluetooth_config_disabled can be bypassed by the user.
  core.bool? bluetoothDisabled;

  /// Controls the use of the camera and whether the user has access to the
  /// camera access toggle.
  /// Possible string values are:
  /// - "CAMERA_ACCESS_UNSPECIFIED" : If camera_disabled is true, this is
  /// equivalent to CAMERA_ACCESS_DISABLED. Otherwise, this is equivalent to
  /// CAMERA_ACCESS_USER_CHOICE.
  /// - "CAMERA_ACCESS_USER_CHOICE" : The field camera_disabled is ignored. This
  /// is the default device behaviour: all cameras on the device are available.
  /// On Android 12 and above, the user can use the camera access toggle.
  /// - "CAMERA_ACCESS_DISABLED" : The field camera_disabled is ignored. All
  /// cameras on the device are disabled (for fully managed devices, this
  /// applies device-wide and for work profiles this applies only to the work
  /// profile).There are no explicit restrictions placed on the camera access
  /// toggle on Android 12 and above: on fully managed devices, the camera
  /// access toggle has no effect as all cameras are disabled. On devices with a
  /// work profile, this toggle has no effect on apps in the work profile, but
  /// it affects apps outside the work profile.
  /// - "CAMERA_ACCESS_ENFORCED" : The field camera_disabled is ignored. All
  /// cameras on the device are available. On fully managed devices running
  /// Android 12 and above, the user is unable to use the camera access toggle.
  /// On devices which are not fully managed or which run Android 11 or below,
  /// this is equivalent to CAMERA_ACCESS_USER_CHOICE.
  core.String? cameraAccess;

  /// If camera_access is set to any value other than CAMERA_ACCESS_UNSPECIFIED,
  /// this has no effect.
  ///
  /// Otherwise this field controls whether cameras are disabled: If true, all
  /// cameras are disabled, otherwise they are available. For fully managed
  /// devices this field applies for all apps on the device. For work profiles,
  /// this field applies only to apps in the work profile, and the camera access
  /// of apps outside the work profile is unaffected.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? cameraDisabled;

  /// Whether configuring cell broadcast is disabled.
  core.bool? cellBroadcastsConfigDisabled;

  /// Rules for determining apps' access to private keys.
  ///
  /// See ChoosePrivateKeyRule for details. This must be empty if any
  /// application has CERT_SELECTION delegation scope.
  core.List<ChoosePrivateKeyRule>? choosePrivateKeyRules;

  /// Rules declaring which mitigating actions to take when a device is not
  /// compliant with its policy.
  ///
  /// When the conditions for multiple rules are satisfied, all of the
  /// mitigating actions for the rules are taken. There is a maximum limit of
  /// 100 rules. Use policy enforcement rules instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<ComplianceRule>? complianceRules;

  /// Whether creating windows besides app windows is disabled.
  core.bool? createWindowsDisabled;

  /// Controls which apps are allowed to act as credential providers on Android
  /// 14 and above.
  ///
  /// These apps store credentials, see this
  /// (https://developer.android.com/training/sign-in/passkeys) and this
  /// (https://developer.android.com/reference/androidx/credentials/CredentialManager)
  /// for details. See also credentialProviderPolicy.
  /// Possible string values are:
  /// - "CREDENTIAL_PROVIDER_POLICY_DEFAULT_UNSPECIFIED" : Unspecified. Defaults
  /// to CREDENTIAL_PROVIDER_DEFAULT_DISALLOWED.
  /// - "CREDENTIAL_PROVIDER_DEFAULT_DISALLOWED" : Apps with
  /// credentialProviderPolicy unspecified are not allowed to act as a
  /// credential provider.
  /// - "CREDENTIAL_PROVIDER_DEFAULT_DISALLOWED_EXCEPT_SYSTEM" : Apps with
  /// credentialProviderPolicy unspecified are not allowed to act as a
  /// credential provider except for the OEM default credential providers. OEM
  /// default credential providers are always allowed to act as credential
  /// providers.
  core.String? credentialProviderPolicyDefault;

  /// Whether configuring user credentials is disabled.
  core.bool? credentialsConfigDisabled;

  /// Cross-profile policies applied on the device.
  CrossProfilePolicies? crossProfilePolicies;

  /// Whether roaming data services are disabled.
  core.bool? dataRoamingDisabled;

  /// Whether the user is allowed to enable debugging features.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? debuggingFeaturesAllowed;

  /// The default permission policy for runtime permission requests.
  /// Possible string values are:
  /// - "PERMISSION_POLICY_UNSPECIFIED" : Policy not specified. If no policy is
  /// specified for a permission at any level, then the PROMPT behavior is used
  /// by default.
  /// - "PROMPT" : Prompt the user to grant a permission.
  /// - "GRANT" : Automatically grant a permission.On Android 12 and above,
  /// READ_SMS
  /// (https://developer.android.com/reference/android/Manifest.permission#READ_SMS)
  /// and following sensor-related permissions can only be granted on fully
  /// managed devices: ACCESS_FINE_LOCATION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACCESS_FINE_LOCATION)
  /// ACCESS_BACKGROUND_LOCATION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACCESS_BACKGROUND_LOCATION)
  /// ACCESS_COARSE_LOCATION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACCESS_COARSE_LOCATION)
  /// CAMERA
  /// (https://developer.android.com/reference/android/Manifest.permission#CAMERA)
  /// RECORD_AUDIO
  /// (https://developer.android.com/reference/android/Manifest.permission#RECORD_AUDIO)
  /// ACTIVITY_RECOGNITION
  /// (https://developer.android.com/reference/android/Manifest.permission#ACTIVITY_RECOGNITION)
  /// BODY_SENSORS
  /// (https://developer.android.com/reference/android/Manifest.permission#BODY_SENSORS)
  /// - "DENY" : Automatically deny a permission.
  core.String? defaultPermissionPolicy;

  /// Covers controls for device connectivity such as Wi-Fi, USB data access,
  /// keyboard/mouse connections, and more.
  DeviceConnectivityManagement? deviceConnectivityManagement;

  /// The device owner information to be shown on the lock screen.
  UserFacingMessage? deviceOwnerLockScreenInfo;

  /// Covers controls for radio state such as Wi-Fi, bluetooth, and more.
  DeviceRadioState? deviceRadioState;

  /// Controls for the display settings.
  ///
  /// Optional.
  DisplaySettings? displaySettings;

  /// Whether encryption is enabled
  /// Possible string values are:
  /// - "ENCRYPTION_POLICY_UNSPECIFIED" : This value is ignored, i.e. no
  /// encryption required
  /// - "ENABLED_WITHOUT_PASSWORD" : Encryption required but no password
  /// required to boot
  /// - "ENABLED_WITH_PASSWORD" : Encryption required with password required to
  /// boot
  core.String? encryptionPolicy;

  /// Whether app verification is force-enabled.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? ensureVerifyAppsEnabled;

  /// Controls whether the enterpriseDisplayName is visible on the device (e.g.
  /// lock screen message on company-owned devices).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENTERPRISE_DISPLAY_NAME_VISIBILITY_UNSPECIFIED" : Unspecified. Defaults
  /// to displaying the enterprise name that's set at the time of device setup.
  /// In future, this will default to ENTERPRISE_DISPLAY_NAME_VISIBLE.
  /// - "ENTERPRISE_DISPLAY_NAME_VISIBLE" : The enterprise display name is
  /// visible on the device. Supported on work profiles on Android 7 and above.
  /// Supported on fully managed devices on Android 8 and above. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 7. A NonComplianceDetail with MANAGEMENT_MODE is reported on
  /// fully managed devices on Android 7.
  /// - "ENTERPRISE_DISPLAY_NAME_HIDDEN" : The enterprise display name is hidden
  /// on the device.
  core.String? enterpriseDisplayNameVisibility;

  /// Whether factory resetting from settings is disabled.
  core.bool? factoryResetDisabled;

  /// Email addresses of device administrators for factory reset protection.
  ///
  /// When the device is factory reset, it will require one of these admins to
  /// log in with the Google account email and password to unlock the device. If
  /// no admins are specified, the device won't provide factory reset
  /// protection.
  core.List<core.String>? frpAdminEmails;

  /// Whether the user is allowed to have fun.
  ///
  /// Controls whether the Easter egg game in Settings is disabled.
  core.bool? funDisabled;

  /// Whether user installation of apps is disabled.
  core.bool? installAppsDisabled;

  /// This field has no effect.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? installUnknownSourcesAllowed;

  /// If true, this disables the Lock Screen
  /// (https://source.android.com/docs/core/display/multi_display/lock-screen)
  /// for primary and/or secondary displays.
  ///
  /// This policy is supported only in dedicated device management mode.
  core.bool? keyguardDisabled;

  /// Disabled keyguard customizations, such as widgets.
  core.List<core.String>? keyguardDisabledFeatures;

  /// Whether the kiosk custom launcher is enabled.
  ///
  /// This replaces the home screen with a launcher that locks down the device
  /// to the apps installed via the applications setting. Apps appear on a
  /// single page in alphabetical order. Use kioskCustomization to further
  /// configure the kiosk device behavior.
  core.bool? kioskCustomLauncherEnabled;

  /// Settings controlling the behavior of a device in kiosk mode.
  ///
  /// To enable kiosk mode, set kioskCustomLauncherEnabled to true or specify an
  /// app in the policy with installType KIOSK.
  KioskCustomization? kioskCustomization;

  /// The degree of location detection enabled.
  /// Possible string values are:
  /// - "LOCATION_MODE_UNSPECIFIED" : Defaults to LOCATION_USER_CHOICE.
  /// - "HIGH_ACCURACY" : On Android 8 and below, all location detection methods
  /// are enabled, including GPS, networks, and other sensors. On Android 9 and
  /// above, this is equivalent to LOCATION_ENFORCED.
  /// - "SENSORS_ONLY" : On Android 8 and below, only GPS and other sensors are
  /// enabled. On Android 9 and above, this is equivalent to LOCATION_ENFORCED.
  /// - "BATTERY_SAVING" : On Android 8 and below, only the network location
  /// provider is enabled. On Android 9 and above, this is equivalent to
  /// LOCATION_ENFORCED.
  /// - "OFF" : On Android 8 and below, location setting and accuracy are
  /// disabled. On Android 9 and above, this is equivalent to LOCATION_DISABLED.
  /// - "LOCATION_USER_CHOICE" : Location setting is not restricted on the
  /// device. No specific behavior is set or enforced.
  /// - "LOCATION_ENFORCED" : Enable location setting on the device. Important:
  /// On Android 11 and above, work profiles on company-owned devices cannot
  /// directly enforce enabling of location services. When LOCATION_ENFORCED is
  /// set, then a NonComplianceDetail with USER_ACTION is reported. Compliance
  /// can only be restored once the user manually turns on location services
  /// through the device's Settings application.
  /// - "LOCATION_DISABLED" : Disable location setting on the device. Important:
  /// On Android 11 and above, work profiles on company-owned devices cannot
  /// directly enforce disabling of location services. When LOCATION_DISABLED is
  /// set, then a nonComplianceDetail with USER_ACTION is reported. Compliance
  /// can only be restored once the user manually turns off location services
  /// through the device's Settings application.
  core.String? locationMode;

  /// A message displayed to the user in the device administators settings
  /// screen.
  UserFacingMessage? longSupportMessage;

  /// Maximum time in milliseconds for user activity until the device locks.
  ///
  /// A value of 0 means there is no restriction.
  core.String? maximumTimeToLock;

  /// Controls the use of the microphone and whether the user has access to the
  /// microphone access toggle.
  ///
  /// This applies only on fully managed devices.
  /// Possible string values are:
  /// - "MICROPHONE_ACCESS_UNSPECIFIED" : If unmute_microphone_disabled is true,
  /// this is equivalent to MICROPHONE_ACCESS_DISABLED. Otherwise, this is
  /// equivalent to MICROPHONE_ACCESS_USER_CHOICE.
  /// - "MICROPHONE_ACCESS_USER_CHOICE" : The field unmute_microphone_disabled
  /// is ignored. This is the default device behaviour: the microphone on the
  /// device is available. On Android 12 and above, the user can use the
  /// microphone access toggle.
  /// - "MICROPHONE_ACCESS_DISABLED" : The field unmute_microphone_disabled is
  /// ignored. The microphone on the device is disabled (for fully managed
  /// devices, this applies device-wide).The microphone access toggle has no
  /// effect as the microphone is disabled.
  /// - "MICROPHONE_ACCESS_ENFORCED" : The field unmute_microphone_disabled is
  /// ignored. The microphone on the device is available. On devices running
  /// Android 12 and above, the user is unable to use the microphone access
  /// toggle. On devices which run Android 11 or below, this is equivalent to
  /// MICROPHONE_ACCESS_USER_CHOICE.
  core.String? microphoneAccess;

  /// The minimum allowed Android API level.
  core.int? minimumApiLevel;

  /// Whether configuring mobile networks is disabled.
  core.bool? mobileNetworksConfigDisabled;

  /// Whether adding or removing accounts is disabled.
  core.bool? modifyAccountsDisabled;

  /// Whether the user mounting physical external media is disabled.
  core.bool? mountPhysicalMediaDisabled;

  /// The name of the policy in the form
  /// enterprises/{enterpriseId}/policies/{policyId}.
  core.String? name;

  /// Whether the network escape hatch is enabled.
  ///
  /// If a network connection can't be made at boot time, the escape hatch
  /// prompts the user to temporarily connect to a network in order to refresh
  /// the device policy. After applying policy, the temporary network will be
  /// forgotten and the device will continue booting. This prevents being unable
  /// to connect to a network if there is no suitable network in the last policy
  /// and the device boots into an app in lock task mode, or the user is
  /// otherwise unable to reach device settings.Note: Setting wifiConfigDisabled
  /// to true will override this setting under specific circumstances. Please
  /// see wifiConfigDisabled for further details. Setting configureWifi to
  /// DISALLOW_CONFIGURING_WIFI will override this setting under specific
  /// circumstances. Please see DISALLOW_CONFIGURING_WIFI for further details.
  core.bool? networkEscapeHatchEnabled;

  /// Whether resetting network settings is disabled.
  core.bool? networkResetDisabled;

  /// This feature is not generally available.
  core.List<OncCertificateProvider>? oncCertificateProviders;

  /// Network configuration for the device.
  ///
  /// See configure networks for more information.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? openNetworkConfiguration;

  /// Whether using NFC to beam data from apps is disabled.
  core.bool? outgoingBeamDisabled;

  /// Whether outgoing calls are disabled.
  core.bool? outgoingCallsDisabled;

  /// Password requirement policies.
  ///
  /// Different policies can be set for work profile or fully managed devices by
  /// setting the password_scope field in the policy.
  core.List<PasswordRequirements>? passwordPolicies;

  /// Password requirements.
  ///
  /// The field password_requirements.require_password_unlock must not be set.
  /// DEPRECATED - Use passwordPolicies.Note:Complexity-based values of
  /// PasswordQuality, that is, COMPLEXITY_LOW, COMPLEXITY_MEDIUM, and
  /// COMPLEXITY_HIGH, cannot be used here. unified_lock_settings cannot be used
  /// here.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  PasswordRequirements? passwordRequirements;

  /// Explicit permission or group grants or denials for all apps.
  ///
  /// These values override the default_permission_policy.
  core.List<PermissionGrant>? permissionGrants;

  /// Specifies permitted accessibility services.
  ///
  /// If the field is not set, any accessibility service can be used. If the
  /// field is set, only the accessibility services in this list and the
  /// system's built-in accessibility service can be used. In particular, if the
  /// field is set to empty, only the system's built-in accessibility servicess
  /// can be used. This can be set on fully managed devices and on work
  /// profiles. When applied to a work profile, this affects both the personal
  /// profile and the work profile.
  PackageNameList? permittedAccessibilityServices;

  /// If present, only the input methods provided by packages in this list are
  /// permitted.
  ///
  /// If this field is present, but the list is empty, then only system input
  /// methods are permitted.
  PackageNameList? permittedInputMethods;

  /// Default intent handler activities.
  core.List<PersistentPreferredActivity>? persistentPreferredActivities;

  /// Policies managing personal usage on a company-owned device.
  PersonalUsagePolicies? personalUsagePolicies;

  /// This mode controls which apps are available to the user in the Play Store
  /// and the behavior on the device when apps are removed from the policy.
  /// Possible string values are:
  /// - "PLAY_STORE_MODE_UNSPECIFIED" : Unspecified. Defaults to WHITELIST.
  /// - "WHITELIST" : Only apps that are in the policy are available and any app
  /// not in the policy will be automatically uninstalled from the device.
  /// - "BLACKLIST" : All apps are available and any app that should not be on
  /// the device should be explicitly marked as 'BLOCKED' in the applications
  /// policy.
  core.String? playStoreMode;

  /// Rules that define the behavior when a particular policy can not be applied
  /// on device
  core.List<PolicyEnforcementRule>? policyEnforcementRules;

  /// Controls whether preferential network service is enabled on the work
  /// profile or on fully managed devices.
  ///
  /// For example, an organization may have an agreement with a carrier that all
  /// of the work data from its employees' devices will be sent via a network
  /// service dedicated for enterprise use. An example of a supported
  /// preferential network service is the enterprise slice on 5G networks. This
  /// policy has no effect if preferentialNetworkServiceSettings or
  /// ApplicationPolicy.preferentialNetworkId is set on devices running Android
  /// 13 or above.
  /// Possible string values are:
  /// - "PREFERENTIAL_NETWORK_SERVICE_UNSPECIFIED" : Unspecified. Defaults to
  /// PREFERENTIAL_NETWORK_SERVICES_DISABLED.
  /// - "PREFERENTIAL_NETWORK_SERVICE_DISABLED" : Preferential network service
  /// is disabled on the work profile.
  /// - "PREFERENTIAL_NETWORK_SERVICE_ENABLED" : Preferential network service is
  /// enabled on the work profile. This setting is only supported on work
  /// profiles on devices running Android 12 or above. Starting with Android 13,
  /// fully managed devices are also supported.
  core.String? preferentialNetworkService;

  /// Controls whether printing is allowed.
  ///
  /// This is supported on devices running Android 9 and above. .
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRINTING_POLICY_UNSPECIFIED" : Unspecified. Defaults to
  /// PRINTING_ALLOWED.
  /// - "PRINTING_DISALLOWED" : Printing is disallowed. A NonComplianceDetail
  /// with API_LEVEL is reported if the Android version is less than 9.
  /// - "PRINTING_ALLOWED" : Printing is allowed.
  core.String? printingPolicy;

  /// Allows showing UI on a device for a user to choose a private key alias if
  /// there are no matching rules in ChoosePrivateKeyRules.
  ///
  /// For devices below Android P, setting this may leave enterprise keys
  /// vulnerable. This value will have no effect if any application has
  /// CERT_SELECTION delegation scope.
  core.bool? privateKeySelectionEnabled;

  /// The network-independent global HTTP proxy.
  ///
  /// Typically proxies should be configured per-network in
  /// open_network_configuration. However for unusual configurations like
  /// general internal filtering a global HTTP proxy may be useful. If the proxy
  /// is not accessible, network access may break. The global proxy is only a
  /// recommendation and some apps may ignore it.
  ProxyInfo? recommendedGlobalProxy;

  /// Whether removing other users is disabled.
  core.bool? removeUserDisabled;

  /// Whether rebooting the device into safe boot is disabled.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? safeBootDisabled;

  /// Whether screen capture is disabled.
  core.bool? screenCaptureDisabled;

  /// Whether changing the user icon is disabled.
  ///
  /// The setting has effect only on fully managed devices.
  core.bool? setUserIconDisabled;

  /// Whether changing the wallpaper is disabled.
  core.bool? setWallpaperDisabled;

  /// Action to take during the setup process.
  ///
  /// At most one action may be specified.
  core.List<SetupAction>? setupActions;

  /// Whether location sharing is disabled.
  ///
  /// share_location_disabled is supported for both fully managed devices and
  /// personally owned work profiles.
  core.bool? shareLocationDisabled;

  /// A message displayed to the user in the settings screen wherever
  /// functionality has been disabled by the admin.
  ///
  /// If the message is longer than 200 characters it may be truncated.
  UserFacingMessage? shortSupportMessage;

  /// Flag to skip hints on the first use.
  ///
  /// Enterprise admin can enable the system recommendation for apps to skip
  /// their user tutorial and other introductory hints on first start-up.
  core.bool? skipFirstUseHintsEnabled;

  /// Whether sending and receiving SMS messages is disabled.
  core.bool? smsDisabled;

  /// Whether the status bar is disabled.
  ///
  /// This disables notifications, quick settings, and other screen overlays
  /// that allow escape from full-screen mode. DEPRECATED. To disable the status
  /// bar on a kiosk device, use InstallType KIOSK or
  /// kioskCustomLauncherEnabled.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? statusBarDisabled;

  /// Status reporting settings
  StatusReportingSettings? statusReportingSettings;

  /// The battery plugged in modes for which the device stays on.
  ///
  /// When using this setting, it is recommended to clear maximum_time_to_lock
  /// so that the device doesn't lock itself while it stays on.
  core.List<core.String>? stayOnPluggedModes;

  /// The system update policy, which controls how OS updates are applied.
  ///
  /// If the update type is WINDOWED, the update window will automatically apply
  /// to Play app updates as well.Note: Google Play system updates
  /// (https://source.android.com/docs/core/ota/modular-system) (also called
  /// Mainline updates) are automatically downloaded and require a device reboot
  /// to be installed. Refer to the mainline section in Manage system updates
  /// (https://developer.android.com/work/dpc/system-updates#mainline) for
  /// further details.
  SystemUpdate? systemUpdate;

  /// Whether configuring tethering and portable hotspots is disabled.
  ///
  /// If tetheringSettings is set to anything other than
  /// TETHERING_SETTINGS_UNSPECIFIED, this setting is ignored.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? tetheringConfigDisabled;

  /// Whether user uninstallation of applications is disabled.
  ///
  /// This prevents apps from being uninstalled, even those removed using
  /// applications
  core.bool? uninstallAppsDisabled;

  /// If microphone_access is set to any value other than
  /// MICROPHONE_ACCESS_UNSPECIFIED, this has no effect.
  ///
  /// Otherwise this field controls whether microphones are disabled: If true,
  /// all microphones are disabled, otherwise they are available. This is
  /// available only on fully managed devices.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? unmuteMicrophoneDisabled;

  /// Configuration of device activity logging.
  UsageLog? usageLog;

  /// Whether transferring files over USB is disabled.
  ///
  /// This is supported only on company-owned devices.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? usbFileTransferDisabled;

  /// Whether USB storage is enabled.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? usbMassStorageEnabled;

  /// The version of the policy.
  ///
  /// This is a read-only field. The version is incremented each time the policy
  /// is updated.
  core.String? version;

  /// Whether configuring VPN is disabled.
  core.bool? vpnConfigDisabled;

  /// Whether configuring Wi-Fi networks is disabled.
  ///
  /// Supported on fully managed devices and work profiles on company-owned
  /// devices. For fully managed devices, setting this to true removes all
  /// configured networks and retains only the networks configured using
  /// openNetworkConfiguration. For work profiles on company-owned devices,
  /// existing configured networks are not affected and the user is not allowed
  /// to add, remove, or modify Wi-Fi networks. If configureWifi is set to
  /// anything other than CONFIGURE_WIFI_UNSPECIFIED, this setting is ignored.
  /// Note: If a network connection can't be made at boot time and configuring
  /// Wi-Fi is disabled then network escape hatch will be shown in order to
  /// refresh the device policy (see networkEscapeHatchEnabled).
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? wifiConfigDisabled;

  /// This is deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? wifiConfigsLockdownEnabled;

  /// Wipe flags to indicate what data is wiped when a device or profile wipe is
  /// triggered due to any reason (for example, non-compliance).
  ///
  /// This does not apply to the enterprises.devices.delete method. . This list
  /// must not have duplicates.
  ///
  /// Optional.
  core.List<core.String>? wipeDataFlags;

  /// Controls the work account setup configuration, such as details of whether
  /// a Google authenticated account is required.
  ///
  /// Optional.
  WorkAccountSetupConfig? workAccountSetupConfig;

  Policy({
    this.accountTypesWithManagementDisabled,
    this.addUserDisabled,
    this.adjustVolumeDisabled,
    this.advancedSecurityOverrides,
    this.alwaysOnVpnPackage,
    this.androidDevicePolicyTracks,
    this.appAutoUpdatePolicy,
    this.appFunctions,
    this.applications,
    this.assistContentPolicy,
    this.autoDateAndTimeZone,
    this.autoTimeRequired,
    this.blockApplicationsEnabled,
    this.bluetoothConfigDisabled,
    this.bluetoothContactSharingDisabled,
    this.bluetoothDisabled,
    this.cameraAccess,
    this.cameraDisabled,
    this.cellBroadcastsConfigDisabled,
    this.choosePrivateKeyRules,
    this.complianceRules,
    this.createWindowsDisabled,
    this.credentialProviderPolicyDefault,
    this.credentialsConfigDisabled,
    this.crossProfilePolicies,
    this.dataRoamingDisabled,
    this.debuggingFeaturesAllowed,
    this.defaultPermissionPolicy,
    this.deviceConnectivityManagement,
    this.deviceOwnerLockScreenInfo,
    this.deviceRadioState,
    this.displaySettings,
    this.encryptionPolicy,
    this.ensureVerifyAppsEnabled,
    this.enterpriseDisplayNameVisibility,
    this.factoryResetDisabled,
    this.frpAdminEmails,
    this.funDisabled,
    this.installAppsDisabled,
    this.installUnknownSourcesAllowed,
    this.keyguardDisabled,
    this.keyguardDisabledFeatures,
    this.kioskCustomLauncherEnabled,
    this.kioskCustomization,
    this.locationMode,
    this.longSupportMessage,
    this.maximumTimeToLock,
    this.microphoneAccess,
    this.minimumApiLevel,
    this.mobileNetworksConfigDisabled,
    this.modifyAccountsDisabled,
    this.mountPhysicalMediaDisabled,
    this.name,
    this.networkEscapeHatchEnabled,
    this.networkResetDisabled,
    this.oncCertificateProviders,
    this.openNetworkConfiguration,
    this.outgoingBeamDisabled,
    this.outgoingCallsDisabled,
    this.passwordPolicies,
    this.passwordRequirements,
    this.permissionGrants,
    this.permittedAccessibilityServices,
    this.permittedInputMethods,
    this.persistentPreferredActivities,
    this.personalUsagePolicies,
    this.playStoreMode,
    this.policyEnforcementRules,
    this.preferentialNetworkService,
    this.printingPolicy,
    this.privateKeySelectionEnabled,
    this.recommendedGlobalProxy,
    this.removeUserDisabled,
    this.safeBootDisabled,
    this.screenCaptureDisabled,
    this.setUserIconDisabled,
    this.setWallpaperDisabled,
    this.setupActions,
    this.shareLocationDisabled,
    this.shortSupportMessage,
    this.skipFirstUseHintsEnabled,
    this.smsDisabled,
    this.statusBarDisabled,
    this.statusReportingSettings,
    this.stayOnPluggedModes,
    this.systemUpdate,
    this.tetheringConfigDisabled,
    this.uninstallAppsDisabled,
    this.unmuteMicrophoneDisabled,
    this.usageLog,
    this.usbFileTransferDisabled,
    this.usbMassStorageEnabled,
    this.version,
    this.vpnConfigDisabled,
    this.wifiConfigDisabled,
    this.wifiConfigsLockdownEnabled,
    this.wipeDataFlags,
    this.workAccountSetupConfig,
  });

  Policy.fromJson(core.Map json_)
    : this(
        accountTypesWithManagementDisabled:
            (json_['accountTypesWithManagementDisabled'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        addUserDisabled: json_['addUserDisabled'] as core.bool?,
        adjustVolumeDisabled: json_['adjustVolumeDisabled'] as core.bool?,
        advancedSecurityOverrides:
            json_.containsKey('advancedSecurityOverrides')
                ? AdvancedSecurityOverrides.fromJson(
                  json_['advancedSecurityOverrides']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        alwaysOnVpnPackage:
            json_.containsKey('alwaysOnVpnPackage')
                ? AlwaysOnVpnPackage.fromJson(
                  json_['alwaysOnVpnPackage']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        androidDevicePolicyTracks:
            (json_['androidDevicePolicyTracks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        appAutoUpdatePolicy: json_['appAutoUpdatePolicy'] as core.String?,
        appFunctions: json_['appFunctions'] as core.String?,
        applications:
            (json_['applications'] as core.List?)
                ?.map(
                  (value) => ApplicationPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        assistContentPolicy: json_['assistContentPolicy'] as core.String?,
        autoDateAndTimeZone: json_['autoDateAndTimeZone'] as core.String?,
        autoTimeRequired: json_['autoTimeRequired'] as core.bool?,
        blockApplicationsEnabled:
            json_['blockApplicationsEnabled'] as core.bool?,
        bluetoothConfigDisabled: json_['bluetoothConfigDisabled'] as core.bool?,
        bluetoothContactSharingDisabled:
            json_['bluetoothContactSharingDisabled'] as core.bool?,
        bluetoothDisabled: json_['bluetoothDisabled'] as core.bool?,
        cameraAccess: json_['cameraAccess'] as core.String?,
        cameraDisabled: json_['cameraDisabled'] as core.bool?,
        cellBroadcastsConfigDisabled:
            json_['cellBroadcastsConfigDisabled'] as core.bool?,
        choosePrivateKeyRules:
            (json_['choosePrivateKeyRules'] as core.List?)
                ?.map(
                  (value) => ChoosePrivateKeyRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        complianceRules:
            (json_['complianceRules'] as core.List?)
                ?.map(
                  (value) => ComplianceRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createWindowsDisabled: json_['createWindowsDisabled'] as core.bool?,
        credentialProviderPolicyDefault:
            json_['credentialProviderPolicyDefault'] as core.String?,
        credentialsConfigDisabled:
            json_['credentialsConfigDisabled'] as core.bool?,
        crossProfilePolicies:
            json_.containsKey('crossProfilePolicies')
                ? CrossProfilePolicies.fromJson(
                  json_['crossProfilePolicies']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataRoamingDisabled: json_['dataRoamingDisabled'] as core.bool?,
        debuggingFeaturesAllowed:
            json_['debuggingFeaturesAllowed'] as core.bool?,
        defaultPermissionPolicy:
            json_['defaultPermissionPolicy'] as core.String?,
        deviceConnectivityManagement:
            json_.containsKey('deviceConnectivityManagement')
                ? DeviceConnectivityManagement.fromJson(
                  json_['deviceConnectivityManagement']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deviceOwnerLockScreenInfo:
            json_.containsKey('deviceOwnerLockScreenInfo')
                ? UserFacingMessage.fromJson(
                  json_['deviceOwnerLockScreenInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deviceRadioState:
            json_.containsKey('deviceRadioState')
                ? DeviceRadioState.fromJson(
                  json_['deviceRadioState']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        displaySettings:
            json_.containsKey('displaySettings')
                ? DisplaySettings.fromJson(
                  json_['displaySettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        encryptionPolicy: json_['encryptionPolicy'] as core.String?,
        ensureVerifyAppsEnabled: json_['ensureVerifyAppsEnabled'] as core.bool?,
        enterpriseDisplayNameVisibility:
            json_['enterpriseDisplayNameVisibility'] as core.String?,
        factoryResetDisabled: json_['factoryResetDisabled'] as core.bool?,
        frpAdminEmails:
            (json_['frpAdminEmails'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        funDisabled: json_['funDisabled'] as core.bool?,
        installAppsDisabled: json_['installAppsDisabled'] as core.bool?,
        installUnknownSourcesAllowed:
            json_['installUnknownSourcesAllowed'] as core.bool?,
        keyguardDisabled: json_['keyguardDisabled'] as core.bool?,
        keyguardDisabledFeatures:
            (json_['keyguardDisabledFeatures'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        kioskCustomLauncherEnabled:
            json_['kioskCustomLauncherEnabled'] as core.bool?,
        kioskCustomization:
            json_.containsKey('kioskCustomization')
                ? KioskCustomization.fromJson(
                  json_['kioskCustomization']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        locationMode: json_['locationMode'] as core.String?,
        longSupportMessage:
            json_.containsKey('longSupportMessage')
                ? UserFacingMessage.fromJson(
                  json_['longSupportMessage']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maximumTimeToLock: json_['maximumTimeToLock'] as core.String?,
        microphoneAccess: json_['microphoneAccess'] as core.String?,
        minimumApiLevel: json_['minimumApiLevel'] as core.int?,
        mobileNetworksConfigDisabled:
            json_['mobileNetworksConfigDisabled'] as core.bool?,
        modifyAccountsDisabled: json_['modifyAccountsDisabled'] as core.bool?,
        mountPhysicalMediaDisabled:
            json_['mountPhysicalMediaDisabled'] as core.bool?,
        name: json_['name'] as core.String?,
        networkEscapeHatchEnabled:
            json_['networkEscapeHatchEnabled'] as core.bool?,
        networkResetDisabled: json_['networkResetDisabled'] as core.bool?,
        oncCertificateProviders:
            (json_['oncCertificateProviders'] as core.List?)
                ?.map(
                  (value) => OncCertificateProvider.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        openNetworkConfiguration:
            json_.containsKey('openNetworkConfiguration')
                ? json_['openNetworkConfiguration']
                    as core.Map<core.String, core.dynamic>
                : null,
        outgoingBeamDisabled: json_['outgoingBeamDisabled'] as core.bool?,
        outgoingCallsDisabled: json_['outgoingCallsDisabled'] as core.bool?,
        passwordPolicies:
            (json_['passwordPolicies'] as core.List?)
                ?.map(
                  (value) => PasswordRequirements.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        passwordRequirements:
            json_.containsKey('passwordRequirements')
                ? PasswordRequirements.fromJson(
                  json_['passwordRequirements']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        permissionGrants:
            (json_['permissionGrants'] as core.List?)
                ?.map(
                  (value) => PermissionGrant.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        permittedAccessibilityServices:
            json_.containsKey('permittedAccessibilityServices')
                ? PackageNameList.fromJson(
                  json_['permittedAccessibilityServices']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        permittedInputMethods:
            json_.containsKey('permittedInputMethods')
                ? PackageNameList.fromJson(
                  json_['permittedInputMethods']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        persistentPreferredActivities:
            (json_['persistentPreferredActivities'] as core.List?)
                ?.map(
                  (value) => PersistentPreferredActivity.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        personalUsagePolicies:
            json_.containsKey('personalUsagePolicies')
                ? PersonalUsagePolicies.fromJson(
                  json_['personalUsagePolicies']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        playStoreMode: json_['playStoreMode'] as core.String?,
        policyEnforcementRules:
            (json_['policyEnforcementRules'] as core.List?)
                ?.map(
                  (value) => PolicyEnforcementRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        preferentialNetworkService:
            json_['preferentialNetworkService'] as core.String?,
        printingPolicy: json_['printingPolicy'] as core.String?,
        privateKeySelectionEnabled:
            json_['privateKeySelectionEnabled'] as core.bool?,
        recommendedGlobalProxy:
            json_.containsKey('recommendedGlobalProxy')
                ? ProxyInfo.fromJson(
                  json_['recommendedGlobalProxy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        removeUserDisabled: json_['removeUserDisabled'] as core.bool?,
        safeBootDisabled: json_['safeBootDisabled'] as core.bool?,
        screenCaptureDisabled: json_['screenCaptureDisabled'] as core.bool?,
        setUserIconDisabled: json_['setUserIconDisabled'] as core.bool?,
        setWallpaperDisabled: json_['setWallpaperDisabled'] as core.bool?,
        setupActions:
            (json_['setupActions'] as core.List?)
                ?.map(
                  (value) => SetupAction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        shareLocationDisabled: json_['shareLocationDisabled'] as core.bool?,
        shortSupportMessage:
            json_.containsKey('shortSupportMessage')
                ? UserFacingMessage.fromJson(
                  json_['shortSupportMessage']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        skipFirstUseHintsEnabled:
            json_['skipFirstUseHintsEnabled'] as core.bool?,
        smsDisabled: json_['smsDisabled'] as core.bool?,
        statusBarDisabled: json_['statusBarDisabled'] as core.bool?,
        statusReportingSettings:
            json_.containsKey('statusReportingSettings')
                ? StatusReportingSettings.fromJson(
                  json_['statusReportingSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stayOnPluggedModes:
            (json_['stayOnPluggedModes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        systemUpdate:
            json_.containsKey('systemUpdate')
                ? SystemUpdate.fromJson(
                  json_['systemUpdate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tetheringConfigDisabled: json_['tetheringConfigDisabled'] as core.bool?,
        uninstallAppsDisabled: json_['uninstallAppsDisabled'] as core.bool?,
        unmuteMicrophoneDisabled:
            json_['unmuteMicrophoneDisabled'] as core.bool?,
        usageLog:
            json_.containsKey('usageLog')
                ? UsageLog.fromJson(
                  json_['usageLog'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        usbFileTransferDisabled: json_['usbFileTransferDisabled'] as core.bool?,
        usbMassStorageEnabled: json_['usbMassStorageEnabled'] as core.bool?,
        version: json_['version'] as core.String?,
        vpnConfigDisabled: json_['vpnConfigDisabled'] as core.bool?,
        wifiConfigDisabled: json_['wifiConfigDisabled'] as core.bool?,
        wifiConfigsLockdownEnabled:
            json_['wifiConfigsLockdownEnabled'] as core.bool?,
        wipeDataFlags:
            (json_['wipeDataFlags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        workAccountSetupConfig:
            json_.containsKey('workAccountSetupConfig')
                ? WorkAccountSetupConfig.fromJson(
                  json_['workAccountSetupConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountTypesWithManagementDisabled != null)
      'accountTypesWithManagementDisabled': accountTypesWithManagementDisabled!,
    if (addUserDisabled != null) 'addUserDisabled': addUserDisabled!,
    if (adjustVolumeDisabled != null)
      'adjustVolumeDisabled': adjustVolumeDisabled!,
    if (advancedSecurityOverrides != null)
      'advancedSecurityOverrides': advancedSecurityOverrides!,
    if (alwaysOnVpnPackage != null) 'alwaysOnVpnPackage': alwaysOnVpnPackage!,
    if (androidDevicePolicyTracks != null)
      'androidDevicePolicyTracks': androidDevicePolicyTracks!,
    if (appAutoUpdatePolicy != null)
      'appAutoUpdatePolicy': appAutoUpdatePolicy!,
    if (appFunctions != null) 'appFunctions': appFunctions!,
    if (applications != null) 'applications': applications!,
    if (assistContentPolicy != null)
      'assistContentPolicy': assistContentPolicy!,
    if (autoDateAndTimeZone != null)
      'autoDateAndTimeZone': autoDateAndTimeZone!,
    if (autoTimeRequired != null) 'autoTimeRequired': autoTimeRequired!,
    if (blockApplicationsEnabled != null)
      'blockApplicationsEnabled': blockApplicationsEnabled!,
    if (bluetoothConfigDisabled != null)
      'bluetoothConfigDisabled': bluetoothConfigDisabled!,
    if (bluetoothContactSharingDisabled != null)
      'bluetoothContactSharingDisabled': bluetoothContactSharingDisabled!,
    if (bluetoothDisabled != null) 'bluetoothDisabled': bluetoothDisabled!,
    if (cameraAccess != null) 'cameraAccess': cameraAccess!,
    if (cameraDisabled != null) 'cameraDisabled': cameraDisabled!,
    if (cellBroadcastsConfigDisabled != null)
      'cellBroadcastsConfigDisabled': cellBroadcastsConfigDisabled!,
    if (choosePrivateKeyRules != null)
      'choosePrivateKeyRules': choosePrivateKeyRules!,
    if (complianceRules != null) 'complianceRules': complianceRules!,
    if (createWindowsDisabled != null)
      'createWindowsDisabled': createWindowsDisabled!,
    if (credentialProviderPolicyDefault != null)
      'credentialProviderPolicyDefault': credentialProviderPolicyDefault!,
    if (credentialsConfigDisabled != null)
      'credentialsConfigDisabled': credentialsConfigDisabled!,
    if (crossProfilePolicies != null)
      'crossProfilePolicies': crossProfilePolicies!,
    if (dataRoamingDisabled != null)
      'dataRoamingDisabled': dataRoamingDisabled!,
    if (debuggingFeaturesAllowed != null)
      'debuggingFeaturesAllowed': debuggingFeaturesAllowed!,
    if (defaultPermissionPolicy != null)
      'defaultPermissionPolicy': defaultPermissionPolicy!,
    if (deviceConnectivityManagement != null)
      'deviceConnectivityManagement': deviceConnectivityManagement!,
    if (deviceOwnerLockScreenInfo != null)
      'deviceOwnerLockScreenInfo': deviceOwnerLockScreenInfo!,
    if (deviceRadioState != null) 'deviceRadioState': deviceRadioState!,
    if (displaySettings != null) 'displaySettings': displaySettings!,
    if (encryptionPolicy != null) 'encryptionPolicy': encryptionPolicy!,
    if (ensureVerifyAppsEnabled != null)
      'ensureVerifyAppsEnabled': ensureVerifyAppsEnabled!,
    if (enterpriseDisplayNameVisibility != null)
      'enterpriseDisplayNameVisibility': enterpriseDisplayNameVisibility!,
    if (factoryResetDisabled != null)
      'factoryResetDisabled': factoryResetDisabled!,
    if (frpAdminEmails != null) 'frpAdminEmails': frpAdminEmails!,
    if (funDisabled != null) 'funDisabled': funDisabled!,
    if (installAppsDisabled != null)
      'installAppsDisabled': installAppsDisabled!,
    if (installUnknownSourcesAllowed != null)
      'installUnknownSourcesAllowed': installUnknownSourcesAllowed!,
    if (keyguardDisabled != null) 'keyguardDisabled': keyguardDisabled!,
    if (keyguardDisabledFeatures != null)
      'keyguardDisabledFeatures': keyguardDisabledFeatures!,
    if (kioskCustomLauncherEnabled != null)
      'kioskCustomLauncherEnabled': kioskCustomLauncherEnabled!,
    if (kioskCustomization != null) 'kioskCustomization': kioskCustomization!,
    if (locationMode != null) 'locationMode': locationMode!,
    if (longSupportMessage != null) 'longSupportMessage': longSupportMessage!,
    if (maximumTimeToLock != null) 'maximumTimeToLock': maximumTimeToLock!,
    if (microphoneAccess != null) 'microphoneAccess': microphoneAccess!,
    if (minimumApiLevel != null) 'minimumApiLevel': minimumApiLevel!,
    if (mobileNetworksConfigDisabled != null)
      'mobileNetworksConfigDisabled': mobileNetworksConfigDisabled!,
    if (modifyAccountsDisabled != null)
      'modifyAccountsDisabled': modifyAccountsDisabled!,
    if (mountPhysicalMediaDisabled != null)
      'mountPhysicalMediaDisabled': mountPhysicalMediaDisabled!,
    if (name != null) 'name': name!,
    if (networkEscapeHatchEnabled != null)
      'networkEscapeHatchEnabled': networkEscapeHatchEnabled!,
    if (networkResetDisabled != null)
      'networkResetDisabled': networkResetDisabled!,
    if (oncCertificateProviders != null)
      'oncCertificateProviders': oncCertificateProviders!,
    if (openNetworkConfiguration != null)
      'openNetworkConfiguration': openNetworkConfiguration!,
    if (outgoingBeamDisabled != null)
      'outgoingBeamDisabled': outgoingBeamDisabled!,
    if (outgoingCallsDisabled != null)
      'outgoingCallsDisabled': outgoingCallsDisabled!,
    if (passwordPolicies != null) 'passwordPolicies': passwordPolicies!,
    if (passwordRequirements != null)
      'passwordRequirements': passwordRequirements!,
    if (permissionGrants != null) 'permissionGrants': permissionGrants!,
    if (permittedAccessibilityServices != null)
      'permittedAccessibilityServices': permittedAccessibilityServices!,
    if (permittedInputMethods != null)
      'permittedInputMethods': permittedInputMethods!,
    if (persistentPreferredActivities != null)
      'persistentPreferredActivities': persistentPreferredActivities!,
    if (personalUsagePolicies != null)
      'personalUsagePolicies': personalUsagePolicies!,
    if (playStoreMode != null) 'playStoreMode': playStoreMode!,
    if (policyEnforcementRules != null)
      'policyEnforcementRules': policyEnforcementRules!,
    if (preferentialNetworkService != null)
      'preferentialNetworkService': preferentialNetworkService!,
    if (printingPolicy != null) 'printingPolicy': printingPolicy!,
    if (privateKeySelectionEnabled != null)
      'privateKeySelectionEnabled': privateKeySelectionEnabled!,
    if (recommendedGlobalProxy != null)
      'recommendedGlobalProxy': recommendedGlobalProxy!,
    if (removeUserDisabled != null) 'removeUserDisabled': removeUserDisabled!,
    if (safeBootDisabled != null) 'safeBootDisabled': safeBootDisabled!,
    if (screenCaptureDisabled != null)
      'screenCaptureDisabled': screenCaptureDisabled!,
    if (setUserIconDisabled != null)
      'setUserIconDisabled': setUserIconDisabled!,
    if (setWallpaperDisabled != null)
      'setWallpaperDisabled': setWallpaperDisabled!,
    if (setupActions != null) 'setupActions': setupActions!,
    if (shareLocationDisabled != null)
      'shareLocationDisabled': shareLocationDisabled!,
    if (shortSupportMessage != null)
      'shortSupportMessage': shortSupportMessage!,
    if (skipFirstUseHintsEnabled != null)
      'skipFirstUseHintsEnabled': skipFirstUseHintsEnabled!,
    if (smsDisabled != null) 'smsDisabled': smsDisabled!,
    if (statusBarDisabled != null) 'statusBarDisabled': statusBarDisabled!,
    if (statusReportingSettings != null)
      'statusReportingSettings': statusReportingSettings!,
    if (stayOnPluggedModes != null) 'stayOnPluggedModes': stayOnPluggedModes!,
    if (systemUpdate != null) 'systemUpdate': systemUpdate!,
    if (tetheringConfigDisabled != null)
      'tetheringConfigDisabled': tetheringConfigDisabled!,
    if (uninstallAppsDisabled != null)
      'uninstallAppsDisabled': uninstallAppsDisabled!,
    if (unmuteMicrophoneDisabled != null)
      'unmuteMicrophoneDisabled': unmuteMicrophoneDisabled!,
    if (usageLog != null) 'usageLog': usageLog!,
    if (usbFileTransferDisabled != null)
      'usbFileTransferDisabled': usbFileTransferDisabled!,
    if (usbMassStorageEnabled != null)
      'usbMassStorageEnabled': usbMassStorageEnabled!,
    if (version != null) 'version': version!,
    if (vpnConfigDisabled != null) 'vpnConfigDisabled': vpnConfigDisabled!,
    if (wifiConfigDisabled != null) 'wifiConfigDisabled': wifiConfigDisabled!,
    if (wifiConfigsLockdownEnabled != null)
      'wifiConfigsLockdownEnabled': wifiConfigsLockdownEnabled!,
    if (wipeDataFlags != null) 'wipeDataFlags': wipeDataFlags!,
    if (workAccountSetupConfig != null)
      'workAccountSetupConfig': workAccountSetupConfig!,
  };
}

/// A rule that defines the actions to take if a device or work profile is not
/// compliant with the policy specified in settingName.
///
/// In the case of multiple matching or multiple triggered enforcement rules, a
/// merge will occur with the most severe action being taken. However, all
/// triggered rules are still kept track of: this includes initial trigger time
/// and all associated non-compliance details. In the situation where the most
/// severe enforcement rule is satisfied, the next most appropriate action is
/// applied.
class PolicyEnforcementRule {
  /// An action to block access to apps and data on a company owned device or in
  /// a work profile.
  ///
  /// This action also triggers a user-facing notification with information
  /// (where possible) on how to correct the compliance issue. Note: wipeAction
  /// must also be specified.
  BlockAction? blockAction;

  /// The top-level policy to enforce.
  ///
  /// For example, applications or passwordPolicies.
  core.String? settingName;

  /// An action to reset a company owned device or delete a work profile.
  ///
  /// Note: blockAction must also be specified.
  WipeAction? wipeAction;

  PolicyEnforcementRule({this.blockAction, this.settingName, this.wipeAction});

  PolicyEnforcementRule.fromJson(core.Map json_)
    : this(
        blockAction:
            json_.containsKey('blockAction')
                ? BlockAction.fromJson(
                  json_['blockAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        settingName: json_['settingName'] as core.String?,
        wipeAction:
            json_.containsKey('wipeAction')
                ? WipeAction.fromJson(
                  json_['wipeAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blockAction != null) 'blockAction': blockAction!,
    if (settingName != null) 'settingName': settingName!,
    if (wipeAction != null) 'wipeAction': wipeAction!,
  };
}

/// Additional details regarding the security posture of the device.
class PostureDetail {
  /// Corresponding admin-facing advice to mitigate this security risk and
  /// improve the security posture of the device.
  core.List<UserFacingMessage>? advice;

  /// A specific security risk that negatively affects the security posture of
  /// the device.
  /// Possible string values are:
  /// - "SECURITY_RISK_UNSPECIFIED" : Unspecified.
  /// - "UNKNOWN_OS" : Play Integrity API detects that the device is running an
  /// unknown OS (basicIntegrity check succeeds but ctsProfileMatch fails).
  /// - "COMPROMISED_OS" : Play Integrity API detects that the device is running
  /// a compromised OS (basicIntegrity check fails).
  /// - "HARDWARE_BACKED_EVALUATION_FAILED" : Play Integrity API detects that
  /// the device does not have a strong guarantee of system integrity, if the
  /// MEETS_STRONG_INTEGRITY label doesn't show in the device integrity field
  /// (https://developer.android.com/google/play/integrity/verdicts#device-integrity-field).
  core.String? securityRisk;

  PostureDetail({this.advice, this.securityRisk});

  PostureDetail.fromJson(core.Map json_)
    : this(
        advice:
            (json_['advice'] as core.List?)
                ?.map(
                  (value) => UserFacingMessage.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        securityRisk: json_['securityRisk'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (advice != null) 'advice': advice!,
    if (securityRisk != null) 'securityRisk': securityRisk!,
  };
}

/// A power management event.
class PowerManagementEvent {
  /// For BATTERY_LEVEL_COLLECTED events, the battery level as a percentage.
  core.double? batteryLevel;

  /// The creation time of the event.
  core.String? createTime;

  /// Event type.
  /// Possible string values are:
  /// - "POWER_MANAGEMENT_EVENT_TYPE_UNSPECIFIED" : Unspecified. No events have
  /// this type.
  /// - "BATTERY_LEVEL_COLLECTED" : Battery level was measured.
  /// - "POWER_CONNECTED" : The device started charging.
  /// - "POWER_DISCONNECTED" : The device stopped charging.
  /// - "BATTERY_LOW" : The device entered low-power mode.
  /// - "BATTERY_OKAY" : The device exited low-power mode.
  /// - "BOOT_COMPLETED" : The device booted.
  /// - "SHUTDOWN" : The device shut down.
  core.String? eventType;

  PowerManagementEvent({this.batteryLevel, this.createTime, this.eventType});

  PowerManagementEvent.fromJson(core.Map json_)
    : this(
        batteryLevel: (json_['batteryLevel'] as core.num?)?.toDouble(),
        createTime: json_['createTime'] as core.String?,
        eventType: json_['eventType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batteryLevel != null) 'batteryLevel': batteryLevel!,
    if (createTime != null) 'createTime': createTime!,
    if (eventType != null) 'eventType': eventType!,
  };
}

/// Individual preferential network service configuration.
class PreferentialNetworkServiceConfig {
  /// Whether fallback to the device-wide default network is allowed.
  ///
  /// If this is set to FALLBACK_TO_DEFAULT_CONNECTION_ALLOWED, then
  /// nonMatchingNetworks must not be set to NON_MATCHING_NETWORKS_DISALLOWED,
  /// the policy will be rejected otherwise. Note: If this is set to
  /// FALLBACK_TO_DEFAULT_CONNECTION_DISALLOWED, applications are not able to
  /// access the internet if the 5G slice is not available.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FALLBACK_TO_DEFAULT_CONNECTION_UNSPECIFIED" : Unspecified. Defaults to
  /// FALLBACK_TO_DEFAULT_CONNECTION_ALLOWED.
  /// - "FALLBACK_TO_DEFAULT_CONNECTION_ALLOWED" : Fallback to default
  /// connection is allowed. If this is set, nonMatchingNetworks must not be set
  /// to NON_MATCHING_NETWORKS_DISALLOWED, the policy will be rejected
  /// otherwise.
  /// - "FALLBACK_TO_DEFAULT_CONNECTION_DISALLOWED" : Fallback to default
  /// connection is not allowed.
  core.String? fallbackToDefaultConnection;

  /// Whether apps this configuration applies to are blocked from using networks
  /// other than the preferential service.
  ///
  /// If this is set to NON_MATCHING_NETWORKS_DISALLOWED, then
  /// fallbackToDefaultConnection must be set to
  /// FALLBACK_TO_DEFAULT_CONNECTION_DISALLOWED.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "NON_MATCHING_NETWORKS_UNSPECIFIED" : Unspecified. Defaults to
  /// NON_MATCHING_NETWORKS_ALLOWED.
  /// - "NON_MATCHING_NETWORKS_ALLOWED" : Apps this configuration applies to are
  /// allowed to use networks other than the preferential service.
  /// - "NON_MATCHING_NETWORKS_DISALLOWED" : Apps this configuration applies to
  /// are disallowed from using other networks than the preferential service.
  /// This can be set on Android 14 and above. A NonComplianceDetail with
  /// API_LEVEL is reported if the Android version is less than 14. If this is
  /// set, fallbackToDefaultConnection must be set to
  /// FALLBACK_TO_DEFAULT_CONNECTION_DISALLOWED, the policy will be rejected
  /// otherwise.
  core.String? nonMatchingNetworks;

  /// Preferential network identifier.
  ///
  /// This must not be set to NO_PREFERENTIAL_NETWORK or
  /// PREFERENTIAL_NETWORK_ID_UNSPECIFIED, the policy will be rejected
  /// otherwise.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PREFERENTIAL_NETWORK_ID_UNSPECIFIED" : Whether this value is valid and
  /// what it means depends on where it is used, and this is documented on the
  /// relevant fields.
  /// - "NO_PREFERENTIAL_NETWORK" : Application does not use any preferential
  /// network.
  /// - "PREFERENTIAL_NETWORK_ID_ONE" : Preferential network identifier 1.
  /// - "PREFERENTIAL_NETWORK_ID_TWO" : Preferential network identifier 2.
  /// - "PREFERENTIAL_NETWORK_ID_THREE" : Preferential network identifier 3.
  /// - "PREFERENTIAL_NETWORK_ID_FOUR" : Preferential network identifier 4.
  /// - "PREFERENTIAL_NETWORK_ID_FIVE" : Preferential network identifier 5.
  core.String? preferentialNetworkId;

  PreferentialNetworkServiceConfig({
    this.fallbackToDefaultConnection,
    this.nonMatchingNetworks,
    this.preferentialNetworkId,
  });

  PreferentialNetworkServiceConfig.fromJson(core.Map json_)
    : this(
        fallbackToDefaultConnection:
            json_['fallbackToDefaultConnection'] as core.String?,
        nonMatchingNetworks: json_['nonMatchingNetworks'] as core.String?,
        preferentialNetworkId: json_['preferentialNetworkId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fallbackToDefaultConnection != null)
      'fallbackToDefaultConnection': fallbackToDefaultConnection!,
    if (nonMatchingNetworks != null)
      'nonMatchingNetworks': nonMatchingNetworks!,
    if (preferentialNetworkId != null)
      'preferentialNetworkId': preferentialNetworkId!,
  };
}

/// Preferential network service settings.
class PreferentialNetworkServiceSettings {
  /// Default preferential network ID for the applications that are not in
  /// applications or if ApplicationPolicy.preferentialNetworkId is set to
  /// PREFERENTIAL_NETWORK_ID_UNSPECIFIED.
  ///
  /// There must be a configuration for the specified network ID in
  /// preferentialNetworkServiceConfigs, unless this is set to
  /// NO_PREFERENTIAL_NETWORK. If set to PREFERENTIAL_NETWORK_ID_UNSPECIFIED or
  /// unset, this defaults to NO_PREFERENTIAL_NETWORK. Note: If the default
  /// preferential network is misconfigured, applications with no
  /// ApplicationPolicy.preferentialNetworkId set are not able to access the
  /// internet. This setting does not apply to the following critical apps:
  /// com.google.android.apps.work.clouddpc
  /// com.google.android.gmsApplicationPolicy.preferentialNetworkId can still be
  /// used to configure the preferential network for them.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PREFERENTIAL_NETWORK_ID_UNSPECIFIED" : Whether this value is valid and
  /// what it means depends on where it is used, and this is documented on the
  /// relevant fields.
  /// - "NO_PREFERENTIAL_NETWORK" : Application does not use any preferential
  /// network.
  /// - "PREFERENTIAL_NETWORK_ID_ONE" : Preferential network identifier 1.
  /// - "PREFERENTIAL_NETWORK_ID_TWO" : Preferential network identifier 2.
  /// - "PREFERENTIAL_NETWORK_ID_THREE" : Preferential network identifier 3.
  /// - "PREFERENTIAL_NETWORK_ID_FOUR" : Preferential network identifier 4.
  /// - "PREFERENTIAL_NETWORK_ID_FIVE" : Preferential network identifier 5.
  core.String? defaultPreferentialNetworkId;

  /// Preferential network service configurations which enables having multiple
  /// enterprise slices.
  ///
  /// There must not be multiple configurations with the same
  /// preferentialNetworkId. If a configuration is not referenced by any
  /// application by setting ApplicationPolicy.preferentialNetworkId or by
  /// setting defaultPreferentialNetworkId, it will be ignored. For devices on
  /// 4G networks, enterprise APN needs to be configured additionally to set up
  /// data call for preferential network service. These APNs can be added using
  /// apnPolicy.
  ///
  /// Required.
  core.List<PreferentialNetworkServiceConfig>?
  preferentialNetworkServiceConfigs;

  PreferentialNetworkServiceSettings({
    this.defaultPreferentialNetworkId,
    this.preferentialNetworkServiceConfigs,
  });

  PreferentialNetworkServiceSettings.fromJson(core.Map json_)
    : this(
        defaultPreferentialNetworkId:
            json_['defaultPreferentialNetworkId'] as core.String?,
        preferentialNetworkServiceConfigs:
            (json_['preferentialNetworkServiceConfigs'] as core.List?)
                ?.map(
                  (value) => PreferentialNetworkServiceConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultPreferentialNetworkId != null)
      'defaultPreferentialNetworkId': defaultPreferentialNetworkId!,
    if (preferentialNetworkServiceConfigs != null)
      'preferentialNetworkServiceConfigs': preferentialNetworkServiceConfigs!,
  };
}

/// Information about a device that is available during setup.
class ProvisioningInfo {
  /// The API level of the Android platform version running on the device.
  core.int? apiLevel;

  /// The email address of the authenticated user (only present for Google
  /// Account provisioning method).
  core.String? authenticatedUserEmail;

  /// The brand of the device.
  ///
  /// For example, Google.
  core.String? brand;

  /// The name of the enterprise in the form enterprises/{enterprise}.
  core.String? enterprise;

  /// For corporate-owned devices, IMEI number of the GSM device.
  ///
  /// For example, A1000031212.
  core.String? imei;

  /// The management mode of the device or profile.
  /// Possible string values are:
  /// - "MANAGEMENT_MODE_UNSPECIFIED" : This value is disallowed.
  /// - "DEVICE_OWNER" : Device owner. Android Device Policy has full control
  /// over the device.
  /// - "PROFILE_OWNER" : Profile owner. Android Device Policy has control over
  /// a managed profile on the device.
  core.String? managementMode;

  /// For corporate-owned devices, MEID number of the CDMA device.
  ///
  /// For example, A00000292788E1.
  core.String? meid;

  /// The model of the device.
  ///
  /// For example, Asus Nexus 7.
  core.String? model;

  /// The name of this resource in the form
  /// provisioningInfo/{provisioning_info}.
  core.String? name;

  /// Ownership of the managed device.
  /// Possible string values are:
  /// - "OWNERSHIP_UNSPECIFIED" : Ownership is unspecified.
  /// - "COMPANY_OWNED" : Device is company-owned.
  /// - "PERSONALLY_OWNED" : Device is personally-owned.
  core.String? ownership;

  /// For corporate-owned devices, The device serial number.
  core.String? serialNumber;

  ProvisioningInfo({
    this.apiLevel,
    this.authenticatedUserEmail,
    this.brand,
    this.enterprise,
    this.imei,
    this.managementMode,
    this.meid,
    this.model,
    this.name,
    this.ownership,
    this.serialNumber,
  });

  ProvisioningInfo.fromJson(core.Map json_)
    : this(
        apiLevel: json_['apiLevel'] as core.int?,
        authenticatedUserEmail: json_['authenticatedUserEmail'] as core.String?,
        brand: json_['brand'] as core.String?,
        enterprise: json_['enterprise'] as core.String?,
        imei: json_['imei'] as core.String?,
        managementMode: json_['managementMode'] as core.String?,
        meid: json_['meid'] as core.String?,
        model: json_['model'] as core.String?,
        name: json_['name'] as core.String?,
        ownership: json_['ownership'] as core.String?,
        serialNumber: json_['serialNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiLevel != null) 'apiLevel': apiLevel!,
    if (authenticatedUserEmail != null)
      'authenticatedUserEmail': authenticatedUserEmail!,
    if (brand != null) 'brand': brand!,
    if (enterprise != null) 'enterprise': enterprise!,
    if (imei != null) 'imei': imei!,
    if (managementMode != null) 'managementMode': managementMode!,
    if (meid != null) 'meid': meid!,
    if (model != null) 'model': model!,
    if (name != null) 'name': name!,
    if (ownership != null) 'ownership': ownership!,
    if (serialNumber != null) 'serialNumber': serialNumber!,
  };
}

/// Configuration info for an HTTP proxy.
///
/// For a direct proxy, set the host, port, and excluded_hosts fields. For a PAC
/// script proxy, set the pac_uri field.
class ProxyInfo {
  /// For a direct proxy, the hosts for which the proxy is bypassed.
  ///
  /// The host names may contain wildcards such as *.example.com.
  core.List<core.String>? excludedHosts;

  /// The host of the direct proxy.
  core.String? host;

  /// The URI of the PAC script used to configure the proxy.
  core.String? pacUri;

  /// The port of the direct proxy.
  core.int? port;

  ProxyInfo({this.excludedHosts, this.host, this.pacUri, this.port});

  ProxyInfo.fromJson(core.Map json_)
    : this(
        excludedHosts:
            (json_['excludedHosts'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        host: json_['host'] as core.String?,
        pacUri: json_['pacUri'] as core.String?,
        port: json_['port'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (excludedHosts != null) 'excludedHosts': excludedHosts!,
    if (host != null) 'host': host!,
    if (pacUri != null) 'pacUri': pacUri!,
    if (port != null) 'port': port!,
  };
}

/// Parameters associated with the REMOVE_ESIM command to remove an eSIM profile
/// from the device.
class RemoveEsimParams {
  /// ICC ID of the eSIM profile to be deleted.
  ///
  /// Required.
  core.String? iccId;

  RemoveEsimParams({this.iccId});

  RemoveEsimParams.fromJson(core.Map json_)
    : this(iccId: json_['iccId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (iccId != null) 'iccId': iccId!,
  };
}

/// Request to remove ApplicationPolicy objects in the given policy.
class RemovePolicyApplicationsRequest {
  /// Package names to be removed.
  ///
  /// Entries that are not found are ignored. There must be at least one entry
  /// in package_names.
  ///
  /// Required.
  core.List<core.String>? packageNames;

  RemovePolicyApplicationsRequest({this.packageNames});

  RemovePolicyApplicationsRequest.fromJson(core.Map json_)
    : this(
        packageNames:
            (json_['packageNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (packageNames != null) 'packageNames': packageNames!,
  };
}

/// Response to a request to remove ApplicationPolicy objects in the given
/// policy.
class RemovePolicyApplicationsResponse {
  /// The updated policy after ApplicationPolicy objects have been removed.
  Policy? policy;

  RemovePolicyApplicationsResponse({this.policy});

  RemovePolicyApplicationsResponse.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policy != null) 'policy': policy!,
  };
}

/// Parameters associated with the REQUEST_DEVICE_INFO command to get device
/// related information.
class RequestDeviceInfoParams {
  /// Type of device information to be requested.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DEVICE_INFO_UNSPECIFIED" : This value is disallowed.
  /// - "EID" : Request the identifier for eSIM. The user will be asked to
  /// approve the disclosure of the information before the result can be
  /// returned. If the user doesn't approve the disclosure, USER_DECLINED will
  /// be returned. This is supported only for personally owned devices with work
  /// profiles and Android versions 13 and above.
  core.String? deviceInfo;

  RequestDeviceInfoParams({this.deviceInfo});

  RequestDeviceInfoParams.fromJson(core.Map json_)
    : this(deviceInfo: json_['deviceInfo'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (deviceInfo != null) 'deviceInfo': deviceInfo!,
  };
}

/// Status of the REQUEST_DEVICE_INFO command.
class RequestDeviceInfoStatus {
  /// Information related to the EIDs of the device.
  EidInfo? eidInfo;

  /// Status of a REQUEST_DEVICE_INFO command.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified. This value is not used.
  /// - "SUCCEEDED" : Device information has been successfully delivered.
  /// - "PENDING_USER_ACTION" : The user has not completed the actions required
  /// to share device information.
  /// - "USER_DECLINED" : The user declined sharing device information.
  /// - "UNSUPPORTED" : The requested device info is not supported on this
  /// device, e.g. eSIM is not supported on the device.
  core.String? status;

  RequestDeviceInfoStatus({this.eidInfo, this.status});

  RequestDeviceInfoStatus.fromJson(core.Map json_)
    : this(
        eidInfo:
            json_.containsKey('eidInfo')
                ? EidInfo.fromJson(
                  json_['eidInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eidInfo != null) 'eidInfo': eidInfo!,
    if (status != null) 'status': status!,
  };
}

/// Controls for the screen brightness settings.
class ScreenBrightnessSettings {
  /// The screen brightness between 1 and 255 where 1 is the lowest and 255 is
  /// the highest brightness.
  ///
  /// A value of 0 (default) means no screen brightness set. Any other value is
  /// rejected. screenBrightnessMode must be either BRIGHTNESS_AUTOMATIC or
  /// BRIGHTNESS_FIXED to set this. Supported on Android 9 and above on fully
  /// managed devices. A NonComplianceDetail with API_LEVEL is reported if the
  /// Android version is less than 9. Supported on work profiles on
  /// company-owned devices on Android 15 and above.
  ///
  /// Optional.
  core.int? screenBrightness;

  /// Controls the screen brightness mode.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SCREEN_BRIGHTNESS_MODE_UNSPECIFIED" : Unspecified. Defaults to
  /// BRIGHTNESS_USER_CHOICE.
  /// - "BRIGHTNESS_USER_CHOICE" : The user is allowed to configure the screen
  /// brightness. screenBrightness must not be set.
  /// - "BRIGHTNESS_AUTOMATIC" : The screen brightness mode is automatic in
  /// which the brightness is automatically adjusted and the user is not allowed
  /// to configure the screen brightness. screenBrightness can still be set and
  /// it is taken into account while the brightness is automatically adjusted.
  /// Supported on Android 9 and above on fully managed devices. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 9. Supported on work profiles on company-owned devices on
  /// Android 15 and above.
  /// - "BRIGHTNESS_FIXED" : The screen brightness mode is fixed in which the
  /// brightness is set to screenBrightness and the user is not allowed to
  /// configure the screen brightness. screenBrightness must be set. Supported
  /// on Android 9 and above on fully managed devices. A NonComplianceDetail
  /// with API_LEVEL is reported if the Android version is less than 9.
  /// Supported on work profiles on company-owned devices on Android 15 and
  /// above.
  core.String? screenBrightnessMode;

  ScreenBrightnessSettings({this.screenBrightness, this.screenBrightnessMode});

  ScreenBrightnessSettings.fromJson(core.Map json_)
    : this(
        screenBrightness: json_['screenBrightness'] as core.int?,
        screenBrightnessMode: json_['screenBrightnessMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (screenBrightness != null) 'screenBrightness': screenBrightness!,
    if (screenBrightnessMode != null)
      'screenBrightnessMode': screenBrightnessMode!,
  };
}

/// Controls the screen timeout settings.
class ScreenTimeoutSettings {
  /// Controls the screen timeout duration.
  ///
  /// The screen timeout duration must be greater than 0, otherwise it is
  /// rejected. Additionally, it should not be greater than maximumTimeToLock,
  /// otherwise the screen timeout is set to maximumTimeToLock and a
  /// NonComplianceDetail with INVALID_VALUE reason and
  /// SCREEN_TIMEOUT_GREATER_THAN_MAXIMUM_TIME_TO_LOCK specific reason is
  /// reported. If the screen timeout is less than a certain lower bound, it is
  /// set to the lower bound. The lower bound may vary across devices. If this
  /// is set, screenTimeoutMode must be SCREEN_TIMEOUT_ENFORCED. Supported on
  /// Android 9 and above on fully managed devices. A NonComplianceDetail with
  /// API_LEVEL is reported if the Android version is less than 9. Supported on
  /// work profiles on company-owned devices on Android 15 and above.
  ///
  /// Optional.
  core.String? screenTimeout;

  /// Controls whether the user is allowed to configure the screen timeout.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SCREEN_TIMEOUT_MODE_UNSPECIFIED" : Unspecified. Defaults to
  /// SCREEN_TIMEOUT_USER_CHOICE.
  /// - "SCREEN_TIMEOUT_USER_CHOICE" : The user is allowed to configure the
  /// screen timeout. screenTimeout must not be set.
  /// - "SCREEN_TIMEOUT_ENFORCED" : The screen timeout is set to screenTimeout
  /// and the user is not allowed to configure the timeout. screenTimeout must
  /// be set. Supported on Android 9 and above on fully managed devices. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 9. Supported on work profiles on company-owned devices on
  /// Android 15 and above.
  core.String? screenTimeoutMode;

  ScreenTimeoutSettings({this.screenTimeout, this.screenTimeoutMode});

  ScreenTimeoutSettings.fromJson(core.Map json_)
    : this(
        screenTimeout: json_['screenTimeout'] as core.String?,
        screenTimeoutMode: json_['screenTimeoutMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (screenTimeout != null) 'screenTimeout': screenTimeout!,
    if (screenTimeoutMode != null) 'screenTimeoutMode': screenTimeoutMode!,
  };
}

/// The security posture of the device, as determined by the current device
/// state and the policies applied.
class SecurityPosture {
  /// Device's security posture value.
  /// Possible string values are:
  /// - "POSTURE_UNSPECIFIED" : Unspecified. There is no posture detail for this
  /// posture value.
  /// - "SECURE" : This device is secure.
  /// - "AT_RISK" : This device may be more vulnerable to malicious actors than
  /// is recommended for use with corporate data.
  /// - "POTENTIALLY_COMPROMISED" : This device may be compromised and corporate
  /// data may be accessible to unauthorized actors.
  core.String? devicePosture;

  /// Additional details regarding the security posture of the device.
  core.List<PostureDetail>? postureDetails;

  SecurityPosture({this.devicePosture, this.postureDetails});

  SecurityPosture.fromJson(core.Map json_)
    : this(
        devicePosture: json_['devicePosture'] as core.String?,
        postureDetails:
            (json_['postureDetails'] as core.List?)
                ?.map(
                  (value) => PostureDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (devicePosture != null) 'devicePosture': devicePosture!,
    if (postureDetails != null) 'postureDetails': postureDetails!,
  };
}

/// An action executed during setup.
class SetupAction {
  /// Description of this action.
  UserFacingMessage? description;

  /// An action to launch an app.
  ///
  /// The app will be launched with an intent containing an extra with key
  /// com.google.android.apps.work.clouddpc.EXTRA_LAUNCHED_AS_SETUP_ACTION set
  /// to the boolean value true to indicate that this is a setup action flow. If
  /// SetupAction references an app, the corresponding installType in the
  /// application policy must be set as REQUIRED_FOR_SETUP or said setup will
  /// fail.
  LaunchAppAction? launchApp;

  /// Title of this action.
  UserFacingMessage? title;

  SetupAction({this.description, this.launchApp, this.title});

  SetupAction.fromJson(core.Map json_)
    : this(
        description:
            json_.containsKey('description')
                ? UserFacingMessage.fromJson(
                  json_['description'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        launchApp:
            json_.containsKey('launchApp')
                ? LaunchAppAction.fromJson(
                  json_['launchApp'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        title:
            json_.containsKey('title')
                ? UserFacingMessage.fromJson(
                  json_['title'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (launchApp != null) 'launchApp': launchApp!,
    if (title != null) 'title': title!,
  };
}

/// A resource containing sign in details for an enterprise.
///
/// Use enterprises to manage SigninDetails for a given enterprise.For an
/// enterprise, we can have any number of SigninDetails that is uniquely
/// identified by combination of the following three fields (signin_url,
/// allow_personal_usage, token_tag). One cannot create two SigninDetails with
/// the same (signin_url, allow_personal_usage, token_tag). (token_tag is an
/// optional field).Patch: The operation updates the current list of
/// SigninDetails with the new list of SigninDetails. If the stored SigninDetail
/// configuration is passed, it returns the same signin_enrollment_token and
/// qr_code. If we pass multiple identical SigninDetail configurations that are
/// not stored, it will store the first one amongst those SigninDetail
/// configurations. if the configuration already exists we cannot request it
/// more than once in a particular patch API call, otherwise it will give a
/// duplicate key error and the whole operation will fail. If we remove certain
/// SigninDetail configuration from the request then it will get removed from
/// the storage. We can then request another signin_enrollment_token and qr_code
/// for the same SigninDetail configuration.
class SigninDetail {
  /// Controls whether personal usage is allowed on a device provisioned with
  /// this enrollment token.For company-owned devices: Enabling personal usage
  /// allows the user to set up a work profile on the device.
  ///
  /// Disabling personal usage requires the user provision the device as a fully
  /// managed device.For personally-owned devices: Enabling personal usage
  /// allows the user to set up a work profile on the device. Disabling personal
  /// usage will prevent the device from provisioning. Personal usage cannot be
  /// disabled on personally-owned device.
  /// Possible string values are:
  /// - "ALLOW_PERSONAL_USAGE_UNSPECIFIED" : Personal usage restriction is not
  /// specified
  /// - "PERSONAL_USAGE_ALLOWED" : Personal usage is allowed
  /// - "PERSONAL_USAGE_DISALLOWED" : Personal usage is disallowed
  /// - "PERSONAL_USAGE_DISALLOWED_USERLESS" : Device is not associated with a
  /// single user, and thus both personal usage and corporate identity
  /// authentication are not expected. Important: This setting is mandatory for
  /// dedicated device enrollment and it is a breaking change. This change needs
  /// to be implemented before January 2025.For additional details see the
  /// dedicated device provisioning guide
  /// (https://developers.google.com/android/management/provision-device#company-owned_devices_for_work_use_only).
  core.String? allowPersonalUsage;

  /// Whether the sign-in URL should be used by default for the enterprise.
  ///
  /// The SigninDetail with defaultStatus set to SIGNIN_DETAIL_IS_DEFAULT is
  /// used for Google account enrollment method. Only one of an enterprise's
  /// signinDetails can have defaultStatus set to SIGNIN_DETAIL_IS_DEFAULT. If
  /// an Enterprise has at least one signinDetails and none of them have
  /// defaultStatus set to SIGNIN_DETAIL_IS_DEFAULT then the first one from the
  /// list is selected and has set defaultStatus to SIGNIN_DETAIL_IS_DEFAULT. If
  /// no signinDetails specified for the Enterprise then the Google Account
  /// device enrollment will fail.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SIGNIN_DETAIL_DEFAULT_STATUS_UNSPECIFIED" : Equivalent to
  /// SIGNIN_DETAIL_IS_NOT_DEFAULT.
  /// - "SIGNIN_DETAIL_IS_DEFAULT" : The sign-in URL will be used by default for
  /// the enterprise.
  /// - "SIGNIN_DETAIL_IS_NOT_DEFAULT" : The sign-in URL will not be used by
  /// default for the enterprise.
  core.String? defaultStatus;

  /// A JSON string whose UTF-8 representation can be used to generate a QR code
  /// to enroll a device with this enrollment token.
  ///
  /// To enroll a device using NFC, the NFC record must contain a serialized
  /// java.util.Properties representation of the properties in the JSON. This is
  /// a read-only field generated by the server.
  core.String? qrCode;

  /// An enterprise wide enrollment token used to trigger custom sign-in flow.
  ///
  /// This is a read-only field generated by the server.
  core.String? signinEnrollmentToken;

  /// Sign-in URL for authentication when device is provisioned with a sign-in
  /// enrollment token.
  ///
  /// The sign-in endpoint should finish authentication flow with a URL in the
  /// form of https://enterprise.google.com/android/enroll?et= for a successful
  /// login, or https://enterprise.google.com/android/enroll/invalid for a
  /// failed login.
  core.String? signinUrl;

  /// An EMM-specified metadata to distinguish between instances of
  /// SigninDetail.
  core.String? tokenTag;

  SigninDetail({
    this.allowPersonalUsage,
    this.defaultStatus,
    this.qrCode,
    this.signinEnrollmentToken,
    this.signinUrl,
    this.tokenTag,
  });

  SigninDetail.fromJson(core.Map json_)
    : this(
        allowPersonalUsage: json_['allowPersonalUsage'] as core.String?,
        defaultStatus: json_['defaultStatus'] as core.String?,
        qrCode: json_['qrCode'] as core.String?,
        signinEnrollmentToken: json_['signinEnrollmentToken'] as core.String?,
        signinUrl: json_['signinUrl'] as core.String?,
        tokenTag: json_['tokenTag'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowPersonalUsage != null) 'allowPersonalUsage': allowPersonalUsage!,
    if (defaultStatus != null) 'defaultStatus': defaultStatus!,
    if (qrCode != null) 'qrCode': qrCode!,
    if (signinEnrollmentToken != null)
      'signinEnrollmentToken': signinEnrollmentToken!,
    if (signinUrl != null) 'signinUrl': signinUrl!,
    if (tokenTag != null) 'tokenTag': tokenTag!,
  };
}

/// An enterprise signup URL.
class SignupUrl {
  /// The name of the resource.
  ///
  /// Use this value in the signupUrl field when calling enterprises.create to
  /// complete the enterprise signup flow.
  core.String? name;

  /// A URL where an enterprise admin can register their enterprise.
  ///
  /// The page can't be rendered in an iframe.
  core.String? url;

  SignupUrl({this.name, this.url});

  SignupUrl.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (url != null) 'url': url!,
  };
}

/// Information about device software.
class SoftwareInfo {
  /// Android build ID string meant for displaying to the user.
  ///
  /// For example, shamu-userdebug 6.0.1 MOB30I 2756745 dev-keys.
  core.String? androidBuildNumber;

  /// Build time.
  core.String? androidBuildTime;

  /// The Android Device Policy app version code.
  core.int? androidDevicePolicyVersionCode;

  /// The Android Device Policy app version as displayed to the user.
  core.String? androidDevicePolicyVersionName;

  /// The user-visible Android version string.
  ///
  /// For example, 6.0.1.
  core.String? androidVersion;

  /// The system bootloader version number, e.g. 0.6.7.
  core.String? bootloaderVersion;

  /// SHA-256 hash of android.content.pm.Signature
  /// (https://developer.android.com/reference/android/content/pm/Signature.html)
  /// associated with the system package, which can be used to verify that the
  /// system build hasn't been modified.
  core.String? deviceBuildSignature;

  /// Kernel version, for example, 2.6.32.9-g103d848.
  core.String? deviceKernelVersion;

  /// An IETF BCP 47 language code for the primary locale on the device.
  core.String? primaryLanguageCode;

  /// Security patch level, e.g. 2016-05-01.
  core.String? securityPatchLevel;

  /// Information about a potential pending system update.
  SystemUpdateInfo? systemUpdateInfo;

  SoftwareInfo({
    this.androidBuildNumber,
    this.androidBuildTime,
    this.androidDevicePolicyVersionCode,
    this.androidDevicePolicyVersionName,
    this.androidVersion,
    this.bootloaderVersion,
    this.deviceBuildSignature,
    this.deviceKernelVersion,
    this.primaryLanguageCode,
    this.securityPatchLevel,
    this.systemUpdateInfo,
  });

  SoftwareInfo.fromJson(core.Map json_)
    : this(
        androidBuildNumber: json_['androidBuildNumber'] as core.String?,
        androidBuildTime: json_['androidBuildTime'] as core.String?,
        androidDevicePolicyVersionCode:
            json_['androidDevicePolicyVersionCode'] as core.int?,
        androidDevicePolicyVersionName:
            json_['androidDevicePolicyVersionName'] as core.String?,
        androidVersion: json_['androidVersion'] as core.String?,
        bootloaderVersion: json_['bootloaderVersion'] as core.String?,
        deviceBuildSignature: json_['deviceBuildSignature'] as core.String?,
        deviceKernelVersion: json_['deviceKernelVersion'] as core.String?,
        primaryLanguageCode: json_['primaryLanguageCode'] as core.String?,
        securityPatchLevel: json_['securityPatchLevel'] as core.String?,
        systemUpdateInfo:
            json_.containsKey('systemUpdateInfo')
                ? SystemUpdateInfo.fromJson(
                  json_['systemUpdateInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (androidBuildNumber != null) 'androidBuildNumber': androidBuildNumber!,
    if (androidBuildTime != null) 'androidBuildTime': androidBuildTime!,
    if (androidDevicePolicyVersionCode != null)
      'androidDevicePolicyVersionCode': androidDevicePolicyVersionCode!,
    if (androidDevicePolicyVersionName != null)
      'androidDevicePolicyVersionName': androidDevicePolicyVersionName!,
    if (androidVersion != null) 'androidVersion': androidVersion!,
    if (bootloaderVersion != null) 'bootloaderVersion': bootloaderVersion!,
    if (deviceBuildSignature != null)
      'deviceBuildSignature': deviceBuildSignature!,
    if (deviceKernelVersion != null)
      'deviceKernelVersion': deviceKernelVersion!,
    if (primaryLanguageCode != null)
      'primaryLanguageCode': primaryLanguageCode!,
    if (securityPatchLevel != null) 'securityPatchLevel': securityPatchLevel!,
    if (systemUpdateInfo != null) 'systemUpdateInfo': systemUpdateInfo!,
  };
}

/// Additional context for SpecificNonComplianceReason.
class SpecificNonComplianceContext {
  /// Additional context for non-compliance related to Wi-Fi configuration.
  ///
  /// See ONC_WIFI_INVALID_VALUE and ONC_WIFI_API_LEVEL
  OncWifiContext? oncWifiContext;

  /// Additional context for non-compliance related to password policies.
  ///
  /// See PASSWORD_POLICIES_PASSWORD_EXPIRED and
  /// PASSWORD_POLICIES_PASSWORD_NOT_SUFFICIENT.
  PasswordPoliciesContext? passwordPoliciesContext;

  SpecificNonComplianceContext({
    this.oncWifiContext,
    this.passwordPoliciesContext,
  });

  SpecificNonComplianceContext.fromJson(core.Map json_)
    : this(
        oncWifiContext:
            json_.containsKey('oncWifiContext')
                ? OncWifiContext.fromJson(
                  json_['oncWifiContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        passwordPoliciesContext:
            json_.containsKey('passwordPoliciesContext')
                ? PasswordPoliciesContext.fromJson(
                  json_['passwordPoliciesContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (oncWifiContext != null) 'oncWifiContext': oncWifiContext!,
    if (passwordPoliciesContext != null)
      'passwordPoliciesContext': passwordPoliciesContext!,
  };
}

/// Parameters associated with the START_LOST_MODE command to put the device
/// into lost mode.
///
/// At least one of the parameters, not including the organization name, must be
/// provided in order for the device to be put into lost mode.
class StartLostModeParams {
  /// The email address displayed to the user when the device is in lost mode.
  core.String? lostEmailAddress;

  /// The message displayed to the user when the device is in lost mode.
  UserFacingMessage? lostMessage;

  /// The organization name displayed to the user when the device is in lost
  /// mode.
  UserFacingMessage? lostOrganization;

  /// The phone number that will be called when the device is in lost mode and
  /// the call owner button is tapped.
  UserFacingMessage? lostPhoneNumber;

  /// The street address displayed to the user when the device is in lost mode.
  UserFacingMessage? lostStreetAddress;

  StartLostModeParams({
    this.lostEmailAddress,
    this.lostMessage,
    this.lostOrganization,
    this.lostPhoneNumber,
    this.lostStreetAddress,
  });

  StartLostModeParams.fromJson(core.Map json_)
    : this(
        lostEmailAddress: json_['lostEmailAddress'] as core.String?,
        lostMessage:
            json_.containsKey('lostMessage')
                ? UserFacingMessage.fromJson(
                  json_['lostMessage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lostOrganization:
            json_.containsKey('lostOrganization')
                ? UserFacingMessage.fromJson(
                  json_['lostOrganization']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        lostPhoneNumber:
            json_.containsKey('lostPhoneNumber')
                ? UserFacingMessage.fromJson(
                  json_['lostPhoneNumber']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        lostStreetAddress:
            json_.containsKey('lostStreetAddress')
                ? UserFacingMessage.fromJson(
                  json_['lostStreetAddress']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lostEmailAddress != null) 'lostEmailAddress': lostEmailAddress!,
    if (lostMessage != null) 'lostMessage': lostMessage!,
    if (lostOrganization != null) 'lostOrganization': lostOrganization!,
    if (lostPhoneNumber != null) 'lostPhoneNumber': lostPhoneNumber!,
    if (lostStreetAddress != null) 'lostStreetAddress': lostStreetAddress!,
  };
}

/// Status of the START_LOST_MODE command to put the device into lost mode.
class StartLostModeStatus {
  /// The status.
  ///
  /// See StartLostModeStatus.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified. This value is not used.
  /// - "SUCCESS" : The device was put into lost mode.
  /// - "RESET_PASSWORD_RECENTLY" : The device could not be put into lost mode
  /// because the admin reset the device's password recently.
  /// - "USER_EXIT_LOST_MODE_RECENTLY" : The device could not be put into lost
  /// mode because the user exited lost mode recently.
  /// - "ALREADY_IN_LOST_MODE" : The device is already in lost mode.
  core.String? status;

  StartLostModeStatus({this.status});

  StartLostModeStatus.fromJson(core.Map json_)
    : this(status: json_['status'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (status != null) 'status': status!,
  };
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Settings controlling the behavior of status reports.
class StatusReportingSettings {
  /// Application reporting settings.
  ///
  /// Only applicable if application_reports_enabled is true.
  ApplicationReportingSettings? applicationReportingSettings;

  /// Whether app reports are enabled.
  core.bool? applicationReportsEnabled;

  /// Whether Common Criteria Mode reporting is enabled.
  ///
  /// This is supported only on company-owned devices.
  core.bool? commonCriteriaModeEnabled;

  /// Whether device settings reporting is enabled.
  core.bool? deviceSettingsEnabled;

  /// Whether displays reporting is enabled.
  ///
  /// Report data is not available for personally owned devices with work
  /// profiles.
  core.bool? displayInfoEnabled;

  /// Whether hardware status reporting is enabled.
  ///
  /// Report data is not available for personally owned devices with work
  /// profiles.
  core.bool? hardwareStatusEnabled;

  /// Whether memory event reporting is enabled.
  core.bool? memoryInfoEnabled;

  /// Whether network info reporting is enabled.
  core.bool? networkInfoEnabled;

  /// Whether power management event reporting is enabled.
  ///
  /// Report data is not available for personally owned devices with work
  /// profiles.
  core.bool? powerManagementEventsEnabled;

  /// Whether software info reporting is enabled.
  core.bool? softwareInfoEnabled;

  /// Whether system properties reporting is enabled.
  core.bool? systemPropertiesEnabled;

  StatusReportingSettings({
    this.applicationReportingSettings,
    this.applicationReportsEnabled,
    this.commonCriteriaModeEnabled,
    this.deviceSettingsEnabled,
    this.displayInfoEnabled,
    this.hardwareStatusEnabled,
    this.memoryInfoEnabled,
    this.networkInfoEnabled,
    this.powerManagementEventsEnabled,
    this.softwareInfoEnabled,
    this.systemPropertiesEnabled,
  });

  StatusReportingSettings.fromJson(core.Map json_)
    : this(
        applicationReportingSettings:
            json_.containsKey('applicationReportingSettings')
                ? ApplicationReportingSettings.fromJson(
                  json_['applicationReportingSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        applicationReportsEnabled:
            json_['applicationReportsEnabled'] as core.bool?,
        commonCriteriaModeEnabled:
            json_['commonCriteriaModeEnabled'] as core.bool?,
        deviceSettingsEnabled: json_['deviceSettingsEnabled'] as core.bool?,
        displayInfoEnabled: json_['displayInfoEnabled'] as core.bool?,
        hardwareStatusEnabled: json_['hardwareStatusEnabled'] as core.bool?,
        memoryInfoEnabled: json_['memoryInfoEnabled'] as core.bool?,
        networkInfoEnabled: json_['networkInfoEnabled'] as core.bool?,
        powerManagementEventsEnabled:
            json_['powerManagementEventsEnabled'] as core.bool?,
        softwareInfoEnabled: json_['softwareInfoEnabled'] as core.bool?,
        systemPropertiesEnabled: json_['systemPropertiesEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationReportingSettings != null)
      'applicationReportingSettings': applicationReportingSettings!,
    if (applicationReportsEnabled != null)
      'applicationReportsEnabled': applicationReportsEnabled!,
    if (commonCriteriaModeEnabled != null)
      'commonCriteriaModeEnabled': commonCriteriaModeEnabled!,
    if (deviceSettingsEnabled != null)
      'deviceSettingsEnabled': deviceSettingsEnabled!,
    if (displayInfoEnabled != null) 'displayInfoEnabled': displayInfoEnabled!,
    if (hardwareStatusEnabled != null)
      'hardwareStatusEnabled': hardwareStatusEnabled!,
    if (memoryInfoEnabled != null) 'memoryInfoEnabled': memoryInfoEnabled!,
    if (networkInfoEnabled != null) 'networkInfoEnabled': networkInfoEnabled!,
    if (powerManagementEventsEnabled != null)
      'powerManagementEventsEnabled': powerManagementEventsEnabled!,
    if (softwareInfoEnabled != null)
      'softwareInfoEnabled': softwareInfoEnabled!,
    if (systemPropertiesEnabled != null)
      'systemPropertiesEnabled': systemPropertiesEnabled!,
  };
}

/// Parameters associated with the STOP_LOST_MODE command to take the device out
/// of lost mode.
typedef StopLostModeParams = $Empty;

/// Status of the STOP_LOST_MODE command to take the device out of lost mode.
class StopLostModeStatus {
  /// The status.
  ///
  /// See StopLostModeStatus.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified. This value is not used.
  /// - "SUCCESS" : The device was taken out of lost mode.
  /// - "NOT_IN_LOST_MODE" : The device is not in lost mode.
  core.String? status;

  StopLostModeStatus({this.status});

  StopLostModeStatus.fromJson(core.Map json_)
    : this(status: json_['status'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (status != null) 'status': status!,
  };
}

/// Configuration for managing system updatesNote: Google Play system updates
/// (https://source.android.com/docs/core/ota/modular-system) (also called
/// Mainline updates) are automatically downloaded but require a device reboot
/// to be installed.
///
/// Refer to the mainline section in Manage system updates
/// (https://developer.android.com/work/dpc/system-updates#mainline) for further
/// details.
class SystemUpdate {
  /// If the type is WINDOWED, the end of the maintenance window, measured as
  /// the number of minutes after midnight in device's local time.
  ///
  /// This value must be between 0 and 1439, inclusive. If this value is less
  /// than start_minutes, then the maintenance window spans midnight. If the
  /// maintenance window specified is smaller than 30 minutes, the actual window
  /// is extended to 30 minutes beyond the start time.
  core.int? endMinutes;

  /// An annually repeating time period in which over-the-air (OTA) system
  /// updates are postponed to freeze the OS version running on a device.
  ///
  /// To prevent freezing the device indefinitely, each freeze period must be
  /// separated by at least 60 days.
  core.List<FreezePeriod>? freezePeriods;

  /// If the type is WINDOWED, the start of the maintenance window, measured as
  /// the number of minutes after midnight in the device's local time.
  ///
  /// This value must be between 0 and 1439, inclusive.
  core.int? startMinutes;

  /// The type of system update to configure.
  /// Possible string values are:
  /// - "SYSTEM_UPDATE_TYPE_UNSPECIFIED" : Follow the default update behavior
  /// for the device, which typically requires the user to accept system
  /// updates.
  /// - "AUTOMATIC" : Install automatically as soon as an update is available.
  /// - "WINDOWED" : Install automatically within a daily maintenance window.
  /// This also configures Play apps to be updated within the window. This is
  /// strongly recommended for kiosk devices because this is the only way apps
  /// persistently pinned to the foreground can be updated by Play.If
  /// autoUpdateMode is set to AUTO_UPDATE_HIGH_PRIORITY for an app, then the
  /// maintenance window is ignored for that app and it is updated as soon as
  /// possible even outside of the maintenance window.
  /// - "POSTPONE" : Postpone automatic install up to a maximum of 30 days. This
  /// policy does not affect security updates (e.g. monthly security patches).
  core.String? type;

  SystemUpdate({
    this.endMinutes,
    this.freezePeriods,
    this.startMinutes,
    this.type,
  });

  SystemUpdate.fromJson(core.Map json_)
    : this(
        endMinutes: json_['endMinutes'] as core.int?,
        freezePeriods:
            (json_['freezePeriods'] as core.List?)
                ?.map(
                  (value) => FreezePeriod.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        startMinutes: json_['startMinutes'] as core.int?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endMinutes != null) 'endMinutes': endMinutes!,
    if (freezePeriods != null) 'freezePeriods': freezePeriods!,
    if (startMinutes != null) 'startMinutes': startMinutes!,
    if (type != null) 'type': type!,
  };
}

/// Information about a potential pending system update.
class SystemUpdateInfo {
  /// The time when the update was first available.
  ///
  /// A zero value indicates that this field is not set. This field is set only
  /// if an update is available (that is, updateStatus is neither
  /// UPDATE_STATUS_UNKNOWN nor UP_TO_DATE).
  core.String? updateReceivedTime;

  /// The status of an update: whether an update exists and what type it is.
  /// Possible string values are:
  /// - "UPDATE_STATUS_UNKNOWN" : It is unknown whether there is a pending
  /// system update. This happens when, for example, the device API level is
  /// less than 26, or if the version of Android Device Policy is outdated.
  /// - "UP_TO_DATE" : There is no pending system update available on the
  /// device.
  /// - "UNKNOWN_UPDATE_AVAILABLE" : There is a pending system update available,
  /// but its type is not known.
  /// - "SECURITY_UPDATE_AVAILABLE" : There is a pending security update
  /// available.
  /// - "OS_UPDATE_AVAILABLE" : There is a pending OS update available.
  core.String? updateStatus;

  SystemUpdateInfo({this.updateReceivedTime, this.updateStatus});

  SystemUpdateInfo.fromJson(core.Map json_)
    : this(
        updateReceivedTime: json_['updateReceivedTime'] as core.String?,
        updateStatus: json_['updateStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (updateReceivedTime != null) 'updateReceivedTime': updateReceivedTime!,
    if (updateStatus != null) 'updateStatus': updateStatus!,
  };
}

/// Telephony information associated with a given SIM card on the device.
///
/// Only supported on fully managed devices starting from Android API level 23.
class TelephonyInfo {
  /// Activation state of the SIM card on the device.
  ///
  /// This is applicable for eSIMs only. This is supported on all devices for
  /// API level 35 and above. This is always ACTIVATION_STATE_UNSPECIFIED for
  /// physical SIMs and for devices below API level 35.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACTIVATION_STATE_UNSPECIFIED" : Activation state is not specified.
  /// - "ACTIVATED" : The SIM card is activated.
  /// - "NOT_ACTIVATED" : The SIM card is not activated.
  core.String? activationState;

  /// The carrier name associated with this SIM card.
  core.String? carrierName;

  /// The configuration mode of the SIM card on the device.
  ///
  /// This is applicable for eSIMs only. This is supported on all devices for
  /// API level 35 and above. This is always CONFIG_MODE_UNSPECIFIED for
  /// physical SIMs and for devices below API level 35.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONFIG_MODE_UNSPECIFIED" : The configuration mode is unspecified.
  /// - "ADMIN_CONFIGURED" : The admin has configured this SIM.
  /// - "USER_CONFIGURED" : The user has configured this SIM.
  core.String? configMode;

  /// The ICCID associated with this SIM card.
  ///
  /// Output only.
  core.String? iccId;

  /// The phone number associated with this SIM card.
  core.String? phoneNumber;

  TelephonyInfo({
    this.activationState,
    this.carrierName,
    this.configMode,
    this.iccId,
    this.phoneNumber,
  });

  TelephonyInfo.fromJson(core.Map json_)
    : this(
        activationState: json_['activationState'] as core.String?,
        carrierName: json_['carrierName'] as core.String?,
        configMode: json_['configMode'] as core.String?,
        iccId: json_['iccId'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activationState != null) 'activationState': activationState!,
    if (carrierName != null) 'carrierName': carrierName!,
    if (configMode != null) 'configMode': configMode!,
    if (iccId != null) 'iccId': iccId!,
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
  };
}

/// A terms and conditions page to be accepted during provisioning.
class TermsAndConditions {
  /// A well-formatted HTML string.
  ///
  /// It will be parsed on the client with android.text.Html#fromHtml.
  UserFacingMessage? content;

  /// A short header which appears above the HTML content.
  UserFacingMessage? header;

  TermsAndConditions({this.content, this.header});

  TermsAndConditions.fromJson(core.Map json_)
    : this(
        content:
            json_.containsKey('content')
                ? UserFacingMessage.fromJson(
                  json_['content'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        header:
            json_.containsKey('header')
                ? UserFacingMessage.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (header != null) 'header': header!,
  };
}

/// Controls types of device activity logs collected from the device and
/// reported via Pub/Sub notification
/// (https://developers.google.com/android/management/notifications).
class UsageLog {
  /// Specifies which log types are enabled.
  ///
  /// Note that users will receive on-device messaging when usage logging is
  /// enabled.
  core.List<core.String>? enabledLogTypes;

  /// Specifies which of the enabled log types can be uploaded over mobile data.
  ///
  /// By default logs are queued for upload when the device connects to WiFi.
  core.List<core.String>? uploadOnCellularAllowed;

  UsageLog({this.enabledLogTypes, this.uploadOnCellularAllowed});

  UsageLog.fromJson(core.Map json_)
    : this(
        enabledLogTypes:
            (json_['enabledLogTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        uploadOnCellularAllowed:
            (json_['uploadOnCellularAllowed'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enabledLogTypes != null) 'enabledLogTypes': enabledLogTypes!,
    if (uploadOnCellularAllowed != null)
      'uploadOnCellularAllowed': uploadOnCellularAllowed!,
  };
}

/// A user belonging to an enterprise.
class User {
  /// A unique identifier you create for this user, such as user342 or
  /// asset#44418.
  ///
  /// This field must be set when the user is created and can't be updated. This
  /// field must not contain personally identifiable information (PII). This
  /// identifier must be 1024 characters or less; otherwise, the update policy
  /// request will fail.
  core.String? accountIdentifier;

  User({this.accountIdentifier});

  User.fromJson(core.Map json_)
    : this(accountIdentifier: json_['accountIdentifier'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountIdentifier != null) 'accountIdentifier': accountIdentifier!,
  };
}

/// Provides a user-facing message with locale info.
///
/// The maximum message length is 4096 characters.
class UserFacingMessage {
  /// The default message displayed if no localized message is specified or the
  /// user's locale doesn't match with any of the localized messages.
  ///
  /// A default message must be provided if any localized messages are provided.
  core.String? defaultMessage;

  /// A map containing pairs, where locale is a well-formed BCP 47 language
  /// (https://www.w3.org/International/articles/language-tags/) code, such as
  /// en-US, es-ES, or fr.
  core.Map<core.String, core.String>? localizedMessages;

  UserFacingMessage({this.defaultMessage, this.localizedMessages});

  UserFacingMessage.fromJson(core.Map json_)
    : this(
        defaultMessage: json_['defaultMessage'] as core.String?,
        localizedMessages: (json_['localizedMessages']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultMessage != null) 'defaultMessage': defaultMessage!,
    if (localizedMessages != null) 'localizedMessages': localizedMessages!,
  };
}

/// A web app.
class WebApp {
  /// The display mode of the web app.
  /// Possible string values are:
  /// - "DISPLAY_MODE_UNSPECIFIED" : Not used.
  /// - "MINIMAL_UI" : Opens the web app with a minimal set of browser UI
  /// elements for controlling navigation and viewing the page URL.
  /// - "STANDALONE" : Opens the web app to look and feel like a standalone
  /// native application. The browser UI elements and page URL are not visible,
  /// however the system status bar and back button are visible.
  /// - "FULL_SCREEN" : Opens the web app in full screen without any visible
  /// controls. The browser UI elements, page URL, system status bar and back
  /// button are not visible, and the web app takes up the entirety of the
  /// available display area.
  core.String? displayMode;

  /// A list of icons for the web app.
  ///
  /// Must have at least one element.
  core.List<WebAppIcon>? icons;

  /// The name of the web app, which is generated by the server during creation
  /// in the form enterprises/{enterpriseId}/webApps/{packageName}.
  core.String? name;

  /// The start URL, i.e. the URL that should load when the user opens the
  /// application.
  core.String? startUrl;

  /// The title of the web app as displayed to the user (e.g., amongst a list of
  /// other applications, or as a label for an icon).
  core.String? title;

  /// The current version of the app.Note that the version can automatically
  /// increase during the lifetime of the web app, while Google does internal
  /// housekeeping to keep the web app up-to-date.
  core.String? versionCode;

  WebApp({
    this.displayMode,
    this.icons,
    this.name,
    this.startUrl,
    this.title,
    this.versionCode,
  });

  WebApp.fromJson(core.Map json_)
    : this(
        displayMode: json_['displayMode'] as core.String?,
        icons:
            (json_['icons'] as core.List?)
                ?.map(
                  (value) => WebAppIcon.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        startUrl: json_['startUrl'] as core.String?,
        title: json_['title'] as core.String?,
        versionCode: json_['versionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayMode != null) 'displayMode': displayMode!,
    if (icons != null) 'icons': icons!,
    if (name != null) 'name': name!,
    if (startUrl != null) 'startUrl': startUrl!,
    if (title != null) 'title': title!,
    if (versionCode != null) 'versionCode': versionCode!,
  };
}

/// An icon for a web app.
///
/// Supported formats are: png, jpg and webp.
typedef WebAppIcon = $WebAppIcon;

/// A web token used to access the managed Google Play iframe.
class WebToken {
  /// The features to enable.
  ///
  /// Use this if you want to control exactly which feature(s) will be
  /// activated; leave empty to allow all features.Restrictions / things to
  /// note: - If no features are listed here, all features are enabled — this is
  /// the default behavior where you give access to all features to your admins.
  /// - This must not contain any FEATURE_UNSPECIFIED values. - Repeated values
  /// are ignored
  core.List<core.String>? enabledFeatures;

  /// The name of the web token, which is generated by the server during
  /// creation in the form enterprises/{enterpriseId}/webTokens/{webTokenId}.
  core.String? name;

  /// The URL of the parent frame hosting the iframe with the embedded UI.
  ///
  /// To prevent XSS, the iframe may not be hosted at other URLs. The URL must
  /// use the https scheme.
  core.String? parentFrameUrl;

  /// Permissions available to an admin in the embedded UI.
  ///
  /// An admin must have all of these permissions in order to view the UI. This
  /// field is deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? permissions;

  /// The token value which is used in the hosting page to generate the iframe
  /// with the embedded UI.
  ///
  /// This is a read-only field generated by the server.
  core.String? value;

  WebToken({
    this.enabledFeatures,
    this.name,
    this.parentFrameUrl,
    this.permissions,
    this.value,
  });

  WebToken.fromJson(core.Map json_)
    : this(
        enabledFeatures:
            (json_['enabledFeatures'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        parentFrameUrl: json_['parentFrameUrl'] as core.String?,
        permissions:
            (json_['permissions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enabledFeatures != null) 'enabledFeatures': enabledFeatures!,
    if (name != null) 'name': name!,
    if (parentFrameUrl != null) 'parentFrameUrl': parentFrameUrl!,
    if (permissions != null) 'permissions': permissions!,
    if (value != null) 'value': value!,
  };
}

/// Wi-Fi roaming policy.
class WifiRoamingPolicy {
  /// Wi-Fi roaming settings.
  ///
  /// SSIDs provided in this list must be unique, the policy will be rejected
  /// otherwise.
  ///
  /// Optional.
  core.List<WifiRoamingSetting>? wifiRoamingSettings;

  WifiRoamingPolicy({this.wifiRoamingSettings});

  WifiRoamingPolicy.fromJson(core.Map json_)
    : this(
        wifiRoamingSettings:
            (json_['wifiRoamingSettings'] as core.List?)
                ?.map(
                  (value) => WifiRoamingSetting.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (wifiRoamingSettings != null)
      'wifiRoamingSettings': wifiRoamingSettings!,
  };
}

/// Wi-Fi roaming setting.
class WifiRoamingSetting {
  /// Wi-Fi roaming mode for the specified SSID.
  ///
  /// Required.
  /// Possible string values are:
  /// - "WIFI_ROAMING_MODE_UNSPECIFIED" : Unspecified. Defaults to
  /// WIFI_ROAMING_DEFAULT.
  /// - "WIFI_ROAMING_DISABLED" : Wi-Fi roaming is disabled. Supported on
  /// Android 15 and above on fully managed devices and work profiles on
  /// company-owned devices. A NonComplianceDetail with MANAGEMENT_MODE is
  /// reported for other management modes. A NonComplianceDetail with API_LEVEL
  /// is reported if the Android version is less than 15.
  /// - "WIFI_ROAMING_DEFAULT" : Default Wi-Fi roaming mode of the device.
  /// - "WIFI_ROAMING_AGGRESSIVE" : Aggressive roaming mode which allows quicker
  /// Wi-Fi roaming. Supported on Android 15 and above on fully managed devices
  /// and work profiles on company-owned devices. A NonComplianceDetail with
  /// MANAGEMENT_MODE is reported for other management modes. A
  /// NonComplianceDetail with API_LEVEL is reported if the Android version is
  /// less than 15. A NonComplianceDetail with DEVICE_INCOMPATIBLE is reported
  /// if the device does not support aggressive roaming mode.
  core.String? wifiRoamingMode;

  /// SSID of the Wi-Fi network.
  ///
  /// Required.
  core.String? wifiSsid;

  WifiRoamingSetting({this.wifiRoamingMode, this.wifiSsid});

  WifiRoamingSetting.fromJson(core.Map json_)
    : this(
        wifiRoamingMode: json_['wifiRoamingMode'] as core.String?,
        wifiSsid: json_['wifiSsid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (wifiRoamingMode != null) 'wifiRoamingMode': wifiRoamingMode!,
    if (wifiSsid != null) 'wifiSsid': wifiSsid!,
  };
}

/// Represents a Wi-Fi SSID.
class WifiSsid {
  /// Wi-Fi SSID represented as a string.
  ///
  /// Required.
  core.String? wifiSsid;

  WifiSsid({this.wifiSsid});

  WifiSsid.fromJson(core.Map json_)
    : this(wifiSsid: json_['wifiSsid'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (wifiSsid != null) 'wifiSsid': wifiSsid!,
  };
}

/// Restrictions on which Wi-Fi SSIDs the device can connect to.
///
/// Note that this does not affect which networks can be configured on the
/// device. Supported on company-owned devices running Android 13 and above.
class WifiSsidPolicy {
  /// Type of the Wi-Fi SSID policy to be applied.
  /// Possible string values are:
  /// - "WIFI_SSID_POLICY_TYPE_UNSPECIFIED" : Defaults to WIFI_SSID_DENYLIST.
  /// wifiSsids must not be set. There are no restrictions on which SSID the
  /// device can connect to.
  /// - "WIFI_SSID_DENYLIST" : The device cannot connect to any Wi-Fi network
  /// whose SSID is in wifiSsids, but can connect to other networks.
  /// - "WIFI_SSID_ALLOWLIST" : The device can make Wi-Fi connections only to
  /// the SSIDs in wifiSsids. wifiSsids must not be empty. The device will not
  /// be able to connect to any other Wi-Fi network.
  core.String? wifiSsidPolicyType;

  /// List of Wi-Fi SSIDs that should be applied in the policy.
  ///
  /// This field must be non-empty when WifiSsidPolicyType is set to
  /// WIFI_SSID_ALLOWLIST. If this is set to a non-empty list, then a
  /// NonComplianceDetail detail with API_LEVEL is reported if the Android
  /// version is less than 13 and a NonComplianceDetail with MANAGEMENT_MODE is
  /// reported for non-company-owned devices.
  ///
  /// Optional.
  core.List<WifiSsid>? wifiSsids;

  WifiSsidPolicy({this.wifiSsidPolicyType, this.wifiSsids});

  WifiSsidPolicy.fromJson(core.Map json_)
    : this(
        wifiSsidPolicyType: json_['wifiSsidPolicyType'] as core.String?,
        wifiSsids:
            (json_['wifiSsids'] as core.List?)
                ?.map(
                  (value) => WifiSsid.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (wifiSsidPolicyType != null) 'wifiSsidPolicyType': wifiSsidPolicyType!,
    if (wifiSsids != null) 'wifiSsids': wifiSsids!,
  };
}

/// An action to reset a company owned device or delete a work profile.
///
/// Note: blockAction must also be specified.
class WipeAction {
  /// Whether the factory-reset protection data is preserved on the device.
  ///
  /// This setting doesn’t apply to work profiles.
  core.bool? preserveFrp;

  /// Number of days the policy is non-compliant before the device or work
  /// profile is wiped.
  ///
  /// wipeAfterDays must be greater than blockAfterDays.
  core.int? wipeAfterDays;

  WipeAction({this.preserveFrp, this.wipeAfterDays});

  WipeAction.fromJson(core.Map json_)
    : this(
        preserveFrp: json_['preserveFrp'] as core.bool?,
        wipeAfterDays: json_['wipeAfterDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (preserveFrp != null) 'preserveFrp': preserveFrp!,
    if (wipeAfterDays != null) 'wipeAfterDays': wipeAfterDays!,
  };
}

/// Parameters associated with the WIPE command to wipe the device.
class WipeParams {
  /// Flags to determine what data to wipe.
  ///
  /// Optional.
  core.List<core.String>? wipeDataFlags;

  /// A short message displayed to the user before wiping the work profile on
  /// personal devices.
  ///
  /// This has no effect on company owned devices. The maximum message length is
  /// 200 characters.
  ///
  /// Optional.
  UserFacingMessage? wipeReason;

  WipeParams({this.wipeDataFlags, this.wipeReason});

  WipeParams.fromJson(core.Map json_)
    : this(
        wipeDataFlags:
            (json_['wipeDataFlags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        wipeReason:
            json_.containsKey('wipeReason')
                ? UserFacingMessage.fromJson(
                  json_['wipeReason'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (wipeDataFlags != null) 'wipeDataFlags': wipeDataFlags!,
    if (wipeReason != null) 'wipeReason': wipeReason!,
  };
}

/// Controls the work account setup configuration, such as details of whether a
/// Google authenticated account is required.
class WorkAccountSetupConfig {
  /// The authentication type of the user on the device.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTHENTICATION_TYPE_UNSPECIFIED" : Unspecified. Defaults to
  /// AUTHENTICATION_TYPE_NOT_ENFORCED.
  /// - "AUTHENTICATION_TYPE_NOT_ENFORCED" : Authentication status of user on
  /// device is not enforced.
  /// - "GOOGLE_AUTHENTICATED" : Requires device to be managed with a Google
  /// authenticated account.
  core.String? authenticationType;

  /// The specific google work account email address to be added.
  ///
  /// This field is only relevant if authenticationType is GOOGLE_AUTHENTICATED.
  /// This must be an enterprise account and not a consumer account. Once set
  /// and a Google authenticated account is added to the device, changing this
  /// field will have no effect, and thus recommended to be set only once.
  ///
  /// Optional.
  core.String? requiredAccountEmail;

  WorkAccountSetupConfig({this.authenticationType, this.requiredAccountEmail});

  WorkAccountSetupConfig.fromJson(core.Map json_)
    : this(
        authenticationType: json_['authenticationType'] as core.String?,
        requiredAccountEmail: json_['requiredAccountEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authenticationType != null) 'authenticationType': authenticationType!,
    if (requiredAccountEmail != null)
      'requiredAccountEmail': requiredAccountEmail!,
  };
}
