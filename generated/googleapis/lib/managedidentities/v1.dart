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
///         - [ProjectsLocationsGlobalDomainsBackupsResource]
///         - [ProjectsLocationsGlobalDomainsSqlIntegrationsResource]
///       - [ProjectsLocationsGlobalOperationsResource]
///       - [ProjectsLocationsGlobalPeeringsResource]
library managedidentities.v1;

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  ProjectsLocationsGlobalDomainsBackupsResource get backups =>
      ProjectsLocationsGlobalDomainsBackupsResource(_requester);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':attachTrust';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (domainName != null) 'domainName': [domainName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/domains';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':detachTrust';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Extend Schema for Domain
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [domain] - Required. The domain resource name using the form:
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
  async.Future<Operation> extendSchema(
    ExtendSchemaRequest request,
    core.String domain, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$domain') + ':extendSchema';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Domain.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/ldapssettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LDAPSSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/domains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDomainsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reconfigureTrust';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resetAdminPassword';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ResetAdminPasswordResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// RestoreDomain restores domain backup mentioned in the RestoreDomainRequest
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for the domain to which the backup
  /// belongs
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
  async.Future<Operation> restore(
    RestoreDomainRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/ldapssettings';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':validateTrust';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlobalDomainsBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalDomainsBackupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Backup for a domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The domain resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [backupId] - Required. Backup Id, unique name to identify the backups with
  /// the following restrictions: * Must be lowercase letters, numbers, and
  /// hyphens * Must start with a letter. * Must contain between 1-63
  /// characters. * Must end with a number or a letter. * Must be unique within
  /// the domain.
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
    Backup request,
    core.String parent, {
    core.String? backupId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupId != null) 'backupId': [backupId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes identified Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The backup resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}/backups/{backup_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+/backups/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The backup resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}/backups/{backup_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Backup> get(
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
    return Backup.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Backup in a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The domain resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter specifying constraints of a list operation.
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
  /// [pageToken] - Optional. The `next_page_token` value returned from a
  /// previous List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the labels for specified Backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The unique name of the Backup in the form of
  /// `projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. The elements of the repeated paths field may
  /// only include these fields from Backup: * `labels`
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
    Backup request,
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+/backups/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/domains/\[^/\]+/backups/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SqlIntegration.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sqlIntegrations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSqlIntegrationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [peeringId] - Required. Peering Id, unique name to identify peering. It
  /// should follow the regex format
  /// "^(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?)$"
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (peeringId != null) 'peeringId': [peeringId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/peerings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Peering.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/peerings/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/peerings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPeeringsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  AttachTrustRequest.fromJson(core.Map json_)
      : this(
          trust: json_.containsKey('trust')
              ? Trust.fromJson(
                  json_['trust'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trust != null) 'trust': trust!,
      };
}

/// Represents a Managed Microsoft Identities backup.
class Backup {
  /// The time the backups was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Resource labels to represent user provided metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The unique name of the Backup in the form of
  /// `projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}`
  ///
  /// Output only.
  core.String? name;

  /// The current state of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "CREATING" : Backup is being created.
  /// - "ACTIVE" : Backup has been created and validated.
  /// - "FAILED" : Backup has been created but failed validation.
  /// - "DELETING" : Backup is being deleted.
  core.String? state;

  /// Additional information about the current status of this backup, if
  /// available.
  ///
  /// Output only.
  core.String? statusMessage;

  /// Indicates whether it’s an on-demand backup or scheduled.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Backup was manually created.
  /// - "ON_DEMAND" : Backup was manually created.
  /// - "SCHEDULED" : Backup was automatically created.
  core.String? type;

  /// Last update time.
  ///
  /// Output only.
  core.String? updateTime;

  Backup({
    this.createTime,
    this.labels,
    this.name,
    this.state,
    this.statusMessage,
    this.type,
    this.updateTime,
  });

  Backup.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          statusMessage: json_.containsKey('statusMessage')
              ? json_['statusMessage'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Associates `members`, or principals, with a `role`.
class Binding {
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
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
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

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

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

  Certificate.fromJson(core.Map json_)
      : this(
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          issuingCertificate: json_.containsKey('issuingCertificate')
              ? Certificate.fromJson(json_['issuingCertificate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subject: json_.containsKey('subject')
              ? json_['subject'] as core.String
              : null,
          subjectAlternativeName: json_.containsKey('subjectAlternativeName')
              ? (json_['subjectAlternativeName'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          thumbprint: json_.containsKey('thumbprint')
              ? json_['thumbprint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (issuingCertificate != null)
          'issuingCertificate': issuingCertificate!,
        if (subject != null) 'subject': subject!,
        if (subjectAlternativeName != null)
          'subjectAlternativeName': subjectAlternativeName!,
        if (thumbprint != null) 'thumbprint': thumbprint!,
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

  DetachTrustRequest.fromJson(core.Map json_)
      : this(
          trust: json_.containsKey('trust')
              ? Trust.fromJson(
                  json_['trust'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trust != null) 'trust': trust!,
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

  Domain.fromJson(core.Map json_)
      : this(
          admin:
              json_.containsKey('admin') ? json_['admin'] as core.String : null,
          auditLogsEnabled: json_.containsKey('auditLogsEnabled')
              ? json_['auditLogsEnabled'] as core.bool
              : null,
          authorizedNetworks: json_.containsKey('authorizedNetworks')
              ? (json_['authorizedNetworks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          fqdn: json_.containsKey('fqdn') ? json_['fqdn'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reservedIpRange: json_.containsKey('reservedIpRange')
              ? json_['reservedIpRange'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          statusMessage: json_.containsKey('statusMessage')
              ? json_['statusMessage'] as core.String
              : null,
          trusts: json_.containsKey('trusts')
              ? (json_['trusts'] as core.List)
                  .map((value) => Trust.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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
        if (trusts != null) 'trusts': trusts!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

/// ExtendSchemaRequest is the request message for ExtendSchema method.
class ExtendSchemaRequest {
  /// Description for Schema Change.
  ///
  /// Required.
  core.String? description;

  /// File uploaded as a byte stream input.
  core.String? fileContents;
  core.List<core.int> get fileContentsAsBytes =>
      convert.base64.decode(fileContents!);

  set fileContentsAsBytes(core.List<core.int> bytes_) {
    fileContents =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// File stored in Cloud Storage bucket and represented in the form
  /// projects/{project_id}/buckets/{bucket_name}/objects/{object_name} File
  /// should be in the same project as the domain.
  core.String? gcsPath;

  ExtendSchemaRequest({
    this.description,
    this.fileContents,
    this.gcsPath,
  });

  ExtendSchemaRequest.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          fileContents: json_.containsKey('fileContents')
              ? json_['fileContents'] as core.String
              : null,
          gcsPath: json_.containsKey('gcsPath')
              ? json_['gcsPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (fileContents != null) 'fileContents': fileContents!,
        if (gcsPath != null) 'gcsPath': gcsPath!,
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

  set certificatePfxAsBytes(core.List<core.int> bytes_) {
    certificatePfx =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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

  LDAPSSettings.fromJson(core.Map json_)
      : this(
          certificate: json_.containsKey('certificate')
              ? Certificate.fromJson(
                  json_['certificate'] as core.Map<core.String, core.dynamic>)
              : null,
          certificatePassword: json_.containsKey('certificatePassword')
              ? json_['certificatePassword'] as core.String
              : null,
          certificatePfx: json_.containsKey('certificatePfx')
              ? json_['certificatePfx'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificate != null) 'certificate': certificate!,
        if (certificatePassword != null)
          'certificatePassword': certificatePassword!,
        if (certificatePfx != null) 'certificatePfx': certificatePfx!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// ListBackupsResponse is the response message for ListBackups method.
class ListBackupsResponse {
  /// A list of Cloud AD backups in the domain.
  core.List<Backup>? backups;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupsResponse({
    this.backups,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackupsResponse.fromJson(core.Map json_)
      : this(
          backups: json_.containsKey('backups')
              ? (json_['backups'] as core.List)
                  .map((value) => Backup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backups != null) 'backups': backups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
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

  ListDomainsResponse.fromJson(core.Map json_)
      : this(
          domains: json_.containsKey('domains')
              ? (json_['domains'] as core.List)
                  .map((value) => Domain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domains != null) 'domains': domains!,
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

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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

  ListPeeringsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          peerings: json_.containsKey('peerings')
              ? (json_['peerings'] as core.List)
                  .map((value) => Peering.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (peerings != null) 'peerings': peerings!,
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

  ListSqlIntegrationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          sqlIntegrations: json_.containsKey('sqlIntegrations')
              ? (json_['sqlIntegrations'] as core.List)
                  .map((value) => SqlIntegration.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sqlIntegrations != null) 'sqlIntegrations': sqlIntegrations!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

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

  Peering.fromJson(core.Map json_)
      : this(
          authorizedNetwork: json_.containsKey('authorizedNetwork')
              ? json_['authorizedNetwork'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          domainResource: json_.containsKey('domainResource')
              ? json_['domainResource'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          statusMessage: json_.containsKey('statusMessage')
              ? json_['statusMessage'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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
class Policy {
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

  Policy({
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bindings != null) 'bindings': bindings!,
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

  ReconfigureTrustRequest.fromJson(core.Map json_)
      : this(
          targetDnsIpAddresses: json_.containsKey('targetDnsIpAddresses')
              ? (json_['targetDnsIpAddresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetDomainName: json_.containsKey('targetDomainName')
              ? json_['targetDomainName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetDnsIpAddresses != null)
          'targetDnsIpAddresses': targetDnsIpAddresses!,
        if (targetDomainName != null) 'targetDomainName': targetDomainName!,
      };
}

/// Request message for ResetAdminPassword
typedef ResetAdminPasswordRequest = $Empty;

/// Response message for ResetAdminPassword
class ResetAdminPasswordResponse {
  /// A random password.
  ///
  /// See admin for more information.
  core.String? password;

  ResetAdminPasswordResponse({
    this.password,
  });

  ResetAdminPasswordResponse.fromJson(core.Map json_)
      : this(
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (password != null) 'password': password!,
      };
}

/// RestoreDomainRequest is the request received by RestoreDomain rpc
class RestoreDomainRequest {
  /// ID of the backup to be restored
  ///
  /// Required.
  core.String? backupId;

  RestoreDomainRequest({
    this.backupId,
  });

  RestoreDomainRequest.fromJson(core.Map json_)
      : this(
          backupId: json_.containsKey('backupId')
              ? json_['backupId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupId != null) 'backupId': backupId!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
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

  SqlIntegration.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sqlInstance: json_.containsKey('sqlInstance')
              ? json_['sqlInstance'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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
typedef Status = $Status;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

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

  Trust.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          lastTrustHeartbeatTime: json_.containsKey('lastTrustHeartbeatTime')
              ? json_['lastTrustHeartbeatTime'] as core.String
              : null,
          selectiveAuthentication: json_.containsKey('selectiveAuthentication')
              ? json_['selectiveAuthentication'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateDescription: json_.containsKey('stateDescription')
              ? json_['stateDescription'] as core.String
              : null,
          targetDnsIpAddresses: json_.containsKey('targetDnsIpAddresses')
              ? (json_['targetDnsIpAddresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetDomainName: json_.containsKey('targetDomainName')
              ? json_['targetDomainName'] as core.String
              : null,
          trustDirection: json_.containsKey('trustDirection')
              ? json_['trustDirection'] as core.String
              : null,
          trustHandshakeSecret: json_.containsKey('trustHandshakeSecret')
              ? json_['trustHandshakeSecret'] as core.String
              : null,
          trustType: json_.containsKey('trustType')
              ? json_['trustType'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

/// Request message for ValidateTrust
class ValidateTrustRequest {
  /// The domain trust to validate trust state for.
  ///
  /// Required.
  Trust? trust;

  ValidateTrustRequest({
    this.trust,
  });

  ValidateTrustRequest.fromJson(core.Map json_)
      : this(
          trust: json_.containsKey('trust')
              ? Trust.fromJson(
                  json_['trust'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trust != null) 'trust': trust!,
      };
}
