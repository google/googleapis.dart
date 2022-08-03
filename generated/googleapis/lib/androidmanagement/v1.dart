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
///   - [EnterprisesPoliciesResource]
///   - [EnterprisesWebAppsResource]
///   - [EnterprisesWebTokensResource]
/// - [SignupUrlsResource]
library androidmanagement.v1;

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

/// The Android Management API provides remote enterprise management of Android
/// devices and apps.
class AndroidManagementApi {
  /// Manage Android devices and apps for your customers
  static const androidmanagementScope =
      'https://www.googleapis.com/auth/androidmanagement';

  final commons.ApiRequester _requester;

  EnterprisesResource get enterprises => EnterprisesResource(_requester);
  SignupUrlsResource get signupUrls => SignupUrlsResource(_requester);

  AndroidManagementApi(http.Client client,
      {core.String rootUrl = 'https://androidmanagement.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class EnterprisesResource {
  final commons.ApiRequester _requester;

  EnterprisesApplicationsResource get applications =>
      EnterprisesApplicationsResource(_requester);
  EnterprisesDevicesResource get devices =>
      EnterprisesDevicesResource(_requester);
  EnterprisesEnrollmentTokensResource get enrollmentTokens =>
      EnterprisesEnrollmentTokensResource(_requester);
  EnterprisesPoliciesResource get policies =>
      EnterprisesPoliciesResource(_requester);
  EnterprisesWebAppsResource get webApps =>
      EnterprisesWebAppsResource(_requester);
  EnterprisesWebTokensResource get webTokens =>
      EnterprisesWebTokensResource(_requester);

  EnterprisesResource(commons.ApiRequester client) : _requester = client;

  /// Creates an enterprise.
  ///
  /// This is the last step in the enterprise signup flow.
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an enterprise.
  ///
  /// Only available for EMM-managed enterprises.
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
  async.Future<Empty> delete(
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Enterprise> get(
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
    return Enterprise.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an enterprise.
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
        response_ as core.Map<core.String, core.dynamic>);
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class EnterprisesDevicesResource {
  final commons.ApiRequester _requester;

  EnterprisesDevicesOperationsResource get operations =>
      EnterprisesDevicesOperationsResource(_requester);

  EnterprisesDevicesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a device.
  ///
  /// This operation wipes the device.
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
  async.Future<Device> get(
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
        response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
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

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns google.rpc.Code.UNIMPLEMENTED.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
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
  async.Future<Empty> delete(
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
  async.Future<Operation> get(
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE:
  /// the name binding allows API services to override the binding to use
  /// different resource name schemes, such as users / * /operations. To
  /// override the binding, API services can add a binding such as
  /// "/v1/{name=users / * }/operations" to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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
        response_ as core.Map<core.String, core.dynamic>);
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
  /// anymore. Once an enrollment token has been created, it's not possible to
  /// retrieve the token's content anymore using AM API. It is recommended for
  /// EMMs to securely store the token if it's intended to be reused.
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
        response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> delete(
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an active, unexpired enrollment token.
  ///
  /// Only a partial view of EnrollmentToken is returned: all the fields but
  /// name and expiration_timestamp are empty. This method is meant to help
  /// manage active enrollment tokens lifecycle. For security reasons, it's
  /// recommended to delete active enrollment tokens as soon as they're not
  /// intended to be used anymore.
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists active, unexpired enrollment tokens for a given enterprise.
  ///
  /// The list items contain only a partial view of EnrollmentToken: all the
  /// fields but name and expiration_timestamp are empty. This method is meant
  /// to help manage active enrollment tokens lifecycle. For security reasons,
  /// it's recommended to delete active enrollment tokens as soon as they're not
  /// intended to be used anymore.
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
        response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> delete(
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
  async.Future<Policy> get(
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
        response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> delete(
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a web app.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the web app in the form
  /// enterprises/{enterpriseId}/webApp/{packageName}.
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
  async.Future<WebApp> get(
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
        response_ as core.Map<core.String, core.dynamic>);
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

class SignupUrlsResource {
  final commons.ApiRequester _requester;

  SignupUrlsResource(commons.ApiRequester client) : _requester = client;

  /// Creates an enterprise signup URL.
  ///
  /// Request parameters:
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
    core.String? callbackUrl,
    core.String? projectId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

/// Security policies set to secure values by default.
///
/// To maintain the security posture of a device, we don't recommend overriding
/// any of the default values.
class AdvancedSecurityOverrides {
  /// Controls Common Criteria Mode—security standards defined in the Common
  /// Criteria for Information Technology Security Evaluation
  /// (https://www.commoncriteriaportal.org/) (CC).
  ///
  /// Enabling Common Criteria Mode increases certain security components on a
  /// device, including AES-GCM encryption of Bluetooth Long Term Keys, and
  /// Wi-Fi configuration stores.Warning: Common Criteria Mode enforces a strict
  /// security model typically only required for IT products used in national
  /// security systems and other highly sensitive organizations. Standard device
  /// use may be affected. Only enabled if required.
  /// Possible string values are:
  /// - "COMMON_CRITERIA_MODE_UNSPECIFIED" : Unspecified. Defaults to
  /// COMMON_CRITERIA_MODE_DISABLED.
  /// - "COMMON_CRITERIA_MODE_DISABLED" : Default. Disables Common Criteria
  /// Mode.
  /// - "COMMON_CRITERIA_MODE_ENABLED" : Enables Common Criteria Mode.
  core.String? commonCriteriaMode;

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
    this.developerSettings,
    this.googlePlayProtectVerifyApps,
    this.personalAppsThatCanReadWorkNotifications,
    this.untrustedAppsPolicy,
  });

  AdvancedSecurityOverrides.fromJson(core.Map json_)
      : this(
          commonCriteriaMode: json_.containsKey('commonCriteriaMode')
              ? json_['commonCriteriaMode'] as core.String
              : null,
          developerSettings: json_.containsKey('developerSettings')
              ? json_['developerSettings'] as core.String
              : null,
          googlePlayProtectVerifyApps:
              json_.containsKey('googlePlayProtectVerifyApps')
                  ? json_['googlePlayProtectVerifyApps'] as core.String
                  : null,
          personalAppsThatCanReadWorkNotifications: json_
                  .containsKey('personalAppsThatCanReadWorkNotifications')
              ? (json_['personalAppsThatCanReadWorkNotifications'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          untrustedAppsPolicy: json_.containsKey('untrustedAppsPolicy')
              ? json_['untrustedAppsPolicy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonCriteriaMode != null)
          'commonCriteriaMode': commonCriteriaMode!,
        if (developerSettings != null) 'developerSettings': developerSettings!,
        if (googlePlayProtectVerifyApps != null)
          'googlePlayProtectVerifyApps': googlePlayProtectVerifyApps!,
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

  AlwaysOnVpnPackage({
    this.lockdownEnabled,
    this.packageName,
  });

  AlwaysOnVpnPackage.fromJson(core.Map json_)
      : this(
          lockdownEnabled: json_.containsKey('lockdownEnabled')
              ? json_['lockdownEnabled'] as core.bool
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
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

  ApiLevelCondition({
    this.minApiLevel,
  });

  ApiLevelCondition.fromJson(core.Map json_)
      : this(
          minApiLevel: json_.containsKey('minApiLevel')
              ? json_['minApiLevel'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (minApiLevel != null) 'minApiLevel': minApiLevel!,
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

  AppTrackInfo({
    this.trackAlias,
    this.trackId,
  });

  AppTrackInfo.fromJson(core.Map json_)
      : this(
          trackAlias: json_.containsKey('trackAlias')
              ? json_['trackAlias'] as core.String
              : null,
          trackId: json_.containsKey('trackId')
              ? json_['trackId'] as core.String
              : null,
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
          production: json_.containsKey('production')
              ? json_['production'] as core.bool
              : null,
          trackIds: json_.containsKey('trackIds')
              ? (json_['trackIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          versionCode: json_.containsKey('versionCode')
              ? json_['versionCode'] as core.int
              : null,
          versionString: json_.containsKey('versionString')
              ? json_['versionString'] as core.String
              : null,
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
          appPricing: json_.containsKey('appPricing')
              ? json_['appPricing'] as core.String
              : null,
          appTracks: json_.containsKey('appTracks')
              ? (json_['appTracks'] as core.List)
                  .map((value) => AppTrackInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          appVersions: json_.containsKey('appVersions')
              ? (json_['appVersions'] as core.List)
                  .map((value) => AppVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          author: json_.containsKey('author')
              ? json_['author'] as core.String
              : null,
          availableCountries: json_.containsKey('availableCountries')
              ? (json_['availableCountries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          contentRating: json_.containsKey('contentRating')
              ? json_['contentRating'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          distributionChannel: json_.containsKey('distributionChannel')
              ? json_['distributionChannel'] as core.String
              : null,
          features: json_.containsKey('features')
              ? (json_['features'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fullDescription: json_.containsKey('fullDescription')
              ? json_['fullDescription'] as core.String
              : null,
          iconUrl: json_.containsKey('iconUrl')
              ? json_['iconUrl'] as core.String
              : null,
          managedProperties: json_.containsKey('managedProperties')
              ? (json_['managedProperties'] as core.List)
                  .map((value) => ManagedProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          minAndroidSdkVersion: json_.containsKey('minAndroidSdkVersion')
              ? json_['minAndroidSdkVersion'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => ApplicationPermission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          playStoreUrl: json_.containsKey('playStoreUrl')
              ? json_['playStoreUrl'] as core.String
              : null,
          recentChanges: json_.containsKey('recentChanges')
              ? json_['recentChanges'] as core.String
              : null,
          screenshotUrls: json_.containsKey('screenshotUrls')
              ? (json_['screenshotUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          smallIconUrl: json_.containsKey('smallIconUrl')
              ? json_['smallIconUrl'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appPricing != null) 'appPricing': appPricing!,
        if (appTracks != null) 'appTracks': appTracks!,
        if (appVersions != null) 'appVersions': appVersions!,
        if (author != null) 'author': author!,
        if (availableCountries != null)
          'availableCountries': availableCountries!,
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

  ApplicationEvent({
    this.createTime,
    this.eventType,
  });

  ApplicationEvent.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          eventType: json_.containsKey('eventType')
              ? json_['eventType'] as core.String
              : null,
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

  ApplicationPermission({
    this.description,
    this.name,
    this.permissionId,
  });

  ApplicationPermission.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          permissionId: json_.containsKey('permissionId')
              ? json_['permissionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (permissionId != null) 'permissionId': permissionId!,
      };
}

/// Policy for an individual app.
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
  /// - "AUTO_UPDATE_DEFAULT" : The app is automatically updated with low
  /// priority to minimize the impact on the user.The app is updated when all of
  /// the following constraints are met: The device is not actively used. The
  /// device is connected to an unmetered network. The device is charging.The
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
  /// constraints are applied.The device is notified immediately about a new
  /// update after it becomes available.
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
  /// - "GRANT" : Automatically grant a permission.
  /// - "DENY" : Automatically deny a permission.
  core.String? defaultPermissionPolicy;

  /// The scopes delegated to the app from Android Device Policy.
  core.List<core.String>? delegatedScopes;

  /// Whether the app is disabled.
  ///
  /// When disabled, the app data is still preserved.
  core.bool? disabled;

  /// Configuration to enable this app as an extension app, with the capability
  /// of interacting with Android Device Policy offline.This field can be set
  /// for at most one app.
  ExtensionConfig? extensionConfig;

  /// The type of installation to perform.
  /// Possible string values are:
  /// - "INSTALL_TYPE_UNSPECIFIED" : Unspecified. Defaults to AVAILABLE.
  /// - "PREINSTALLED" : The app is automatically installed and can be removed
  /// by the user.
  /// - "FORCE_INSTALLED" : The app is automatically installed and can't be
  /// removed by the user.
  /// - "BLOCKED" : The app is blocked and can't be installed. If the app was
  /// installed under a previous policy, it will be uninstalled.
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
  /// DEPRECATED. Use InstallType KIOSK or kioskCustomLauncherEnabled to to
  /// configure a dedicated device.
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

  ApplicationPolicy({
    this.accessibleTrackIds,
    this.alwaysOnVpnLockdownExemption,
    this.autoUpdateMode,
    this.connectedWorkAndPersonalApp,
    this.defaultPermissionPolicy,
    this.delegatedScopes,
    this.disabled,
    this.extensionConfig,
    this.installType,
    this.lockTaskAllowed,
    this.managedConfiguration,
    this.managedConfigurationTemplate,
    this.minimumVersionCode,
    this.packageName,
    this.permissionGrants,
  });

  ApplicationPolicy.fromJson(core.Map json_)
      : this(
          accessibleTrackIds: json_.containsKey('accessibleTrackIds')
              ? (json_['accessibleTrackIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          alwaysOnVpnLockdownExemption:
              json_.containsKey('alwaysOnVpnLockdownExemption')
                  ? json_['alwaysOnVpnLockdownExemption'] as core.String
                  : null,
          autoUpdateMode: json_.containsKey('autoUpdateMode')
              ? json_['autoUpdateMode'] as core.String
              : null,
          connectedWorkAndPersonalApp:
              json_.containsKey('connectedWorkAndPersonalApp')
                  ? json_['connectedWorkAndPersonalApp'] as core.String
                  : null,
          defaultPermissionPolicy: json_.containsKey('defaultPermissionPolicy')
              ? json_['defaultPermissionPolicy'] as core.String
              : null,
          delegatedScopes: json_.containsKey('delegatedScopes')
              ? (json_['delegatedScopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          extensionConfig: json_.containsKey('extensionConfig')
              ? ExtensionConfig.fromJson(json_['extensionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          installType: json_.containsKey('installType')
              ? json_['installType'] as core.String
              : null,
          lockTaskAllowed: json_.containsKey('lockTaskAllowed')
              ? json_['lockTaskAllowed'] as core.bool
              : null,
          managedConfiguration: json_.containsKey('managedConfiguration')
              ? json_['managedConfiguration']
                  as core.Map<core.String, core.dynamic>
              : null,
          managedConfigurationTemplate:
              json_.containsKey('managedConfigurationTemplate')
                  ? ManagedConfigurationTemplate.fromJson(
                      json_['managedConfigurationTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          minimumVersionCode: json_.containsKey('minimumVersionCode')
              ? json_['minimumVersionCode'] as core.int
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          permissionGrants: json_.containsKey('permissionGrants')
              ? (json_['permissionGrants'] as core.List)
                  .map((value) => PermissionGrant.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessibleTrackIds != null)
          'accessibleTrackIds': accessibleTrackIds!,
        if (alwaysOnVpnLockdownExemption != null)
          'alwaysOnVpnLockdownExemption': alwaysOnVpnLockdownExemption!,
        if (autoUpdateMode != null) 'autoUpdateMode': autoUpdateMode!,
        if (connectedWorkAndPersonalApp != null)
          'connectedWorkAndPersonalApp': connectedWorkAndPersonalApp!,
        if (defaultPermissionPolicy != null)
          'defaultPermissionPolicy': defaultPermissionPolicy!,
        if (delegatedScopes != null) 'delegatedScopes': delegatedScopes!,
        if (disabled != null) 'disabled': disabled!,
        if (extensionConfig != null) 'extensionConfig': extensionConfig!,
        if (installType != null) 'installType': installType!,
        if (lockTaskAllowed != null) 'lockTaskAllowed': lockTaskAllowed!,
        if (managedConfiguration != null)
          'managedConfiguration': managedConfiguration!,
        if (managedConfigurationTemplate != null)
          'managedConfigurationTemplate': managedConfigurationTemplate!,
        if (minimumVersionCode != null)
          'minimumVersionCode': minimumVersionCode!,
        if (packageName != null) 'packageName': packageName!,
        if (permissionGrants != null) 'permissionGrants': permissionGrants!,
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

  /// List of app events.
  ///
  /// The most recent 20 events are stored in the list.
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
    this.versionCode,
    this.versionName,
  });

  ApplicationReport.fromJson(core.Map json_)
      : this(
          applicationSource: json_.containsKey('applicationSource')
              ? json_['applicationSource'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          events: json_.containsKey('events')
              ? (json_['events'] as core.List)
                  .map((value) => ApplicationEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          installerPackageName: json_.containsKey('installerPackageName')
              ? json_['installerPackageName'] as core.String
              : null,
          keyedAppStates: json_.containsKey('keyedAppStates')
              ? (json_['keyedAppStates'] as core.List)
                  .map((value) => KeyedAppState.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          packageSha256Hash: json_.containsKey('packageSha256Hash')
              ? json_['packageSha256Hash'] as core.String
              : null,
          signingKeyCertFingerprints:
              json_.containsKey('signingKeyCertFingerprints')
                  ? (json_['signingKeyCertFingerprints'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          versionCode: json_.containsKey('versionCode')
              ? json_['versionCode'] as core.int
              : null,
          versionName: json_.containsKey('versionName')
              ? json_['versionName'] as core.String
              : null,
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
        if (versionCode != null) 'versionCode': versionCode!,
        if (versionName != null) 'versionName': versionName!,
      };
}

/// Settings controlling the behavior of application reports.
class ApplicationReportingSettings {
  /// Whether removed apps are included in application reports.
  core.bool? includeRemovedApps;

  ApplicationReportingSettings({
    this.includeRemovedApps,
  });

  ApplicationReportingSettings.fromJson(core.Map json_)
      : this(
          includeRemovedApps: json_.containsKey('includeRemovedApps')
              ? json_['includeRemovedApps'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeRemovedApps != null)
          'includeRemovedApps': includeRemovedApps!,
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

  BlockAction({
    this.blockAfterDays,
    this.blockScope,
  });

  BlockAction.fromJson(core.Map json_)
      : this(
          blockAfterDays: json_.containsKey('blockAfterDays')
              ? json_['blockAfterDays'] as core.int
              : null,
          blockScope: json_.containsKey('blockScope')
              ? json_['blockScope'] as core.String
              : null,
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
          packageNames: json_.containsKey('packageNames')
              ? (json_['packageNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          privateKeyAlias: json_.containsKey('privateKeyAlias')
              ? json_['privateKeyAlias'] as core.String
              : null,
          urlPattern: json_.containsKey('urlPattern')
              ? json_['urlPattern'] as core.String
              : null,
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

  ClearAppsDataParams({
    this.packageNames,
  });

  ClearAppsDataParams.fromJson(core.Map json_)
      : this(
          packageNames: json_.containsKey('packageNames')
              ? (json_['packageNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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

  ClearAppsDataStatus({
    this.results,
  });

  ClearAppsDataStatus.fromJson(core.Map json_)
      : this(
          results: json_.containsKey('results')
              ? (json_['results'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    PerAppResult.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (results != null) 'results': results!,
      };
}

/// A command.
class Command {
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
  /// This is not set when the command is cancelled by the caller.
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

  /// For commands of type RESET_PASSWORD, optionally specifies the new
  /// password.
  core.String? newPassword;

  /// For commands of type RESET_PASSWORD, optionally specifies flags.
  core.List<core.String>? resetPasswordFlags;

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
  core.String? type;

  /// The resource name of the user that owns the device in the form
  /// enterprises/{enterpriseId}/users/{userId}.
  ///
  /// This is automatically generated by the server based on the device the
  /// command is sent to.
  core.String? userName;

  Command({
    this.clearAppsDataParams,
    this.clearAppsDataStatus,
    this.createTime,
    this.duration,
    this.errorCode,
    this.newPassword,
    this.resetPasswordFlags,
    this.type,
    this.userName,
  });

  Command.fromJson(core.Map json_)
      : this(
          clearAppsDataParams: json_.containsKey('clearAppsDataParams')
              ? ClearAppsDataParams.fromJson(json_['clearAppsDataParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clearAppsDataStatus: json_.containsKey('clearAppsDataStatus')
              ? ClearAppsDataStatus.fromJson(json_['clearAppsDataStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          errorCode: json_.containsKey('errorCode')
              ? json_['errorCode'] as core.String
              : null,
          newPassword: json_.containsKey('newPassword')
              ? json_['newPassword'] as core.String
              : null,
          resetPasswordFlags: json_.containsKey('resetPasswordFlags')
              ? (json_['resetPasswordFlags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          userName: json_.containsKey('userName')
              ? json_['userName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clearAppsDataParams != null)
          'clearAppsDataParams': clearAppsDataParams!,
        if (clearAppsDataStatus != null)
          'clearAppsDataStatus': clearAppsDataStatus!,
        if (createTime != null) 'createTime': createTime!,
        if (duration != null) 'duration': duration!,
        if (errorCode != null) 'errorCode': errorCode!,
        if (newPassword != null) 'newPassword': newPassword!,
        if (resetPasswordFlags != null)
          'resetPasswordFlags': resetPasswordFlags!,
        if (type != null) 'type': type!,
        if (userName != null) 'userName': userName!,
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

  CommonCriteriaModeInfo({
    this.commonCriteriaModeStatus,
  });

  CommonCriteriaModeInfo.fromJson(core.Map json_)
      : this(
          commonCriteriaModeStatus:
              json_.containsKey('commonCriteriaModeStatus')
                  ? json_['commonCriteriaModeStatus'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonCriteriaModeStatus != null)
          'commonCriteriaModeStatus': commonCriteriaModeStatus!,
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
          apiLevelCondition: json_.containsKey('apiLevelCondition')
              ? ApiLevelCondition.fromJson(json_['apiLevelCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disableApps: json_.containsKey('disableApps')
              ? json_['disableApps'] as core.bool
              : null,
          nonComplianceDetailCondition:
              json_.containsKey('nonComplianceDetailCondition')
                  ? NonComplianceDetailCondition.fromJson(
                      json_['nonComplianceDetailCondition']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          packageNamesToDisable: json_.containsKey('packageNamesToDisable')
              ? (json_['packageNamesToDisable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          contactEmail: json_.containsKey('contactEmail')
              ? json_['contactEmail'] as core.String
              : null,
          dataProtectionOfficerEmail:
              json_.containsKey('dataProtectionOfficerEmail')
                  ? json_['dataProtectionOfficerEmail'] as core.String
                  : null,
          dataProtectionOfficerName:
              json_.containsKey('dataProtectionOfficerName')
                  ? json_['dataProtectionOfficerName'] as core.String
                  : null,
          dataProtectionOfficerPhone:
              json_.containsKey('dataProtectionOfficerPhone')
                  ? json_['dataProtectionOfficerPhone'] as core.String
                  : null,
          euRepresentativeEmail: json_.containsKey('euRepresentativeEmail')
              ? json_['euRepresentativeEmail'] as core.String
              : null,
          euRepresentativeName: json_.containsKey('euRepresentativeName')
              ? json_['euRepresentativeName'] as core.String
              : null,
          euRepresentativePhone: json_.containsKey('euRepresentativePhone')
              ? json_['euRepresentativePhone'] as core.String
              : null,
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
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          signingCertsSha256: json_.containsKey('signingCertsSha256')
              ? (json_['signingCertsSha256'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (packageName != null) 'packageName': packageName!,
        if (signingCertsSha256 != null)
          'signingCertsSha256': signingCertsSha256!,
        if (uri != null) 'uri': uri!,
      };
}

/// Cross-profile policies applied on the device.
class CrossProfilePolicies {
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

  /// Whether contacts stored in the work profile can be shown in personal
  /// profile contact searches and incoming calls.
  /// Possible string values are:
  /// - "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_UNSPECIFIED" : Unspecified.
  /// Defaults to SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_ALLOWED.
  /// - "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_DISALLOWED" : Prevents work
  /// profile contacts from appearing in personal profile contact searches and
  /// incoming calls
  /// - "SHOW_WORK_CONTACTS_IN_PERSONAL_PROFILE_ALLOWED" : Default. Allows work
  /// profile contacts to appear in personal profile contact searches and
  /// incoming calls
  core.String? showWorkContactsInPersonalProfile;

  CrossProfilePolicies({
    this.crossProfileCopyPaste,
    this.crossProfileDataSharing,
    this.showWorkContactsInPersonalProfile,
  });

  CrossProfilePolicies.fromJson(core.Map json_)
      : this(
          crossProfileCopyPaste: json_.containsKey('crossProfileCopyPaste')
              ? json_['crossProfileCopyPaste'] as core.String
              : null,
          crossProfileDataSharing: json_.containsKey('crossProfileDataSharing')
              ? json_['crossProfileDataSharing'] as core.String
              : null,
          showWorkContactsInPersonalProfile:
              json_.containsKey('showWorkContactsInPersonalProfile')
                  ? json_['showWorkContactsInPersonalProfile'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crossProfileCopyPaste != null)
          'crossProfileCopyPaste': crossProfileCopyPaste!,
        if (crossProfileDataSharing != null)
          'crossProfileDataSharing': crossProfileDataSharing!,
        if (showWorkContactsInPersonalProfile != null)
          'showWorkContactsInPersonalProfile':
              showWorkContactsInPersonalProfile!,
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
  core.String? appliedState;

  /// Information about Common Criteria Mode—security standards defined in the
  /// Common Criteria for Information Technology Security Evaluation
  /// (https://www.commoncriteriaportal.org/) (CC).This information is only
  /// available if statusReportingSettings.commonCriteriaModeEnabled is true in
  /// the device's policy.
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
  /// device's policy.
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
          apiLevel: json_.containsKey('apiLevel')
              ? json_['apiLevel'] as core.int
              : null,
          applicationReports: json_.containsKey('applicationReports')
              ? (json_['applicationReports'] as core.List)
                  .map((value) => ApplicationReport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          appliedPasswordPolicies: json_.containsKey('appliedPasswordPolicies')
              ? (json_['appliedPasswordPolicies'] as core.List)
                  .map((value) => PasswordRequirements.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          appliedPolicyName: json_.containsKey('appliedPolicyName')
              ? json_['appliedPolicyName'] as core.String
              : null,
          appliedPolicyVersion: json_.containsKey('appliedPolicyVersion')
              ? json_['appliedPolicyVersion'] as core.String
              : null,
          appliedState: json_.containsKey('appliedState')
              ? json_['appliedState'] as core.String
              : null,
          commonCriteriaModeInfo: json_.containsKey('commonCriteriaModeInfo')
              ? CommonCriteriaModeInfo.fromJson(json_['commonCriteriaModeInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deviceSettings: json_.containsKey('deviceSettings')
              ? DeviceSettings.fromJson(json_['deviceSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disabledReason: json_.containsKey('disabledReason')
              ? UserFacingMessage.fromJson(json_['disabledReason']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displays: json_.containsKey('displays')
              ? (json_['displays'] as core.List)
                  .map((value) => Display.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          enrollmentTime: json_.containsKey('enrollmentTime')
              ? json_['enrollmentTime'] as core.String
              : null,
          enrollmentTokenData: json_.containsKey('enrollmentTokenData')
              ? json_['enrollmentTokenData'] as core.String
              : null,
          enrollmentTokenName: json_.containsKey('enrollmentTokenName')
              ? json_['enrollmentTokenName'] as core.String
              : null,
          hardwareInfo: json_.containsKey('hardwareInfo')
              ? HardwareInfo.fromJson(
                  json_['hardwareInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          hardwareStatusSamples: json_.containsKey('hardwareStatusSamples')
              ? (json_['hardwareStatusSamples'] as core.List)
                  .map((value) => HardwareStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lastPolicyComplianceReportTime:
              json_.containsKey('lastPolicyComplianceReportTime')
                  ? json_['lastPolicyComplianceReportTime'] as core.String
                  : null,
          lastPolicySyncTime: json_.containsKey('lastPolicySyncTime')
              ? json_['lastPolicySyncTime'] as core.String
              : null,
          lastStatusReportTime: json_.containsKey('lastStatusReportTime')
              ? json_['lastStatusReportTime'] as core.String
              : null,
          managementMode: json_.containsKey('managementMode')
              ? json_['managementMode'] as core.String
              : null,
          memoryEvents: json_.containsKey('memoryEvents')
              ? (json_['memoryEvents'] as core.List)
                  .map((value) => MemoryEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          memoryInfo: json_.containsKey('memoryInfo')
              ? MemoryInfo.fromJson(
                  json_['memoryInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkInfo: json_.containsKey('networkInfo')
              ? NetworkInfo.fromJson(
                  json_['networkInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          nonComplianceDetails: json_.containsKey('nonComplianceDetails')
              ? (json_['nonComplianceDetails'] as core.List)
                  .map((value) => NonComplianceDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ownership: json_.containsKey('ownership')
              ? json_['ownership'] as core.String
              : null,
          policyCompliant: json_.containsKey('policyCompliant')
              ? json_['policyCompliant'] as core.bool
              : null,
          policyName: json_.containsKey('policyName')
              ? json_['policyName'] as core.String
              : null,
          powerManagementEvents: json_.containsKey('powerManagementEvents')
              ? (json_['powerManagementEvents'] as core.List)
                  .map((value) => PowerManagementEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          previousDeviceNames: json_.containsKey('previousDeviceNames')
              ? (json_['previousDeviceNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          securityPosture: json_.containsKey('securityPosture')
              ? SecurityPosture.fromJson(json_['securityPosture']
                  as core.Map<core.String, core.dynamic>)
              : null,
          softwareInfo: json_.containsKey('softwareInfo')
              ? SoftwareInfo.fromJson(
                  json_['softwareInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          systemProperties: json_.containsKey('systemProperties')
              ? (json_['systemProperties']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          user: json_.containsKey('user')
              ? User.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>)
              : null,
          userName: json_.containsKey('userName')
              ? json_['userName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiLevel != null) 'apiLevel': apiLevel!,
        if (applicationReports != null)
          'applicationReports': applicationReports!,
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
        if (lastPolicySyncTime != null)
          'lastPolicySyncTime': lastPolicySyncTime!,
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
          adbEnabled: json_.containsKey('adbEnabled')
              ? json_['adbEnabled'] as core.bool
              : null,
          developmentSettingsEnabled:
              json_.containsKey('developmentSettingsEnabled')
                  ? json_['developmentSettingsEnabled'] as core.bool
                  : null,
          encryptionStatus: json_.containsKey('encryptionStatus')
              ? json_['encryptionStatus'] as core.String
              : null,
          isDeviceSecure: json_.containsKey('isDeviceSecure')
              ? json_['isDeviceSecure'] as core.bool
              : null,
          isEncrypted: json_.containsKey('isEncrypted')
              ? json_['isEncrypted'] as core.bool
              : null,
          unknownSourcesEnabled: json_.containsKey('unknownSourcesEnabled')
              ? json_['unknownSourcesEnabled'] as core.bool
              : null,
          verifyAppsEnabled: json_.containsKey('verifyAppsEnabled')
              ? json_['verifyAppsEnabled'] as core.bool
              : null,
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
          density: json_.containsKey('density')
              ? json_['density'] as core.int
              : null,
          displayId: json_.containsKey('displayId')
              ? json_['displayId'] as core.int
              : null,
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          refreshRate: json_.containsKey('refreshRate')
              ? json_['refreshRate'] as core.int
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
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

  /// The user associated with this enrollment token.
  ///
  /// If it's specified when the enrollment token is created and the user does
  /// not exist, the user will be created. This field must not contain
  /// personally identifiable information. Only the account_identifier field
  /// needs to be set.
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
          additionalData: json_.containsKey('additionalData')
              ? json_['additionalData'] as core.String
              : null,
          allowPersonalUsage: json_.containsKey('allowPersonalUsage')
              ? json_['allowPersonalUsage'] as core.String
              : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          expirationTimestamp: json_.containsKey('expirationTimestamp')
              ? json_['expirationTimestamp'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          oneTimeOnly: json_.containsKey('oneTimeOnly')
              ? json_['oneTimeOnly'] as core.bool
              : null,
          policyName: json_.containsKey('policyName')
              ? json_['policyName'] as core.String
              : null,
          qrCode: json_.containsKey('qrCode')
              ? json_['qrCode'] as core.String
              : null,
          user: json_.containsKey('user')
              ? User.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalData != null) 'additionalData': additionalData!,
        if (allowPersonalUsage != null)
          'allowPersonalUsage': allowPersonalUsage!,
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
  core.bool? appAutoApprovalEnabled;

  /// The enterprise contact info of an EMM-managed enterprise.
  ContactInfo? contactInfo;

  /// The types of Google Pub/Sub notifications enabled for the enterprise.
  core.List<core.String>? enabledNotificationTypes;

  /// The name of the enterprise displayed to users.
  core.String? enterpriseDisplayName;

  /// An image displayed as a logo during device provisioning.
  ///
  /// Supported types are: image/bmp, image/gif, image/x-ico, image/jpeg,
  /// image/png, image/webp, image/vnd.wap.wbmp, image/x-adobe-dng.
  ExternalData? logo;

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
    this.logo,
    this.name,
    this.primaryColor,
    this.pubsubTopic,
    this.signinDetails,
    this.termsAndConditions,
  });

  Enterprise.fromJson(core.Map json_)
      : this(
          appAutoApprovalEnabled: json_.containsKey('appAutoApprovalEnabled')
              ? json_['appAutoApprovalEnabled'] as core.bool
              : null,
          contactInfo: json_.containsKey('contactInfo')
              ? ContactInfo.fromJson(
                  json_['contactInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          enabledNotificationTypes:
              json_.containsKey('enabledNotificationTypes')
                  ? (json_['enabledNotificationTypes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          enterpriseDisplayName: json_.containsKey('enterpriseDisplayName')
              ? json_['enterpriseDisplayName'] as core.String
              : null,
          logo: json_.containsKey('logo')
              ? ExternalData.fromJson(
                  json_['logo'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          primaryColor: json_.containsKey('primaryColor')
              ? json_['primaryColor'] as core.int
              : null,
          pubsubTopic: json_.containsKey('pubsubTopic')
              ? json_['pubsubTopic'] as core.String
              : null,
          signinDetails: json_.containsKey('signinDetails')
              ? (json_['signinDetails'] as core.List)
                  .map((value) => SigninDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          termsAndConditions: json_.containsKey('termsAndConditions')
              ? (json_['termsAndConditions'] as core.List)
                  .map((value) => TermsAndConditions.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appAutoApprovalEnabled != null)
          'appAutoApprovalEnabled': appAutoApprovalEnabled!,
        if (contactInfo != null) 'contactInfo': contactInfo!,
        if (enabledNotificationTypes != null)
          'enabledNotificationTypes': enabledNotificationTypes!,
        if (enterpriseDisplayName != null)
          'enterpriseDisplayName': enterpriseDisplayName!,
        if (logo != null) 'logo': logo!,
        if (name != null) 'name': name!,
        if (primaryColor != null) 'primaryColor': primaryColor!,
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
        if (signinDetails != null) 'signinDetails': signinDetails!,
        if (termsAndConditions != null)
          'termsAndConditions': termsAndConditions!,
      };
}

/// Configuration to enable an app as an extension app, with the capability of
/// interacting with Android Device Policy offline.
class ExtensionConfig {
  /// Fully qualified class name of the receiver service class for Android
  /// Device Policy to notify the extension app of any local command status
  /// updates.
  core.String? notificationReceiver;

  /// Hex-encoded SHA-256 hash of the signing certificate of the extension app.
  ///
  /// Only hexadecimal string representations of 64 characters are valid.If not
  /// specified, the signature for the corresponding package name is obtained
  /// from the Play Store instead.If this list is empty, the signature of the
  /// extension app on the device must match the signature obtained from the
  /// Play Store for the app to be able to communicate with Android Device
  /// Policy.If this list is not empty, the signature of the extension app on
  /// the device must match one of the entries in this list for the app to be
  /// able to communicate with Android Device Policy.In production use cases, it
  /// is recommended to leave this empty.
  core.List<core.String>? signingKeyFingerprintsSha256;

  ExtensionConfig({
    this.notificationReceiver,
    this.signingKeyFingerprintsSha256,
  });

  ExtensionConfig.fromJson(core.Map json_)
      : this(
          notificationReceiver: json_.containsKey('notificationReceiver')
              ? json_['notificationReceiver'] as core.String
              : null,
          signingKeyFingerprintsSha256:
              json_.containsKey('signingKeyFingerprintsSha256')
                  ? (json_['signingKeyFingerprintsSha256'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
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

  ExternalData({
    this.sha256Hash,
    this.url,
  });

  ExternalData.fromJson(core.Map json_)
      : this(
          sha256Hash: json_.containsKey('sha256Hash')
              ? json_['sha256Hash'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha256Hash != null) 'sha256Hash': sha256Hash!,
        if (url != null) 'url': url!,
      };
}

/// A system freeze period.
///
/// When a device’s clock is within the freeze period, all incoming system
/// updates (including security patches) are blocked and won’t be installed.
/// When a device is outside the freeze period, normal update behavior applies.
/// Leap years are ignored in freeze period calculations, in particular: * If
/// Feb. 29th is set as the start or end date of a freeze period, the freeze
/// period will start or end on Feb. 28th instead. * When a device’s system
/// clock reads Feb. 29th, it’s treated as Feb. 28th. * When calculating the
/// number of days in a freeze period or the time between two freeze periods,
/// Feb. 29th is ignored and not counted as a day.
class FreezePeriod {
  /// The end date (inclusive) of the freeze period.
  ///
  /// Must be no later than 90 days from the start date. If the end date is
  /// earlier than the start date, the freeze period is considered wrapping
  /// year-end. Note: year must not be set. For example, {"month": 1,"date":
  /// 30}.
  Date? endDate;

  /// The start date (inclusive) of the freeze period.
  ///
  /// Note: year must not be set. For example, {"month": 1,"date": 30}.
  Date? startDate;

  FreezePeriod({
    this.endDate,
    this.startDate,
  });

  FreezePeriod.fromJson(core.Map json_)
      : this(
          endDate: json_.containsKey('endDate')
              ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          startDate: json_.containsKey('startDate')
              ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (startDate != null) 'startDate': startDate!,
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
              json_.containsKey('batteryShutdownTemperatures')
                  ? (json_['batteryShutdownTemperatures'] as core.List)
                      .map((value) => (value as core.num).toDouble())
                      .toList()
                  : null,
          batteryThrottlingTemperatures:
              json_.containsKey('batteryThrottlingTemperatures')
                  ? (json_['batteryThrottlingTemperatures'] as core.List)
                      .map((value) => (value as core.num).toDouble())
                      .toList()
                  : null,
          brand:
              json_.containsKey('brand') ? json_['brand'] as core.String : null,
          cpuShutdownTemperatures: json_.containsKey('cpuShutdownTemperatures')
              ? (json_['cpuShutdownTemperatures'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
          cpuThrottlingTemperatures:
              json_.containsKey('cpuThrottlingTemperatures')
                  ? (json_['cpuThrottlingTemperatures'] as core.List)
                      .map((value) => (value as core.num).toDouble())
                      .toList()
                  : null,
          deviceBasebandVersion: json_.containsKey('deviceBasebandVersion')
              ? json_['deviceBasebandVersion'] as core.String
              : null,
          enterpriseSpecificId: json_.containsKey('enterpriseSpecificId')
              ? json_['enterpriseSpecificId'] as core.String
              : null,
          gpuShutdownTemperatures: json_.containsKey('gpuShutdownTemperatures')
              ? (json_['gpuShutdownTemperatures'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
          gpuThrottlingTemperatures:
              json_.containsKey('gpuThrottlingTemperatures')
                  ? (json_['gpuThrottlingTemperatures'] as core.List)
                      .map((value) => (value as core.num).toDouble())
                      .toList()
                  : null,
          hardware: json_.containsKey('hardware')
              ? json_['hardware'] as core.String
              : null,
          manufacturer: json_.containsKey('manufacturer')
              ? json_['manufacturer'] as core.String
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
              : null,
          skinShutdownTemperatures:
              json_.containsKey('skinShutdownTemperatures')
                  ? (json_['skinShutdownTemperatures'] as core.List)
                      .map((value) => (value as core.num).toDouble())
                      .toList()
                  : null,
          skinThrottlingTemperatures:
              json_.containsKey('skinThrottlingTemperatures')
                  ? (json_['skinThrottlingTemperatures'] as core.List)
                      .map((value) => (value as core.num).toDouble())
                      .toList()
                  : null,
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
          batteryTemperatures: json_.containsKey('batteryTemperatures')
              ? (json_['batteryTemperatures'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
          cpuTemperatures: json_.containsKey('cpuTemperatures')
              ? (json_['cpuTemperatures'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
          cpuUsages: json_.containsKey('cpuUsages')
              ? (json_['cpuUsages'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          fanSpeeds: json_.containsKey('fanSpeeds')
              ? (json_['fanSpeeds'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
          gpuTemperatures: json_.containsKey('gpuTemperatures')
              ? (json_['gpuTemperatures'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
          skinTemperatures: json_.containsKey('skinTemperatures')
              ? (json_['skinTemperatures'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
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
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          lastUpdateTime: json_.containsKey('lastUpdateTime')
              ? json_['lastUpdateTime'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
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
          deviceSettings: json_.containsKey('deviceSettings')
              ? json_['deviceSettings'] as core.String
              : null,
          powerButtonActions: json_.containsKey('powerButtonActions')
              ? json_['powerButtonActions'] as core.String
              : null,
          statusBar: json_.containsKey('statusBar')
              ? json_['statusBar'] as core.String
              : null,
          systemErrorWarnings: json_.containsKey('systemErrorWarnings')
              ? json_['systemErrorWarnings'] as core.String
              : null,
          systemNavigation: json_.containsKey('systemNavigation')
              ? json_['systemNavigation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceSettings != null) 'deviceSettings': deviceSettings!,
        if (powerButtonActions != null)
          'powerButtonActions': powerButtonActions!,
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

  LaunchAppAction({
    this.packageName,
  });

  LaunchAppAction.fromJson(core.Map json_)
      : this(
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
        );

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

  ListDevicesResponse({
    this.devices,
    this.nextPageToken,
  });

  ListDevicesResponse.fromJson(core.Map json_)
      : this(
          devices: json_.containsKey('devices')
              ? (json_['devices'] as core.List)
                  .map((value) => Device.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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

  ListEnrollmentTokensResponse({
    this.enrollmentTokens,
    this.nextPageToken,
  });

  ListEnrollmentTokensResponse.fromJson(core.Map json_)
      : this(
          enrollmentTokens: json_.containsKey('enrollmentTokens')
              ? (json_['enrollmentTokens'] as core.List)
                  .map((value) => EnrollmentToken.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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

  ListEnterprisesResponse({
    this.enterprises,
    this.nextPageToken,
  });

  ListEnterprisesResponse.fromJson(core.Map json_)
      : this(
          enterprises: json_.containsKey('enterprises')
              ? (json_['enterprises'] as core.List)
                  .map((value) => Enterprise.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enterprises != null) 'enterprises': enterprises!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  ListPoliciesResponse({
    this.nextPageToken,
    this.policies,
  });

  ListPoliciesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          policies: json_.containsKey('policies')
              ? (json_['policies'] as core.List)
                  .map((value) => Policy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  ListWebAppsResponse({
    this.nextPageToken,
    this.webApps,
  });

  ListWebAppsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          webApps: json_.containsKey('webApps')
              ? (json_['webApps'] as core.List)
                  .map((value) => WebApp.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  ManagedConfigurationTemplate({
    this.configurationVariables,
    this.templateId,
  });

  ManagedConfigurationTemplate.fromJson(core.Map json_)
      : this(
          configurationVariables: json_.containsKey('configurationVariables')
              ? (json_['configurationVariables']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          templateId: json_.containsKey('templateId')
              ? json_['templateId'] as core.String
              : null,
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
          defaultValue:
              json_.containsKey('defaultValue') ? json_['defaultValue'] : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => ManagedPropertyEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          nestedProperties: json_.containsKey('nestedProperties')
              ? (json_['nestedProperties'] as core.List)
                  .map((value) => ManagedProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  ManagedPropertyEntry({
    this.name,
    this.value,
  });

  ManagedPropertyEntry.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// An event related to memory and storage measurements.
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

  MemoryEvent({
    this.byteCount,
    this.createTime,
    this.eventType,
  });

  MemoryEvent.fromJson(core.Map json_)
      : this(
          byteCount: json_.containsKey('byteCount')
              ? json_['byteCount'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          eventType: json_.containsKey('eventType')
              ? json_['eventType'] as core.String
              : null,
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

  MemoryInfo({
    this.totalInternalStorage,
    this.totalRam,
  });

  MemoryInfo.fromJson(core.Map json_)
      : this(
          totalInternalStorage: json_.containsKey('totalInternalStorage')
              ? json_['totalInternalStorage'] as core.String
              : null,
          totalRam: json_.containsKey('totalRam')
              ? json_['totalRam'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalInternalStorage != null)
          'totalInternalStorage': totalInternalStorage!,
        if (totalRam != null) 'totalRam': totalRam!,
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
          imei: json_.containsKey('imei') ? json_['imei'] as core.String : null,
          meid: json_.containsKey('meid') ? json_['meid'] as core.String : null,
          networkOperatorName: json_.containsKey('networkOperatorName')
              ? json_['networkOperatorName'] as core.String
              : null,
          telephonyInfos: json_.containsKey('telephonyInfos')
              ? (json_['telephonyInfos'] as core.List)
                  .map((value) => TelephonyInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          wifiMacAddress: json_.containsKey('wifiMacAddress')
              ? json_['wifiMacAddress'] as core.String
              : null,
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
  core.String? installationFailureReason;

  /// The reason the device is not in compliance with the setting.
  /// Possible string values are:
  /// - "NON_COMPLIANCE_REASON_UNSPECIFIED" : This value is disallowed.
  /// - "API_LEVEL" : The setting is not supported in the API level of the
  /// Android version running on the device.
  /// - "MANAGEMENT_MODE" : The management mode (profile owner, device owner,
  /// etc.) doesn't support the setting.
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
          currentValue:
              json_.containsKey('currentValue') ? json_['currentValue'] : null,
          fieldPath: json_.containsKey('fieldPath')
              ? json_['fieldPath'] as core.String
              : null,
          installationFailureReason:
              json_.containsKey('installationFailureReason')
                  ? json_['installationFailureReason'] as core.String
                  : null,
          nonComplianceReason: json_.containsKey('nonComplianceReason')
              ? json_['nonComplianceReason'] as core.String
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          settingName: json_.containsKey('settingName')
              ? json_['settingName'] as core.String
              : null,
          specificNonComplianceContext:
              json_.containsKey('specificNonComplianceContext')
                  ? SpecificNonComplianceContext.fromJson(
                      json_['specificNonComplianceContext']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          specificNonComplianceReason:
              json_.containsKey('specificNonComplianceReason')
                  ? json_['specificNonComplianceReason'] as core.String
                  : null,
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
  /// - "NON_COMPLIANCE_REASON_UNSPECIFIED" : This value is disallowed.
  /// - "API_LEVEL" : The setting is not supported in the API level of the
  /// Android version running on the device.
  /// - "MANAGEMENT_MODE" : The management mode (profile owner, device owner,
  /// etc.) doesn't support the setting.
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
          nonComplianceReason: json_.containsKey('nonComplianceReason')
              ? json_['nonComplianceReason'] as core.String
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          settingName: json_.containsKey('settingName')
              ? json_['settingName'] as core.String
              : null,
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
          certificateReferences: json_.containsKey('certificateReferences')
              ? (json_['certificateReferences'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          contentProviderEndpoint: json_.containsKey('contentProviderEndpoint')
              ? ContentProviderEndpoint.fromJson(
                  json_['contentProviderEndpoint']
                      as core.Map<core.String, core.dynamic>)
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

  OncWifiContext({
    this.wifiGuid,
  });

  OncWifiContext.fromJson(core.Map json_)
      : this(
          wifiGuid: json_.containsKey('wifiGuid')
              ? json_['wifiGuid'] as core.String
              : null,
        );

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

  /// The normal response of the operation in case of success.
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
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

  PackageNameList({
    this.packageNames,
  });

  PackageNameList.fromJson(core.Map json_)
      : this(
          packageNames: json_.containsKey('packageNames')
              ? (json_['packageNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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

  PasswordPoliciesContext({
    this.passwordPolicyScope,
  });

  PasswordPoliciesContext.fromJson(core.Map json_)
      : this(
          passwordPolicyScope: json_.containsKey('passwordPolicyScope')
              ? json_['passwordPolicyScope'] as core.String
              : null,
        );

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
              json_.containsKey('maximumFailedPasswordsForWipe')
                  ? json_['maximumFailedPasswordsForWipe'] as core.int
                  : null,
          passwordExpirationTimeout:
              json_.containsKey('passwordExpirationTimeout')
                  ? json_['passwordExpirationTimeout'] as core.String
                  : null,
          passwordHistoryLength: json_.containsKey('passwordHistoryLength')
              ? json_['passwordHistoryLength'] as core.int
              : null,
          passwordMinimumLength: json_.containsKey('passwordMinimumLength')
              ? json_['passwordMinimumLength'] as core.int
              : null,
          passwordMinimumLetters: json_.containsKey('passwordMinimumLetters')
              ? json_['passwordMinimumLetters'] as core.int
              : null,
          passwordMinimumLowerCase:
              json_.containsKey('passwordMinimumLowerCase')
                  ? json_['passwordMinimumLowerCase'] as core.int
                  : null,
          passwordMinimumNonLetter:
              json_.containsKey('passwordMinimumNonLetter')
                  ? json_['passwordMinimumNonLetter'] as core.int
                  : null,
          passwordMinimumNumeric: json_.containsKey('passwordMinimumNumeric')
              ? json_['passwordMinimumNumeric'] as core.int
              : null,
          passwordMinimumSymbols: json_.containsKey('passwordMinimumSymbols')
              ? json_['passwordMinimumSymbols'] as core.int
              : null,
          passwordMinimumUpperCase:
              json_.containsKey('passwordMinimumUpperCase')
                  ? json_['passwordMinimumUpperCase'] as core.int
                  : null,
          passwordQuality: json_.containsKey('passwordQuality')
              ? json_['passwordQuality'] as core.String
              : null,
          passwordScope: json_.containsKey('passwordScope')
              ? json_['passwordScope'] as core.String
              : null,
          requirePasswordUnlock: json_.containsKey('requirePasswordUnlock')
              ? json_['requirePasswordUnlock'] as core.String
              : null,
          unifiedLockSettings: json_.containsKey('unifiedLockSettings')
              ? json_['unifiedLockSettings'] as core.String
              : null,
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

  PerAppResult({
    this.clearingResult,
  });

  PerAppResult.fromJson(core.Map json_)
      : this(
          clearingResult: json_.containsKey('clearingResult')
              ? json_['clearingResult'] as core.String
              : null,
        );

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
  /// - "GRANT" : Automatically grant a permission.
  /// - "DENY" : Automatically deny a permission.
  core.String? policy;

  PermissionGrant({
    this.permission,
    this.policy,
  });

  PermissionGrant.fromJson(core.Map json_)
      : this(
          permission: json_.containsKey('permission')
              ? json_['permission'] as core.String
              : null,
          policy: json_.containsKey('policy')
              ? json_['policy'] as core.String
              : null,
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
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          categories: json_.containsKey('categories')
              ? (json_['categories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          receiverActivity: json_.containsKey('receiverActivity')
              ? json_['receiverActivity'] as core.String
              : null,
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
  /// profile.
  /// - "AVAILABLE" : The app is available to install in the personal profile.
  core.String? installType;

  /// The package name of the application.
  core.String? packageName;

  PersonalApplicationPolicy({
    this.installType,
    this.packageName,
  });

  PersonalApplicationPolicy.fromJson(core.Map json_)
      : this(
          installType: json_.containsKey('installType')
              ? json_['installType'] as core.String
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
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

  /// Whether camera is disabled.
  core.bool? cameraDisabled;

  /// Controls how long the work profile can stay off.
  ///
  /// The duration must be at least 3 days.
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

  /// Whether screen capture is disabled.
  core.bool? screenCaptureDisabled;

  PersonalUsagePolicies({
    this.accountTypesWithManagementDisabled,
    this.cameraDisabled,
    this.maxDaysWithWorkOff,
    this.personalApplications,
    this.personalPlayStoreMode,
    this.screenCaptureDisabled,
  });

  PersonalUsagePolicies.fromJson(core.Map json_)
      : this(
          accountTypesWithManagementDisabled:
              json_.containsKey('accountTypesWithManagementDisabled')
                  ? (json_['accountTypesWithManagementDisabled'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          cameraDisabled: json_.containsKey('cameraDisabled')
              ? json_['cameraDisabled'] as core.bool
              : null,
          maxDaysWithWorkOff: json_.containsKey('maxDaysWithWorkOff')
              ? json_['maxDaysWithWorkOff'] as core.int
              : null,
          personalApplications: json_.containsKey('personalApplications')
              ? (json_['personalApplications'] as core.List)
                  .map((value) => PersonalApplicationPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          personalPlayStoreMode: json_.containsKey('personalPlayStoreMode')
              ? json_['personalPlayStoreMode'] as core.String
              : null,
          screenCaptureDisabled: json_.containsKey('screenCaptureDisabled')
              ? json_['screenCaptureDisabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountTypesWithManagementDisabled != null)
          'accountTypesWithManagementDisabled':
              accountTypesWithManagementDisabled!,
        if (cameraDisabled != null) 'cameraDisabled': cameraDisabled!,
        if (maxDaysWithWorkOff != null)
          'maxDaysWithWorkOff': maxDaysWithWorkOff!,
        if (personalApplications != null)
          'personalApplications': personalApplications!,
        if (personalPlayStoreMode != null)
          'personalPlayStoreMode': personalPlayStoreMode!,
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
  core.bool? addUserDisabled;

  /// Whether adjusting the master volume is disabled.
  ///
  /// Also mutes the device.
  core.bool? adjustVolumeDisabled;

  /// Security policies set to secure values by default.
  ///
  /// To maintain the security posture of a device, we don't recommend
  /// overriding any of the default values.
  AdvancedSecurityOverrides? advancedSecurityOverrides;

  /// Configuration for an always-on VPN connection.
  ///
  /// Use with vpn_config_disabled to prevent modification of this setting.
  AlwaysOnVpnPackage? alwaysOnVpnPackage;

  /// The app tracks for Android Device Policy the device can access.
  ///
  /// The device receives the latest version among all accessible tracks. If no
  /// tracks are specified, then the device only uses the production track.
  core.List<core.String>? androidDevicePolicyTracks;

  /// Use autoUpdateMode instead.When autoUpdateMode is set to
  /// AUTO_UPDATE_POSTPONED or AUTO_UPDATE_HIGH_PRIORITY, this field has no
  /// effect.The app auto update policy, which controls when automatic app
  /// updates can be applied.
  ///
  /// Deprecated.
  /// Possible string values are:
  /// - "APP_AUTO_UPDATE_POLICY_UNSPECIFIED" : The auto-update policy is not
  /// set. Equivalent to CHOICE_TO_THE_USER.
  /// - "CHOICE_TO_THE_USER" : The user can control auto-updates.
  /// - "NEVER" : Apps are never auto-updated.
  /// - "WIFI_ONLY" : Apps are auto-updated over Wi-Fi only.
  /// - "ALWAYS" : Apps are auto-updated at any time. Data charges may apply.
  core.String? appAutoUpdatePolicy;

  /// Policy applied to apps.
  core.List<ApplicationPolicy>? applications;

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
  core.bool? autoTimeRequired;

  /// Whether applications other than the ones configured in applications are
  /// blocked from being installed.
  ///
  /// When set, applications that were installed under a previous policy but no
  /// longer appear in the policy are automatically uninstalled.
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
  core.bool? cameraDisabled;

  /// Whether configuring cell broadcast is disabled.
  core.bool? cellBroadcastsConfigDisabled;

  /// Rules for determining apps' access to private keys.
  ///
  /// See ChoosePrivateKeyRule for details.
  core.List<ChoosePrivateKeyRule>? choosePrivateKeyRules;

  /// Rules declaring which mitigating actions to take when a device is not
  /// compliant with its policy.
  ///
  /// When the conditions for multiple rules are satisfied, all of the
  /// mitigating actions for the rules are taken. There is a maximum limit of
  /// 100 rules. Use policy enforcement rules instead.
  core.List<ComplianceRule>? complianceRules;

  /// Whether creating windows besides app windows is disabled.
  core.bool? createWindowsDisabled;

  /// Whether configuring user credentials is disabled.
  core.bool? credentialsConfigDisabled;

  /// Cross-profile policies applied on the device.
  CrossProfilePolicies? crossProfilePolicies;

  /// Whether roaming data services are disabled.
  core.bool? dataRoamingDisabled;

  /// Whether the user is allowed to enable debugging features.
  core.bool? debuggingFeaturesAllowed;

  /// The default permission policy for runtime permission requests.
  /// Possible string values are:
  /// - "PERMISSION_POLICY_UNSPECIFIED" : Policy not specified. If no policy is
  /// specified for a permission at any level, then the PROMPT behavior is used
  /// by default.
  /// - "PROMPT" : Prompt the user to grant a permission.
  /// - "GRANT" : Automatically grant a permission.
  /// - "DENY" : Automatically deny a permission.
  core.String? defaultPermissionPolicy;

  /// The device owner information to be shown on the lock screen.
  UserFacingMessage? deviceOwnerLockScreenInfo;

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
  core.bool? ensureVerifyAppsEnabled;

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
  core.bool? installUnknownSourcesAllowed;

  /// Whether the keyguard is disabled.
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
  /// - "LOCATION_ENFORCED" : Enable location setting on the device.
  /// - "LOCATION_DISABLED" : Disable location setting on the device.
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
  /// see wifiConfigDisabled for further details.
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
  /// profile.
  ///
  /// For example, an organization may have an agreement with a carrier that all
  /// of the work data from its employees' devices will be sent via a network
  /// service dedicated for enterprise use. An example of a supported
  /// preferential network service is the enterprise slice on 5G networks. This
  /// has no effect on fully managed devices.
  /// Possible string values are:
  /// - "PREFERENTIAL_NETWORK_SERVICE_UNSPECIFIED" : Unspecified. Defaults to
  /// PREFERENTIAL_NETWORK_SERVICES_DISABLED.
  /// - "PREFERENTIAL_NETWORK_SERVICE_DISABLED" : Preferential network service
  /// is disabled on the work profile.
  /// - "PREFERENTIAL_NETWORK_SERVICE_ENABLED" : Preferential network service is
  /// enabled on the work profile.
  core.String? preferentialNetworkService;

  /// Allows showing UI on a device for a user to choose a private key alias if
  /// there are no matching rules in ChoosePrivateKeyRules.
  ///
  /// For devices below Android P, setting this may leave enterprise keys
  /// vulnerable.
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
  core.bool? safeBootDisabled;

  /// Whether screen capture is disabled.
  core.bool? screenCaptureDisabled;

  /// Whether changing the user icon is disabled.
  core.bool? setUserIconDisabled;

  /// Whether changing the wallpaper is disabled.
  core.bool? setWallpaperDisabled;

  /// Action to take during the setup process.
  ///
  /// At most one action may be specified.
  core.List<SetupAction>? setupActions;

  /// Whether location sharing is disabled.
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
  /// to Play app updates as well.
  SystemUpdate? systemUpdate;

  /// Whether configuring tethering and portable hotspots is disabled.
  core.bool? tetheringConfigDisabled;

  /// Whether user uninstallation of applications is disabled.
  core.bool? uninstallAppsDisabled;

  /// If microphone_access is set to any value other than
  /// MICROPHONE_ACCESS_UNSPECIFIED, this has no effect.
  ///
  /// Otherwise this field controls whether microphones are disabled: If true,
  /// all microphones are disabled, otherwise they are available. This is
  /// available only on fully managed devices.
  core.bool? unmuteMicrophoneDisabled;

  /// Configuration of device activity logging.
  UsageLog? usageLog;

  /// Whether transferring files over USB is disabled.
  core.bool? usbFileTransferDisabled;

  /// Whether USB storage is enabled.
  ///
  /// Deprecated.
  core.bool? usbMassStorageEnabled;

  /// The version of the policy.
  ///
  /// This is a read-only field. The version is incremented each time the policy
  /// is updated.
  core.String? version;

  /// Whether configuring VPN is disabled.
  core.bool? vpnConfigDisabled;

  /// Whether configuring Wi-Fi access points is disabled.Note: If a network
  /// connection can't be made at boot time and configuring Wi-Fi is disabled
  /// then network escape hatch will be shown in order to refresh the device
  /// policy (see networkEscapeHatchEnabled).
  core.bool? wifiConfigDisabled;

  /// DEPRECATED - Use wifi_config_disabled.
  core.bool? wifiConfigsLockdownEnabled;

  Policy({
    this.accountTypesWithManagementDisabled,
    this.addUserDisabled,
    this.adjustVolumeDisabled,
    this.advancedSecurityOverrides,
    this.alwaysOnVpnPackage,
    this.androidDevicePolicyTracks,
    this.appAutoUpdatePolicy,
    this.applications,
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
    this.credentialsConfigDisabled,
    this.crossProfilePolicies,
    this.dataRoamingDisabled,
    this.debuggingFeaturesAllowed,
    this.defaultPermissionPolicy,
    this.deviceOwnerLockScreenInfo,
    this.encryptionPolicy,
    this.ensureVerifyAppsEnabled,
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
  });

  Policy.fromJson(core.Map json_)
      : this(
          accountTypesWithManagementDisabled:
              json_.containsKey('accountTypesWithManagementDisabled')
                  ? (json_['accountTypesWithManagementDisabled'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          addUserDisabled: json_.containsKey('addUserDisabled')
              ? json_['addUserDisabled'] as core.bool
              : null,
          adjustVolumeDisabled: json_.containsKey('adjustVolumeDisabled')
              ? json_['adjustVolumeDisabled'] as core.bool
              : null,
          advancedSecurityOverrides:
              json_.containsKey('advancedSecurityOverrides')
                  ? AdvancedSecurityOverrides.fromJson(
                      json_['advancedSecurityOverrides']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          alwaysOnVpnPackage: json_.containsKey('alwaysOnVpnPackage')
              ? AlwaysOnVpnPackage.fromJson(json_['alwaysOnVpnPackage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          androidDevicePolicyTracks:
              json_.containsKey('androidDevicePolicyTracks')
                  ? (json_['androidDevicePolicyTracks'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          appAutoUpdatePolicy: json_.containsKey('appAutoUpdatePolicy')
              ? json_['appAutoUpdatePolicy'] as core.String
              : null,
          applications: json_.containsKey('applications')
              ? (json_['applications'] as core.List)
                  .map((value) => ApplicationPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          autoDateAndTimeZone: json_.containsKey('autoDateAndTimeZone')
              ? json_['autoDateAndTimeZone'] as core.String
              : null,
          autoTimeRequired: json_.containsKey('autoTimeRequired')
              ? json_['autoTimeRequired'] as core.bool
              : null,
          blockApplicationsEnabled:
              json_.containsKey('blockApplicationsEnabled')
                  ? json_['blockApplicationsEnabled'] as core.bool
                  : null,
          bluetoothConfigDisabled: json_.containsKey('bluetoothConfigDisabled')
              ? json_['bluetoothConfigDisabled'] as core.bool
              : null,
          bluetoothContactSharingDisabled:
              json_.containsKey('bluetoothContactSharingDisabled')
                  ? json_['bluetoothContactSharingDisabled'] as core.bool
                  : null,
          bluetoothDisabled: json_.containsKey('bluetoothDisabled')
              ? json_['bluetoothDisabled'] as core.bool
              : null,
          cameraAccess: json_.containsKey('cameraAccess')
              ? json_['cameraAccess'] as core.String
              : null,
          cameraDisabled: json_.containsKey('cameraDisabled')
              ? json_['cameraDisabled'] as core.bool
              : null,
          cellBroadcastsConfigDisabled:
              json_.containsKey('cellBroadcastsConfigDisabled')
                  ? json_['cellBroadcastsConfigDisabled'] as core.bool
                  : null,
          choosePrivateKeyRules: json_.containsKey('choosePrivateKeyRules')
              ? (json_['choosePrivateKeyRules'] as core.List)
                  .map((value) => ChoosePrivateKeyRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          complianceRules: json_.containsKey('complianceRules')
              ? (json_['complianceRules'] as core.List)
                  .map((value) => ComplianceRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createWindowsDisabled: json_.containsKey('createWindowsDisabled')
              ? json_['createWindowsDisabled'] as core.bool
              : null,
          credentialsConfigDisabled:
              json_.containsKey('credentialsConfigDisabled')
                  ? json_['credentialsConfigDisabled'] as core.bool
                  : null,
          crossProfilePolicies: json_.containsKey('crossProfilePolicies')
              ? CrossProfilePolicies.fromJson(json_['crossProfilePolicies']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataRoamingDisabled: json_.containsKey('dataRoamingDisabled')
              ? json_['dataRoamingDisabled'] as core.bool
              : null,
          debuggingFeaturesAllowed:
              json_.containsKey('debuggingFeaturesAllowed')
                  ? json_['debuggingFeaturesAllowed'] as core.bool
                  : null,
          defaultPermissionPolicy: json_.containsKey('defaultPermissionPolicy')
              ? json_['defaultPermissionPolicy'] as core.String
              : null,
          deviceOwnerLockScreenInfo: json_
                  .containsKey('deviceOwnerLockScreenInfo')
              ? UserFacingMessage.fromJson(json_['deviceOwnerLockScreenInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          encryptionPolicy: json_.containsKey('encryptionPolicy')
              ? json_['encryptionPolicy'] as core.String
              : null,
          ensureVerifyAppsEnabled: json_.containsKey('ensureVerifyAppsEnabled')
              ? json_['ensureVerifyAppsEnabled'] as core.bool
              : null,
          factoryResetDisabled: json_.containsKey('factoryResetDisabled')
              ? json_['factoryResetDisabled'] as core.bool
              : null,
          frpAdminEmails: json_.containsKey('frpAdminEmails')
              ? (json_['frpAdminEmails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          funDisabled: json_.containsKey('funDisabled')
              ? json_['funDisabled'] as core.bool
              : null,
          installAppsDisabled: json_.containsKey('installAppsDisabled')
              ? json_['installAppsDisabled'] as core.bool
              : null,
          installUnknownSourcesAllowed:
              json_.containsKey('installUnknownSourcesAllowed')
                  ? json_['installUnknownSourcesAllowed'] as core.bool
                  : null,
          keyguardDisabled: json_.containsKey('keyguardDisabled')
              ? json_['keyguardDisabled'] as core.bool
              : null,
          keyguardDisabledFeatures:
              json_.containsKey('keyguardDisabledFeatures')
                  ? (json_['keyguardDisabledFeatures'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          kioskCustomLauncherEnabled:
              json_.containsKey('kioskCustomLauncherEnabled')
                  ? json_['kioskCustomLauncherEnabled'] as core.bool
                  : null,
          kioskCustomization: json_.containsKey('kioskCustomization')
              ? KioskCustomization.fromJson(json_['kioskCustomization']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locationMode: json_.containsKey('locationMode')
              ? json_['locationMode'] as core.String
              : null,
          longSupportMessage: json_.containsKey('longSupportMessage')
              ? UserFacingMessage.fromJson(json_['longSupportMessage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maximumTimeToLock: json_.containsKey('maximumTimeToLock')
              ? json_['maximumTimeToLock'] as core.String
              : null,
          microphoneAccess: json_.containsKey('microphoneAccess')
              ? json_['microphoneAccess'] as core.String
              : null,
          minimumApiLevel: json_.containsKey('minimumApiLevel')
              ? json_['minimumApiLevel'] as core.int
              : null,
          mobileNetworksConfigDisabled:
              json_.containsKey('mobileNetworksConfigDisabled')
                  ? json_['mobileNetworksConfigDisabled'] as core.bool
                  : null,
          modifyAccountsDisabled: json_.containsKey('modifyAccountsDisabled')
              ? json_['modifyAccountsDisabled'] as core.bool
              : null,
          mountPhysicalMediaDisabled:
              json_.containsKey('mountPhysicalMediaDisabled')
                  ? json_['mountPhysicalMediaDisabled'] as core.bool
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkEscapeHatchEnabled:
              json_.containsKey('networkEscapeHatchEnabled')
                  ? json_['networkEscapeHatchEnabled'] as core.bool
                  : null,
          networkResetDisabled: json_.containsKey('networkResetDisabled')
              ? json_['networkResetDisabled'] as core.bool
              : null,
          oncCertificateProviders: json_.containsKey('oncCertificateProviders')
              ? (json_['oncCertificateProviders'] as core.List)
                  .map((value) => OncCertificateProvider.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          openNetworkConfiguration:
              json_.containsKey('openNetworkConfiguration')
                  ? json_['openNetworkConfiguration']
                      as core.Map<core.String, core.dynamic>
                  : null,
          outgoingBeamDisabled: json_.containsKey('outgoingBeamDisabled')
              ? json_['outgoingBeamDisabled'] as core.bool
              : null,
          outgoingCallsDisabled: json_.containsKey('outgoingCallsDisabled')
              ? json_['outgoingCallsDisabled'] as core.bool
              : null,
          passwordPolicies: json_.containsKey('passwordPolicies')
              ? (json_['passwordPolicies'] as core.List)
                  .map((value) => PasswordRequirements.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          passwordRequirements: json_.containsKey('passwordRequirements')
              ? PasswordRequirements.fromJson(json_['passwordRequirements']
                  as core.Map<core.String, core.dynamic>)
              : null,
          permissionGrants: json_.containsKey('permissionGrants')
              ? (json_['permissionGrants'] as core.List)
                  .map((value) => PermissionGrant.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          permittedAccessibilityServices: json_
                  .containsKey('permittedAccessibilityServices')
              ? PackageNameList.fromJson(json_['permittedAccessibilityServices']
                  as core.Map<core.String, core.dynamic>)
              : null,
          permittedInputMethods: json_.containsKey('permittedInputMethods')
              ? PackageNameList.fromJson(json_['permittedInputMethods']
                  as core.Map<core.String, core.dynamic>)
              : null,
          persistentPreferredActivities:
              json_.containsKey('persistentPreferredActivities')
                  ? (json_['persistentPreferredActivities'] as core.List)
                      .map((value) => PersistentPreferredActivity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          personalUsagePolicies: json_.containsKey('personalUsagePolicies')
              ? PersonalUsagePolicies.fromJson(json_['personalUsagePolicies']
                  as core.Map<core.String, core.dynamic>)
              : null,
          playStoreMode: json_.containsKey('playStoreMode')
              ? json_['playStoreMode'] as core.String
              : null,
          policyEnforcementRules: json_.containsKey('policyEnforcementRules')
              ? (json_['policyEnforcementRules'] as core.List)
                  .map((value) => PolicyEnforcementRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          preferentialNetworkService:
              json_.containsKey('preferentialNetworkService')
                  ? json_['preferentialNetworkService'] as core.String
                  : null,
          privateKeySelectionEnabled:
              json_.containsKey('privateKeySelectionEnabled')
                  ? json_['privateKeySelectionEnabled'] as core.bool
                  : null,
          recommendedGlobalProxy: json_.containsKey('recommendedGlobalProxy')
              ? ProxyInfo.fromJson(json_['recommendedGlobalProxy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          removeUserDisabled: json_.containsKey('removeUserDisabled')
              ? json_['removeUserDisabled'] as core.bool
              : null,
          safeBootDisabled: json_.containsKey('safeBootDisabled')
              ? json_['safeBootDisabled'] as core.bool
              : null,
          screenCaptureDisabled: json_.containsKey('screenCaptureDisabled')
              ? json_['screenCaptureDisabled'] as core.bool
              : null,
          setUserIconDisabled: json_.containsKey('setUserIconDisabled')
              ? json_['setUserIconDisabled'] as core.bool
              : null,
          setWallpaperDisabled: json_.containsKey('setWallpaperDisabled')
              ? json_['setWallpaperDisabled'] as core.bool
              : null,
          setupActions: json_.containsKey('setupActions')
              ? (json_['setupActions'] as core.List)
                  .map((value) => SetupAction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shareLocationDisabled: json_.containsKey('shareLocationDisabled')
              ? json_['shareLocationDisabled'] as core.bool
              : null,
          shortSupportMessage: json_.containsKey('shortSupportMessage')
              ? UserFacingMessage.fromJson(json_['shortSupportMessage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          skipFirstUseHintsEnabled:
              json_.containsKey('skipFirstUseHintsEnabled')
                  ? json_['skipFirstUseHintsEnabled'] as core.bool
                  : null,
          smsDisabled: json_.containsKey('smsDisabled')
              ? json_['smsDisabled'] as core.bool
              : null,
          statusBarDisabled: json_.containsKey('statusBarDisabled')
              ? json_['statusBarDisabled'] as core.bool
              : null,
          statusReportingSettings: json_.containsKey('statusReportingSettings')
              ? StatusReportingSettings.fromJson(
                  json_['statusReportingSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          stayOnPluggedModes: json_.containsKey('stayOnPluggedModes')
              ? (json_['stayOnPluggedModes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          systemUpdate: json_.containsKey('systemUpdate')
              ? SystemUpdate.fromJson(
                  json_['systemUpdate'] as core.Map<core.String, core.dynamic>)
              : null,
          tetheringConfigDisabled: json_.containsKey('tetheringConfigDisabled')
              ? json_['tetheringConfigDisabled'] as core.bool
              : null,
          uninstallAppsDisabled: json_.containsKey('uninstallAppsDisabled')
              ? json_['uninstallAppsDisabled'] as core.bool
              : null,
          unmuteMicrophoneDisabled:
              json_.containsKey('unmuteMicrophoneDisabled')
                  ? json_['unmuteMicrophoneDisabled'] as core.bool
                  : null,
          usageLog: json_.containsKey('usageLog')
              ? UsageLog.fromJson(
                  json_['usageLog'] as core.Map<core.String, core.dynamic>)
              : null,
          usbFileTransferDisabled: json_.containsKey('usbFileTransferDisabled')
              ? json_['usbFileTransferDisabled'] as core.bool
              : null,
          usbMassStorageEnabled: json_.containsKey('usbMassStorageEnabled')
              ? json_['usbMassStorageEnabled'] as core.bool
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
          vpnConfigDisabled: json_.containsKey('vpnConfigDisabled')
              ? json_['vpnConfigDisabled'] as core.bool
              : null,
          wifiConfigDisabled: json_.containsKey('wifiConfigDisabled')
              ? json_['wifiConfigDisabled'] as core.bool
              : null,
          wifiConfigsLockdownEnabled:
              json_.containsKey('wifiConfigsLockdownEnabled')
                  ? json_['wifiConfigsLockdownEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountTypesWithManagementDisabled != null)
          'accountTypesWithManagementDisabled':
              accountTypesWithManagementDisabled!,
        if (addUserDisabled != null) 'addUserDisabled': addUserDisabled!,
        if (adjustVolumeDisabled != null)
          'adjustVolumeDisabled': adjustVolumeDisabled!,
        if (advancedSecurityOverrides != null)
          'advancedSecurityOverrides': advancedSecurityOverrides!,
        if (alwaysOnVpnPackage != null)
          'alwaysOnVpnPackage': alwaysOnVpnPackage!,
        if (androidDevicePolicyTracks != null)
          'androidDevicePolicyTracks': androidDevicePolicyTracks!,
        if (appAutoUpdatePolicy != null)
          'appAutoUpdatePolicy': appAutoUpdatePolicy!,
        if (applications != null) 'applications': applications!,
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
        if (deviceOwnerLockScreenInfo != null)
          'deviceOwnerLockScreenInfo': deviceOwnerLockScreenInfo!,
        if (encryptionPolicy != null) 'encryptionPolicy': encryptionPolicy!,
        if (ensureVerifyAppsEnabled != null)
          'ensureVerifyAppsEnabled': ensureVerifyAppsEnabled!,
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
        if (kioskCustomization != null)
          'kioskCustomization': kioskCustomization!,
        if (locationMode != null) 'locationMode': locationMode!,
        if (longSupportMessage != null)
          'longSupportMessage': longSupportMessage!,
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
        if (privateKeySelectionEnabled != null)
          'privateKeySelectionEnabled': privateKeySelectionEnabled!,
        if (recommendedGlobalProxy != null)
          'recommendedGlobalProxy': recommendedGlobalProxy!,
        if (removeUserDisabled != null)
          'removeUserDisabled': removeUserDisabled!,
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
        if (stayOnPluggedModes != null)
          'stayOnPluggedModes': stayOnPluggedModes!,
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
        if (wifiConfigDisabled != null)
          'wifiConfigDisabled': wifiConfigDisabled!,
        if (wifiConfigsLockdownEnabled != null)
          'wifiConfigsLockdownEnabled': wifiConfigsLockdownEnabled!,
      };
}

/// A rule that defines the actions to take if a device or work profile is not
/// compliant with the policy specified in settingName.
class PolicyEnforcementRule {
  /// An action to block access to apps and data on a fully managed device or in
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

  /// An action to reset a fully managed device or delete a work profile.
  ///
  /// Note: blockAction must also be specified.
  WipeAction? wipeAction;

  PolicyEnforcementRule({
    this.blockAction,
    this.settingName,
    this.wipeAction,
  });

  PolicyEnforcementRule.fromJson(core.Map json_)
      : this(
          blockAction: json_.containsKey('blockAction')
              ? BlockAction.fromJson(
                  json_['blockAction'] as core.Map<core.String, core.dynamic>)
              : null,
          settingName: json_.containsKey('settingName')
              ? json_['settingName'] as core.String
              : null,
          wipeAction: json_.containsKey('wipeAction')
              ? WipeAction.fromJson(
                  json_['wipeAction'] as core.Map<core.String, core.dynamic>)
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
  /// - "UNKNOWN_OS" : SafetyNet detects that the device is running an unknown
  /// OS (basicIntegrity check succeeds but ctsProfileMatch fails).
  /// - "COMPROMISED_OS" : SafetyNet detects that the device is running a
  /// compromised OS (basicIntegrity check fails).
  /// - "HARDWARE_BACKED_EVALUATION_FAILED" : SafetyNet detects that the device
  /// does not have a strong guarantee of system integrity, such as a
  /// hardware-backed keystore
  /// (https://developer.android.com/training/articles/security-key-attestation).
  core.String? securityRisk;

  PostureDetail({
    this.advice,
    this.securityRisk,
  });

  PostureDetail.fromJson(core.Map json_)
      : this(
          advice: json_.containsKey('advice')
              ? (json_['advice'] as core.List)
                  .map((value) => UserFacingMessage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          securityRisk: json_.containsKey('securityRisk')
              ? json_['securityRisk'] as core.String
              : null,
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

  PowerManagementEvent({
    this.batteryLevel,
    this.createTime,
    this.eventType,
  });

  PowerManagementEvent.fromJson(core.Map json_)
      : this(
          batteryLevel: json_.containsKey('batteryLevel')
              ? (json_['batteryLevel'] as core.num).toDouble()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          eventType: json_.containsKey('eventType')
              ? json_['eventType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batteryLevel != null) 'batteryLevel': batteryLevel!,
        if (createTime != null) 'createTime': createTime!,
        if (eventType != null) 'eventType': eventType!,
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

  ProxyInfo({
    this.excludedHosts,
    this.host,
    this.pacUri,
    this.port,
  });

  ProxyInfo.fromJson(core.Map json_)
      : this(
          excludedHosts: json_.containsKey('excludedHosts')
              ? (json_['excludedHosts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          pacUri: json_.containsKey('pacUri')
              ? json_['pacUri'] as core.String
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedHosts != null) 'excludedHosts': excludedHosts!,
        if (host != null) 'host': host!,
        if (pacUri != null) 'pacUri': pacUri!,
        if (port != null) 'port': port!,
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

  SecurityPosture({
    this.devicePosture,
    this.postureDetails,
  });

  SecurityPosture.fromJson(core.Map json_)
      : this(
          devicePosture: json_.containsKey('devicePosture')
              ? json_['devicePosture'] as core.String
              : null,
          postureDetails: json_.containsKey('postureDetails')
              ? (json_['postureDetails'] as core.List)
                  .map((value) => PostureDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
  /// to the boolean value true to indicate that this is a setup action flow.
  LaunchAppAction? launchApp;

  /// Title of this action.
  UserFacingMessage? title;

  SetupAction({
    this.description,
    this.launchApp,
    this.title,
  });

  SetupAction.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? UserFacingMessage.fromJson(
                  json_['description'] as core.Map<core.String, core.dynamic>)
              : null,
          launchApp: json_.containsKey('launchApp')
              ? LaunchAppAction.fromJson(
                  json_['launchApp'] as core.Map<core.String, core.dynamic>)
              : null,
          title: json_.containsKey('title')
              ? UserFacingMessage.fromJson(
                  json_['title'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (launchApp != null) 'launchApp': launchApp!,
        if (title != null) 'title': title!,
      };
}

/// A resource containing sign in details for an enterprise.
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
  core.String? allowPersonalUsage;

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

  SigninDetail({
    this.allowPersonalUsage,
    this.qrCode,
    this.signinEnrollmentToken,
    this.signinUrl,
  });

  SigninDetail.fromJson(core.Map json_)
      : this(
          allowPersonalUsage: json_.containsKey('allowPersonalUsage')
              ? json_['allowPersonalUsage'] as core.String
              : null,
          qrCode: json_.containsKey('qrCode')
              ? json_['qrCode'] as core.String
              : null,
          signinEnrollmentToken: json_.containsKey('signinEnrollmentToken')
              ? json_['signinEnrollmentToken'] as core.String
              : null,
          signinUrl: json_.containsKey('signinUrl')
              ? json_['signinUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPersonalUsage != null)
          'allowPersonalUsage': allowPersonalUsage!,
        if (qrCode != null) 'qrCode': qrCode!,
        if (signinEnrollmentToken != null)
          'signinEnrollmentToken': signinEnrollmentToken!,
        if (signinUrl != null) 'signinUrl': signinUrl!,
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

  SignupUrl({
    this.name,
    this.url,
  });

  SignupUrl.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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
          androidBuildNumber: json_.containsKey('androidBuildNumber')
              ? json_['androidBuildNumber'] as core.String
              : null,
          androidBuildTime: json_.containsKey('androidBuildTime')
              ? json_['androidBuildTime'] as core.String
              : null,
          androidDevicePolicyVersionCode:
              json_.containsKey('androidDevicePolicyVersionCode')
                  ? json_['androidDevicePolicyVersionCode'] as core.int
                  : null,
          androidDevicePolicyVersionName:
              json_.containsKey('androidDevicePolicyVersionName')
                  ? json_['androidDevicePolicyVersionName'] as core.String
                  : null,
          androidVersion: json_.containsKey('androidVersion')
              ? json_['androidVersion'] as core.String
              : null,
          bootloaderVersion: json_.containsKey('bootloaderVersion')
              ? json_['bootloaderVersion'] as core.String
              : null,
          deviceBuildSignature: json_.containsKey('deviceBuildSignature')
              ? json_['deviceBuildSignature'] as core.String
              : null,
          deviceKernelVersion: json_.containsKey('deviceKernelVersion')
              ? json_['deviceKernelVersion'] as core.String
              : null,
          primaryLanguageCode: json_.containsKey('primaryLanguageCode')
              ? json_['primaryLanguageCode'] as core.String
              : null,
          securityPatchLevel: json_.containsKey('securityPatchLevel')
              ? json_['securityPatchLevel'] as core.String
              : null,
          systemUpdateInfo: json_.containsKey('systemUpdateInfo')
              ? SystemUpdateInfo.fromJson(json_['systemUpdateInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidBuildNumber != null)
          'androidBuildNumber': androidBuildNumber!,
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
        if (securityPatchLevel != null)
          'securityPatchLevel': securityPatchLevel!,
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
          oncWifiContext: json_.containsKey('oncWifiContext')
              ? OncWifiContext.fromJson(json_['oncWifiContext']
                  as core.Map<core.String, core.dynamic>)
              : null,
          passwordPoliciesContext: json_.containsKey('passwordPoliciesContext')
              ? PasswordPoliciesContext.fromJson(
                  json_['passwordPoliciesContext']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (oncWifiContext != null) 'oncWifiContext': oncWifiContext!,
        if (passwordPoliciesContext != null)
          'passwordPoliciesContext': passwordPoliciesContext!,
      };
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Settings controlling the behavior of status reports.
class StatusReportingSettings {
  /// Application reporting settings.
  ///
  /// Only applicable if application_reports_enabled is true.
  ApplicationReportingSettings? applicationReportingSettings;

  /// Whether app reports are enabled.
  core.bool? applicationReportsEnabled;

  /// Whether Common Criteria Mode reporting is enabled.
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
                          as core.Map<core.String, core.dynamic>)
                  : null,
          applicationReportsEnabled:
              json_.containsKey('applicationReportsEnabled')
                  ? json_['applicationReportsEnabled'] as core.bool
                  : null,
          commonCriteriaModeEnabled:
              json_.containsKey('commonCriteriaModeEnabled')
                  ? json_['commonCriteriaModeEnabled'] as core.bool
                  : null,
          deviceSettingsEnabled: json_.containsKey('deviceSettingsEnabled')
              ? json_['deviceSettingsEnabled'] as core.bool
              : null,
          displayInfoEnabled: json_.containsKey('displayInfoEnabled')
              ? json_['displayInfoEnabled'] as core.bool
              : null,
          hardwareStatusEnabled: json_.containsKey('hardwareStatusEnabled')
              ? json_['hardwareStatusEnabled'] as core.bool
              : null,
          memoryInfoEnabled: json_.containsKey('memoryInfoEnabled')
              ? json_['memoryInfoEnabled'] as core.bool
              : null,
          networkInfoEnabled: json_.containsKey('networkInfoEnabled')
              ? json_['networkInfoEnabled'] as core.bool
              : null,
          powerManagementEventsEnabled:
              json_.containsKey('powerManagementEventsEnabled')
                  ? json_['powerManagementEventsEnabled'] as core.bool
                  : null,
          softwareInfoEnabled: json_.containsKey('softwareInfoEnabled')
              ? json_['softwareInfoEnabled'] as core.bool
              : null,
          systemPropertiesEnabled: json_.containsKey('systemPropertiesEnabled')
              ? json_['systemPropertiesEnabled'] as core.bool
              : null,
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
        if (displayInfoEnabled != null)
          'displayInfoEnabled': displayInfoEnabled!,
        if (hardwareStatusEnabled != null)
          'hardwareStatusEnabled': hardwareStatusEnabled!,
        if (memoryInfoEnabled != null) 'memoryInfoEnabled': memoryInfoEnabled!,
        if (networkInfoEnabled != null)
          'networkInfoEnabled': networkInfoEnabled!,
        if (powerManagementEventsEnabled != null)
          'powerManagementEventsEnabled': powerManagementEventsEnabled!,
        if (softwareInfoEnabled != null)
          'softwareInfoEnabled': softwareInfoEnabled!,
        if (systemPropertiesEnabled != null)
          'systemPropertiesEnabled': systemPropertiesEnabled!,
      };
}

/// Configuration for managing system updates
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
  /// - "POSTPONE" : Postpone automatic install up to a maximum of 30 days.
  core.String? type;

  SystemUpdate({
    this.endMinutes,
    this.freezePeriods,
    this.startMinutes,
    this.type,
  });

  SystemUpdate.fromJson(core.Map json_)
      : this(
          endMinutes: json_.containsKey('endMinutes')
              ? json_['endMinutes'] as core.int
              : null,
          freezePeriods: json_.containsKey('freezePeriods')
              ? (json_['freezePeriods'] as core.List)
                  .map((value) => FreezePeriod.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startMinutes: json_.containsKey('startMinutes')
              ? json_['startMinutes'] as core.int
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  SystemUpdateInfo({
    this.updateReceivedTime,
    this.updateStatus,
  });

  SystemUpdateInfo.fromJson(core.Map json_)
      : this(
          updateReceivedTime: json_.containsKey('updateReceivedTime')
              ? json_['updateReceivedTime'] as core.String
              : null,
          updateStatus: json_.containsKey('updateStatus')
              ? json_['updateStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (updateReceivedTime != null)
          'updateReceivedTime': updateReceivedTime!,
        if (updateStatus != null) 'updateStatus': updateStatus!,
      };
}

/// Telephony information associated with a given SIM card on the device.
///
/// Only supported on fully managed devices starting from Android API level 23.
class TelephonyInfo {
  /// The carrier name associated with this SIM card.
  core.String? carrierName;

  /// The phone number associated with this SIM card.
  core.String? phoneNumber;

  TelephonyInfo({
    this.carrierName,
    this.phoneNumber,
  });

  TelephonyInfo.fromJson(core.Map json_)
      : this(
          carrierName: json_.containsKey('carrierName')
              ? json_['carrierName'] as core.String
              : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrierName != null) 'carrierName': carrierName!,
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

  TermsAndConditions({
    this.content,
    this.header,
  });

  TermsAndConditions.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? UserFacingMessage.fromJson(
                  json_['content'] as core.Map<core.String, core.dynamic>)
              : null,
          header: json_.containsKey('header')
              ? UserFacingMessage.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
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

  UsageLog({
    this.enabledLogTypes,
    this.uploadOnCellularAllowed,
  });

  UsageLog.fromJson(core.Map json_)
      : this(
          enabledLogTypes: json_.containsKey('enabledLogTypes')
              ? (json_['enabledLogTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          uploadOnCellularAllowed: json_.containsKey('uploadOnCellularAllowed')
              ? (json_['uploadOnCellularAllowed'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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

  User({
    this.accountIdentifier,
  });

  User.fromJson(core.Map json_)
      : this(
          accountIdentifier: json_.containsKey('accountIdentifier')
              ? json_['accountIdentifier'] as core.String
              : null,
        );

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

  UserFacingMessage({
    this.defaultMessage,
    this.localizedMessages,
  });

  UserFacingMessage.fromJson(core.Map json_)
      : this(
          defaultMessage: json_.containsKey('defaultMessage')
              ? json_['defaultMessage'] as core.String
              : null,
          localizedMessages: json_.containsKey('localizedMessages')
              ? (json_['localizedMessages']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
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
          displayMode: json_.containsKey('displayMode')
              ? json_['displayMode'] as core.String
              : null,
          icons: json_.containsKey('icons')
              ? (json_['icons'] as core.List)
                  .map((value) => WebAppIcon.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          startUrl: json_.containsKey('startUrl')
              ? json_['startUrl'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          versionCode: json_.containsKey('versionCode')
              ? json_['versionCode'] as core.String
              : null,
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
          enabledFeatures: json_.containsKey('enabledFeatures')
              ? (json_['enabledFeatures'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parentFrameUrl: json_.containsKey('parentFrameUrl')
              ? json_['parentFrameUrl'] as core.String
              : null,
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabledFeatures != null) 'enabledFeatures': enabledFeatures!,
        if (name != null) 'name': name!,
        if (parentFrameUrl != null) 'parentFrameUrl': parentFrameUrl!,
        if (permissions != null) 'permissions': permissions!,
        if (value != null) 'value': value!,
      };
}

/// An action to reset a fully managed device or delete a work profile.
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

  WipeAction({
    this.preserveFrp,
    this.wipeAfterDays,
  });

  WipeAction.fromJson(core.Map json_)
      : this(
          preserveFrp: json_.containsKey('preserveFrp')
              ? json_['preserveFrp'] as core.bool
              : null,
          wipeAfterDays: json_.containsKey('wipeAfterDays')
              ? json_['wipeAfterDays'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (preserveFrp != null) 'preserveFrp': preserveFrp!,
        if (wipeAfterDays != null) 'wipeAfterDays': wipeAfterDays!,
      };
}
