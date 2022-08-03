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

/// Cloud DNS API - v1
///
/// For more information, see <https://cloud.google.com/dns/docs>
///
/// Create an instance of [DnsApi] to access these resources:
///
/// - [ChangesResource]
/// - [DnsKeysResource]
/// - [ManagedZoneOperationsResource]
/// - [ManagedZonesResource]
/// - [PoliciesResource]
/// - [ProjectsResource]
/// - [ResourceRecordSetsResource]
/// - [ResponsePoliciesResource]
/// - [ResponsePolicyRulesResource]
library dns.v1;

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

class DnsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// View your DNS records hosted by Google Cloud DNS
  static const ndevClouddnsReadonlyScope =
      'https://www.googleapis.com/auth/ndev.clouddns.readonly';

  /// View and manage your DNS records hosted by Google Cloud DNS
  static const ndevClouddnsReadwriteScope =
      'https://www.googleapis.com/auth/ndev.clouddns.readwrite';

  final commons.ApiRequester _requester;

  ChangesResource get changes => ChangesResource(_requester);
  DnsKeysResource get dnsKeys => DnsKeysResource(_requester);
  ManagedZoneOperationsResource get managedZoneOperations =>
      ManagedZoneOperationsResource(_requester);
  ManagedZonesResource get managedZones => ManagedZonesResource(_requester);
  PoliciesResource get policies => PoliciesResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  ResourceRecordSetsResource get resourceRecordSets =>
      ResourceRecordSetsResource(_requester);
  ResponsePoliciesResource get responsePolicies =>
      ResponsePoliciesResource(_requester);
  ResponsePolicyRulesResource get responsePolicyRules =>
      ResponsePolicyRulesResource(_requester);

  DnsApi(http.Client client,
      {core.String rootUrl = 'https://dns.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ChangesResource {
  final commons.ApiRequester _requester;

  ChangesResource(commons.ApiRequester client) : _requester = client;

  /// Atomically updates the ResourceRecordSet collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Change].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Change> create(
    Change request,
    core.String project,
    core.String managedZone, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/changes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Change.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches the representation of an existing Change.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [changeId] - The identifier of the requested change, from a previous
  /// ResourceRecordSetsChangeResponse.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Change].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Change> get(
    core.String project,
    core.String managedZone,
    core.String changeId, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/changes/' +
        commons.escapeVariable('$changeId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Change.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enumerates Changes to a ResourceRecordSet collection.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server decides how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [sortBy] - Sorting criterion. The only supported value is change sequence.
  /// Possible string values are:
  /// - "changeSequence"
  ///
  /// [sortOrder] - Sorting order direction: 'ascending' or 'descending'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChangesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChangesListResponse> list(
    core.String project,
    core.String managedZone, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? sortBy,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (sortBy != null) 'sortBy': [sortBy],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/changes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ChangesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class DnsKeysResource {
  final commons.ApiRequester _requester;

  DnsKeysResource(commons.ApiRequester client) : _requester = client;

  /// Fetches the representation of an existing DnsKey.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [dnsKeyId] - The identifier of the requested DnsKey.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [digestType] - An optional comma-separated list of digest types to compute
  /// and display for key signing keys. If omitted, the recommended digest type
  /// is computed and displayed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DnsKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DnsKey> get(
    core.String project,
    core.String managedZone,
    core.String dnsKeyId, {
    core.String? clientOperationId,
    core.String? digestType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if (digestType != null) 'digestType': [digestType],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/dnsKeys/' +
        commons.escapeVariable('$dnsKeyId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DnsKey.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enumerates DnsKeys to a ResourceRecordSet collection.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [digestType] - An optional comma-separated list of digest types to compute
  /// and display for key signing keys. If omitted, the recommended digest type
  /// is computed and displayed.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server decides how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DnsKeysListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DnsKeysListResponse> list(
    core.String project,
    core.String managedZone, {
    core.String? digestType,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (digestType != null) 'digestType': [digestType],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/dnsKeys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DnsKeysListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ManagedZoneOperationsResource {
  final commons.ApiRequester _requester;

  ManagedZoneOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Fetches the representation of an existing Operation.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request.
  ///
  /// [operation] - Identifies the operation addressed by this request (ID of
  /// the operation).
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
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
    core.String project,
    core.String managedZone,
    core.String operation, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/operations/' +
        commons.escapeVariable('$operation');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enumerates Operations for the given ManagedZone.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server decides how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [sortBy] - Sorting criterion. The only supported values are START_TIME and
  /// ID.
  /// Possible string values are:
  /// - "startTime"
  /// - "id"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedZoneOperationsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedZoneOperationsListResponse> list(
    core.String project,
    core.String managedZone, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? sortBy,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (sortBy != null) 'sortBy': [sortBy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ManagedZoneOperationsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ManagedZonesResource {
  final commons.ApiRequester _requester;

  ManagedZonesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new ManagedZone.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedZone].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedZone> create(
    ManagedZone request,
    core.String project, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ManagedZone.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a previously created ManagedZone.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String project,
    core.String managedZone, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Fetches the representation of an existing ManagedZone.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedZone].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedZone> get(
    core.String project,
    core.String managedZone, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ManagedZone.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/managedZones/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    GoogleIamV1GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enumerates ManagedZones that have been created but not yet deleted.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [dnsName] - Restricts the list to return only zones with this domain name.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server decides how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedZonesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedZonesListResponse> list(
    core.String project, {
    core.String? dnsName,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dnsName != null) 'dnsName': [dnsName],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ManagedZonesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Applies a partial update to an existing ManagedZone.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
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
    ManagedZone request,
    core.String project,
    core.String managedZone, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/managedZones/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1Policy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/managedZones/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'dns/v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing ManagedZone.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
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
  async.Future<Operation> update(
    ManagedZone request,
    core.String project,
    core.String managedZone, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class PoliciesResource {
  final commons.ApiRequester _requester;

  PoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new Policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
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
  async.Future<Policy> create(
    Policy request,
    core.String project, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'dns/v1/projects/' + commons.escapeVariable('$project') + '/policies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a previously created Policy.
  ///
  /// Fails if the policy is still being referenced by a network.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [policy] - User given friendly name of the policy addressed by this
  /// request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String project,
    core.String policy, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/policies/' +
        commons.escapeVariable('$policy');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Fetches the representation of an existing Policy.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [policy] - User given friendly name of the policy addressed by this
  /// request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
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
    core.String project,
    core.String policy, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/policies/' +
        commons.escapeVariable('$policy');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enumerates all Policies associated with a project.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server decides how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PoliciesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PoliciesListResponse> list(
    core.String project, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'dns/v1/projects/' + commons.escapeVariable('$project') + '/policies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PoliciesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Applies a partial update to an existing Policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [policy] - User given friendly name of the policy addressed by this
  /// request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PoliciesPatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PoliciesPatchResponse> patch(
    Policy request,
    core.String project,
    core.String policy, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/policies/' +
        commons.escapeVariable('$policy');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return PoliciesPatchResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [policy] - User given friendly name of the policy addressed by this
  /// request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PoliciesUpdateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PoliciesUpdateResponse> update(
    Policy request,
    core.String project,
    core.String policy, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/policies/' +
        commons.escapeVariable('$policy');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return PoliciesUpdateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Fetches the representation of an existing Project.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Project].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Project> get(
    core.String project, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' + commons.escapeVariable('$project');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Project.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ResourceRecordSetsResource {
  final commons.ApiRequester _requester;

  ResourceRecordSetsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new ResourceRecordSet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourceRecordSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourceRecordSet> create(
    ResourceRecordSet request,
    core.String project,
    core.String managedZone, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/rrsets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ResourceRecordSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a previously created ResourceRecordSet.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [name] - Fully qualified domain name.
  ///
  /// [type] - RRSet type.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourceRecordSetsDeleteResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourceRecordSetsDeleteResponse> delete(
    core.String project,
    core.String managedZone,
    core.String name,
    core.String type, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/rrsets/' +
        commons.escapeVariable('$name') +
        '/' +
        commons.escapeVariable('$type');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return ResourceRecordSetsDeleteResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches the representation of an existing ResourceRecordSet.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [name] - Fully qualified domain name.
  ///
  /// [type] - RRSet type.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourceRecordSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourceRecordSet> get(
    core.String project,
    core.String managedZone,
    core.String name,
    core.String type, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/rrsets/' +
        commons.escapeVariable('$name') +
        '/' +
        commons.escapeVariable('$type');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResourceRecordSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enumerates ResourceRecordSets that you have created but not yet deleted.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server decides how many results to return.
  ///
  /// [name] - Restricts the list to return only records with this fully
  /// qualified domain name.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [type] - Restricts the list to return only records of this type. If
  /// present, the "name" parameter must also be present.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourceRecordSetsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourceRecordSetsListResponse> list(
    core.String project,
    core.String managedZone, {
    core.int? maxResults,
    core.String? name,
    core.String? pageToken,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (name != null) 'name': [name],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/rrsets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResourceRecordSetsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Applies a partial update to an existing ResourceRecordSet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [managedZone] - Identifies the managed zone addressed by this request. Can
  /// be the managed zone name or ID.
  ///
  /// [name] - Fully qualified domain name.
  ///
  /// [type] - RRSet type.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourceRecordSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourceRecordSet> patch(
    ResourceRecordSet request,
    core.String project,
    core.String managedZone,
    core.String name,
    core.String type, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/managedZones/' +
        commons.escapeVariable('$managedZone') +
        '/rrsets/' +
        commons.escapeVariable('$name') +
        '/' +
        commons.escapeVariable('$type');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ResourceRecordSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ResponsePoliciesResource {
  final commons.ApiRequester _requester;

  ResponsePoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new Response Policy
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResponsePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResponsePolicy> create(
    ResponsePolicy request,
    core.String project, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ResponsePolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a previously created Response Policy.
  ///
  /// Fails if the response policy is non-empty or still being referenced by a
  /// network.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [responsePolicy] - User assigned name of the Response Policy addressed by
  /// this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String project,
    core.String responsePolicy, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies/' +
        commons.escapeVariable('$responsePolicy');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Fetches the representation of an existing Response Policy.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [responsePolicy] - User assigned name of the Response Policy addressed by
  /// this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResponsePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResponsePolicy> get(
    core.String project,
    core.String responsePolicy, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies/' +
        commons.escapeVariable('$responsePolicy');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResponsePolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enumerates all Response Policies associated with a project.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server decides how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResponsePoliciesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResponsePoliciesListResponse> list(
    core.String project, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResponsePoliciesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Applies a partial update to an existing Response Policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [responsePolicy] - User assigned name of the Respones Policy addressed by
  /// this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResponsePoliciesPatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResponsePoliciesPatchResponse> patch(
    ResponsePolicy request,
    core.String project,
    core.String responsePolicy, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies/' +
        commons.escapeVariable('$responsePolicy');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ResponsePoliciesPatchResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Response Policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [responsePolicy] - User assigned name of the Response Policy addressed by
  /// this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResponsePoliciesUpdateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResponsePoliciesUpdateResponse> update(
    ResponsePolicy request,
    core.String project,
    core.String responsePolicy, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies/' +
        commons.escapeVariable('$responsePolicy');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ResponsePoliciesUpdateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ResponsePolicyRulesResource {
  final commons.ApiRequester _requester;

  ResponsePolicyRulesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Response Policy Rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [responsePolicy] - User assigned name of the Response Policy containing
  /// the Response Policy Rule.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResponsePolicyRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResponsePolicyRule> create(
    ResponsePolicyRule request,
    core.String project,
    core.String responsePolicy, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies/' +
        commons.escapeVariable('$responsePolicy') +
        '/rules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ResponsePolicyRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a previously created Response Policy Rule.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [responsePolicy] - User assigned name of the Response Policy containing
  /// the Response Policy Rule.
  ///
  /// [responsePolicyRule] - User assigned name of the Response Policy Rule
  /// addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String project,
    core.String responsePolicy,
    core.String responsePolicyRule, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies/' +
        commons.escapeVariable('$responsePolicy') +
        '/rules/' +
        commons.escapeVariable('$responsePolicyRule');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Fetches the representation of an existing Response Policy Rule.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [responsePolicy] - User assigned name of the Response Policy containing
  /// the Response Policy Rule.
  ///
  /// [responsePolicyRule] - User assigned name of the Response Policy Rule
  /// addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResponsePolicyRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResponsePolicyRule> get(
    core.String project,
    core.String responsePolicy,
    core.String responsePolicyRule, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies/' +
        commons.escapeVariable('$responsePolicy') +
        '/rules/' +
        commons.escapeVariable('$responsePolicyRule');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResponsePolicyRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enumerates all Response Policy Rules associated with a project.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [responsePolicy] - User assigned name of the Response Policy to list.
  ///
  /// [maxResults] - Optional. Maximum number of results to be returned. If
  /// unspecified, the server decides how many results to return.
  ///
  /// [pageToken] - Optional. A tag returned by a previous list request that was
  /// truncated. Use this parameter to continue a previous list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResponsePolicyRulesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResponsePolicyRulesListResponse> list(
    core.String project,
    core.String responsePolicy, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies/' +
        commons.escapeVariable('$responsePolicy') +
        '/rules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResponsePolicyRulesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Applies a partial update to an existing Response Policy Rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [responsePolicy] - User assigned name of the Response Policy containing
  /// the Response Policy Rule.
  ///
  /// [responsePolicyRule] - User assigned name of the Response Policy Rule
  /// addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResponsePolicyRulesPatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResponsePolicyRulesPatchResponse> patch(
    ResponsePolicyRule request,
    core.String project,
    core.String responsePolicy,
    core.String responsePolicyRule, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies/' +
        commons.escapeVariable('$responsePolicy') +
        '/rules/' +
        commons.escapeVariable('$responsePolicyRule');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ResponsePolicyRulesPatchResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Response Policy Rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Identifies the project addressed by this request.
  ///
  /// [responsePolicy] - User assigned name of the Response Policy containing
  /// the Response Policy Rule.
  ///
  /// [responsePolicyRule] - User assigned name of the Response Policy Rule
  /// addressed by this request.
  ///
  /// [clientOperationId] - For mutating operation requests only. An optional
  /// identifier specified by the client. Must be unique for operation resources
  /// in the Operations collection.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResponsePolicyRulesUpdateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResponsePolicyRulesUpdateResponse> update(
    ResponsePolicyRule request,
    core.String project,
    core.String responsePolicy,
    core.String responsePolicyRule, {
    core.String? clientOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientOperationId != null) 'clientOperationId': [clientOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dns/v1/projects/' +
        commons.escapeVariable('$project') +
        '/responsePolicies/' +
        commons.escapeVariable('$responsePolicy') +
        '/rules/' +
        commons.escapeVariable('$responsePolicyRule');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ResponsePolicyRulesUpdateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A Change represents a set of ResourceRecordSet additions and deletions
/// applied atomically to a ManagedZone.
///
/// ResourceRecordSets within a ManagedZone are modified by creating a new
/// Change element in the Changes collection. In turn the Changes collection
/// also records the past modifications to the ResourceRecordSets in a
/// ManagedZone. The current state of the ManagedZone is the sum effect of
/// applying all Change elements in the Changes collection in sequence.
class Change {
  /// Which ResourceRecordSets to add?
  core.List<ResourceRecordSet>? additions;

  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  core.List<ResourceRecordSet>? deletions;

  /// Unique identifier for the resource; defined by the server (output only).
  core.String? id;

  /// If the DNS queries for the zone will be served.
  core.bool? isServing;
  core.String? kind;

  /// The time that this operation was started by the server (output only).
  ///
  /// This is in RFC3339 text format.
  core.String? startTime;

  /// Status of the operation (output only).
  ///
  /// A status of "done" means that the request to update the authoritative
  /// servers has been sent, but the servers might not be updated yet.
  /// Possible string values are:
  /// - "pending"
  /// - "done"
  core.String? status;

  Change({
    this.additions,
    this.deletions,
    this.id,
    this.isServing,
    this.kind,
    this.startTime,
    this.status,
  });

  Change.fromJson(core.Map json_)
      : this(
          additions: json_.containsKey('additions')
              ? (json_['additions'] as core.List)
                  .map((value) => ResourceRecordSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deletions: json_.containsKey('deletions')
              ? (json_['deletions'] as core.List)
                  .map((value) => ResourceRecordSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          isServing: json_.containsKey('isServing')
              ? json_['isServing'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additions != null) 'additions': additions!,
        if (deletions != null) 'deletions': deletions!,
        if (id != null) 'id': id!,
        if (isServing != null) 'isServing': isServing!,
        if (kind != null) 'kind': kind!,
        if (startTime != null) 'startTime': startTime!,
        if (status != null) 'status': status!,
      };
}

/// The response to a request to enumerate Changes to a ResourceRecordSets
/// collection.
class ChangesListResponse {
  /// The requested changes.
  core.List<Change>? changes;
  ResponseHeader? header;

  /// Type of resource.
  core.String? kind;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order.
  ///
  /// To fetch them, make another list request using this value as your
  /// pagination token. This lets you retrieve the complete contents of even
  /// very large collections one page at a time. However, if the contents of the
  /// collection change between the first and last paginated list request, the
  /// set of all elements returned are an inconsistent view of the collection.
  /// You cannot retrieve a "snapshot" of collections larger than the maximum
  /// page size.
  core.String? nextPageToken;

  ChangesListResponse({
    this.changes,
    this.header,
    this.kind,
    this.nextPageToken,
  });

  ChangesListResponse.fromJson(core.Map json_)
      : this(
          changes: json_.containsKey('changes')
              ? (json_['changes'] as core.List)
                  .map((value) => Change.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changes != null) 'changes': changes!,
        if (header != null) 'header': header!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A DNSSEC key pair.
class DnsKey {
  /// String mnemonic specifying the DNSSEC algorithm of this key.
  ///
  /// Immutable after creation time.
  /// Possible string values are:
  /// - "rsasha1"
  /// - "rsasha256"
  /// - "rsasha512"
  /// - "ecdsap256sha256"
  /// - "ecdsap384sha384"
  core.String? algorithm;

  /// The time that this resource was created in the control plane.
  ///
  /// This is in RFC3339 text format. Output only.
  core.String? creationTime;

  /// A mutable string of at most 1024 characters associated with this resource
  /// for the user's convenience.
  ///
  /// Has no effect on the resource's function.
  core.String? description;

  /// Cryptographic hashes of the DNSKEY resource record associated with this
  /// DnsKey.
  ///
  /// These digests are needed to construct a DS record that points at this DNS
  /// key. Output only.
  core.List<DnsKeyDigest>? digests;

  /// Unique identifier for the resource; defined by the server (output only).
  core.String? id;

  /// Active keys are used to sign subsequent changes to the ManagedZone.
  ///
  /// Inactive keys are still present as DNSKEY Resource Records for the use of
  /// resolvers validating existing signatures.
  core.bool? isActive;

  /// Length of the key in bits.
  ///
  /// Specified at creation time, and then immutable.
  core.int? keyLength;

  /// The key tag is a non-cryptographic hash of the a DNSKEY resource record
  /// associated with this DnsKey.
  ///
  /// The key tag can be used to identify a DNSKEY more quickly (but it is not a
  /// unique identifier). In particular, the key tag is used in a parent zone's
  /// DS record to point at the DNSKEY in this child ManagedZone. The key tag is
  /// a number in the range \[0, 65535\] and the algorithm to calculate it is
  /// specified in RFC4034 Appendix B. Output only.
  core.int? keyTag;
  core.String? kind;

  /// Base64 encoded public half of this key.
  ///
  /// Output only.
  core.String? publicKey;

  /// One of "KEY_SIGNING" or "ZONE_SIGNING".
  ///
  /// Keys of type KEY_SIGNING have the Secure Entry Point flag set and, when
  /// active, are used to sign only resource record sets of type DNSKEY.
  /// Otherwise, the Secure Entry Point flag is cleared, and this key is used to
  /// sign only resource record sets of other types. Immutable after creation
  /// time.
  /// Possible string values are:
  /// - "keySigning"
  /// - "zoneSigning"
  core.String? type;

  DnsKey({
    this.algorithm,
    this.creationTime,
    this.description,
    this.digests,
    this.id,
    this.isActive,
    this.keyLength,
    this.keyTag,
    this.kind,
    this.publicKey,
    this.type,
  });

  DnsKey.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          digests: json_.containsKey('digests')
              ? (json_['digests'] as core.List)
                  .map((value) => DnsKeyDigest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          isActive: json_.containsKey('isActive')
              ? json_['isActive'] as core.bool
              : null,
          keyLength: json_.containsKey('keyLength')
              ? json_['keyLength'] as core.int
              : null,
          keyTag:
              json_.containsKey('keyTag') ? json_['keyTag'] as core.int : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          publicKey: json_.containsKey('publicKey')
              ? json_['publicKey'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (description != null) 'description': description!,
        if (digests != null) 'digests': digests!,
        if (id != null) 'id': id!,
        if (isActive != null) 'isActive': isActive!,
        if (keyLength != null) 'keyLength': keyLength!,
        if (keyTag != null) 'keyTag': keyTag!,
        if (kind != null) 'kind': kind!,
        if (publicKey != null) 'publicKey': publicKey!,
        if (type != null) 'type': type!,
      };
}

class DnsKeyDigest {
  /// The base-16 encoded bytes of this digest.
  ///
  /// Suitable for use in a DS resource record.
  core.String? digest;

  /// Specifies the algorithm used to calculate this digest.
  /// Possible string values are:
  /// - "sha1"
  /// - "sha256"
  /// - "sha384"
  core.String? type;

  DnsKeyDigest({
    this.digest,
    this.type,
  });

  DnsKeyDigest.fromJson(core.Map json_)
      : this(
          digest: json_.containsKey('digest')
              ? json_['digest'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digest != null) 'digest': digest!,
        if (type != null) 'type': type!,
      };
}

/// Parameters for DnsKey key generation.
///
/// Used for generating initial keys for a new ManagedZone and as default when
/// adding a new DnsKey.
class DnsKeySpec {
  /// String mnemonic specifying the DNSSEC algorithm of this key.
  /// Possible string values are:
  /// - "rsasha1"
  /// - "rsasha256"
  /// - "rsasha512"
  /// - "ecdsap256sha256"
  /// - "ecdsap384sha384"
  core.String? algorithm;

  /// Length of the keys in bits.
  core.int? keyLength;

  /// Specifies whether this is a key signing key (KSK) or a zone signing key
  /// (ZSK).
  ///
  /// Key signing keys have the Secure Entry Point flag set and, when active,
  /// are only used to sign resource record sets of type DNSKEY. Zone signing
  /// keys do not have the Secure Entry Point flag set and are used to sign all
  /// other types of resource record sets.
  /// Possible string values are:
  /// - "keySigning"
  /// - "zoneSigning"
  core.String? keyType;
  core.String? kind;

  DnsKeySpec({
    this.algorithm,
    this.keyLength,
    this.keyType,
    this.kind,
  });

  DnsKeySpec.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          keyLength: json_.containsKey('keyLength')
              ? json_['keyLength'] as core.int
              : null,
          keyType: json_.containsKey('keyType')
              ? json_['keyType'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (keyLength != null) 'keyLength': keyLength!,
        if (keyType != null) 'keyType': keyType!,
        if (kind != null) 'kind': kind!,
      };
}

/// The response to a request to enumerate DnsKeys in a ManagedZone.
class DnsKeysListResponse {
  /// The requested resources.
  core.List<DnsKey>? dnsKeys;
  ResponseHeader? header;

  /// Type of resource.
  core.String? kind;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order.
  ///
  /// To fetch them, make another list request using this value as your
  /// pagination token. In this way you can retrieve the complete contents of
  /// even very large collections one page at a time. However, if the contents
  /// of the collection change between the first and last paginated list
  /// request, the set of all elements returned are an inconsistent view of the
  /// collection. There is no way to retrieve a "snapshot" of collections larger
  /// than the maximum page size.
  core.String? nextPageToken;

  DnsKeysListResponse({
    this.dnsKeys,
    this.header,
    this.kind,
    this.nextPageToken,
  });

  DnsKeysListResponse.fromJson(core.Map json_)
      : this(
          dnsKeys: json_.containsKey('dnsKeys')
              ? (json_['dnsKeys'] as core.List)
                  .map((value) => DnsKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dnsKeys != null) 'dnsKeys': dnsKeys!,
        if (header != null) 'header': header!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef Expr = $Expr;

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  GoogleIamV1AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef GoogleIamV1AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  GoogleIamV1Binding({
    this.condition,
    this.members,
    this.role,
  });

  GoogleIamV1Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Request message for `GetIamPolicy` method.
class GoogleIamV1GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GoogleIamV1GetPolicyOptions? options;

  GoogleIamV1GetIamPolicyRequest({
    this.options,
  });

  GoogleIamV1GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GoogleIamV1GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GoogleIamV1GetPolicyOptions = $GetPolicyOptions;

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<GoogleIamV1Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  GoogleIamV1Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  GoogleIamV1Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => GoogleIamV1Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request message for `SetIamPolicy` method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  GoogleIamV1Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  GoogleIamV1SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsResponse = $PermissionsResponse;

/// A zone is a subtree of the DNS namespace under one administrative
/// responsibility.
///
/// A ManagedZone is a resource that represents a DNS zone hosted by the Cloud
/// DNS service.
class ManagedZone {
  ManagedZoneCloudLoggingConfig? cloudLoggingConfig;

  /// The time that this resource was created on the server.
  ///
  /// This is in RFC3339 text format. Output only.
  core.String? creationTime;

  /// A mutable string of at most 1024 characters associated with this resource
  /// for the user's convenience.
  ///
  /// Has no effect on the managed zone's function.
  core.String? description;

  /// The DNS name of this managed zone, for instance "example.com.".
  core.String? dnsName;

  /// DNSSEC configuration.
  ManagedZoneDnsSecConfig? dnssecConfig;

  /// The presence for this field indicates that outbound forwarding is enabled
  /// for this zone.
  ///
  /// The value of this field contains the set of destinations to forward to.
  ManagedZoneForwardingConfig? forwardingConfig;

  /// Unique identifier for the resource; defined by the server (output only)
  core.String? id;
  core.String? kind;

  /// User labels.
  core.Map<core.String, core.String>? labels;

  /// User assigned name for this resource.
  ///
  /// Must be unique within the project. The name must be 1-63 characters long,
  /// must begin with a letter, end with a letter or digit, and only contain
  /// lowercase letters, digits or dashes.
  core.String? name;

  /// Optionally specifies the NameServerSet for this ManagedZone.
  ///
  /// A NameServerSet is a set of DNS name servers that all host the same
  /// ManagedZones. Most users leave this field unset. If you need to use this
  /// field, contact your account team.
  core.String? nameServerSet;

  /// Delegate your managed_zone to these virtual name servers; defined by the
  /// server (output only)
  core.List<core.String>? nameServers;

  /// The presence of this field indicates that DNS Peering is enabled for this
  /// zone.
  ///
  /// The value of this field contains the network to peer with.
  ManagedZonePeeringConfig? peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud resources
  /// that the zone is visible from.
  ManagedZonePrivateVisibilityConfig? privateVisibilityConfig;

  /// The presence of this field indicates that this is a managed reverse lookup
  /// zone and Cloud DNS resolves reverse lookup queries using automatically
  /// configured records for VPC resources.
  ///
  /// This only applies to networks listed under private_visibility_config.
  ManagedZoneReverseLookupConfig? reverseLookupConfig;

  /// This field links to the associated service directory namespace.
  ///
  /// Do not set this field for public zones or forwarding zones.
  ManagedZoneServiceDirectoryConfig? serviceDirectoryConfig;

  /// The zone's visibility: public zones are exposed to the Internet, while
  /// private zones are visible only to Virtual Private Cloud resources.
  /// Possible string values are:
  /// - "public"
  /// - "private"
  core.String? visibility;

  ManagedZone({
    this.cloudLoggingConfig,
    this.creationTime,
    this.description,
    this.dnsName,
    this.dnssecConfig,
    this.forwardingConfig,
    this.id,
    this.kind,
    this.labels,
    this.name,
    this.nameServerSet,
    this.nameServers,
    this.peeringConfig,
    this.privateVisibilityConfig,
    this.reverseLookupConfig,
    this.serviceDirectoryConfig,
    this.visibility,
  });

  ManagedZone.fromJson(core.Map json_)
      : this(
          cloudLoggingConfig: json_.containsKey('cloudLoggingConfig')
              ? ManagedZoneCloudLoggingConfig.fromJson(
                  json_['cloudLoggingConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          dnsName: json_.containsKey('dnsName')
              ? json_['dnsName'] as core.String
              : null,
          dnssecConfig: json_.containsKey('dnssecConfig')
              ? ManagedZoneDnsSecConfig.fromJson(
                  json_['dnssecConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          forwardingConfig: json_.containsKey('forwardingConfig')
              ? ManagedZoneForwardingConfig.fromJson(json_['forwardingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nameServerSet: json_.containsKey('nameServerSet')
              ? json_['nameServerSet'] as core.String
              : null,
          nameServers: json_.containsKey('nameServers')
              ? (json_['nameServers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          peeringConfig: json_.containsKey('peeringConfig')
              ? ManagedZonePeeringConfig.fromJson(
                  json_['peeringConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          privateVisibilityConfig: json_.containsKey('privateVisibilityConfig')
              ? ManagedZonePrivateVisibilityConfig.fromJson(
                  json_['privateVisibilityConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          reverseLookupConfig: json_.containsKey('reverseLookupConfig')
              ? ManagedZoneReverseLookupConfig.fromJson(
                  json_['reverseLookupConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          serviceDirectoryConfig: json_.containsKey('serviceDirectoryConfig')
              ? ManagedZoneServiceDirectoryConfig.fromJson(
                  json_['serviceDirectoryConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          visibility: json_.containsKey('visibility')
              ? json_['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudLoggingConfig != null)
          'cloudLoggingConfig': cloudLoggingConfig!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (description != null) 'description': description!,
        if (dnsName != null) 'dnsName': dnsName!,
        if (dnssecConfig != null) 'dnssecConfig': dnssecConfig!,
        if (forwardingConfig != null) 'forwardingConfig': forwardingConfig!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (nameServerSet != null) 'nameServerSet': nameServerSet!,
        if (nameServers != null) 'nameServers': nameServers!,
        if (peeringConfig != null) 'peeringConfig': peeringConfig!,
        if (privateVisibilityConfig != null)
          'privateVisibilityConfig': privateVisibilityConfig!,
        if (reverseLookupConfig != null)
          'reverseLookupConfig': reverseLookupConfig!,
        if (serviceDirectoryConfig != null)
          'serviceDirectoryConfig': serviceDirectoryConfig!,
        if (visibility != null) 'visibility': visibility!,
      };
}

/// Cloud Logging configurations for publicly visible zones.
class ManagedZoneCloudLoggingConfig {
  /// If set, enable query logging for this ManagedZone.
  ///
  /// False by default, making logging opt-in.
  core.bool? enableLogging;
  core.String? kind;

  ManagedZoneCloudLoggingConfig({
    this.enableLogging,
    this.kind,
  });

  ManagedZoneCloudLoggingConfig.fromJson(core.Map json_)
      : this(
          enableLogging: json_.containsKey('enableLogging')
              ? json_['enableLogging'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableLogging != null) 'enableLogging': enableLogging!,
        if (kind != null) 'kind': kind!,
      };
}

class ManagedZoneDnsSecConfig {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone.
  ///
  /// Can only be changed while the state is OFF.
  core.List<DnsKeySpec>? defaultKeySpecs;
  core.String? kind;

  /// Specifies the mechanism for authenticated denial-of-existence responses.
  ///
  /// Can only be changed while the state is OFF.
  /// Possible string values are:
  /// - "nsec"
  /// - "nsec3"
  core.String? nonExistence;

  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  /// Possible string values are:
  /// - "off" : DNSSEC is disabled; the zone is not signed.
  /// - "on" : DNSSEC is enabled; the zone is signed and fully managed.
  /// - "transfer" : DNSSEC is enabled, but in a "transfer" mode.
  core.String? state;

  ManagedZoneDnsSecConfig({
    this.defaultKeySpecs,
    this.kind,
    this.nonExistence,
    this.state,
  });

  ManagedZoneDnsSecConfig.fromJson(core.Map json_)
      : this(
          defaultKeySpecs: json_.containsKey('defaultKeySpecs')
              ? (json_['defaultKeySpecs'] as core.List)
                  .map((value) => DnsKeySpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nonExistence: json_.containsKey('nonExistence')
              ? json_['nonExistence'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultKeySpecs != null) 'defaultKeySpecs': defaultKeySpecs!,
        if (kind != null) 'kind': kind!,
        if (nonExistence != null) 'nonExistence': nonExistence!,
        if (state != null) 'state': state!,
      };
}

class ManagedZoneForwardingConfig {
  core.String? kind;

  /// List of target name servers to forward to.
  ///
  /// Cloud DNS selects the best available name server if more than one target
  /// is given.
  core.List<ManagedZoneForwardingConfigNameServerTarget>? targetNameServers;

  ManagedZoneForwardingConfig({
    this.kind,
    this.targetNameServers,
  });

  ManagedZoneForwardingConfig.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          targetNameServers: json_.containsKey('targetNameServers')
              ? (json_['targetNameServers'] as core.List)
                  .map((value) =>
                      ManagedZoneForwardingConfigNameServerTarget.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (targetNameServers != null) 'targetNameServers': targetNameServers!,
      };
}

class ManagedZoneForwardingConfigNameServerTarget {
  /// Forwarding path for this NameServerTarget.
  ///
  /// If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on
  /// IP address ranges; that is, RFC1918 addresses go to the VPC network,
  /// non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS
  /// always sends queries through the VPC network for this target.
  /// Possible string values are:
  /// - "default" : Cloud DNS makes forwarding decisions based on address
  /// ranges; that is, RFC1918 addresses forward to the target through the VPC
  /// and non-RFC1918 addresses forward to the target through the internet
  /// - "private" : Cloud DNS always forwards to this target through the VPC.
  core.String? forwardingPath;

  /// IPv4 address of a target name server.
  core.String? ipv4Address;
  core.String? kind;

  ManagedZoneForwardingConfigNameServerTarget({
    this.forwardingPath,
    this.ipv4Address,
    this.kind,
  });

  ManagedZoneForwardingConfigNameServerTarget.fromJson(core.Map json_)
      : this(
          forwardingPath: json_.containsKey('forwardingPath')
              ? json_['forwardingPath'] as core.String
              : null,
          ipv4Address: json_.containsKey('ipv4Address')
              ? json_['ipv4Address'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (forwardingPath != null) 'forwardingPath': forwardingPath!,
        if (ipv4Address != null) 'ipv4Address': ipv4Address!,
        if (kind != null) 'kind': kind!,
      };
}

class ManagedZoneOperationsListResponse {
  ResponseHeader? header;

  /// Type of resource.
  core.String? kind;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order.
  ///
  /// To fetch them, make another list request using this value as your page
  /// token. This lets you retrieve the complete contents of even very large
  /// collections one page at a time. However, if the contents of the collection
  /// change between the first and last paginated list request, the set of all
  /// elements returned are an inconsistent view of the collection. You cannot
  /// retrieve a consistent snapshot of a collection larger than the maximum
  /// page size.
  core.String? nextPageToken;

  /// The operation resources.
  core.List<Operation>? operations;

  ManagedZoneOperationsListResponse({
    this.header,
    this.kind,
    this.nextPageToken,
    this.operations,
  });

  ManagedZoneOperationsListResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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
        if (header != null) 'header': header!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

class ManagedZonePeeringConfig {
  core.String? kind;

  /// The network with which to peer.
  ManagedZonePeeringConfigTargetNetwork? targetNetwork;

  ManagedZonePeeringConfig({
    this.kind,
    this.targetNetwork,
  });

  ManagedZonePeeringConfig.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          targetNetwork: json_.containsKey('targetNetwork')
              ? ManagedZonePeeringConfigTargetNetwork.fromJson(
                  json_['targetNetwork'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (targetNetwork != null) 'targetNetwork': targetNetwork!,
      };
}

class ManagedZonePeeringConfigTargetNetwork {
  /// The time at which the zone was deactivated, in RFC 3339 date-time format.
  ///
  /// An empty string indicates that the peering connection is active. The
  /// producer network can deactivate a zone. The zone is automatically
  /// deactivated if the producer network that the zone targeted is deleted.
  /// Output only.
  core.String? deactivateTime;
  core.String? kind;

  /// The fully qualified URL of the VPC network to forward queries to.
  ///
  /// This should be formatted like
  /// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  core.String? networkUrl;

  ManagedZonePeeringConfigTargetNetwork({
    this.deactivateTime,
    this.kind,
    this.networkUrl,
  });

  ManagedZonePeeringConfigTargetNetwork.fromJson(core.Map json_)
      : this(
          deactivateTime: json_.containsKey('deactivateTime')
              ? json_['deactivateTime'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          networkUrl: json_.containsKey('networkUrl')
              ? json_['networkUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deactivateTime != null) 'deactivateTime': deactivateTime!,
        if (kind != null) 'kind': kind!,
        if (networkUrl != null) 'networkUrl': networkUrl!,
      };
}

class ManagedZonePrivateVisibilityConfig {
  core.String? kind;

  /// The list of VPC networks that can see this zone.
  core.List<ManagedZonePrivateVisibilityConfigNetwork>? networks;

  ManagedZonePrivateVisibilityConfig({
    this.kind,
    this.networks,
  });

  ManagedZonePrivateVisibilityConfig.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          networks: json_.containsKey('networks')
              ? (json_['networks'] as core.List)
                  .map((value) =>
                      ManagedZonePrivateVisibilityConfigNetwork.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (networks != null) 'networks': networks!,
      };
}

class ManagedZonePrivateVisibilityConfigNetwork {
  core.String? kind;

  /// The fully qualified URL of the VPC network to bind to.
  ///
  /// Format this URL like
  /// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  core.String? networkUrl;

  ManagedZonePrivateVisibilityConfigNetwork({
    this.kind,
    this.networkUrl,
  });

  ManagedZonePrivateVisibilityConfigNetwork.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          networkUrl: json_.containsKey('networkUrl')
              ? json_['networkUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (networkUrl != null) 'networkUrl': networkUrl!,
      };
}

class ManagedZoneReverseLookupConfig {
  core.String? kind;

  ManagedZoneReverseLookupConfig({
    this.kind,
  });

  ManagedZoneReverseLookupConfig.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
      };
}

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfig {
  core.String? kind;

  /// Contains information about the namespace associated with the zone.
  ManagedZoneServiceDirectoryConfigNamespace? namespace;

  ManagedZoneServiceDirectoryConfig({
    this.kind,
    this.namespace,
  });

  ManagedZoneServiceDirectoryConfig.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          namespace: json_.containsKey('namespace')
              ? ManagedZoneServiceDirectoryConfigNamespace.fromJson(
                  json_['namespace'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (namespace != null) 'namespace': namespace!,
      };
}

class ManagedZoneServiceDirectoryConfigNamespace {
  /// The time that the namespace backing this zone was deleted; an empty string
  /// if it still exists.
  ///
  /// This is in RFC3339 text format. Output only.
  core.String? deletionTime;
  core.String? kind;

  /// The fully qualified URL of the namespace associated with the zone.
  ///
  /// Format must be
  /// https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace}
  core.String? namespaceUrl;

  ManagedZoneServiceDirectoryConfigNamespace({
    this.deletionTime,
    this.kind,
    this.namespaceUrl,
  });

  ManagedZoneServiceDirectoryConfigNamespace.fromJson(core.Map json_)
      : this(
          deletionTime: json_.containsKey('deletionTime')
              ? json_['deletionTime'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          namespaceUrl: json_.containsKey('namespaceUrl')
              ? json_['namespaceUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deletionTime != null) 'deletionTime': deletionTime!,
        if (kind != null) 'kind': kind!,
        if (namespaceUrl != null) 'namespaceUrl': namespaceUrl!,
      };
}

class ManagedZonesListResponse {
  ResponseHeader? header;

  /// Type of resource.
  core.String? kind;

  /// The managed zone resources.
  core.List<ManagedZone>? managedZones;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order.
  ///
  /// To fetch them, make another list request using this value as your page
  /// token. This lets you the complete contents of even very large collections
  /// one page at a time. However, if the contents of the collection change
  /// between the first and last paginated list request, the set of all elements
  /// returned are an inconsistent view of the collection. You cannot retrieve a
  /// consistent snapshot of a collection larger than the maximum page size.
  core.String? nextPageToken;

  ManagedZonesListResponse({
    this.header,
    this.kind,
    this.managedZones,
    this.nextPageToken,
  });

  ManagedZonesListResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          managedZones: json_.containsKey('managedZones')
              ? (json_['managedZones'] as core.List)
                  .map((value) => ManagedZone.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (kind != null) 'kind': kind!,
        if (managedZones != null) 'managedZones': managedZones!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// An operation represents a successful mutation performed on a Cloud DNS
/// resource.
///
/// Operations provide: - An audit log of server resource mutations. - A way to
/// recover/retry API calls in the case where the response is never received by
/// the caller. Use the caller specified client_operation_id.
class Operation {
  /// Only populated if the operation targeted a DnsKey (output only).
  OperationDnsKeyContext? dnsKeyContext;

  /// Unique identifier for the resource.
  ///
  /// This is the client_operation_id if the client specified it when the
  /// mutation was initiated, otherwise, it is generated by the server. The name
  /// must be 1-63 characters long and match the regular expression \[-a-z0-9\]?
  /// (output only)
  core.String? id;
  core.String? kind;

  /// The time that this operation was started by the server.
  ///
  /// This is in RFC3339 text format (output only).
  core.String? startTime;

  /// Status of the operation.
  ///
  /// Can be one of the following: "PENDING" or "DONE" (output only). A status
  /// of "DONE" means that the request to update the authoritative servers has
  /// been sent, but the servers might not be updated yet.
  /// Possible string values are:
  /// - "pending"
  /// - "done"
  core.String? status;

  /// Type of the operation.
  ///
  /// Operations include insert, update, and delete (output only).
  core.String? type;

  /// User who requested the operation, for example: user@example.com.
  ///
  /// cloud-dns-system for operations automatically done by the system. (output
  /// only)
  core.String? user;

  /// Only populated if the operation targeted a ManagedZone (output only).
  OperationManagedZoneContext? zoneContext;

  Operation({
    this.dnsKeyContext,
    this.id,
    this.kind,
    this.startTime,
    this.status,
    this.type,
    this.user,
    this.zoneContext,
  });

  Operation.fromJson(core.Map json_)
      : this(
          dnsKeyContext: json_.containsKey('dnsKeyContext')
              ? OperationDnsKeyContext.fromJson(
                  json_['dnsKeyContext'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          user: json_.containsKey('user') ? json_['user'] as core.String : null,
          zoneContext: json_.containsKey('zoneContext')
              ? OperationManagedZoneContext.fromJson(
                  json_['zoneContext'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dnsKeyContext != null) 'dnsKeyContext': dnsKeyContext!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (startTime != null) 'startTime': startTime!,
        if (status != null) 'status': status!,
        if (type != null) 'type': type!,
        if (user != null) 'user': user!,
        if (zoneContext != null) 'zoneContext': zoneContext!,
      };
}

class OperationDnsKeyContext {
  /// The post-operation DnsKey resource.
  DnsKey? newValue;

  /// The pre-operation DnsKey resource.
  DnsKey? oldValue;

  OperationDnsKeyContext({
    this.newValue,
    this.oldValue,
  });

  OperationDnsKeyContext.fromJson(core.Map json_)
      : this(
          newValue: json_.containsKey('newValue')
              ? DnsKey.fromJson(
                  json_['newValue'] as core.Map<core.String, core.dynamic>)
              : null,
          oldValue: json_.containsKey('oldValue')
              ? DnsKey.fromJson(
                  json_['oldValue'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newValue != null) 'newValue': newValue!,
        if (oldValue != null) 'oldValue': oldValue!,
      };
}

class OperationManagedZoneContext {
  /// The post-operation ManagedZone resource.
  ManagedZone? newValue;

  /// The pre-operation ManagedZone resource.
  ManagedZone? oldValue;

  OperationManagedZoneContext({
    this.newValue,
    this.oldValue,
  });

  OperationManagedZoneContext.fromJson(core.Map json_)
      : this(
          newValue: json_.containsKey('newValue')
              ? ManagedZone.fromJson(
                  json_['newValue'] as core.Map<core.String, core.dynamic>)
              : null,
          oldValue: json_.containsKey('oldValue')
              ? ManagedZone.fromJson(
                  json_['oldValue'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newValue != null) 'newValue': newValue!,
        if (oldValue != null) 'oldValue': oldValue!,
      };
}

class PoliciesListResponse {
  ResponseHeader? header;

  /// Type of resource.
  core.String? kind;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order.
  ///
  /// To fetch them, make another list request using this value as your page
  /// token. This lets you the complete contents of even very large collections
  /// one page at a time. However, if the contents of the collection change
  /// between the first and last paginated list request, the set of all elements
  /// returned are an inconsistent view of the collection. You cannot retrieve a
  /// consistent snapshot of a collection larger than the maximum page size.
  core.String? nextPageToken;

  /// The policy resources.
  core.List<Policy>? policies;

  PoliciesListResponse({
    this.header,
    this.kind,
    this.nextPageToken,
    this.policies,
  });

  PoliciesListResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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
        if (header != null) 'header': header!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (policies != null) 'policies': policies!,
      };
}

class PoliciesPatchResponse {
  ResponseHeader? header;
  Policy? policy;

  PoliciesPatchResponse({
    this.header,
    this.policy,
  });

  PoliciesPatchResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (policy != null) 'policy': policy!,
      };
}

class PoliciesUpdateResponse {
  ResponseHeader? header;
  Policy? policy;

  PoliciesUpdateResponse({
    this.header,
    this.policy,
  });

  PoliciesUpdateResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (policy != null) 'policy': policy!,
      };
}

/// A policy is a collection of DNS rules applied to one or more Virtual Private
/// Cloud resources.
class Policy {
  /// Sets an alternative name server for the associated networks.
  ///
  /// When specified, all DNS queries are forwarded to a name server that you
  /// choose. Names such as .internal are not available when an alternative name
  /// server is specified.
  PolicyAlternativeNameServerConfig? alternativeNameServerConfig;

  /// A mutable string of at most 1024 characters associated with this resource
  /// for the user's convenience.
  ///
  /// Has no effect on the policy's function.
  core.String? description;

  /// Allows networks bound to this policy to receive DNS queries sent by VMs or
  /// applications over VPN connections.
  ///
  /// When enabled, a virtual IP address is allocated from each of the
  /// subnetworks that are bound to this policy.
  core.bool? enableInboundForwarding;

  /// Controls whether logging is enabled for the networks bound to this policy.
  ///
  /// Defaults to no logging if not set.
  core.bool? enableLogging;

  /// Unique identifier for the resource; defined by the server (output only).
  core.String? id;
  core.String? kind;

  /// User-assigned name for this policy.
  core.String? name;

  /// List of network names specifying networks to which this policy is applied.
  core.List<PolicyNetwork>? networks;

  Policy({
    this.alternativeNameServerConfig,
    this.description,
    this.enableInboundForwarding,
    this.enableLogging,
    this.id,
    this.kind,
    this.name,
    this.networks,
  });

  Policy.fromJson(core.Map json_)
      : this(
          alternativeNameServerConfig:
              json_.containsKey('alternativeNameServerConfig')
                  ? PolicyAlternativeNameServerConfig.fromJson(
                      json_['alternativeNameServerConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          enableInboundForwarding: json_.containsKey('enableInboundForwarding')
              ? json_['enableInboundForwarding'] as core.bool
              : null,
          enableLogging: json_.containsKey('enableLogging')
              ? json_['enableLogging'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networks: json_.containsKey('networks')
              ? (json_['networks'] as core.List)
                  .map((value) => PolicyNetwork.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternativeNameServerConfig != null)
          'alternativeNameServerConfig': alternativeNameServerConfig!,
        if (description != null) 'description': description!,
        if (enableInboundForwarding != null)
          'enableInboundForwarding': enableInboundForwarding!,
        if (enableLogging != null) 'enableLogging': enableLogging!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (networks != null) 'networks': networks!,
      };
}

class PolicyAlternativeNameServerConfig {
  core.String? kind;

  /// Sets an alternative name server for the associated networks.
  ///
  /// When specified, all DNS queries are forwarded to a name server that you
  /// choose. Names such as .internal are not available when an alternative name
  /// server is specified.
  core.List<PolicyAlternativeNameServerConfigTargetNameServer>?
      targetNameServers;

  PolicyAlternativeNameServerConfig({
    this.kind,
    this.targetNameServers,
  });

  PolicyAlternativeNameServerConfig.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          targetNameServers: json_.containsKey('targetNameServers')
              ? (json_['targetNameServers'] as core.List)
                  .map((value) =>
                      PolicyAlternativeNameServerConfigTargetNameServer
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (targetNameServers != null) 'targetNameServers': targetNameServers!,
      };
}

class PolicyAlternativeNameServerConfigTargetNameServer {
  /// Forwarding path for this TargetNameServer.
  ///
  /// If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on
  /// address ranges; that is, RFC1918 addresses go to the VPC network,
  /// non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS
  /// always sends queries through the VPC network for this target.
  /// Possible string values are:
  /// - "default" : Cloud DNS makes forwarding decision based on IP address
  /// ranges; that is, RFC1918 addresses forward to the target through the VPC
  /// and non-RFC1918 addresses forward to the target through the internet
  /// - "private" : Cloud DNS always forwards to this target through the VPC.
  core.String? forwardingPath;

  /// IPv4 address to forward to.
  core.String? ipv4Address;
  core.String? kind;

  PolicyAlternativeNameServerConfigTargetNameServer({
    this.forwardingPath,
    this.ipv4Address,
    this.kind,
  });

  PolicyAlternativeNameServerConfigTargetNameServer.fromJson(core.Map json_)
      : this(
          forwardingPath: json_.containsKey('forwardingPath')
              ? json_['forwardingPath'] as core.String
              : null,
          ipv4Address: json_.containsKey('ipv4Address')
              ? json_['ipv4Address'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (forwardingPath != null) 'forwardingPath': forwardingPath!,
        if (ipv4Address != null) 'ipv4Address': ipv4Address!,
        if (kind != null) 'kind': kind!,
      };
}

class PolicyNetwork {
  core.String? kind;

  /// The fully qualified URL of the VPC network to bind to.
  ///
  /// This should be formatted like
  /// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  core.String? networkUrl;

  PolicyNetwork({
    this.kind,
    this.networkUrl,
  });

  PolicyNetwork.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          networkUrl: json_.containsKey('networkUrl')
              ? json_['networkUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (networkUrl != null) 'networkUrl': networkUrl!,
      };
}

/// A project resource.
///
/// The project is a top level container for resources including Cloud DNS
/// ManagedZones. Projects can be created only in the APIs console. Next tag: 7.
class Project {
  /// User assigned unique identifier for the resource (output only).
  core.String? id;
  core.String? kind;

  /// Unique numeric identifier for the resource; defined by the server (output
  /// only).
  core.String? number;

  /// Quotas assigned to this project (output only).
  Quota? quota;

  Project({
    this.id,
    this.kind,
    this.number,
    this.quota,
  });

  Project.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          number: json_.containsKey('number')
              ? json_['number'] as core.String
              : null,
          quota: json_.containsKey('quota')
              ? Quota.fromJson(
                  json_['quota'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (number != null) 'number': number!,
        if (quota != null) 'quota': quota!,
      };
}

/// Limits associated with a Project.
class Quota {
  /// Maximum allowed number of DnsKeys per ManagedZone.
  core.int? dnsKeysPerManagedZone;

  /// Maximum allowed number of GKE clusters to which a privately scoped zone
  /// can be attached.
  core.int? gkeClustersPerManagedZone;

  /// Maximum allowed number of GKE clusters per policy.
  core.int? gkeClustersPerPolicy;

  /// Maximum allowed number of GKE clusters per response policy.
  core.int? gkeClustersPerResponsePolicy;

  /// Maximum allowed number of items per routing policy.
  core.int? itemsPerRoutingPolicy;
  core.String? kind;

  /// Maximum allowed number of managed zones in the project.
  core.int? managedZones;

  /// Maximum allowed number of managed zones which can be attached to a GKE
  /// cluster.
  core.int? managedZonesPerGkeCluster;

  /// Maximum allowed number of managed zones which can be attached to a
  /// network.
  core.int? managedZonesPerNetwork;

  /// Maximum allowed number of networks to which a privately scoped zone can be
  /// attached.
  core.int? networksPerManagedZone;

  /// Maximum allowed number of networks per policy.
  core.int? networksPerPolicy;

  /// Maximum allowed number of networks per response policy.
  core.int? networksPerResponsePolicy;

  /// Maximum allowed number of consumer peering zones per target network owned
  /// by this producer project
  core.int? peeringZonesPerTargetNetwork;

  /// Maximum allowed number of policies per project.
  core.int? policies;

  /// Maximum allowed number of ResourceRecords per ResourceRecordSet.
  core.int? resourceRecordsPerRrset;

  /// Maximum allowed number of response policies per project.
  core.int? responsePolicies;

  /// Maximum allowed number of rules per response policy.
  core.int? responsePolicyRulesPerResponsePolicy;

  /// Maximum allowed number of ResourceRecordSets to add per
  /// ChangesCreateRequest.
  core.int? rrsetAdditionsPerChange;

  /// Maximum allowed number of ResourceRecordSets to delete per
  /// ChangesCreateRequest.
  core.int? rrsetDeletionsPerChange;

  /// Maximum allowed number of ResourceRecordSets per zone in the project.
  core.int? rrsetsPerManagedZone;

  /// Maximum allowed number of target name servers per managed forwarding zone.
  core.int? targetNameServersPerManagedZone;

  /// Maximum allowed number of alternative target name servers per policy.
  core.int? targetNameServersPerPolicy;

  /// Maximum allowed size for total rrdata in one ChangesCreateRequest in
  /// bytes.
  core.int? totalRrdataSizePerChange;

  /// DNSSEC algorithm and key length types that can be used for DnsKeys.
  core.List<DnsKeySpec>? whitelistedKeySpecs;

  Quota({
    this.dnsKeysPerManagedZone,
    this.gkeClustersPerManagedZone,
    this.gkeClustersPerPolicy,
    this.gkeClustersPerResponsePolicy,
    this.itemsPerRoutingPolicy,
    this.kind,
    this.managedZones,
    this.managedZonesPerGkeCluster,
    this.managedZonesPerNetwork,
    this.networksPerManagedZone,
    this.networksPerPolicy,
    this.networksPerResponsePolicy,
    this.peeringZonesPerTargetNetwork,
    this.policies,
    this.resourceRecordsPerRrset,
    this.responsePolicies,
    this.responsePolicyRulesPerResponsePolicy,
    this.rrsetAdditionsPerChange,
    this.rrsetDeletionsPerChange,
    this.rrsetsPerManagedZone,
    this.targetNameServersPerManagedZone,
    this.targetNameServersPerPolicy,
    this.totalRrdataSizePerChange,
    this.whitelistedKeySpecs,
  });

  Quota.fromJson(core.Map json_)
      : this(
          dnsKeysPerManagedZone: json_.containsKey('dnsKeysPerManagedZone')
              ? json_['dnsKeysPerManagedZone'] as core.int
              : null,
          gkeClustersPerManagedZone:
              json_.containsKey('gkeClustersPerManagedZone')
                  ? json_['gkeClustersPerManagedZone'] as core.int
                  : null,
          gkeClustersPerPolicy: json_.containsKey('gkeClustersPerPolicy')
              ? json_['gkeClustersPerPolicy'] as core.int
              : null,
          gkeClustersPerResponsePolicy:
              json_.containsKey('gkeClustersPerResponsePolicy')
                  ? json_['gkeClustersPerResponsePolicy'] as core.int
                  : null,
          itemsPerRoutingPolicy: json_.containsKey('itemsPerRoutingPolicy')
              ? json_['itemsPerRoutingPolicy'] as core.int
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          managedZones: json_.containsKey('managedZones')
              ? json_['managedZones'] as core.int
              : null,
          managedZonesPerGkeCluster:
              json_.containsKey('managedZonesPerGkeCluster')
                  ? json_['managedZonesPerGkeCluster'] as core.int
                  : null,
          managedZonesPerNetwork: json_.containsKey('managedZonesPerNetwork')
              ? json_['managedZonesPerNetwork'] as core.int
              : null,
          networksPerManagedZone: json_.containsKey('networksPerManagedZone')
              ? json_['networksPerManagedZone'] as core.int
              : null,
          networksPerPolicy: json_.containsKey('networksPerPolicy')
              ? json_['networksPerPolicy'] as core.int
              : null,
          networksPerResponsePolicy:
              json_.containsKey('networksPerResponsePolicy')
                  ? json_['networksPerResponsePolicy'] as core.int
                  : null,
          peeringZonesPerTargetNetwork:
              json_.containsKey('peeringZonesPerTargetNetwork')
                  ? json_['peeringZonesPerTargetNetwork'] as core.int
                  : null,
          policies: json_.containsKey('policies')
              ? json_['policies'] as core.int
              : null,
          resourceRecordsPerRrset: json_.containsKey('resourceRecordsPerRrset')
              ? json_['resourceRecordsPerRrset'] as core.int
              : null,
          responsePolicies: json_.containsKey('responsePolicies')
              ? json_['responsePolicies'] as core.int
              : null,
          responsePolicyRulesPerResponsePolicy:
              json_.containsKey('responsePolicyRulesPerResponsePolicy')
                  ? json_['responsePolicyRulesPerResponsePolicy'] as core.int
                  : null,
          rrsetAdditionsPerChange: json_.containsKey('rrsetAdditionsPerChange')
              ? json_['rrsetAdditionsPerChange'] as core.int
              : null,
          rrsetDeletionsPerChange: json_.containsKey('rrsetDeletionsPerChange')
              ? json_['rrsetDeletionsPerChange'] as core.int
              : null,
          rrsetsPerManagedZone: json_.containsKey('rrsetsPerManagedZone')
              ? json_['rrsetsPerManagedZone'] as core.int
              : null,
          targetNameServersPerManagedZone:
              json_.containsKey('targetNameServersPerManagedZone')
                  ? json_['targetNameServersPerManagedZone'] as core.int
                  : null,
          targetNameServersPerPolicy:
              json_.containsKey('targetNameServersPerPolicy')
                  ? json_['targetNameServersPerPolicy'] as core.int
                  : null,
          totalRrdataSizePerChange:
              json_.containsKey('totalRrdataSizePerChange')
                  ? json_['totalRrdataSizePerChange'] as core.int
                  : null,
          whitelistedKeySpecs: json_.containsKey('whitelistedKeySpecs')
              ? (json_['whitelistedKeySpecs'] as core.List)
                  .map((value) => DnsKeySpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dnsKeysPerManagedZone != null)
          'dnsKeysPerManagedZone': dnsKeysPerManagedZone!,
        if (gkeClustersPerManagedZone != null)
          'gkeClustersPerManagedZone': gkeClustersPerManagedZone!,
        if (gkeClustersPerPolicy != null)
          'gkeClustersPerPolicy': gkeClustersPerPolicy!,
        if (gkeClustersPerResponsePolicy != null)
          'gkeClustersPerResponsePolicy': gkeClustersPerResponsePolicy!,
        if (itemsPerRoutingPolicy != null)
          'itemsPerRoutingPolicy': itemsPerRoutingPolicy!,
        if (kind != null) 'kind': kind!,
        if (managedZones != null) 'managedZones': managedZones!,
        if (managedZonesPerGkeCluster != null)
          'managedZonesPerGkeCluster': managedZonesPerGkeCluster!,
        if (managedZonesPerNetwork != null)
          'managedZonesPerNetwork': managedZonesPerNetwork!,
        if (networksPerManagedZone != null)
          'networksPerManagedZone': networksPerManagedZone!,
        if (networksPerPolicy != null) 'networksPerPolicy': networksPerPolicy!,
        if (networksPerResponsePolicy != null)
          'networksPerResponsePolicy': networksPerResponsePolicy!,
        if (peeringZonesPerTargetNetwork != null)
          'peeringZonesPerTargetNetwork': peeringZonesPerTargetNetwork!,
        if (policies != null) 'policies': policies!,
        if (resourceRecordsPerRrset != null)
          'resourceRecordsPerRrset': resourceRecordsPerRrset!,
        if (responsePolicies != null) 'responsePolicies': responsePolicies!,
        if (responsePolicyRulesPerResponsePolicy != null)
          'responsePolicyRulesPerResponsePolicy':
              responsePolicyRulesPerResponsePolicy!,
        if (rrsetAdditionsPerChange != null)
          'rrsetAdditionsPerChange': rrsetAdditionsPerChange!,
        if (rrsetDeletionsPerChange != null)
          'rrsetDeletionsPerChange': rrsetDeletionsPerChange!,
        if (rrsetsPerManagedZone != null)
          'rrsetsPerManagedZone': rrsetsPerManagedZone!,
        if (targetNameServersPerManagedZone != null)
          'targetNameServersPerManagedZone': targetNameServersPerManagedZone!,
        if (targetNameServersPerPolicy != null)
          'targetNameServersPerPolicy': targetNameServersPerPolicy!,
        if (totalRrdataSizePerChange != null)
          'totalRrdataSizePerChange': totalRrdataSizePerChange!,
        if (whitelistedKeySpecs != null)
          'whitelistedKeySpecs': whitelistedKeySpecs!,
      };
}

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned
/// dynamically with the response varying based on configured properties such as
/// geolocation or by weighted random selection.
class RRSetRoutingPolicy {
  RRSetRoutingPolicyGeoPolicy? geo;
  core.String? kind;
  RRSetRoutingPolicyPrimaryBackupPolicy? primaryBackup;
  RRSetRoutingPolicyWrrPolicy? wrr;

  RRSetRoutingPolicy({
    this.geo,
    this.kind,
    this.primaryBackup,
    this.wrr,
  });

  RRSetRoutingPolicy.fromJson(core.Map json_)
      : this(
          geo: json_.containsKey('geo')
              ? RRSetRoutingPolicyGeoPolicy.fromJson(
                  json_['geo'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          primaryBackup: json_.containsKey('primaryBackup')
              ? RRSetRoutingPolicyPrimaryBackupPolicy.fromJson(
                  json_['primaryBackup'] as core.Map<core.String, core.dynamic>)
              : null,
          wrr: json_.containsKey('wrr')
              ? RRSetRoutingPolicyWrrPolicy.fromJson(
                  json_['wrr'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (geo != null) 'geo': geo!,
        if (kind != null) 'kind': kind!,
        if (primaryBackup != null) 'primaryBackup': primaryBackup!,
        if (wrr != null) 'wrr': wrr!,
      };
}

/// Configures a RRSetRoutingPolicy that routes based on the geo location of the
/// querying user.
class RRSetRoutingPolicyGeoPolicy {
  /// Without fencing, if health check fails for all configured items in the
  /// current geo bucket, we'll failover to the next nearest geo bucket.
  ///
  /// With fencing, if health check is enabled, as long as some targets in the
  /// current geo bucket are healthy, we'll return only the healthy targets.
  /// However, if they're all unhealthy, we won't failover to the next nearest
  /// bucket, we'll simply return all the items in the current bucket even
  /// though they're unhealthy.
  core.bool? enableFencing;

  /// The primary geo routing configuration.
  ///
  /// If there are multiple items with the same location, an error is returned
  /// instead.
  core.List<RRSetRoutingPolicyGeoPolicyGeoPolicyItem>? items;
  core.String? kind;

  RRSetRoutingPolicyGeoPolicy({
    this.enableFencing,
    this.items,
    this.kind,
  });

  RRSetRoutingPolicyGeoPolicy.fromJson(core.Map json_)
      : this(
          enableFencing: json_.containsKey('enableFencing')
              ? json_['enableFencing'] as core.bool
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) =>
                      RRSetRoutingPolicyGeoPolicyGeoPolicyItem.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableFencing != null) 'enableFencing': enableFencing!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// ResourceRecordSet data for one geo location.
class RRSetRoutingPolicyGeoPolicyGeoPolicyItem {
  /// For A and AAAA types only.
  ///
  /// Endpoints to return in the query result only if they are healthy. These
  /// can be specified along with rrdata within this item.
  RRSetRoutingPolicyHealthCheckTargets? healthCheckedTargets;
  core.String? kind;

  /// The geo-location granularity is a GCP region.
  ///
  /// This location string should correspond to a GCP region. e.g. "us-east1",
  /// "southamerica-east1", "asia-east1", etc.
  core.String? location;
  core.List<core.String>? rrdatas;

  /// DNSSEC generated signatures for all the rrdata within this item.
  ///
  /// Note that if health checked targets are provided for DNSSEC enabled zones,
  /// there's a restriction of 1 ip per item. .
  core.List<core.String>? signatureRrdatas;

  RRSetRoutingPolicyGeoPolicyGeoPolicyItem({
    this.healthCheckedTargets,
    this.kind,
    this.location,
    this.rrdatas,
    this.signatureRrdatas,
  });

  RRSetRoutingPolicyGeoPolicyGeoPolicyItem.fromJson(core.Map json_)
      : this(
          healthCheckedTargets: json_.containsKey('healthCheckedTargets')
              ? RRSetRoutingPolicyHealthCheckTargets.fromJson(
                  json_['healthCheckedTargets']
                      as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          rrdatas: json_.containsKey('rrdatas')
              ? (json_['rrdatas'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          signatureRrdatas: json_.containsKey('signatureRrdatas')
              ? (json_['signatureRrdatas'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (healthCheckedTargets != null)
          'healthCheckedTargets': healthCheckedTargets!,
        if (kind != null) 'kind': kind!,
        if (location != null) 'location': location!,
        if (rrdatas != null) 'rrdatas': rrdatas!,
        if (signatureRrdatas != null) 'signatureRrdatas': signatureRrdatas!,
      };
}

/// HealthCheckTargets describes endpoints to health-check when responding to
/// Routing Policy queries.
///
/// Only the healthy endpoints will be included in the response.
class RRSetRoutingPolicyHealthCheckTargets {
  core.List<RRSetRoutingPolicyLoadBalancerTarget>? internalLoadBalancers;

  RRSetRoutingPolicyHealthCheckTargets({
    this.internalLoadBalancers,
  });

  RRSetRoutingPolicyHealthCheckTargets.fromJson(core.Map json_)
      : this(
          internalLoadBalancers: json_.containsKey('internalLoadBalancers')
              ? (json_['internalLoadBalancers'] as core.List)
                  .map((value) => RRSetRoutingPolicyLoadBalancerTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (internalLoadBalancers != null)
          'internalLoadBalancers': internalLoadBalancers!,
      };
}

class RRSetRoutingPolicyLoadBalancerTarget {
  /// The frontend IP address of the
  core.String? ipAddress;

  ///
  /// Possible string values are:
  /// - "undefined"
  /// - "tcp"
  /// - "udp"
  core.String? ipProtocol;
  core.String? kind;

  ///
  /// Possible string values are:
  /// - "none"
  /// - "regionalL4ilb"
  core.String? loadBalancerType;

  /// The fully qualified url of the network on which the ILB is
  core.String? networkUrl;

  /// Load Balancer to health check.
  ///
  /// The configured port of the Load Balancer.
  core.String? port;

  /// present.
  ///
  /// This should be formatted like
  /// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  /// The project ID in which the ILB exists.
  core.String? project;

  /// The region for regional ILBs.
  core.String? region;

  RRSetRoutingPolicyLoadBalancerTarget({
    this.ipAddress,
    this.ipProtocol,
    this.kind,
    this.loadBalancerType,
    this.networkUrl,
    this.port,
    this.project,
    this.region,
  });

  RRSetRoutingPolicyLoadBalancerTarget.fromJson(core.Map json_)
      : this(
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
          ipProtocol: json_.containsKey('ipProtocol')
              ? json_['ipProtocol'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          loadBalancerType: json_.containsKey('loadBalancerType')
              ? json_['loadBalancerType'] as core.String
              : null,
          networkUrl: json_.containsKey('networkUrl')
              ? json_['networkUrl'] as core.String
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.String : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (ipProtocol != null) 'ipProtocol': ipProtocol!,
        if (kind != null) 'kind': kind!,
        if (loadBalancerType != null) 'loadBalancerType': loadBalancerType!,
        if (networkUrl != null) 'networkUrl': networkUrl!,
        if (port != null) 'port': port!,
        if (project != null) 'project': project!,
        if (region != null) 'region': region!,
      };
}

/// Configures a RRSetRoutingPolicy such that all queries are responded with the
/// primary_targets if they are healthy.
///
/// And if all of them are unhealthy, then we fallback to a geo localized
/// policy.
class RRSetRoutingPolicyPrimaryBackupPolicy {
  /// Backup targets provide a regional failover policy for the otherwise global
  /// primary targets.
  ///
  /// If serving state is set to BACKUP, this policy essentially becomes a geo
  /// routing policy.
  RRSetRoutingPolicyGeoPolicy? backupGeoTargets;
  core.String? kind;
  RRSetRoutingPolicyHealthCheckTargets? primaryTargets;

  /// When serving state is PRIMARY, this field provides the option of sending a
  /// small percentage of the traffic to the backup targets.
  core.double? trickleTraffic;

  RRSetRoutingPolicyPrimaryBackupPolicy({
    this.backupGeoTargets,
    this.kind,
    this.primaryTargets,
    this.trickleTraffic,
  });

  RRSetRoutingPolicyPrimaryBackupPolicy.fromJson(core.Map json_)
      : this(
          backupGeoTargets: json_.containsKey('backupGeoTargets')
              ? RRSetRoutingPolicyGeoPolicy.fromJson(json_['backupGeoTargets']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          primaryTargets: json_.containsKey('primaryTargets')
              ? RRSetRoutingPolicyHealthCheckTargets.fromJson(
                  json_['primaryTargets']
                      as core.Map<core.String, core.dynamic>)
              : null,
          trickleTraffic: json_.containsKey('trickleTraffic')
              ? (json_['trickleTraffic'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupGeoTargets != null) 'backupGeoTargets': backupGeoTargets!,
        if (kind != null) 'kind': kind!,
        if (primaryTargets != null) 'primaryTargets': primaryTargets!,
        if (trickleTraffic != null) 'trickleTraffic': trickleTraffic!,
      };
}

/// Configures a RRSetRoutingPolicy that routes in a weighted round robin
/// fashion.
class RRSetRoutingPolicyWrrPolicy {
  core.List<RRSetRoutingPolicyWrrPolicyWrrPolicyItem>? items;
  core.String? kind;

  RRSetRoutingPolicyWrrPolicy({
    this.items,
    this.kind,
  });

  RRSetRoutingPolicyWrrPolicy.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) =>
                      RRSetRoutingPolicyWrrPolicyWrrPolicyItem.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// A routing block which contains the routing information for one WRR item.
class RRSetRoutingPolicyWrrPolicyWrrPolicyItem {
  /// endpoints that need to be health checked before making the routing
  /// decision.
  ///
  /// The unhealthy endpoints will be omitted from the result. If all endpoints
  /// within a buckete are unhealthy, we'll choose a different bucket (sampled
  /// w.r.t. its weight) for responding. Note that if DNSSEC is enabled for this
  /// zone, only one of rrdata or health_checked_targets can be set.
  RRSetRoutingPolicyHealthCheckTargets? healthCheckedTargets;
  core.String? kind;
  core.List<core.String>? rrdatas;

  /// DNSSEC generated signatures for all the rrdata within this item.
  ///
  /// Note that if health checked targets are provided for DNSSEC enabled zones,
  /// there's a restriction of 1 ip per item. .
  core.List<core.String>? signatureRrdatas;

  /// The weight corresponding to this subset of rrdata.
  ///
  /// When multiple WeightedRoundRobinPolicyItems are configured, the
  /// probability of returning an rrset is proportional to its weight relative
  /// to the sum of weights configured for all items. This weight should be
  /// non-negative.
  core.double? weight;

  RRSetRoutingPolicyWrrPolicyWrrPolicyItem({
    this.healthCheckedTargets,
    this.kind,
    this.rrdatas,
    this.signatureRrdatas,
    this.weight,
  });

  RRSetRoutingPolicyWrrPolicyWrrPolicyItem.fromJson(core.Map json_)
      : this(
          healthCheckedTargets: json_.containsKey('healthCheckedTargets')
              ? RRSetRoutingPolicyHealthCheckTargets.fromJson(
                  json_['healthCheckedTargets']
                      as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          rrdatas: json_.containsKey('rrdatas')
              ? (json_['rrdatas'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          signatureRrdatas: json_.containsKey('signatureRrdatas')
              ? (json_['signatureRrdatas'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          weight: json_.containsKey('weight')
              ? (json_['weight'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (healthCheckedTargets != null)
          'healthCheckedTargets': healthCheckedTargets!,
        if (kind != null) 'kind': kind!,
        if (rrdatas != null) 'rrdatas': rrdatas!,
        if (signatureRrdatas != null) 'signatureRrdatas': signatureRrdatas!,
        if (weight != null) 'weight': weight!,
      };
}

/// A unit of data that is returned by the DNS servers.
class ResourceRecordSet {
  core.String? kind;

  /// For example, www.example.com.
  core.String? name;

  /// Configures dynamic query responses based on geo location of querying user
  /// or a weighted round robin based routing policy.
  ///
  /// A ResourceRecordSet should only have either rrdata (static) or
  /// routing_policy (dynamic). An error is returned otherwise.
  RRSetRoutingPolicy? routingPolicy;

  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see
  /// examples.
  core.List<core.String>? rrdatas;

  /// As defined in RFC 4034 (section 3.2).
  core.List<core.String>? signatureRrdatas;

  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  core.int? ttl;

  /// The identifier of a supported record type.
  ///
  /// See the list of Supported DNS record types.
  core.String? type;

  ResourceRecordSet({
    this.kind,
    this.name,
    this.routingPolicy,
    this.rrdatas,
    this.signatureRrdatas,
    this.ttl,
    this.type,
  });

  ResourceRecordSet.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          routingPolicy: json_.containsKey('routingPolicy')
              ? RRSetRoutingPolicy.fromJson(
                  json_['routingPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          rrdatas: json_.containsKey('rrdatas')
              ? (json_['rrdatas'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          signatureRrdatas: json_.containsKey('signatureRrdatas')
              ? (json_['signatureRrdatas'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.int : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (routingPolicy != null) 'routingPolicy': routingPolicy!,
        if (rrdatas != null) 'rrdatas': rrdatas!,
        if (signatureRrdatas != null) 'signatureRrdatas': signatureRrdatas!,
        if (ttl != null) 'ttl': ttl!,
        if (type != null) 'type': type!,
      };
}

typedef ResourceRecordSetsDeleteResponse = $Empty;

class ResourceRecordSetsListResponse {
  ResponseHeader? header;

  /// Type of resource.
  core.String? kind;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order.
  ///
  /// To fetch them, make another list request using this value as your
  /// pagination token. This lets you retrieve complete contents of even larger
  /// collections, one page at a time. However, if the contents of the
  /// collection change between the first and last paginated list request, the
  /// set of elements returned are an inconsistent view of the collection. You
  /// cannot retrieve a consistent snapshot of a collection larger than the
  /// maximum page size.
  core.String? nextPageToken;

  /// The resource record set resources.
  core.List<ResourceRecordSet>? rrsets;

  ResourceRecordSetsListResponse({
    this.header,
    this.kind,
    this.nextPageToken,
    this.rrsets,
  });

  ResourceRecordSetsListResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          rrsets: json_.containsKey('rrsets')
              ? (json_['rrsets'] as core.List)
                  .map((value) => ResourceRecordSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (rrsets != null) 'rrsets': rrsets!,
      };
}

/// Elements common to every response.
class ResponseHeader {
  /// For mutating operation requests that completed successfully.
  ///
  /// This is the client_operation_id if the client specified it, otherwise it
  /// is generated by the server (output only).
  core.String? operationId;

  ResponseHeader({
    this.operationId,
  });

  ResponseHeader.fromJson(core.Map json_)
      : this(
          operationId: json_.containsKey('operationId')
              ? json_['operationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operationId != null) 'operationId': operationId!,
      };
}

class ResponsePoliciesListResponse {
  ResponseHeader? header;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order.
  ///
  /// To fetch them, make another list request using this value as your page
  /// token. This lets you the complete contents of even very large collections
  /// one page at a time. However, if the contents of the collection change
  /// between the first and last paginated list request, the set of all elements
  /// returned are an inconsistent view of the collection. You cannot retrieve a
  /// consistent snapshot of a collection larger than the maximum page size.
  core.String? nextPageToken;

  /// The Response Policy resources.
  core.List<ResponsePolicy>? responsePolicies;

  ResponsePoliciesListResponse({
    this.header,
    this.nextPageToken,
    this.responsePolicies,
  });

  ResponsePoliciesListResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          responsePolicies: json_.containsKey('responsePolicies')
              ? (json_['responsePolicies'] as core.List)
                  .map((value) => ResponsePolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (responsePolicies != null) 'responsePolicies': responsePolicies!,
      };
}

class ResponsePoliciesPatchResponse {
  ResponseHeader? header;
  ResponsePolicy? responsePolicy;

  ResponsePoliciesPatchResponse({
    this.header,
    this.responsePolicy,
  });

  ResponsePoliciesPatchResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          responsePolicy: json_.containsKey('responsePolicy')
              ? ResponsePolicy.fromJson(json_['responsePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (responsePolicy != null) 'responsePolicy': responsePolicy!,
      };
}

class ResponsePoliciesUpdateResponse {
  ResponseHeader? header;
  ResponsePolicy? responsePolicy;

  ResponsePoliciesUpdateResponse({
    this.header,
    this.responsePolicy,
  });

  ResponsePoliciesUpdateResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          responsePolicy: json_.containsKey('responsePolicy')
              ? ResponsePolicy.fromJson(json_['responsePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (responsePolicy != null) 'responsePolicy': responsePolicy!,
      };
}

/// A Response Policy is a collection of selectors that apply to queries made
/// against one or more Virtual Private Cloud networks.
class ResponsePolicy {
  /// User-provided description for this Response Policy.
  core.String? description;

  /// Unique identifier for the resource; defined by the server (output only).
  core.String? id;
  core.String? kind;

  /// List of network names specifying networks to which this policy is applied.
  core.List<ResponsePolicyNetwork>? networks;

  /// User assigned name for this Response Policy.
  core.String? responsePolicyName;

  ResponsePolicy({
    this.description,
    this.id,
    this.kind,
    this.networks,
    this.responsePolicyName,
  });

  ResponsePolicy.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          networks: json_.containsKey('networks')
              ? (json_['networks'] as core.List)
                  .map((value) => ResponsePolicyNetwork.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          responsePolicyName: json_.containsKey('responsePolicyName')
              ? json_['responsePolicyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (networks != null) 'networks': networks!,
        if (responsePolicyName != null)
          'responsePolicyName': responsePolicyName!,
      };
}

class ResponsePolicyNetwork {
  core.String? kind;

  /// The fully qualified URL of the VPC network to bind to.
  ///
  /// This should be formatted like
  /// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  core.String? networkUrl;

  ResponsePolicyNetwork({
    this.kind,
    this.networkUrl,
  });

  ResponsePolicyNetwork.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          networkUrl: json_.containsKey('networkUrl')
              ? json_['networkUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (networkUrl != null) 'networkUrl': networkUrl!,
      };
}

/// A Response Policy Rule is a selector that applies its behavior to queries
/// that match the selector.
///
/// Selectors are DNS names, which may be wildcards or exact matches. Each DNS
/// query subject to a Response Policy matches at most one ResponsePolicyRule,
/// as identified by the dns_name field with the longest matching suffix.
class ResponsePolicyRule {
  /// Answer this query with a behavior rather than DNS data.
  /// Possible string values are:
  /// - "behaviorUnspecified"
  /// - "bypassResponsePolicy" : Skip a less-specific ResponsePolicyRule and
  /// continue normal query logic. This can be used with a less-specific
  /// wildcard selector to exempt a subset of the wildcard ResponsePolicyRule
  /// from the ResponsePolicy behavior and query the public Internet instead.
  /// For instance, if these rules exist: *.example.com -\> LocalData 1.2.3.4
  /// foo.example.com -\> Behavior 'bypassResponsePolicy' Then a query for
  /// 'foo.example.com' skips the wildcard. This additionally functions to
  /// facilitate the allowlist feature. RPZs can be applied to multiple levels
  /// in the (eventually org, folder, project, network) hierarchy. If a rule is
  /// applied at a higher level of the hierarchy, adding a passthru rule at a
  /// lower level will supersede that, and a query from an affected vm to that
  /// domain will be exempt from the RPZ and proceed to normal resolution
  /// behavior.
  core.String? behavior;

  /// The DNS name (wildcard or exact) to apply this rule to.
  ///
  /// Must be unique within the Response Policy Rule.
  core.String? dnsName;
  core.String? kind;

  /// Answer this query directly with DNS data.
  ///
  /// These ResourceRecordSets override any other DNS behavior for the matched
  /// name; in particular they override private zones, the public internet, and
  /// GCP internal DNS. No SOA nor NS types are allowed.
  ResponsePolicyRuleLocalData? localData;

  /// An identifier for this rule.
  ///
  /// Must be unique with the ResponsePolicy.
  core.String? ruleName;

  ResponsePolicyRule({
    this.behavior,
    this.dnsName,
    this.kind,
    this.localData,
    this.ruleName,
  });

  ResponsePolicyRule.fromJson(core.Map json_)
      : this(
          behavior: json_.containsKey('behavior')
              ? json_['behavior'] as core.String
              : null,
          dnsName: json_.containsKey('dnsName')
              ? json_['dnsName'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          localData: json_.containsKey('localData')
              ? ResponsePolicyRuleLocalData.fromJson(
                  json_['localData'] as core.Map<core.String, core.dynamic>)
              : null,
          ruleName: json_.containsKey('ruleName')
              ? json_['ruleName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (behavior != null) 'behavior': behavior!,
        if (dnsName != null) 'dnsName': dnsName!,
        if (kind != null) 'kind': kind!,
        if (localData != null) 'localData': localData!,
        if (ruleName != null) 'ruleName': ruleName!,
      };
}

class ResponsePolicyRuleLocalData {
  /// All resource record sets for this selector, one per resource record type.
  ///
  /// The name must match the dns_name.
  core.List<ResourceRecordSet>? localDatas;

  ResponsePolicyRuleLocalData({
    this.localDatas,
  });

  ResponsePolicyRuleLocalData.fromJson(core.Map json_)
      : this(
          localDatas: json_.containsKey('localDatas')
              ? (json_['localDatas'] as core.List)
                  .map((value) => ResourceRecordSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (localDatas != null) 'localDatas': localDatas!,
      };
}

class ResponsePolicyRulesListResponse {
  ResponseHeader? header;

  /// The presence of this field indicates that there exist more results
  /// following your last page of results in pagination order.
  ///
  /// To fetch them, make another list request using this value as your page
  /// token. This lets you the complete contents of even very large collections
  /// one page at a time. However, if the contents of the collection change
  /// between the first and last paginated list request, the set of all elements
  /// returned are an inconsistent view of the collection. You cannot retrieve a
  /// consistent snapshot of a collection larger than the maximum page size.
  core.String? nextPageToken;

  /// The Response Policy Rule resources.
  core.List<ResponsePolicyRule>? responsePolicyRules;

  ResponsePolicyRulesListResponse({
    this.header,
    this.nextPageToken,
    this.responsePolicyRules,
  });

  ResponsePolicyRulesListResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          responsePolicyRules: json_.containsKey('responsePolicyRules')
              ? (json_['responsePolicyRules'] as core.List)
                  .map((value) => ResponsePolicyRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (responsePolicyRules != null)
          'responsePolicyRules': responsePolicyRules!,
      };
}

class ResponsePolicyRulesPatchResponse {
  ResponseHeader? header;
  ResponsePolicyRule? responsePolicyRule;

  ResponsePolicyRulesPatchResponse({
    this.header,
    this.responsePolicyRule,
  });

  ResponsePolicyRulesPatchResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          responsePolicyRule: json_.containsKey('responsePolicyRule')
              ? ResponsePolicyRule.fromJson(json_['responsePolicyRule']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (responsePolicyRule != null)
          'responsePolicyRule': responsePolicyRule!,
      };
}

class ResponsePolicyRulesUpdateResponse {
  ResponseHeader? header;
  ResponsePolicyRule? responsePolicyRule;

  ResponsePolicyRulesUpdateResponse({
    this.header,
    this.responsePolicyRule,
  });

  ResponsePolicyRulesUpdateResponse.fromJson(core.Map json_)
      : this(
          header: json_.containsKey('header')
              ? ResponseHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          responsePolicyRule: json_.containsKey('responsePolicyRule')
              ? ResponsePolicyRule.fromJson(json_['responsePolicyRule']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (responsePolicyRule != null)
          'responsePolicyRule': responsePolicyRule!,
      };
}
