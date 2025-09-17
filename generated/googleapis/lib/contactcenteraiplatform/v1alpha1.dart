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

/// Contact Center AI Platform API - v1alpha1
///
/// For more information, see
/// <https://cloud.google.com/solutions/contact-center-ai-platform>
///
/// Create an instance of [CCAIPlatformApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsContactCentersResource]
///     - [ProjectsLocationsOperationsResource]
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

class CCAIPlatformApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CCAIPlatformApi(
    http.Client client, {
    core.String rootUrl = 'https://contactcenteraiplatform.googleapis.com/',
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

  ProjectsLocationsContactCentersResource get contactCenters =>
      ProjectsLocationsContactCentersResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
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
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries the contact center quota, an aggregation over all the projects,
  /// that belongs to the billing account, which the input project belongs to.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent project resource id.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContactCenterQuota].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContactCenterQuota> queryContactCenterQuota(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' +
        core.Uri.encodeFull('$parent') +
        ':queryContactCenterQuota';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContactCenterQuota.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsContactCentersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsContactCentersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new ContactCenter in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [contactCenterId] - Required. Id of the requesting object If
  /// auto-generating Id server-side, remove this field and contact_center_id
  /// from the method_signature of Create RPC
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> create(
    ContactCenter request,
    core.String parent, {
    core.String? contactCenterId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (contactCenterId != null) 'contactCenterId': [contactCenterId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/contactCenters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ContactCenter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/contactCenters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ContactCenter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/contactCenters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContactCenter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContactCenter> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContactCenter.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists ContactCenters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListContactCentersRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results
  ///
  /// [orderBy] - Hint for how to order the results
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListContactCentersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListContactCentersResponse> list(
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

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/contactCenters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListContactCentersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single ContactCenter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - name of resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/contactCenters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the ContactCenter resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
  async.Future<Operation> patch(
    ContactCenter request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':cancel';

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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + '/operations';

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

/// Message storing info about the first admin user.
///
/// Next ID: 3
class AdminUser {
  /// Last/family name of the first admin user.
  ///
  /// Optional.
  core.String? familyName;

  /// First/given name of the first admin user.
  ///
  /// Optional.
  core.String? givenName;

  AdminUser({this.familyName, this.givenName});

  AdminUser.fromJson(core.Map json_)
    : this(
        familyName: json_['familyName'] as core.String?,
        givenName: json_['givenName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (familyName != null) 'familyName': familyName!,
    if (givenName != null) 'givenName': givenName!,
  };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Defines a logical CCAIP component that e.g. “EMAIL”, "CRM".
///
/// For more information see go/ccaip-private-path-v2. Each logical component is
/// associated with a list of service attachments.
class Component {
  /// Name of the component.
  core.String? name;

  /// Associated service attachments.
  ///
  /// The service attachment names that will be used for sending private traffic
  /// to the CCAIP tenant project. Example service attachment name:
  /// "projects/${TENANT_PROJECT_ID}/regions/${REGION}/serviceAttachments/ingress-default".
  core.List<core.String>? serviceAttachmentNames;

  Component({this.name, this.serviceAttachmentNames});

  Component.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        serviceAttachmentNames:
            (json_['serviceAttachmentNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (serviceAttachmentNames != null)
      'serviceAttachmentNames': serviceAttachmentNames!,
  };
}

/// Message describing ContactCenter object
class ContactCenter {
  /// Info about the first admin user, such as given name and family name.
  ///
  /// Optional.
  AdminUser? adminUser;

  /// Whether the advanced reporting feature is enabled.
  ///
  /// Optional.
  core.bool? advancedReportingEnabled;

  /// Whether to enable users to be created in the CCAIP-instance concurrently
  /// to having users in Cloud identity
  ///
  /// Optional.
  core.bool? ccaipManagedUsers;

  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Critical release channel.
  ///
  /// Optional.
  Critical? critical;

  /// At least 2 and max 16 char long, must conform to
  /// [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  ///
  /// Required. Immutable.
  core.String? customerDomainPrefix;

  /// A user friendly name for the ContactCenter.
  ///
  /// Required.
  core.String? displayName;

  /// Early release channel.
  ///
  /// Optional.
  Early? early;

  /// The configuration of this instance, it is currently immutable once
  /// created.
  InstanceConfig? instanceConfig;

  /// The KMS key name to encrypt the user input (`ContactCenter`).
  ///
  /// Immutable.
  core.String? kmsKey;

  /// Labels as key value pairs
  core.Map<core.String, core.String>? labels;

  /// name of resource
  core.String? name;

  /// Normal release channel.
  ///
  /// Optional.
  Normal? normal;

  /// VPC-SC related networking configuration.
  ///
  /// Optional.
  PrivateAccess? privateAccess;

  /// TODO(b/283407860) Deprecate this field.
  ///
  /// Output only.
  core.List<core.String>? privateComponents;

  /// UJET release version, unique for each new release.
  ///
  /// Output only.
  core.String? releaseVersion;

  /// Params that sets up Google as IdP.
  ///
  /// Optional.
  SAMLParams? samlParams;

  /// The state of this contact center.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "STATE_DEPLOYING" : State DEPLOYING
  /// - "STATE_DEPLOYED" : State DEPLOYED
  /// - "STATE_TERMINATING" : State TERMINATING
  /// - "STATE_FAILED" : State FAILED
  /// - "STATE_TERMINATING_FAILED" : State TERMINATING_FAILED
  /// - "STATE_TERMINATED" : State TERMINATED
  /// - "STATE_IN_GRACE_PERIOD" : State IN_GRACE_PERIOD
  /// - "STATE_FAILING_OVER" : State in STATE_FAILING_OVER. This State must ONLY
  /// be used by Multiregional Instances when a failover was triggered.
  /// Customers are not able to update instances in this state.
  /// - "STATE_DEGRADED" : State DEGRADED. This State must ONLY be used by
  /// Multiregional Instances after a failover was executed successfully.
  /// Customers are not able to update instances in this state.
  /// - "STATE_REPAIRING" : State REPAIRING. This State must ONLY be used by
  /// Multiregional Instances after a fallback was triggered. Customers are not
  /// able to update instancs in this state.
  core.String? state;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  /// URIs to access the deployed ContactCenters.
  ///
  /// Output only.
  URIs? uris;

  /// Email address of the first admin user.
  ///
  /// Optional.
  core.String? userEmail;

  ContactCenter({
    this.adminUser,
    this.advancedReportingEnabled,
    this.ccaipManagedUsers,
    this.createTime,
    this.critical,
    this.customerDomainPrefix,
    this.displayName,
    this.early,
    this.instanceConfig,
    this.kmsKey,
    this.labels,
    this.name,
    this.normal,
    this.privateAccess,
    this.privateComponents,
    this.releaseVersion,
    this.samlParams,
    this.state,
    this.updateTime,
    this.uris,
    this.userEmail,
  });

  ContactCenter.fromJson(core.Map json_)
    : this(
        adminUser:
            json_.containsKey('adminUser')
                ? AdminUser.fromJson(
                  json_['adminUser'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        advancedReportingEnabled:
            json_['advancedReportingEnabled'] as core.bool?,
        ccaipManagedUsers: json_['ccaipManagedUsers'] as core.bool?,
        createTime: json_['createTime'] as core.String?,
        critical:
            json_.containsKey('critical')
                ? Critical.fromJson(
                  json_['critical'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        customerDomainPrefix: json_['customerDomainPrefix'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        early:
            json_.containsKey('early')
                ? Early.fromJson(
                  json_['early'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        instanceConfig:
            json_.containsKey('instanceConfig')
                ? InstanceConfig.fromJson(
                  json_['instanceConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        kmsKey: json_['kmsKey'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        normal:
            json_.containsKey('normal')
                ? Normal.fromJson(
                  json_['normal'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        privateAccess:
            json_.containsKey('privateAccess')
                ? PrivateAccess.fromJson(
                  json_['privateAccess'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        privateComponents:
            (json_['privateComponents'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        releaseVersion: json_['releaseVersion'] as core.String?,
        samlParams:
            json_.containsKey('samlParams')
                ? SAMLParams.fromJson(
                  json_['samlParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        uris:
            json_.containsKey('uris')
                ? URIs.fromJson(
                  json_['uris'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userEmail: json_['userEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adminUser != null) 'adminUser': adminUser!,
    if (advancedReportingEnabled != null)
      'advancedReportingEnabled': advancedReportingEnabled!,
    if (ccaipManagedUsers != null) 'ccaipManagedUsers': ccaipManagedUsers!,
    if (createTime != null) 'createTime': createTime!,
    if (critical != null) 'critical': critical!,
    if (customerDomainPrefix != null)
      'customerDomainPrefix': customerDomainPrefix!,
    if (displayName != null) 'displayName': displayName!,
    if (early != null) 'early': early!,
    if (instanceConfig != null) 'instanceConfig': instanceConfig!,
    if (kmsKey != null) 'kmsKey': kmsKey!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (normal != null) 'normal': normal!,
    if (privateAccess != null) 'privateAccess': privateAccess!,
    if (privateComponents != null) 'privateComponents': privateComponents!,
    if (releaseVersion != null) 'releaseVersion': releaseVersion!,
    if (samlParams != null) 'samlParams': samlParams!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (uris != null) 'uris': uris!,
    if (userEmail != null) 'userEmail': userEmail!,
  };
}

/// Represents a quota for contact centers.
class ContactCenterQuota {
  /// Deprecated: Use the Quota fields instead.
  ///
  /// Reflects the count limit of contact centers on a billing account.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? contactCenterCountLimit;

  /// Deprecated: Use the Quota fields instead.
  ///
  /// Reflects the count sum of contact centers on a billing account.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? contactCenterCountSum;

  /// Quota details per contact center instance type.
  core.List<Quota>? quotas;

  ContactCenterQuota({
    this.contactCenterCountLimit,
    this.contactCenterCountSum,
    this.quotas,
  });

  ContactCenterQuota.fromJson(core.Map json_)
    : this(
        contactCenterCountLimit: json_['contactCenterCountLimit'] as core.int?,
        contactCenterCountSum: json_['contactCenterCountSum'] as core.int?,
        quotas:
            (json_['quotas'] as core.List?)
                ?.map(
                  (value) => Quota.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contactCenterCountLimit != null)
      'contactCenterCountLimit': contactCenterCountLimit!,
    if (contactCenterCountSum != null)
      'contactCenterCountSum': contactCenterCountSum!,
    if (quotas != null) 'quotas': quotas!,
  };
}

/// Instances in this Channel will receive updates after all instances in
/// `Normal` were updated.
///
/// They also will only be updated outside of their peak hours.
class Critical {
  /// Hours during which the instance should not be updated.
  ///
  /// Required.
  core.List<WeeklySchedule>? peakHours;

  Critical({this.peakHours});

  Critical.fromJson(core.Map json_)
    : this(
        peakHours:
            (json_['peakHours'] as core.List?)
                ?.map(
                  (value) => WeeklySchedule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (peakHours != null) 'peakHours': peakHours!,
  };
}

/// LINT.IfChange First Channel to receive the updates.
///
/// Meant to dev/test instances
typedef Early = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Message storing the instance configuration.
class InstanceConfig {
  /// The instance size of this the instance configuration.
  /// Possible string values are:
  /// - "INSTANCE_SIZE_UNSPECIFIED" : The default value. This value is used if
  /// the state is omitted.
  /// - "STANDARD_SMALL" : Instance Size STANDARD_SMALL.
  /// - "STANDARD_MEDIUM" : Instance Size STANDARD_MEDIUM.
  /// - "STANDARD_LARGE" : Instance Size STANDARD_LARGE.
  /// - "STANDARD_XLARGE" : Instance Size STANDARD_XLARGE.
  /// - "STANDARD_2XLARGE" : Instance Size STANDARD_2XLARGE.
  /// - "STANDARD_3XLARGE" : Instance Size STANDARD_3XLARGE.
  /// - "MULTIREGION_SMALL" : Instance Size MULTIREGION_SMALL
  /// - "MULTIREGION_MEDIUM" : Instance Size MULTIREGION_MEDIUM
  /// - "MULTIREGION_LARGE" : Instance Size MULTIREGION_LARGE
  /// - "MULTIREGION_XLARGE" : Instance Size MULTIREGION_XLARGE
  /// - "MULTIREGION_2XLARGE" : Instance Size MULTIREGION_2XLARGE.
  /// - "MULTIREGION_3XLARGE" : Instance Size MULTIREGION_3XLARGE.
  /// - "DEV_SMALL" : Instance Size DEV_SMALL
  /// - "SANDBOX_SMALL" : Instance Size SANDBOX_SMALL
  /// - "TRIAL_SMALL" : Instance Size TRIAL_SMALL
  /// - "TIME_LIMITED_TRIAL_SMALL" : Instance Size TIME_LIMITED_TRIAL_SMALL
  core.String? instanceSize;

  InstanceConfig({this.instanceSize});

  InstanceConfig.fromJson(core.Map json_)
    : this(instanceSize: json_['instanceSize'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (instanceSize != null) 'instanceSize': instanceSize!,
  };
}

/// Message for response to listing ContactCenters
class ListContactCentersResponse {
  /// The list of ContactCenter
  core.List<ContactCenter>? contactCenters;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListContactCentersResponse({
    this.contactCenters,
    this.nextPageToken,
    this.unreachable,
  });

  ListContactCentersResponse.fromJson(core.Map json_)
    : this(
        contactCenters:
            (json_['contactCenters'] as core.List?)
                ?.map(
                  (value) => ContactCenter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contactCenters != null) 'contactCenters': contactCenters!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
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

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Instances in this Channel will receive updates after all instances in
/// `Early` were updated + 2 days.
typedef Normal = $Empty;

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
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

/// Defines ingress and egress private traffic settings for CCAIP instances.
class PrivateAccess {
  /// List of egress components that should not be accessed via the Internet.
  ///
  /// For more information see go/ccaip-private-path-v2.
  core.List<Component>? egressSettings;

  /// List of ingress components that should not be accessed via the Internet.
  ///
  /// For more information see go/ccaip-private-path-v2.
  core.List<Component>? ingressSettings;

  /// Private service connect settings.
  PscSetting? pscSetting;

  PrivateAccess({this.egressSettings, this.ingressSettings, this.pscSetting});

  PrivateAccess.fromJson(core.Map json_)
    : this(
        egressSettings:
            (json_['egressSettings'] as core.List?)
                ?.map(
                  (value) => Component.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        ingressSettings:
            (json_['ingressSettings'] as core.List?)
                ?.map(
                  (value) => Component.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        pscSetting:
            json_.containsKey('pscSetting')
                ? PscSetting.fromJson(
                  json_['pscSetting'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (egressSettings != null) 'egressSettings': egressSettings!,
    if (ingressSettings != null) 'ingressSettings': ingressSettings!,
    if (pscSetting != null) 'pscSetting': pscSetting!,
  };
}

/// Private service connect settings.
class PscSetting {
  /// The list of project ids that are allowed to send traffic to the service
  /// attachment.
  ///
  /// This field should be filled only for the ingress components.
  core.List<core.String>? allowedConsumerProjectIds;

  /// The CCAIP tenant project ids.
  ///
  /// Output only.
  core.List<core.String>? producerProjectIds;

  PscSetting({this.allowedConsumerProjectIds, this.producerProjectIds});

  PscSetting.fromJson(core.Map json_)
    : this(
        allowedConsumerProjectIds:
            (json_['allowedConsumerProjectIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        producerProjectIds:
            (json_['producerProjectIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedConsumerProjectIds != null)
      'allowedConsumerProjectIds': allowedConsumerProjectIds!,
    if (producerProjectIds != null) 'producerProjectIds': producerProjectIds!,
  };
}

/// Quota details.
class Quota {
  /// Reflects the count limit of contact centers on a billing account.
  core.int? contactCenterCountLimit;

  /// Reflects the count sum of contact centers on a billing account.
  core.int? contactCenterCountSum;

  /// Contact center instance type.
  /// Possible string values are:
  /// - "INSTANCE_SIZE_UNSPECIFIED" : The default value. This value is used if
  /// the state is omitted.
  /// - "STANDARD_SMALL" : Instance Size STANDARD_SMALL.
  /// - "STANDARD_MEDIUM" : Instance Size STANDARD_MEDIUM.
  /// - "STANDARD_LARGE" : Instance Size STANDARD_LARGE.
  /// - "STANDARD_XLARGE" : Instance Size STANDARD_XLARGE.
  /// - "STANDARD_2XLARGE" : Instance Size STANDARD_2XLARGE.
  /// - "STANDARD_3XLARGE" : Instance Size STANDARD_3XLARGE.
  /// - "MULTIREGION_SMALL" : Instance Size MULTIREGION_SMALL
  /// - "MULTIREGION_MEDIUM" : Instance Size MULTIREGION_MEDIUM
  /// - "MULTIREGION_LARGE" : Instance Size MULTIREGION_LARGE
  /// - "MULTIREGION_XLARGE" : Instance Size MULTIREGION_XLARGE
  /// - "MULTIREGION_2XLARGE" : Instance Size MULTIREGION_2XLARGE.
  /// - "MULTIREGION_3XLARGE" : Instance Size MULTIREGION_3XLARGE.
  /// - "DEV_SMALL" : Instance Size DEV_SMALL
  /// - "SANDBOX_SMALL" : Instance Size SANDBOX_SMALL
  /// - "TRIAL_SMALL" : Instance Size TRIAL_SMALL
  /// - "TIME_LIMITED_TRIAL_SMALL" : Instance Size TIME_LIMITED_TRIAL_SMALL
  core.String? contactCenterInstanceSize;

  Quota({
    this.contactCenterCountLimit,
    this.contactCenterCountSum,
    this.contactCenterInstanceSize,
  });

  Quota.fromJson(core.Map json_)
    : this(
        contactCenterCountLimit: json_['contactCenterCountLimit'] as core.int?,
        contactCenterCountSum: json_['contactCenterCountSum'] as core.int?,
        contactCenterInstanceSize:
            json_['contactCenterInstanceSize'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contactCenterCountLimit != null)
      'contactCenterCountLimit': contactCenterCountLimit!,
    if (contactCenterCountSum != null)
      'contactCenterCountSum': contactCenterCountSum!,
    if (contactCenterInstanceSize != null)
      'contactCenterInstanceSize': contactCenterInstanceSize!,
  };
}

/// Message storing SAML params to enable Google as IDP.
class SAMLParams {
  /// Additional contexts used for authentication.
  core.List<core.String>? authenticationContexts;

  /// SAML certificate
  core.String? certificate;

  /// IdP field that maps to the user’s email address
  core.String? emailMapping;

  /// Entity id URL
  core.String? entityId;

  /// Single sign-on URL
  core.String? ssoUri;

  /// Email address of the first admin users.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? userEmail;

  SAMLParams({
    this.authenticationContexts,
    this.certificate,
    this.emailMapping,
    this.entityId,
    this.ssoUri,
    this.userEmail,
  });

  SAMLParams.fromJson(core.Map json_)
    : this(
        authenticationContexts:
            (json_['authenticationContexts'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        certificate: json_['certificate'] as core.String?,
        emailMapping: json_['emailMapping'] as core.String?,
        entityId: json_['entityId'] as core.String?,
        ssoUri: json_['ssoUri'] as core.String?,
        userEmail: json_['userEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authenticationContexts != null)
      'authenticationContexts': authenticationContexts!,
    if (certificate != null) 'certificate': certificate!,
    if (emailMapping != null) 'emailMapping': emailMapping!,
    if (entityId != null) 'entityId': entityId!,
    if (ssoUri != null) 'ssoUri': ssoUri!,
    if (userEmail != null) 'userEmail': userEmail!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Message storing the URIs of the ContactCenter.
class URIs {
  /// Chat Bot Uri of the ContactCenter
  core.String? chatBotUri;

  /// Media Uri of the ContactCenter.
  core.String? mediaUri;

  /// Root Uri of the ContactCenter.
  core.String? rootUri;

  /// Virtual Agent Streaming Service Uri of the ContactCenter.
  core.String? virtualAgentStreamingServiceUri;

  URIs({
    this.chatBotUri,
    this.mediaUri,
    this.rootUri,
    this.virtualAgentStreamingServiceUri,
  });

  URIs.fromJson(core.Map json_)
    : this(
        chatBotUri: json_['chatBotUri'] as core.String?,
        mediaUri: json_['mediaUri'] as core.String?,
        rootUri: json_['rootUri'] as core.String?,
        virtualAgentStreamingServiceUri:
            json_['virtualAgentStreamingServiceUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chatBotUri != null) 'chatBotUri': chatBotUri!,
    if (mediaUri != null) 'mediaUri': mediaUri!,
    if (rootUri != null) 'rootUri': rootUri!,
    if (virtualAgentStreamingServiceUri != null)
      'virtualAgentStreamingServiceUri': virtualAgentStreamingServiceUri!,
  };
}

/// Message representing a weekly schedule.
class WeeklySchedule {
  /// Days of the week this schedule applies to.
  ///
  /// Required.
  core.List<core.String>? days;

  /// Duration of the schedule.
  ///
  /// Optional.
  core.String? duration;

  /// Daily end time of the schedule.
  ///
  /// If `end_time` is before `start_time`, the schedule will be considered as
  /// ending on the next day.
  ///
  /// Optional.
  TimeOfDay? endTime;

  /// Daily start time of the schedule.
  ///
  /// Required.
  TimeOfDay? startTime;

  WeeklySchedule({this.days, this.duration, this.endTime, this.startTime});

  WeeklySchedule.fromJson(core.Map json_)
    : this(
        days:
            (json_['days'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        duration: json_['duration'] as core.String?,
        endTime:
            json_.containsKey('endTime')
                ? TimeOfDay.fromJson(
                  json_['endTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startTime:
            json_.containsKey('startTime')
                ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (days != null) 'days': days!,
    if (duration != null) 'duration': duration!,
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}
