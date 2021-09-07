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

/// Managed Service for Microsoft Active Directory API - v1
///
/// The Managed Service for Microsoft Active Directory API is used for managing
/// a highly available, hardened service running Microsoft Active Directory
/// (AD).
///
/// For more information, see <https://cloud.google.com/managed-microsoft-ad/>
///
/// Create an instance of [ManagedServiceForMicrosoftActiveDirectoryConsumerApi]
/// to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsGlobalResource]
///       - [ProjectsLocationsGlobalDomainsResource]
///         - [ProjectsLocationsGlobalDomainsSqlIntegrationsResource]
///       - [ProjectsLocationsGlobalOperationsResource]
///       - [ProjectsLocationsGlobalPeeringsResource]
library managedidentities.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Managed Service for Microsoft Active Directory API is used for managing
/// a highly available, hardened service running Microsoft Active Directory
/// (AD).
class ManagedServiceForMicrosoftActiveDirectoryConsumerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ManagedServiceForMicrosoftActiveDirectoryConsumerApi(http.Client client,
      {core.String rootUrl = 'https://managedidentities.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalResource get global =>
      ProjectsLocationsGlobalResource(_requester);

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
  async.Future<Location> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
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
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlobalResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalDomainsResource get domains =>
      ProjectsLocationsGlobalDomainsResource(_requester);
  ProjectsLocationsGlobalOperationsResource get operations =>
      ProjectsLocationsGlobalOperationsResource(_requester);
  ProjectsLocationsGlobalPeeringsResource get peerings =>
      ProjectsLocationsGlobalPeeringsResource(_requester);

  ProjectsLocationsGlobalResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsGlobalDomainsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalDomainsSqlIntegrationsResource get sqlIntegrations =>
      ProjectsLocationsGlobalDomainsSqlIntegrationsResource(_requester);

  ProjectsLocationsGlobalDomainsResource(commons.ApiRequester client)
      : _requester = client;

  /// Adds an AD trust to a domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource domain name, project name and location
  /// using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
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
  async.Future<Operation> attachTrust(
    AttachTrustRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':attachTrust';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Microsoft AD domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource project name and location using the
  /// form: `projects/{project_id}/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [domainName] - Required. The fully qualified domain name. e.g.
  /// mydomain.myorganization.com, with the following restrictions: * Must
  /// contain only lowercase letters, numbers, periods and hyphens. * Must start
  /// with a letter. * Must contain between 2-64 characters. * Must end with a
  /// number or a letter. * Must not start with period. * First segment length
  /// (mydomain for example above) shouldn't exceed 15 chars. * The last segment
  /// cannot be fully numeric. * Must be unique within the customer project.
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
    Domain request,
    core.String parent, {
    core.String? domainName,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (domainName != null) 'domainName': [domainName],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/domains';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a domain.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The domain resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Removes an AD trust.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource domain name, project name, and location
  /// using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
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
  async.Future<Operation> detachTrust(
    DetachTrustRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':detachTrust';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a domain.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The domain resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Domain.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the domain ldaps settings.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The domain resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LDAPSSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LDAPSSettings> getLdapssettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/ldapssettings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LDAPSSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists domains in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the domain location using the
  /// form: `projects/{project_id}/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [filter] - Optional. A filter specifying constraints of a list operation.
  /// For example, `Domain.fqdn="mydomain.myorginization"`.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results. See
  /// [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order)
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 1000 will be used. Regardless of the
  /// page_size value, the response may include a partial list. Callers should
  /// rely on a response's next_page_token to determine if there are additional
  /// results to list.
  ///
  /// [pageToken] - Optional. The `next_page_token` value returned from a
  /// previous ListDomainsRequest request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/domains';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDomainsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the metadata and configuration of a domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the domain using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. The elements of the repeated paths field may
  /// only include fields from Domain: * `labels` * `locations` *
  /// `authorized_networks` * `audit_logs_enabled`
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
    Domain request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the DNS conditional forwarder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource domain name, project name and location
  /// using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
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
  async.Future<Operation> reconfigureTrust(
    ReconfigureTrustRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':reconfigureTrust';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Resets a domain's administrator password.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The domain resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResetAdminPasswordResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResetAdminPasswordResponse> resetAdminPassword(
    ResetAdminPasswordRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':resetAdminPassword';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ResetAdminPasswordResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
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
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Patches a single ldaps settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the LDAPS settings. Uses the form:
  /// `projects/{project}/locations/{location}/domains/{domain}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
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
  async.Future<Operation> updateLdapssettings(
    LDAPSSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/ldapssettings';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Validates a trust state, that the target domain is reachable, and that the
  /// target domain is able to accept incoming trust requests.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource domain name, project name, and location
  /// using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
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
  async.Future<Operation> validateTrust(
    ValidateTrustRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':validateTrust';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlobalDomainsSqlIntegrationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalDomainsSqlIntegrationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single sqlIntegration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. SQLIntegration resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain}/sqlIntegrations/{name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+/sqlIntegrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SqlIntegration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SqlIntegration> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SqlIntegration.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists SqlIntegrations in a given domain.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the SqlIntegrations using the
  /// form: `projects/{project_id}/locations/global/domains / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter specifying constraints of a list operation.
  /// For example, `SqlIntegration.name="sql"`.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results following syntax
  /// at https://cloud.google.com/apis/design/design_patterns#sorting_order.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 1000 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response'ANIZATIONs next_page_token to
  /// determine if there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSqlIntegrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSqlIntegrationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/sqlIntegrations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSqlIntegrationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlobalOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/operations/\[^/\]+$`.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/global/operations/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/global/operations/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/global/operations$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlobalPeeringsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalPeeringsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Peering for Managed AD instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource project name and location using the form:
  /// `projects/{project_id}/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [peeringId] - Required. Peering Id, unique name to identify peering.
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
    Peering request,
    core.String parent, {
    core.String? peeringId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (peeringId != null) 'peeringId': [peeringId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/peerings';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes identified Peering.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Peering resource name using the form:
  /// `projects/{project_id}/locations/global/peerings/{peering_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/peerings/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Peering.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Peering resource name using the form:
  /// `projects/{project_id}/locations/global/peerings/{peering_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/peerings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Peering].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Peering> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Peering.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/peerings/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Peerings in a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the peering location using the
  /// form: `projects/{project_id}/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [filter] - Optional. Filter specifying constraints of a list operation.
  /// For example,
  /// `peering.authorized_network="projects/myprojectid/global/networks/mynetwork"`.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results following syntax
  /// at https://cloud.google.com/apis/design/design_patterns#sorting_order.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 1000 will be used by the service. Regardless
  /// of the page_size value, the response may include a partial list and a
  /// caller should only rely on response's next_page_token to determine if
  /// there are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPeeringsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPeeringsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/peerings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPeeringsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the labels for specified Peering.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Unique name of the peering in this scope including
  /// projects and location using the form:
  /// `projects/{project_id}/locations/global/peerings/{peering_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/peerings/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. The elements of the repeated paths field may
  /// only include these fields from Peering: * `labels`
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
    Peering request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/peerings/\[^/\]+$`.
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
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/peerings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for AttachTrust
class AttachTrustRequest {
  /// The domain trust resource.
  ///
  /// Required.
  Trust? trust;

  AttachTrustRequest({
    this.trust,
  });

  AttachTrustRequest.fromJson(core.Map _json)
      : this(
          trust: _json.containsKey('trust')
              ? Trust.fromJson(
                  _json['trust'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trust != null) 'trust': trust!.toJson(),
      };
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
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

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? Expr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!.toJson(),
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Certificate used to configure LDAPS.
class Certificate {
  /// The certificate expire time.
  core.String? expireTime;

  /// The issuer of this certificate.
  Certificate? issuingCertificate;

  /// The certificate subject.
  core.String? subject;

  /// The additional hostnames for the domain.
  core.List<core.String>? subjectAlternativeName;

  /// The certificate thumbprint which uniquely identifies the certificate.
  core.String? thumbprint;

  Certificate({
    this.expireTime,
    this.issuingCertificate,
    this.subject,
    this.subjectAlternativeName,
    this.thumbprint,
  });

  Certificate.fromJson(core.Map _json)
      : this(
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
          issuingCertificate: _json.containsKey('issuingCertificate')
              ? Certificate.fromJson(_json['issuingCertificate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subject: _json.containsKey('subject')
              ? _json['subject'] as core.String
              : null,
          subjectAlternativeName: _json.containsKey('subjectAlternativeName')
              ? (_json['subjectAlternativeName'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          thumbprint: _json.containsKey('thumbprint')
              ? _json['thumbprint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (issuingCertificate != null)
          'issuingCertificate': issuingCertificate!.toJson(),
        if (subject != null) 'subject': subject!,
        if (subjectAlternativeName != null)
          'subjectAlternativeName': subjectAlternativeName!,
        if (thumbprint != null) 'thumbprint': thumbprint!,
      };
}

/// Time window specified for daily operations.
class DailyCycle {
  /// Duration of the time window, set by service producer.
  ///
  /// Output only.
  core.String? duration;

  /// Time within the day to start the operations.
  TimeOfDay? startTime;

  DailyCycle({
    this.duration,
    this.startTime,
  });

  DailyCycle.fromJson(core.Map _json)
      : this(
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? TimeOfDay.fromJson(
                  _json['startTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
        if (startTime != null) 'startTime': startTime!.toJson(),
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
class Date {
  /// Day of a month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 to specify a
  /// year by itself or a year and month where the day isn't significant.
  core.int? day;

  /// Month of a year.
  ///
  /// Must be from 1 to 12, or 0 to specify a year without a month and day.
  core.int? month;

  /// Year of the date.
  ///
  /// Must be from 1 to 9999, or 0 to specify a date without a year.
  core.int? year;

  Date({
    this.day,
    this.month,
    this.year,
  });

  Date.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// DenyMaintenancePeriod definition.
///
/// Maintenance is forbidden within the deny period. The start_date must be less
/// than the end_date.
class DenyMaintenancePeriod {
  /// Deny period end date.
  ///
  /// This can be: * A full date, with non-zero year, month and day values. * A
  /// month and day value, with a zero year. Allows recurring deny periods each
  /// year. Date matching this period will have to be before the end.
  Date? endDate;

  /// Deny period start date.
  ///
  /// This can be: * A full date, with non-zero year, month and day values. * A
  /// month and day value, with a zero year. Allows recurring deny periods each
  /// year. Date matching this period will have to be the same or after the
  /// start.
  Date? startDate;

  /// Time in UTC when the Blackout period starts on start_date and ends on
  /// end_date.
  ///
  /// This can be: * Full time. * All zeros for 00:00:00 UTC
  TimeOfDay? time;

  DenyMaintenancePeriod({
    this.endDate,
    this.startDate,
    this.time,
  });

  DenyMaintenancePeriod.fromJson(core.Map _json)
      : this(
          endDate: _json.containsKey('endDate')
              ? Date.fromJson(
                  _json['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          startDate: _json.containsKey('startDate')
              ? Date.fromJson(
                  _json['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
          time: _json.containsKey('time')
              ? TimeOfDay.fromJson(
                  _json['time'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!.toJson(),
        if (startDate != null) 'startDate': startDate!.toJson(),
        if (time != null) 'time': time!.toJson(),
      };
}

/// Request message for DetachTrust
class DetachTrustRequest {
  /// The domain trust resource to removed.
  ///
  /// Required.
  Trust? trust;

  DetachTrustRequest({
    this.trust,
  });

  DetachTrustRequest.fromJson(core.Map _json)
      : this(
          trust: _json.containsKey('trust')
              ? Trust.fromJson(
                  _json['trust'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trust != null) 'trust': trust!.toJson(),
      };
}

/// Represents a managed Microsoft Active Directory domain.
///
/// If the domain is being changed, it will be placed into the UPDATING state,
/// which indicates that the resource is being reconciled. At this point, Get
/// will reflect an intermediate state.
class Domain {
  /// The name of delegated administrator account used to perform Active
  /// Directory operations.
  ///
  /// If not specified, `setupadmin` will be used.
  ///
  /// Optional.
  core.String? admin;

  /// Configuration for audit logs.
  ///
  /// True if audit logs are enabled, else false. Default is audit logs
  /// disabled.
  ///
  /// Optional.
  core.bool? auditLogsEnabled;

  /// The full names of the Google Compute Engine
  /// \[networks\](/compute/docs/networks-and-firewalls#networks) the domain
  /// instance is connected to.
  ///
  /// Networks can be added using UpdateDomain. The domain is only available on
  /// networks listed in `authorized_networks`. If CIDR subnets overlap between
  /// networks, domain creation will fail.
  ///
  /// Optional.
  core.List<core.String>? authorizedNetworks;

  /// The time the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The fully-qualified domain name of the exposed domain used by clients to
  /// connect to the service.
  ///
  /// Similar to what would be chosen for an Active Directory set up on an
  /// internal network.
  ///
  /// Output only.
  core.String? fqdn;

  /// Resource labels that can contain user-provided metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Locations where domain needs to be provisioned.
  ///
  /// regions e.g. us-west1 or us-east4 Service supports up to 4 locations at
  /// once. Each location will use a /26 block.
  ///
  /// Required.
  core.List<core.String>? locations;

  /// The unique name of the domain using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`.
  ///
  /// Required.
  core.String? name;

  /// The CIDR range of internal addresses that are reserved for this domain.
  ///
  /// Reserved networks must be /24 or larger. Ranges must be unique and
  /// non-overlapping with existing subnets in
  /// \[Domain\].\[authorized_networks\].
  ///
  /// Required.
  core.String? reservedIpRange;

  /// The current state of this domain.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "CREATING" : The domain is being created.
  /// - "READY" : The domain has been created and is fully usable.
  /// - "UPDATING" : The domain's configuration is being updated.
  /// - "DELETING" : The domain is being deleted.
  /// - "REPAIRING" : The domain is being repaired and may be unusable. Details
  /// can be found in the `status_message` field.
  /// - "PERFORMING_MAINTENANCE" : The domain is undergoing maintenance.
  /// - "UNAVAILABLE" : The domain is not serving requests.
  core.String? state;

  /// Additional information about the current status of this domain, if
  /// available.
  ///
  /// Output only.
  core.String? statusMessage;

  /// The current trusts associated with the domain.
  ///
  /// Output only.
  core.List<Trust>? trusts;

  /// The last update time.
  ///
  /// Output only.
  core.String? updateTime;

  Domain({
    this.admin,
    this.auditLogsEnabled,
    this.authorizedNetworks,
    this.createTime,
    this.fqdn,
    this.labels,
    this.locations,
    this.name,
    this.reservedIpRange,
    this.state,
    this.statusMessage,
    this.trusts,
    this.updateTime,
  });

  Domain.fromJson(core.Map _json)
      : this(
          admin:
              _json.containsKey('admin') ? _json['admin'] as core.String : null,
          auditLogsEnabled: _json.containsKey('auditLogsEnabled')
              ? _json['auditLogsEnabled'] as core.bool
              : null,
          authorizedNetworks: _json.containsKey('authorizedNetworks')
              ? (_json['authorizedNetworks'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          fqdn: _json.containsKey('fqdn') ? _json['fqdn'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          reservedIpRange: _json.containsKey('reservedIpRange')
              ? _json['reservedIpRange'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          trusts: _json.containsKey('trusts')
              ? (_json['trusts'] as core.List)
                  .map<Trust>((value) => Trust.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (admin != null) 'admin': admin!,
        if (auditLogsEnabled != null) 'auditLogsEnabled': auditLogsEnabled!,
        if (authorizedNetworks != null)
          'authorizedNetworks': authorizedNetworks!,
        if (createTime != null) 'createTime': createTime!,
        if (fqdn != null) 'fqdn': fqdn!,
        if (labels != null) 'labels': labels!,
        if (locations != null) 'locations': locations!,
        if (name != null) 'name': name!,
        if (reservedIpRange != null) 'reservedIpRange': reservedIpRange!,
        if (state != null) 'state': state!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (trusts != null)
          'trusts': trusts!.map((value) => value.toJson()).toList(),
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
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
class Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String? expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String? location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String? title;

  Expr({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  Expr.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}

/// Represents the metadata of the long-running operation.
class GoogleCloudManagedidentitiesV1OpMetadata {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? requestedCancellation;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  GoogleCloudManagedidentitiesV1OpMetadata({
    this.apiVersion,
    this.createTime,
    this.endTime,
    this.requestedCancellation,
    this.target,
    this.verb,
  });

  GoogleCloudManagedidentitiesV1OpMetadata.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          requestedCancellation: _json.containsKey('requestedCancellation')
              ? _json['requestedCancellation'] as core.bool
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (requestedCancellation != null)
          'requestedCancellation': requestedCancellation!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
      };
}

/// Represents the metadata of the long-running operation.
class GoogleCloudManagedidentitiesV1alpha1OpMetadata {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? requestedCancellation;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  GoogleCloudManagedidentitiesV1alpha1OpMetadata({
    this.apiVersion,
    this.createTime,
    this.endTime,
    this.requestedCancellation,
    this.target,
    this.verb,
  });

  GoogleCloudManagedidentitiesV1alpha1OpMetadata.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          requestedCancellation: _json.containsKey('requestedCancellation')
              ? _json['requestedCancellation'] as core.bool
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (requestedCancellation != null)
          'requestedCancellation': requestedCancellation!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
      };
}

/// Represents the metadata of the long-running operation.
class GoogleCloudManagedidentitiesV1beta1OpMetadata {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? requestedCancellation;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  GoogleCloudManagedidentitiesV1beta1OpMetadata({
    this.apiVersion,
    this.createTime,
    this.endTime,
    this.requestedCancellation,
    this.target,
    this.verb,
  });

  GoogleCloudManagedidentitiesV1beta1OpMetadata.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          requestedCancellation: _json.containsKey('requestedCancellation')
              ? _json['requestedCancellation'] as core.bool
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (requestedCancellation != null)
          'requestedCancellation': requestedCancellation!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
      };
}

class GoogleCloudSaasacceleratorManagementProvidersV1Instance {
  /// consumer_defined_name is the name that is set by the consumer.
  ///
  /// On the other hand Name field represents system-assigned id of an instance
  /// so consumers are not necessarily aware of it. consumer_defined_name is
  /// used for notification/UI purposes for consumer to recognize their
  /// instances.
  core.String? consumerDefinedName;

  /// Timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Resource labels to represent user provided metadata.
  ///
  /// Each label is a key-value pair, where both the key and the value are
  /// arbitrary strings provided by the user.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The MaintenancePolicies that have been attached to the instance.
  ///
  /// The key must be of the type name of the oneof policy name defined in
  /// MaintenancePolicy, and the referenced policy must define the same policy
  /// type. For complete details of MaintenancePolicy, please refer to
  /// go/cloud-saas-mw-ug.
  ///
  /// Deprecated.
  core.Map<core.String, core.String>? maintenancePolicyNames;

  /// The MaintenanceSchedule contains the scheduling information of published
  /// maintenance schedule with same key as software_versions.
  core.Map<core.String,
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>?
      maintenanceSchedules;

  /// The MaintenanceSettings associated with instance.
  ///
  /// Optional.
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings?
      maintenanceSettings;

  /// Unique name of the resource.
  ///
  /// It uses the form:
  /// `projects/{project_id|project_number}/locations/{location_id}/instances/{instance_id}`
  /// Note: Either project_id or project_number can be used, but keep it
  /// consistent with other APIs (e.g. RescheduleUpdate)
  core.String? name;

  /// Custom string attributes used primarily to expose producer-specific
  /// information in monitoring dashboards.
  ///
  /// See go/get-instance-metadata.
  ///
  /// Output only.
  core.Map<core.String, core.String>? producerMetadata;

  /// The list of data plane resources provisioned for this instance, e.g.
  /// compute VMs.
  ///
  /// See go/get-instance-metadata.
  ///
  /// Output only.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>?
      provisionedResources;

  /// Link to the SLM instance template.
  ///
  /// Only populated when updating SLM instances via SSA's Actuation service
  /// adaptor. Service producers with custom control plane (e.g. Cloud SQL)
  /// doesn't need to populate this field. Instead they should use
  /// software_versions.
  core.String? slmInstanceTemplate;

  /// SLO metadata for instance classification in the Standardized dataplane SLO
  /// platform.
  ///
  /// See go/cloud-ssa-standard-slo for feature description.
  ///
  /// Output only.
  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata? sloMetadata;

  /// Software versions that are used to deploy this instance.
  ///
  /// This can be mutated by rollout services.
  core.Map<core.String, core.String>? softwareVersions;

  /// Current lifecycle state of the resource (e.g. if it's being created or
  /// ready to use).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "CREATING" : Instance is being created.
  /// - "READY" : Instance has been created and is ready to use.
  /// - "UPDATING" : Instance is being updated.
  /// - "REPAIRING" : Instance is unheathy and under repair.
  /// - "DELETING" : Instance is being deleted.
  /// - "ERROR" : Instance encountered an error and is in indeterministic state.
  core.String? state;

  /// ID of the associated GCP tenant project.
  ///
  /// See go/get-instance-metadata.
  ///
  /// Output only.
  core.String? tenantProjectId;

  /// Timestamp when the resource was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudSaasacceleratorManagementProvidersV1Instance({
    this.consumerDefinedName,
    this.createTime,
    this.labels,
    this.maintenancePolicyNames,
    this.maintenanceSchedules,
    this.maintenanceSettings,
    this.name,
    this.producerMetadata,
    this.provisionedResources,
    this.slmInstanceTemplate,
    this.sloMetadata,
    this.softwareVersions,
    this.state,
    this.tenantProjectId,
    this.updateTime,
  });

  GoogleCloudSaasacceleratorManagementProvidersV1Instance.fromJson(
      core.Map _json)
      : this(
          consumerDefinedName: _json.containsKey('consumerDefinedName')
              ? _json['consumerDefinedName'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          maintenancePolicyNames: _json.containsKey('maintenancePolicyNames')
              ? (_json['maintenancePolicyNames']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          maintenanceSchedules: _json.containsKey('maintenanceSchedules')
              ? (_json['maintenanceSchedules']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
                        .fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          maintenanceSettings: _json.containsKey('maintenanceSettings')
              ? GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
                  .fromJson(_json['maintenanceSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          producerMetadata: _json.containsKey('producerMetadata')
              ? (_json['producerMetadata']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          provisionedResources: _json.containsKey('provisionedResources')
              ? (_json['provisionedResources'] as core.List)
                  .map<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>(
                      (value) =>
                          GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          slmInstanceTemplate: _json.containsKey('slmInstanceTemplate')
              ? _json['slmInstanceTemplate'] as core.String
              : null,
          sloMetadata: _json.containsKey('sloMetadata')
              ? GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
                  .fromJson(_json['sloMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          softwareVersions: _json.containsKey('softwareVersions')
              ? (_json['softwareVersions']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          tenantProjectId: _json.containsKey('tenantProjectId')
              ? _json['tenantProjectId'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerDefinedName != null)
          'consumerDefinedName': consumerDefinedName!,
        if (createTime != null) 'createTime': createTime!,
        if (labels != null) 'labels': labels!,
        if (maintenancePolicyNames != null)
          'maintenancePolicyNames': maintenancePolicyNames!,
        if (maintenanceSchedules != null)
          'maintenanceSchedules': maintenanceSchedules!
              .map((key, item) => core.MapEntry(key, item.toJson())),
        if (maintenanceSettings != null)
          'maintenanceSettings': maintenanceSettings!.toJson(),
        if (name != null) 'name': name!,
        if (producerMetadata != null) 'producerMetadata': producerMetadata!,
        if (provisionedResources != null)
          'provisionedResources':
              provisionedResources!.map((value) => value.toJson()).toList(),
        if (slmInstanceTemplate != null)
          'slmInstanceTemplate': slmInstanceTemplate!,
        if (sloMetadata != null) 'sloMetadata': sloMetadata!.toJson(),
        if (softwareVersions != null) 'softwareVersions': softwareVersions!,
        if (state != null) 'state': state!,
        if (tenantProjectId != null) 'tenantProjectId': tenantProjectId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Maintenance schedule which is exposed to customer and potentially end user,
/// indicating published upcoming future maintenance schedule
class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule {
  /// This field is deprecated, and will be always set to true since reschedule
  /// can happen multiple times now.
  ///
  /// This field should not be removed until all service producers remove this
  /// for their customers.
  core.bool? canReschedule;

  /// The scheduled end time for the maintenance.
  core.String? endTime;

  /// The rollout management policy this maintenance schedule is associated
  /// with.
  ///
  /// When doing reschedule update request, the reschedule should be against
  /// this given policy.
  core.String? rolloutManagementPolicy;

  /// schedule_deadline_time is the time deadline any schedule start time cannot
  /// go beyond, including reschedule.
  ///
  /// It's normally the initial schedule start time plus maintenance window
  /// length (1 day or 1 week). Maintenance cannot be scheduled to start beyond
  /// this deadline.
  core.String? scheduleDeadlineTime;

  /// The scheduled start time for the maintenance.
  core.String? startTime;

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule({
    this.canReschedule,
    this.endTime,
    this.rolloutManagementPolicy,
    this.scheduleDeadlineTime,
    this.startTime,
  });

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule.fromJson(
      core.Map _json)
      : this(
          canReschedule: _json.containsKey('canReschedule')
              ? _json['canReschedule'] as core.bool
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          rolloutManagementPolicy: _json.containsKey('rolloutManagementPolicy')
              ? _json['rolloutManagementPolicy'] as core.String
              : null,
          scheduleDeadlineTime: _json.containsKey('scheduleDeadlineTime')
              ? _json['scheduleDeadlineTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canReschedule != null) 'canReschedule': canReschedule!,
        if (endTime != null) 'endTime': endTime!,
        if (rolloutManagementPolicy != null)
          'rolloutManagementPolicy': rolloutManagementPolicy!,
        if (scheduleDeadlineTime != null)
          'scheduleDeadlineTime': scheduleDeadlineTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Maintenance settings associated with instance.
///
/// Allows service producers and end users to assign settings that controls
/// maintenance on this instance.
class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings {
  /// Exclude instance from maintenance.
  ///
  /// When true, rollout service will not attempt maintenance on the instance.
  /// Rollout service will include the instance in reported rollout progress as
  /// not attempted.
  ///
  /// Optional.
  core.bool? exclude;

  /// If the update call is triggered from rollback, set the value as true.
  ///
  /// Optional.
  core.bool? isRollback;

  /// The MaintenancePolicies that have been attached to the instance.
  ///
  /// The key must be of the type name of the oneof policy name defined in
  /// MaintenancePolicy, and the embedded policy must define the same policy
  /// type. For complete details of MaintenancePolicy, please refer to
  /// go/cloud-saas-mw-ug. If only the name is needed (like in the deprecated
  /// Instance.maintenance_policy_names field) then only populate
  /// MaintenancePolicy.name.
  ///
  /// Optional.
  core.Map<core.String, MaintenancePolicy>? maintenancePolicies;

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings({
    this.exclude,
    this.isRollback,
    this.maintenancePolicies,
  });

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings.fromJson(
      core.Map _json)
      : this(
          exclude: _json.containsKey('exclude')
              ? _json['exclude'] as core.bool
              : null,
          isRollback: _json.containsKey('isRollback')
              ? _json['isRollback'] as core.bool
              : null,
          maintenancePolicies: _json.containsKey('maintenancePolicies')
              ? (_json['maintenancePolicies']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    MaintenancePolicy.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exclude != null) 'exclude': exclude!,
        if (isRollback != null) 'isRollback': isRollback!,
        if (maintenancePolicies != null)
          'maintenancePolicies': maintenancePolicies!
              .map((key, item) => core.MapEntry(key, item.toJson())),
      };
}

/// Node information for custom per-node SLO implementations.
///
/// SSA does not support per-node SLO, but producers can populate per-node
/// information in SloMetadata for custom precomputations. SSA Eligibility
/// Exporter will emit per-node metric based on this information.
class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata {
  /// The location of the node, if different from instance location.
  core.String? location;

  /// The id of the node.
  ///
  /// This should be equal to SaasInstanceNode.node_id.
  core.String? nodeId;

  /// If present, this will override eligibility for the node coming from
  /// instance or exclusions for specified SLIs.
  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility?
      perSliEligibility;

  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata({
    this.location,
    this.nodeId,
    this.perSliEligibility,
  });

  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata.fromJson(
      core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          nodeId: _json.containsKey('nodeId')
              ? _json['nodeId'] as core.String
              : null,
          perSliEligibility: _json.containsKey('perSliEligibility')
              ? GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
                  .fromJson(_json['perSliEligibility']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (nodeId != null) 'nodeId': nodeId!,
        if (perSliEligibility != null)
          'perSliEligibility': perSliEligibility!.toJson(),
      };
}

/// PerSliSloEligibility is a mapping from an SLI name to eligibility.
class GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility {
  /// An entry in the eligibilities map specifies an eligibility for a
  /// particular SLI for the given instance.
  ///
  /// The SLI key in the name must be a valid SLI name specified in the
  /// Eligibility Exporter binary flags otherwise an error will be emitted by
  /// Eligibility Exporter and the oncaller will be alerted. If an SLI has been
  /// defined in the binary flags but the eligibilities map does not contain it,
  /// the corresponding SLI time series will not be emitted by the Eligibility
  /// Exporter. This ensures a smooth rollout and compatibility between the data
  /// produced by different versions of the Eligibility Exporters. If
  /// eligibilities map contains a key for an SLI which has not been declared in
  /// the binary flags, there will be an error message emitted in the
  /// Eligibility Exporter log and the metric for the SLI in question will not
  /// be emitted.
  core.Map<core.String,
          GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility>?
      eligibilities;

  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility({
    this.eligibilities,
  });

  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility.fromJson(
      core.Map _json)
      : this(
          eligibilities: _json.containsKey('eligibilities')
              ? (_json['eligibilities'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
                        .fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eligibilities != null)
          'eligibilities': eligibilities!
              .map((key, item) => core.MapEntry(key, item.toJson())),
      };
}

/// Describes provisioned dataplane resources.
class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource {
  /// Type of the resource.
  ///
  /// This can be either a GCP resource or a custom one (e.g. another cloud
  /// provider's VM). For GCP compute resources use singular form of the names
  /// listed in GCP compute API documentation
  /// (https://cloud.google.com/compute/docs/reference/rest/v1/), prefixed with
  /// 'compute-', for example: 'compute-instance', 'compute-disk',
  /// 'compute-autoscaler'.
  core.String? resourceType;

  /// URL identifying the resource, e.g.
  /// "https://www.googleapis.com/compute/v1/projects/...)".
  core.String? resourceUrl;

  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource({
    this.resourceType,
    this.resourceUrl,
  });

  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource.fromJson(
      core.Map _json)
      : this(
          resourceType: _json.containsKey('resourceType')
              ? _json['resourceType'] as core.String
              : null,
          resourceUrl: _json.containsKey('resourceUrl')
              ? _json['resourceUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceType != null) 'resourceType': resourceType!,
        if (resourceUrl != null) 'resourceUrl': resourceUrl!,
      };
}

/// SloEligibility is a tuple containing eligibility value: true if an instance
/// is eligible for SLO calculation or false if it should be excluded from all
/// SLO-related calculations along with a user-defined reason.
class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility {
  /// Whether an instance is eligible or ineligible.
  core.bool? eligible;

  /// User-defined reason for the current value of instance eligibility.
  ///
  /// Usually, this can be directly mapped to the internal state. An empty
  /// reason is allowed.
  core.String? reason;

  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility({
    this.eligible,
    this.reason,
  });

  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility.fromJson(
      core.Map _json)
      : this(
          eligible: _json.containsKey('eligible')
              ? _json['eligible'] as core.bool
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eligible != null) 'eligible': eligible!,
        if (reason != null) 'reason': reason!,
      };
}

/// SloMetadata contains resources required for proper SLO classification of the
/// instance.
class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata {
  /// List of nodes.
  ///
  /// Some producers need to use per-node metadata to calculate SLO. This field
  /// allows such producers to publish per-node SLO meta data, which will be
  /// consumed by SSA Eligibility Exporter and published in the form of per node
  /// metric to Monarch.
  ///
  /// Optional.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>?
      nodes;

  /// Multiple per-instance SLI eligibilities which apply for individual SLIs.
  ///
  /// Optional.
  GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility?
      perSliEligibility;

  /// Name of the SLO tier the Instance belongs to.
  ///
  /// This name will be expected to match the tiers specified in the service SLO
  /// configuration. Field is mandatory and must not be empty.
  core.String? tier;

  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata({
    this.nodes,
    this.perSliEligibility,
    this.tier,
  });

  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.fromJson(
      core.Map _json)
      : this(
          nodes: _json.containsKey('nodes')
              ? (_json['nodes'] as core.List)
                  .map<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>(
                      (value) =>
                          GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          perSliEligibility: _json.containsKey('perSliEligibility')
              ? GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
                  .fromJson(_json['perSliEligibility']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tier: _json.containsKey('tier') ? _json['tier'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodes != null)
          'nodes': nodes!.map((value) => value.toJson()).toList(),
        if (perSliEligibility != null)
          'perSliEligibility': perSliEligibility!.toJson(),
        if (tier != null) 'tier': tier!,
      };
}

/// LDAPSSettings represents the ldaps settings for domain resource.
///
/// LDAP is the Lightweight Directory Access Protocol, defined in
/// https://tools.ietf.org/html/rfc4511. The settings object configures LDAP
/// over SSL/TLS, whether it is over port 636 or the StartTLS operation. If
/// LDAPSSettings is being changed, it will be placed into the UPDATING state,
/// which indicates that the resource is being reconciled. At this point, Get
/// will reflect an intermediate state.
class LDAPSSettings {
  /// The certificate used to configure LDAPS.
  ///
  /// Certificates can be chained with a maximum length of 15.
  ///
  /// Output only.
  Certificate? certificate;

  /// Input only.
  ///
  /// The password used to encrypt the uploaded PFX certificate.
  core.String? certificatePassword;

  /// Input only.
  ///
  /// The uploaded PKCS12-formatted certificate to configure LDAPS with. It will
  /// enable the domain controllers in this domain to accept LDAPS connections
  /// (either LDAP over SSL/TLS or the StartTLS operation). A valid certificate
  /// chain must form a valid x.509 certificate chain (or be comprised of a
  /// single self-signed certificate. It must be encrypted with either: 1) PBES2
  /// + PBKDF2 + AES256 encryption and SHA256 PRF; or 2)
  /// pbeWithSHA1And3-KeyTripleDES-CBC Private key must be included for the leaf
  /// / single self-signed certificate. Note: For a fqdn
  /// your-example-domain.com, the wildcard fqdn is *.your-example-domain.com.
  /// Specifically the leaf certificate must have: - Either a blank subject or a
  /// subject with CN matching the wildcard fqdn. - Exactly two SANs - the fqdn
  /// and wildcard fqdn. - Encipherment and digital key signature key usages. -
  /// Server authentication extended key usage (OID=1.3.6.1.5.5.7.3.1) - Private
  /// key must be in one of the following formats: RSA, ECDSA, ED25519. -
  /// Private key must have appropriate key length: 2048 for RSA, 256 for ECDSA
  /// - Signature algorithm of the leaf certificate cannot be MD2, MD5 or SHA1.
  core.String? certificatePfx;
  core.List<core.int> get certificatePfxAsBytes =>
      convert.base64.decode(certificatePfx!);

  set certificatePfxAsBytes(core.List<core.int> _bytes) {
    certificatePfx =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The resource name of the LDAPS settings.
  ///
  /// Uses the form: `projects/{project}/locations/{location}/domains/{domain}`.
  core.String? name;

  /// The current state of this LDAPS settings.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not Set
  /// - "UPDATING" : The LDAPS setting is being updated.
  /// - "ACTIVE" : The LDAPS setting is ready.
  /// - "FAILED" : The LDAPS setting is not applied correctly.
  core.String? state;

  /// Last update time.
  ///
  /// Output only.
  core.String? updateTime;

  LDAPSSettings({
    this.certificate,
    this.certificatePassword,
    this.certificatePfx,
    this.name,
    this.state,
    this.updateTime,
  });

  LDAPSSettings.fromJson(core.Map _json)
      : this(
          certificate: _json.containsKey('certificate')
              ? Certificate.fromJson(
                  _json['certificate'] as core.Map<core.String, core.dynamic>)
              : null,
          certificatePassword: _json.containsKey('certificatePassword')
              ? _json['certificatePassword'] as core.String
              : null,
          certificatePfx: _json.containsKey('certificatePfx')
              ? _json['certificatePfx'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificate != null) 'certificate': certificate!.toJson(),
        if (certificatePassword != null)
          'certificatePassword': certificatePassword!,
        if (certificatePfx != null) 'certificatePfx': certificatePfx!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Response message for ListDomains
class ListDomainsResponse {
  /// A list of Managed Identities Service domains in the project.
  core.List<Domain>? domains;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String? nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  ListDomainsResponse({
    this.domains,
    this.nextPageToken,
    this.unreachable,
  });

  ListDomainsResponse.fromJson(core.Map _json)
      : this(
          domains: _json.containsKey('domains')
              ? (_json['domains'] as core.List)
                  .map<Domain>((value) => Domain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domains != null)
          'domains': domains!.map((value) => value.toJson()).toList(),
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

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map<Location>((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null)
          'locations': locations!.map((value) => value.toJson()).toList(),
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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map<Operation>((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null)
          'operations': operations!.map((value) => value.toJson()).toList(),
      };
}

/// ListPeeringsResponse is the response message for ListPeerings method.
class ListPeeringsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// A list of Managed Identities Service Peerings in the project.
  core.List<Peering>? peerings;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListPeeringsResponse({
    this.nextPageToken,
    this.peerings,
    this.unreachable,
  });

  ListPeeringsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          peerings: _json.containsKey('peerings')
              ? (_json['peerings'] as core.List)
                  .map<Peering>((value) => Peering.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (peerings != null)
          'peerings': peerings!.map((value) => value.toJson()).toList(),
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// ListSqlIntegrationsResponse is the response message for ListSqlIntegrations
/// method.
class ListSqlIntegrationsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// A list of SQLIntegrations of a domain.
  core.List<SqlIntegration>? sqlIntegrations;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  ListSqlIntegrationsResponse({
    this.nextPageToken,
    this.sqlIntegrations,
    this.unreachable,
  });

  ListSqlIntegrationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          sqlIntegrations: _json.containsKey('sqlIntegrations')
              ? (_json['sqlIntegrations'] as core.List)
                  .map<SqlIntegration>((value) => SqlIntegration.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sqlIntegrations != null)
          'sqlIntegrations':
              sqlIntegrations!.map((value) => value.toJson()).toList(),
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String? name;

  Location({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  Location.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

/// Defines policies to service maintenance events.
class MaintenancePolicy {
  /// The time when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of what this policy is for.
  ///
  /// Create/Update methods return INVALID_ARGUMENT if the length is greater
  /// than 512.
  ///
  /// Optional.
  core.String? description;

  /// Resource labels to represent user provided metadata.
  ///
  /// Each label is a key-value pair, where both the key and the value are
  /// arbitrary strings provided by the user.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// MaintenancePolicy name using the form:
  /// `projects/{project_id}/locations/{location_id}/maintenancePolicies/{maintenance_policy_id}`
  /// where {project_id} refers to a GCP consumer project ID, {location_id}
  /// refers to a GCP region/zone, {maintenance_policy_id} must be 1-63
  /// characters long and match the regular expression
  /// `[a-z0-9]([-a-z0-9]*[a-z0-9])?`.
  ///
  /// Required.
  core.String? name;

  /// The state of the policy.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "READY" : Resource is ready to be used.
  /// - "DELETING" : Resource is being deleted. It can no longer be attached to
  /// instances.
  core.String? state;

  /// Maintenance policy applicable to instance update.
  UpdatePolicy? updatePolicy;

  /// The time when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  MaintenancePolicy({
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.state,
    this.updatePolicy,
    this.updateTime,
  });

  MaintenancePolicy.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updatePolicy: _json.containsKey('updatePolicy')
              ? UpdatePolicy.fromJson(
                  _json['updatePolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updatePolicy != null) 'updatePolicy': updatePolicy!.toJson(),
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// MaintenanceWindow definition.
class MaintenanceWindow {
  /// Daily cycle.
  DailyCycle? dailyCycle;

  /// Weekly cycle.
  WeeklyCycle? weeklyCycle;

  MaintenanceWindow({
    this.dailyCycle,
    this.weeklyCycle,
  });

  MaintenanceWindow.fromJson(core.Map _json)
      : this(
          dailyCycle: _json.containsKey('dailyCycle')
              ? DailyCycle.fromJson(
                  _json['dailyCycle'] as core.Map<core.String, core.dynamic>)
              : null,
          weeklyCycle: _json.containsKey('weeklyCycle')
              ? WeeklyCycle.fromJson(
                  _json['weeklyCycle'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dailyCycle != null) 'dailyCycle': dailyCycle!.toJson(),
        if (weeklyCycle != null) 'weeklyCycle': weeklyCycle!.toJson(),
      };
}

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
  core.Map<core.String, core.Object>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
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
  core.Map<core.String, core.Object>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? (_json['response'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!.toJson(),
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// Represents the metadata of the long-running operation.
class OperationMetadata {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have been cancelled successfully have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? cancelRequested;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Human-readable status of the operation, if any.
  ///
  /// Output only.
  core.String? statusDetail;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  OperationMetadata({
    this.apiVersion,
    this.cancelRequested,
    this.createTime,
    this.endTime,
    this.statusDetail,
    this.target,
    this.verb,
  });

  OperationMetadata.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          cancelRequested: _json.containsKey('cancelRequested')
              ? _json['cancelRequested'] as core.bool
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          statusDetail: _json.containsKey('statusDetail')
              ? _json['statusDetail'] as core.String
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (cancelRequested != null) 'cancelRequested': cancelRequested!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (statusDetail != null) 'statusDetail': statusDetail!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
      };
}

/// Represents a Managed Service for Microsoft Active Directory Peering.
class Peering {
  /// The full names of the Google Compute Engine
  /// \[networks\](/compute/docs/networks-and-firewalls#networks) to which the
  /// instance is connected.
  ///
  /// Caller needs to make sure that CIDR subnets do not overlap between
  /// networks, else peering creation will fail.
  ///
  /// Required.
  core.String? authorizedNetwork;

  /// The time the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Full domain resource path for the Managed AD Domain involved in peering.
  ///
  /// The resource path should be in the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  ///
  /// Required.
  core.String? domainResource;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Unique name of the peering in this scope including projects and location
  /// using the form:
  /// `projects/{project_id}/locations/global/peerings/{peering_id}`.
  ///
  /// Output only.
  core.String? name;

  /// The current state of this Peering.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "CREATING" : Peering is being created.
  /// - "CONNECTED" : Peering is connected.
  /// - "DISCONNECTED" : Peering is disconnected.
  /// - "DELETING" : Peering is being deleted.
  core.String? state;

  /// Additional information about the current status of this peering, if
  /// available.
  ///
  /// Output only.
  core.String? statusMessage;

  /// Last update time.
  ///
  /// Output only.
  core.String? updateTime;

  Peering({
    this.authorizedNetwork,
    this.createTime,
    this.domainResource,
    this.labels,
    this.name,
    this.state,
    this.statusMessage,
    this.updateTime,
  });

  Peering.fromJson(core.Map _json)
      : this(
          authorizedNetwork: _json.containsKey('authorizedNetwork')
              ? _json['authorizedNetwork'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          domainResource: _json.containsKey('domainResource')
              ? _json['domainResource'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizedNetwork != null) 'authorizedNetwork': authorizedNetwork!,
        if (createTime != null) 'createTime': createTime!,
        if (domainResource != null) 'domainResource': domainResource!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members` to a single `role`. Members can be user accounts, service
/// accounts, Google groups, and domains (such as G Suite). A `role` is a named
/// list of permissions; each `role` can be an IAM predefined role or a
/// user-created custom role. For some types of Google Cloud resources, a
/// `binding` can also specify a `condition`, which is a logical expression that
/// allows access to a resource only if the expression evaluates to `true`. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<Binding>? bindings;

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

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  Policy({
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map _json)
      : this(
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map<Binding>((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bindings != null)
          'bindings': bindings!.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request message for ReconfigureTrust
class ReconfigureTrustRequest {
  /// The target DNS server IP addresses to resolve the remote domain involved
  /// in the trust.
  ///
  /// Required.
  core.List<core.String>? targetDnsIpAddresses;

  /// The fully-qualified target domain name which will be in trust with current
  /// domain.
  ///
  /// Required.
  core.String? targetDomainName;

  ReconfigureTrustRequest({
    this.targetDnsIpAddresses,
    this.targetDomainName,
  });

  ReconfigureTrustRequest.fromJson(core.Map _json)
      : this(
          targetDnsIpAddresses: _json.containsKey('targetDnsIpAddresses')
              ? (_json['targetDnsIpAddresses'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          targetDomainName: _json.containsKey('targetDomainName')
              ? _json['targetDomainName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetDnsIpAddresses != null)
          'targetDnsIpAddresses': targetDnsIpAddresses!,
        if (targetDomainName != null) 'targetDomainName': targetDomainName!,
      };
}

/// Request message for ResetAdminPassword
class ResetAdminPasswordRequest {
  ResetAdminPasswordRequest();

  ResetAdminPasswordRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Response message for ResetAdminPassword
class ResetAdminPasswordResponse {
  /// A random password.
  ///
  /// See admin for more information.
  core.String? password;

  ResetAdminPasswordResponse({
    this.password,
  });

  ResetAdminPasswordResponse.fromJson(core.Map _json)
      : this(
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (password != null) 'password': password!,
      };
}

/// Configure the schedule.
class Schedule {
  /// Allows to define schedule that runs specified day of the week.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? day;

  /// Duration of the time window, set by service producer.
  ///
  /// Output only.
  core.String? duration;

  /// Time within the window to start the operations.
  TimeOfDay? startTime;

  Schedule({
    this.day,
    this.duration,
    this.startTime,
  });

  Schedule.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.String : null,
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? TimeOfDay.fromJson(
                  _json['startTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (duration != null) 'duration': duration!,
        if (startTime != null) 'startTime': startTime!.toJson(),
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy? policy;

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!.toJson(),
      };
}

/// Represents the SQL instance integrated with Managed AD.
class SqlIntegration {
  /// The time the SQL integration was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The unique name of the SQL integration in the form of
  /// `projects/{project_id}/locations/global/domains/{domain_name}/sqlIntegrations/{sql_integration}`
  core.String? name;

  /// The full resource name of an integrated SQL instance
  core.String? sqlInstance;

  /// The current state of the SQL integration.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not Set
  /// - "CREATING" : The SQL integration is being created.
  /// - "DELETING" : The SQL integration is being deleted.
  /// - "READY" : The SQL integration is ready.
  core.String? state;

  /// The time the SQL integration was updated.
  ///
  /// Output only.
  core.String? updateTime;

  SqlIntegration({
    this.createTime,
    this.name,
    this.sqlInstance,
    this.state,
    this.updateTime,
  });

  SqlIntegration.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sqlInstance: _json.containsKey('sqlInstance')
              ? _json['sqlInstance'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (sqlInstance != null) 'sqlInstance': sqlInstance!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  Status({
    this.code,
    this.details,
    this.message,
  });

  Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map<core.Map<core.String, core.Object>>((value) =>
                      (value as core.Map<core.String, core.dynamic>).map(
                        (key, item) => core.MapEntry(
                          key,
                          item as core.Object,
                        ),
                      ))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  TestIamPermissionsRequest({
    this.permissions,
  });

  TestIamPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  TestIamPermissionsResponse({
    this.permissions,
  });

  TestIamPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDay {
  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23. An API may choose to allow the value "24:00:00"
  /// for scenarios like business closing time.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59.
  core.int? minutes;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59. An API may allow the value 60 if it allows
  /// leap-seconds.
  core.int? seconds;

  TimeOfDay({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  TimeOfDay.fromJson(core.Map _json)
      : this(
          hours: _json.containsKey('hours') ? _json['hours'] as core.int : null,
          minutes: _json.containsKey('minutes')
              ? _json['minutes'] as core.int
              : null,
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          seconds: _json.containsKey('seconds')
              ? _json['seconds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hours != null) 'hours': hours!,
        if (minutes != null) 'minutes': minutes!,
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
      };
}

/// Represents a relationship between two domains.
///
/// This allows a controller in one domain to authenticate a user in another
/// domain. If the trust is being changed, it will be placed into the UPDATING
/// state, which indicates that the resource is being reconciled. At this point,
/// Get will reflect an intermediate state.
class Trust {
  /// The time the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The last heartbeat time when the trust was known to be connected.
  ///
  /// Output only.
  core.String? lastTrustHeartbeatTime;

  /// The trust authentication type, which decides whether the trusted side has
  /// forest/domain wide access or selective access to an approved set of
  /// resources.
  ///
  /// Optional.
  core.bool? selectiveAuthentication;

  /// The current state of the trust.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "CREATING" : The domain trust is being created.
  /// - "UPDATING" : The domain trust is being updated.
  /// - "DELETING" : The domain trust is being deleted.
  /// - "CONNECTED" : The domain trust is connected.
  /// - "DISCONNECTED" : The domain trust is disconnected.
  core.String? state;

  /// Additional information about the current state of the trust, if available.
  ///
  /// Output only.
  core.String? stateDescription;

  /// The target DNS server IP addresses which can resolve the remote domain
  /// involved in the trust.
  ///
  /// Required.
  core.List<core.String>? targetDnsIpAddresses;

  /// The fully qualified target domain name which will be in trust with the
  /// current domain.
  ///
  /// Required.
  core.String? targetDomainName;

  /// The trust direction, which decides if the current domain is trusted,
  /// trusting, or both.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TRUST_DIRECTION_UNSPECIFIED" : Not set.
  /// - "INBOUND" : The inbound direction represents the trusting side.
  /// - "OUTBOUND" : The outboud direction represents the trusted side.
  /// - "BIDIRECTIONAL" : The bidirectional direction represents the trusted /
  /// trusting side.
  core.String? trustDirection;

  /// The trust secret used for the handshake with the target domain.
  ///
  /// This will not be stored.
  ///
  /// Required.
  core.String? trustHandshakeSecret;

  /// The type of trust represented by the trust resource.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TRUST_TYPE_UNSPECIFIED" : Not set.
  /// - "FOREST" : The forest trust.
  /// - "EXTERNAL" : The external domain trust.
  core.String? trustType;

  /// The last update time.
  ///
  /// Output only.
  core.String? updateTime;

  Trust({
    this.createTime,
    this.lastTrustHeartbeatTime,
    this.selectiveAuthentication,
    this.state,
    this.stateDescription,
    this.targetDnsIpAddresses,
    this.targetDomainName,
    this.trustDirection,
    this.trustHandshakeSecret,
    this.trustType,
    this.updateTime,
  });

  Trust.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          lastTrustHeartbeatTime: _json.containsKey('lastTrustHeartbeatTime')
              ? _json['lastTrustHeartbeatTime'] as core.String
              : null,
          selectiveAuthentication: _json.containsKey('selectiveAuthentication')
              ? _json['selectiveAuthentication'] as core.bool
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateDescription: _json.containsKey('stateDescription')
              ? _json['stateDescription'] as core.String
              : null,
          targetDnsIpAddresses: _json.containsKey('targetDnsIpAddresses')
              ? (_json['targetDnsIpAddresses'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          targetDomainName: _json.containsKey('targetDomainName')
              ? _json['targetDomainName'] as core.String
              : null,
          trustDirection: _json.containsKey('trustDirection')
              ? _json['trustDirection'] as core.String
              : null,
          trustHandshakeSecret: _json.containsKey('trustHandshakeSecret')
              ? _json['trustHandshakeSecret'] as core.String
              : null,
          trustType: _json.containsKey('trustType')
              ? _json['trustType'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (lastTrustHeartbeatTime != null)
          'lastTrustHeartbeatTime': lastTrustHeartbeatTime!,
        if (selectiveAuthentication != null)
          'selectiveAuthentication': selectiveAuthentication!,
        if (state != null) 'state': state!,
        if (stateDescription != null) 'stateDescription': stateDescription!,
        if (targetDnsIpAddresses != null)
          'targetDnsIpAddresses': targetDnsIpAddresses!,
        if (targetDomainName != null) 'targetDomainName': targetDomainName!,
        if (trustDirection != null) 'trustDirection': trustDirection!,
        if (trustHandshakeSecret != null)
          'trustHandshakeSecret': trustHandshakeSecret!,
        if (trustType != null) 'trustType': trustType!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Maintenance policy applicable to instance updates.
class UpdatePolicy {
  /// Relative scheduling channel applied to resource.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "UPDATE_CHANNEL_UNSPECIFIED" : Unspecified channel.
  /// - "EARLIER" : Early channel within a customer project.
  /// - "LATER" : Later channel within a customer project.
  core.String? channel;

  /// Deny Maintenance Period that is applied to resource to indicate when
  /// maintenance is forbidden.
  ///
  /// User can specify zero or more non-overlapping deny periods. Maximum number
  /// of deny_maintenance_periods expected is one.
  core.List<DenyMaintenancePeriod>? denyMaintenancePeriods;

  /// Maintenance window that is applied to resources covered by this policy.
  ///
  /// Optional.
  MaintenanceWindow? window;

  UpdatePolicy({
    this.channel,
    this.denyMaintenancePeriods,
    this.window,
  });

  UpdatePolicy.fromJson(core.Map _json)
      : this(
          channel: _json.containsKey('channel')
              ? _json['channel'] as core.String
              : null,
          denyMaintenancePeriods: _json.containsKey('denyMaintenancePeriods')
              ? (_json['denyMaintenancePeriods'] as core.List)
                  .map<DenyMaintenancePeriod>((value) =>
                      DenyMaintenancePeriod.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          window: _json.containsKey('window')
              ? MaintenanceWindow.fromJson(
                  _json['window'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
        if (denyMaintenancePeriods != null)
          'denyMaintenancePeriods':
              denyMaintenancePeriods!.map((value) => value.toJson()).toList(),
        if (window != null) 'window': window!.toJson(),
      };
}

/// Request message for ValidateTrust
class ValidateTrustRequest {
  /// The domain trust to validate trust state for.
  ///
  /// Required.
  Trust? trust;

  ValidateTrustRequest({
    this.trust,
  });

  ValidateTrustRequest.fromJson(core.Map _json)
      : this(
          trust: _json.containsKey('trust')
              ? Trust.fromJson(
                  _json['trust'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trust != null) 'trust': trust!.toJson(),
      };
}

/// Time window specified for weekly operations.
class WeeklyCycle {
  /// User can specify multiple windows in a week.
  ///
  /// Minimum of 1 window.
  core.List<Schedule>? schedule;

  WeeklyCycle({
    this.schedule,
  });

  WeeklyCycle.fromJson(core.Map _json)
      : this(
          schedule: _json.containsKey('schedule')
              ? (_json['schedule'] as core.List)
                  .map<Schedule>((value) => Schedule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (schedule != null)
          'schedule': schedule!.map((value) => value.toJson()).toList(),
      };
}
