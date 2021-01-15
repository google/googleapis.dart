// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import

library googleapis.managedidentities.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client managedidentities/v1';

/// The Managed Service for Microsoft Active Directory API is used for managing
/// a highly available, hardened service running Microsoft Active Directory
/// (AD).
class ManagedidentitiesApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  ManagedidentitiesApi(http.Client client,
      {core.String rootUrl = 'https://managedidentities.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalResourceApi get global =>
      ProjectsLocationsGlobalResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Location.fromJson(data));
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [includeUnrevealedLocations] - If true, the returned list will include
  /// locations which are not yet revealed.
  ///
  /// [pageSize] - The standard list page size.
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
    core.String filter,
    core.String pageToken,
    core.bool includeUnrevealedLocations,
    core.int pageSize,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (includeUnrevealedLocations != null) {
      _queryParams['includeUnrevealedLocations'] = [
        '${includeUnrevealedLocations}'
      ];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListLocationsResponse.fromJson(data));
  }
}

class ProjectsLocationsGlobalResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalDomainsResourceApi get domains =>
      ProjectsLocationsGlobalDomainsResourceApi(_requester);
  ProjectsLocationsGlobalOperationsResourceApi get operations =>
      ProjectsLocationsGlobalOperationsResourceApi(_requester);

  ProjectsLocationsGlobalResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsGlobalDomainsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalDomainsResourceApi(commons.ApiRequester client)
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
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':attachTrust';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Creates a Microsoft AD domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource project name and location using the
  /// form: `projects/{project_id}/locations/global`
  /// Value must have pattern "^projects/[^/]+/locations/global$".
  ///
  /// [domainName] - Required. The fully qualified domain name. e.g.
  /// mydomain.myorganization.com, with the following restrictions: * Must
  /// contain only lowercase letters, numbers, periods and hyphens. * Must start
  /// with a letter. * Must contain between 2-64 characters. * Must end with a
  /// number or a letter. * Must not start with period. * First segement length
  /// (mydomain form example above) shouldn't exceed 15 chars. * The last
  /// segment cannot be fully numeric. * Must be unique within the customer
  /// project.
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
    core.String domainName,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (domainName != null) {
      _queryParams['domainName'] = [domainName];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/domains';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Deletes a domain.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The domain resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':detachTrust';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Gets information about a domain.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The domain resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Domain.fromJson(data));
  }

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams['options.requestedPolicyVersion'] = [
        '${options_requestedPolicyVersion}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Policy.fromJson(data));
  }

  /// Lists domains in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the domain location using the
  /// form: `projects/{project_id}/locations/global`
  /// Value must have pattern "^projects/[^/]+/locations/global$".
  ///
  /// [pageToken] - Optional. The `next_page_token` value returned from a
  /// previous ListDomainsRequest request, if any.
  ///
  /// [orderBy] - Optional. Specifies the ordering of results. See [Sorting
  /// order](https://cloud.google.com/apis/design/design_patterns#sorting_order)
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If not
  /// specified, a default value of 1000 will be used. Regardless of the
  /// page_size value, the response may include a partial list. Callers should
  /// rely on a response's next_page_token to determine if there are additional
  /// results to list.
  ///
  /// [filter] - Optional. A filter specifying constraints of a list operation.
  /// For example, `Domain.fqdn="mydomain.myorginization"`.
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
    core.String pageToken,
    core.String orderBy,
    core.int pageSize,
    core.String filter,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/domains';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListDomainsResponse.fromJson(data));
  }

  /// Updates the metadata and configuration of a domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the domain using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`.
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. The elements of the repeated paths field may
  /// only include fields from Domain: * `labels` * `locations` *
  /// `authorized_networks`
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
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':reconfigureTrust';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Resets a domain's administrator password.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The domain resource name using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':resetAdminPassword';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ResetAdminPasswordResponse.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and
  /// `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource. If the
  /// resource does not exist, this will return an empty set of permissions, not
  /// a `NOT_FOUND` error. Note: This operation is designed to be used for
  /// building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TestIamPermissionsResponse.fromJson(data));
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
  /// Value must have pattern "^projects/[^/]+/locations/global/domains/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':validateTrust';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class ProjectsLocationsGlobalOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation. The server
  /// makes a best effort to cancel the operation, but success is not
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
  /// "^projects/[^/]+/locations/global/operations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/operations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/global/operations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the
  /// `name` binding allows API services to override the binding to use
  /// different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^projects/[^/]+/locations/global/operations$".
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [filter] - The standard list filter.
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
    core.int pageSize,
    core.String pageToken,
    core.String filter,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListOperationsResponse.fromJson(data));
  }
}

/// Request message for AttachTrust
class AttachTrustRequest {
  /// Required. The domain trust resource.
  Trust trust;

  AttachTrustRequest();

  AttachTrustRequest.fromJson(core.Map _json) {
    if (_json.containsKey('trust')) {
      trust = Trust.fromJson(_json['trust']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (trust != null) {
      _json['trust'] = trust.toJson();
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// A client-specified ID for this binding. Expected to be globally unique to
  /// support the internal bindings-by-ID API.
  core.String bindingId;

  /// The condition that is associated with this binding. If the condition
  /// evaluates to `true`, then this binding applies to the current request. If
  /// the condition evaluates to `false`, then this binding does not apply to
  /// the current request. However, a different role binding might grant the
  /// same role to one or more of the members in this binding. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
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
  core.List<core.String> members;

  /// Role that is assigned to `members`. For example, `roles/viewer`,
  /// `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('bindingId')) {
      bindingId = _json['bindingId'];
    }
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(_json['condition']);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('role')) {
      role = _json['role'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (bindingId != null) {
      _json['bindingId'] = bindingId;
    }
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (members != null) {
      _json['members'] = members;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Request message for DetachTrust
class DetachTrustRequest {
  /// Required. The domain trust resource to removed.
  Trust trust;

  DetachTrustRequest();

  DetachTrustRequest.fromJson(core.Map _json) {
    if (_json.containsKey('trust')) {
      trust = Trust.fromJson(_json['trust']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (trust != null) {
      _json['trust'] = trust.toJson();
    }
    return _json;
  }
}

/// Represents a managed Microsoft Active Directory domain.
class Domain {
  /// Optional. The name of delegated administrator account used to perform
  /// Active Directory operations. If not specified, `setupadmin` will be used.
  core.String admin;

  /// Optional. The full names of the Google Compute Engine
  /// [networks](/compute/docs/networks-and-firewalls#networks) the domain
  /// instance is connected to. Networks can be added using UpdateDomain. The
  /// domain is only available on networks listed in `authorized_networks`. If
  /// CIDR subnets overlap between networks, domain creation will fail.
  core.List<core.String> authorizedNetworks;

  /// Output only. The time the instance was created.
  core.String createTime;

  /// Output only. The fully-qualified domain name of the exposed domain used by
  /// clients to connect to the service. Similar to what would be chosen for an
  /// Active Directory set up on an internal network.
  core.String fqdn;

  /// Optional. Resource labels that can contain user-provided metadata.
  core.Map<core.String, core.String> labels;

  /// Required. Locations where domain needs to be provisioned. regions e.g.
  /// us-west1 or us-east4 Service supports up to 4 locations at once. Each
  /// location will use a /26 block.
  core.List<core.String> locations;

  /// Required. The unique name of the domain using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`.
  core.String name;

  /// Required. The CIDR range of internal addresses that are reserved for this
  /// domain. Reserved networks must be /24 or larger. Ranges must be unique and
  /// non-overlapping with existing subnets in [Domain].[authorized_networks].
  core.String reservedIpRange;

  /// Output only. The current state of this domain.
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
  core.String state;

  /// Output only. Additional information about the current status of this
  /// domain, if available.
  core.String statusMessage;

  /// Output only. The current trusts associated with the domain.
  core.List<Trust> trusts;

  /// Output only. The last update time.
  core.String updateTime;

  Domain();

  Domain.fromJson(core.Map _json) {
    if (_json.containsKey('admin')) {
      admin = _json['admin'];
    }
    if (_json.containsKey('authorizedNetworks')) {
      authorizedNetworks =
          (_json['authorizedNetworks'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('fqdn')) {
      fqdn = _json['fqdn'];
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('reservedIpRange')) {
      reservedIpRange = _json['reservedIpRange'];
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('statusMessage')) {
      statusMessage = _json['statusMessage'];
    }
    if (_json.containsKey('trusts')) {
      trusts = (_json['trusts'] as core.List)
          .map<Trust>((value) => Trust.fromJson(value))
          .toList();
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (admin != null) {
      _json['admin'] = admin;
    }
    if (authorizedNetworks != null) {
      _json['authorizedNetworks'] = authorizedNetworks;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (fqdn != null) {
      _json['fqdn'] = fqdn;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (locations != null) {
      _json['locations'] = locations;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (reservedIpRange != null) {
      _json['reservedIpRange'] = reservedIpRange;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (statusMessage != null) {
      _json['statusMessage'] = statusMessage;
    }
    if (trusts != null) {
      _json['trusts'] = trusts.map((value) => value.toJson()).toList();
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax. CEL is a C-like expression language. The syntax and semantics of CEL
/// are documented at https://github.com/google/cel-spec. Example (Comparison):
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
  /// Optional. Description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// Optional. String indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// Optional. Title for the expression, i.e. a short string describing its
  /// purpose. This can be used e.g. in UIs which allow to enter the expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'];
    }
    if (_json.containsKey('location')) {
      location = _json['location'];
    }
    if (_json.containsKey('title')) {
      title = _json['title'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (expression != null) {
      _json['expression'] = expression;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Represents the metadata of the long-running operation.
class GoogleCloudManagedidentitiesV1OpMetadata {
  /// Output only. API version used to start the operation.
  core.String apiVersion;

  /// Output only. The time the operation was created.
  core.String createTime;

  /// Output only. The time the operation finished running.
  core.String endTime;

  /// Output only. Identifies whether the user has requested cancellation of the
  /// operation. Operations that have successfully been cancelled have
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  core.bool requestedCancellation;

  /// Output only. Server-defined resource path for the target of the operation.
  core.String target;

  /// Output only. Name of the verb executed by the operation.
  core.String verb;

  GoogleCloudManagedidentitiesV1OpMetadata();

  GoogleCloudManagedidentitiesV1OpMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('requestedCancellation')) {
      requestedCancellation = _json['requestedCancellation'];
    }
    if (_json.containsKey('target')) {
      target = _json['target'];
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (apiVersion != null) {
      _json['apiVersion'] = apiVersion;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (requestedCancellation != null) {
      _json['requestedCancellation'] = requestedCancellation;
    }
    if (target != null) {
      _json['target'] = target;
    }
    if (verb != null) {
      _json['verb'] = verb;
    }
    return _json;
  }
}

/// Represents the metadata of the long-running operation.
class GoogleCloudManagedidentitiesV1alpha1OpMetadata {
  /// Output only. API version used to start the operation.
  core.String apiVersion;

  /// Output only. The time the operation was created.
  core.String createTime;

  /// Output only. The time the operation finished running.
  core.String endTime;

  /// Output only. Identifies whether the user has requested cancellation of the
  /// operation. Operations that have successfully been cancelled have
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  core.bool requestedCancellation;

  /// Output only. Server-defined resource path for the target of the operation.
  core.String target;

  /// Output only. Name of the verb executed by the operation.
  core.String verb;

  GoogleCloudManagedidentitiesV1alpha1OpMetadata();

  GoogleCloudManagedidentitiesV1alpha1OpMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('requestedCancellation')) {
      requestedCancellation = _json['requestedCancellation'];
    }
    if (_json.containsKey('target')) {
      target = _json['target'];
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (apiVersion != null) {
      _json['apiVersion'] = apiVersion;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (requestedCancellation != null) {
      _json['requestedCancellation'] = requestedCancellation;
    }
    if (target != null) {
      _json['target'] = target;
    }
    if (verb != null) {
      _json['verb'] = verb;
    }
    return _json;
  }
}

/// Represents the metadata of the long-running operation.
class GoogleCloudManagedidentitiesV1beta1OpMetadata {
  /// Output only. API version used to start the operation.
  core.String apiVersion;

  /// Output only. The time the operation was created.
  core.String createTime;

  /// Output only. The time the operation finished running.
  core.String endTime;

  /// Output only. Identifies whether the user has requested cancellation of the
  /// operation. Operations that have successfully been cancelled have
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  core.bool requestedCancellation;

  /// Output only. Server-defined resource path for the target of the operation.
  core.String target;

  /// Output only. Name of the verb executed by the operation.
  core.String verb;

  GoogleCloudManagedidentitiesV1beta1OpMetadata();

  GoogleCloudManagedidentitiesV1beta1OpMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('requestedCancellation')) {
      requestedCancellation = _json['requestedCancellation'];
    }
    if (_json.containsKey('target')) {
      target = _json['target'];
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (apiVersion != null) {
      _json['apiVersion'] = apiVersion;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (requestedCancellation != null) {
      _json['requestedCancellation'] = requestedCancellation;
    }
    if (target != null) {
      _json['target'] = target;
    }
    if (verb != null) {
      _json['verb'] = verb;
    }
    return _json;
  }
}

class GoogleCloudSaasacceleratorManagementProvidersV1Instance {
  /// consumer_defined_name is the name that is set by the consumer. On the
  /// other hand Name field represents system-assigned id of an instance so
  /// consumers are not necessarily aware of it. consumer_defined_name is used
  /// for notification/UI purposes for consumer to recognize their instances.
  core.String consumerDefinedName;

  /// Output only. Timestamp when the resource was created.
  core.String createTime;

  /// Optional. Resource labels to represent user provided metadata. Each label
  /// is a key-value pair, where both the key and the value are arbitrary
  /// strings provided by the user.
  core.Map<core.String, core.String> labels;

  /// The MaintenancePolicies that have been attached to the instance. The key
  /// must be of the type name of the oneof policy name defined in
  /// MaintenancePolicy, and the referenced policy must define the same policy
  /// type. For complete details of MaintenancePolicy, please refer to
  /// go/cloud-saas-mw-ug.
  core.Map<core.String, core.String> maintenancePolicyNames;

  /// The MaintenanceSchedule contains the scheduling information of published
  /// maintenance schedule.
  core.Map<core.String,
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
      maintenanceSchedules;

  /// Optional. The MaintenanceSettings associated with instance.
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
      maintenanceSettings;

  /// Unique name of the resource. It uses the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  core.String name;

  /// Output only. Custom string attributes used primarily to expose
  /// producer-specific information in monitoring dashboards. See
  /// go/get-instance-metadata.
  core.Map<core.String, core.String> producerMetadata;

  /// Output only. The list of data plane resources provisioned for this
  /// instance, e.g. compute VMs. See go/get-instance-metadata.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
      provisionedResources;

  /// Link to the SLM instance template. Only populated when updating SLM
  /// instances via SSA's Actuation service adaptor. Service producers with
  /// custom control plane (e.g. Cloud SQL) doesn't need to populate this field.
  /// Instead they should use software_versions.
  core.String slmInstanceTemplate;

  /// Output only. SLO metadata for instance classification in the Standardized
  /// dataplane SLO platform. See go/cloud-ssa-standard-slo for feature
  /// description.
  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata sloMetadata;

  /// Software versions that are used to deploy this instance. This can be
  /// mutated by rollout services.
  core.Map<core.String, core.String> softwareVersions;

  /// Output only. Current lifecycle state of the resource (e.g. if it's being
  /// created or ready to use).
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "CREATING" : Instance is being created.
  /// - "READY" : Instance has been created and is ready to use.
  /// - "UPDATING" : Instance is being updated.
  /// - "REPAIRING" : Instance is unheathy and under repair.
  /// - "DELETING" : Instance is being deleted.
  /// - "ERROR" : Instance encountered an error and is in indeterministic state.
  core.String state;

  /// Output only. ID of the associated GCP tenant project. See
  /// go/get-instance-metadata.
  core.String tenantProjectId;

  /// Output only. Timestamp when the resource was last modified.
  core.String updateTime;

  GoogleCloudSaasacceleratorManagementProvidersV1Instance();

  GoogleCloudSaasacceleratorManagementProvidersV1Instance.fromJson(
      core.Map _json) {
    if (_json.containsKey('consumerDefinedName')) {
      consumerDefinedName = _json['consumerDefinedName'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('maintenancePolicyNames')) {
      maintenancePolicyNames = (_json['maintenancePolicyNames'] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey('maintenanceSchedules')) {
      maintenanceSchedules = commons.mapMap<core.Map,
              GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>(
          _json['maintenanceSchedules'].cast<core.String, core.Map>(),
          (core.Map item) =>
              GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
                  .fromJson(item));
    }
    if (_json.containsKey('maintenanceSettings')) {
      maintenanceSettings =
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
              .fromJson(_json['maintenanceSettings']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('producerMetadata')) {
      producerMetadata = (_json['producerMetadata'] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey('provisionedResources')) {
      provisionedResources = (_json['provisionedResources'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('slmInstanceTemplate')) {
      slmInstanceTemplate = _json['slmInstanceTemplate'];
    }
    if (_json.containsKey('sloMetadata')) {
      sloMetadata =
          GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.fromJson(
              _json['sloMetadata']);
    }
    if (_json.containsKey('softwareVersions')) {
      softwareVersions = (_json['softwareVersions'] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('tenantProjectId')) {
      tenantProjectId = _json['tenantProjectId'];
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (consumerDefinedName != null) {
      _json['consumerDefinedName'] = consumerDefinedName;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (maintenancePolicyNames != null) {
      _json['maintenancePolicyNames'] = maintenancePolicyNames;
    }
    if (maintenanceSchedules != null) {
      _json['maintenanceSchedules'] = commons.mapMap<
              GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule,
              core.Map<core.String, core.Object>>(
          maintenanceSchedules,
          (GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
                  item) =>
              item.toJson());
    }
    if (maintenanceSettings != null) {
      _json['maintenanceSettings'] = maintenanceSettings.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (producerMetadata != null) {
      _json['producerMetadata'] = producerMetadata;
    }
    if (provisionedResources != null) {
      _json['provisionedResources'] =
          provisionedResources.map((value) => value.toJson()).toList();
    }
    if (slmInstanceTemplate != null) {
      _json['slmInstanceTemplate'] = slmInstanceTemplate;
    }
    if (sloMetadata != null) {
      _json['sloMetadata'] = sloMetadata.toJson();
    }
    if (softwareVersions != null) {
      _json['softwareVersions'] = softwareVersions;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (tenantProjectId != null) {
      _json['tenantProjectId'] = tenantProjectId;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Maintenance schedule which is exposed to customer and potentially end user,
/// indicating published upcoming future maintenance schedule
class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule {
  /// Can this scheduled update be rescheduled? By default, it's true and API
  /// needs to do explicitly check whether it's set, if it's set as false
  /// explicitly, it's false
  core.bool canReschedule;

  /// The scheduled end time for the maintenance.
  core.String endTime;

  /// The rollout management policy this maintenance schedule is associated
  /// with. When doing reschedule update request, the reschedule should be
  /// against this given policy.
  core.String rolloutManagementPolicy;

  /// The scheduled start time for the maintenance.
  core.String startTime;

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule.fromJson(
      core.Map _json) {
    if (_json.containsKey('canReschedule')) {
      canReschedule = _json['canReschedule'];
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('rolloutManagementPolicy')) {
      rolloutManagementPolicy = _json['rolloutManagementPolicy'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (canReschedule != null) {
      _json['canReschedule'] = canReschedule;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (rolloutManagementPolicy != null) {
      _json['rolloutManagementPolicy'] = rolloutManagementPolicy;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// Maintenance settings associated with instance. Allows service producers and
/// end users to assign settings that controls maintenance on this instance.
class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings {
  /// Optional. Exclude instance from maintenance. When true, rollout service
  /// will not attempt maintenance on the instance. Rollout service will include
  /// the instance in reported rollout progress as not attempted.
  core.bool exclude;

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings.fromJson(
      core.Map _json) {
    if (_json.containsKey('exclude')) {
      exclude = _json['exclude'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (exclude != null) {
      _json['exclude'] = exclude;
    }
    return _json;
  }
}

/// Node information for custom per-node SLO implementations. SSA does not
/// support per-node SLO, but producers can populate per-node information in
/// SloMetadata for custom precomputations. SSA Eligibility Exporter will emit
/// per-node metric based on this information.
class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata {
  /// By default node is eligible if instance is eligible. But individual node
  /// might be excluded from SLO by adding entry here. For semantic see
  /// SloMetadata.exclusions. If both instance and node level exclusions are
  /// present for time period, the node level's reason will be reported by
  /// Eligibility Exporter.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
      exclusions;

  /// The location of the node, if different from instance location.
  core.String location;

  /// The id of the node. This should be equal to SaasInstanceNode.node_id.
  core.String nodeId;

  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();

  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('exclusions')) {
      exclusions = (_json['exclusions'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('location')) {
      location = _json['location'];
    }
    if (_json.containsKey('nodeId')) {
      nodeId = _json['nodeId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (exclusions != null) {
      _json['exclusions'] = exclusions.map((value) => value.toJson()).toList();
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (nodeId != null) {
      _json['nodeId'] = nodeId;
    }
    return _json;
  }
}

/// Describes provisioned dataplane resources.
class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource {
  /// Type of the resource. This can be either a GCP resource or a custom one
  /// (e.g. another cloud provider's VM). For GCP compute resources use singular
  /// form of the names listed in GCP compute API documentation
  /// (https://cloud.google.com/compute/docs/reference/rest/v1/), prefixed with
  /// 'compute-', for example: 'compute-instance', 'compute-disk',
  /// 'compute-autoscaler'.
  core.String resourceType;

  /// URL identifying the resource, e.g.
  /// "https://www.googleapis.com/compute/v1/projects/...)".
  core.String resourceUrl;

  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource();

  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource.fromJson(
      core.Map _json) {
    if (_json.containsKey('resourceType')) {
      resourceType = _json['resourceType'];
    }
    if (_json.containsKey('resourceUrl')) {
      resourceUrl = _json['resourceUrl'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (resourceType != null) {
      _json['resourceType'] = resourceType;
    }
    if (resourceUrl != null) {
      _json['resourceUrl'] = resourceUrl;
    }
    return _json;
  }
}

/// SloEligibility is a tuple containing eligibility value: true if an instance
/// is eligible for SLO calculation or false if it should be excluded from all
/// SLO-related calculations along with a user-defined reason.
class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility {
  /// Whether an instance is eligible or ineligible.
  core.bool eligible;

  /// User-defined reason for the current value of instance eligibility.
  /// Usually, this can be directly mapped to the internal state. An empty
  /// reason is allowed.
  core.String reason;

  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();

  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility.fromJson(
      core.Map _json) {
    if (_json.containsKey('eligible')) {
      eligible = _json['eligible'];
    }
    if (_json.containsKey('reason')) {
      reason = _json['reason'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (eligible != null) {
      _json['eligible'] = eligible;
    }
    if (reason != null) {
      _json['reason'] = reason;
    }
    return _json;
  }
}

/// SloExclusion represents an exclusion in SLI calculation applies to all SLOs.
class GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion {
  /// Exclusion duration. No restrictions on the possible values. When an
  /// ongoing operation is taking longer than initially expected, an existing
  /// entry in the exclusion list can be updated by extending the duration. This
  /// is supported by the subsystem exporting eligibility data as long as such
  /// extension is committed at least 10 minutes before the original exclusion
  /// expiration - otherwise it is possible that there will be "gaps" in the
  /// exclusion application in the exported timeseries.
  core.String duration;

  /// Human-readable reason for the exclusion. This should be a static string
  /// (e.g. "Disruptive update in progress") and should not contain dynamically
  /// generated data (e.g. instance name). Can be left empty.
  core.String reason;

  /// Name of an SLI that this exclusion applies to. Can be left empty,
  /// signaling that the instance should be excluded from all SLIs defined in
  /// the service SLO configuration.
  core.String sliName;

  /// Start time of the exclusion. No alignment (e.g. to a full minute) needed.
  core.String startTime;

  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();

  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion.fromJson(
      core.Map _json) {
    if (_json.containsKey('duration')) {
      duration = _json['duration'];
    }
    if (_json.containsKey('reason')) {
      reason = _json['reason'];
    }
    if (_json.containsKey('sliName')) {
      sliName = _json['sliName'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (reason != null) {
      _json['reason'] = reason;
    }
    if (sliName != null) {
      _json['sliName'] = sliName;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// SloMetadata contains resources required for proper SLO classification of the
/// instance.
class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata {
  /// Optional. User-defined instance eligibility.
  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility eligibility;

  /// List of SLO exclusion windows. When multiple entries in the list match
  /// (matching the exclusion time-window against current time point) the
  /// exclusion reason used in the first matching entry will be published. It is
  /// not needed to include expired exclusion in this list, as only the
  /// currently applicable exclusions are taken into account by the eligibility
  /// exporting subsystem (the historical state of exclusions will be reflected
  /// in the historically produced timeseries regardless of the current state).
  /// This field can be used to mark the instance as temporary ineligible for
  /// the purpose of SLO calculation. For permanent instance SLO exclusion, use
  /// of custom instance eligibility is recommended. See 'eligibility' field
  /// below.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
      exclusions;

  /// Optional. List of nodes. Some producers need to use per-node metadata to
  /// calculate SLO. This field allows such producers to publish per-node SLO
  /// meta data, which will be consumed by SSA Eligibility Exporter and
  /// published in the form of per node metric to Monarch.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
      nodes;

  /// Name of the SLO tier the Instance belongs to. This name will be expected
  /// to match the tiers specified in the service SLO configuration. Field is
  /// mandatory and must not be empty.
  core.String tier;

  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();

  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('eligibility')) {
      eligibility =
          GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
              .fromJson(_json['eligibility']);
    }
    if (_json.containsKey('exclusions')) {
      exclusions = (_json['exclusions'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('nodes')) {
      nodes = (_json['nodes'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (eligibility != null) {
      _json['eligibility'] = eligibility.toJson();
    }
    if (exclusions != null) {
      _json['exclusions'] = exclusions.map((value) => value.toJson()).toList();
    }
    if (nodes != null) {
      _json['nodes'] = nodes.map((value) => value.toJson()).toList();
    }
    if (tier != null) {
      _json['tier'] = tier;
    }
    return _json;
  }
}

/// Response message for ListDomains
class ListDomainsResponse {
  /// A list of Managed Identities Service domains in the project.
  core.List<Domain> domains;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String> unreachable;

  ListDomainsResponse();

  ListDomainsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('domains')) {
      domains = (_json['domains'] as core.List)
          .map<Domain>((value) => Domain.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (domains != null) {
      _json['domains'] = domains.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (unreachable != null) {
      _json['unreachable'] = unreachable;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List)
          .map<Location>((value) => Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (locations != null) {
      _json['locations'] = locations.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) => Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name. For
  /// example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location. For example
  /// {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location. For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata. For example the available capacity at the given
  /// location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'];
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (locationId != null) {
      _json['locationId'] = locationId;
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation. It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata. Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'];
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(_json['error']);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// Represents the metadata of the long-running operation.
class OperationMetadata {
  /// [Output only] API version used to start the operation.
  core.String apiVersion;

  /// [Output only] Identifies whether the user has requested cancellation of
  /// the operation. Operations that have successfully been cancelled have
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  core.bool cancelRequested;

  /// [Output only] The time the operation was created.
  core.String createTime;

  /// [Output only] The time the operation finished running.
  core.String endTime;

  /// [Output only] Human-readable status of the operation, if any.
  core.String statusDetail;

  /// [Output only] Server-defined resource path for the target of the
  /// operation.
  core.String target;

  /// [Output only] Name of the verb executed by the operation.
  core.String verb;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'];
    }
    if (_json.containsKey('cancelRequested')) {
      cancelRequested = _json['cancelRequested'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('statusDetail')) {
      statusDetail = _json['statusDetail'];
    }
    if (_json.containsKey('target')) {
      target = _json['target'];
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (apiVersion != null) {
      _json['apiVersion'] = apiVersion;
    }
    if (cancelRequested != null) {
      _json['cancelRequested'] = cancelRequested;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (statusDetail != null) {
      _json['statusDetail'] = statusDetail;
    }
    if (target != null) {
      _json['target'] = target;
    }
    if (verb != null) {
      _json['verb'] = verb;
    }
    return _json;
  }
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources. A `Policy` is a collection of
/// `bindings`. A `binding` binds one or more `members` to a single `role`.
/// Members can be user accounts, service accounts, Google groups, and domains
/// (such as G Suite). A `role` is a named list of permissions; each `role` can
/// be an IAM predefined role or a user-created custom role. For some types of
/// Google Cloud resources, a `binding` can also specify a `condition`, which is
/// a logical expression that allows access to a resource only if the expression
/// evaluates to `true`. A condition can add constraints based on attributes of
/// the request, the resource, or both. To learn which resources support
/// conditions in their IAM policies, see the [IAM
/// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the [IAM
/// documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of `members` to a `role`. Optionally, may specify a
  /// `condition` that determines how and when the `bindings` are applied. Each
  /// of the `bindings` must contain at least one member.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other. It is
  /// strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
  /// Requests that specify an invalid value are rejected. Any operation that
  /// affects conditional role bindings must specify version `3`. This
  /// requirement applies to the following operations: * Getting a policy that
  /// includes a conditional role binding * Adding a conditional role binding to
  /// a policy * Changing a conditional role binding in a policy * Removing any
  /// role binding, with or without a condition, from a policy that includes
  /// conditions **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost. If a
  /// policy does not include any conditions, operations on that policy may
  /// specify any valid version or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) => Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
    if (_json.containsKey('version')) {
      version = _json['version'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (bindings != null) {
      _json['bindings'] = bindings.map((value) => value.toJson()).toList();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Request message for ReconfigureTrust
class ReconfigureTrustRequest {
  /// Required. The target DNS server IP addresses to resolve the remote domain
  /// involved in the trust.
  core.List<core.String> targetDnsIpAddresses;

  /// Required. The fully-qualified target domain name which will be in trust
  /// with current domain.
  core.String targetDomainName;

  ReconfigureTrustRequest();

  ReconfigureTrustRequest.fromJson(core.Map _json) {
    if (_json.containsKey('targetDnsIpAddresses')) {
      targetDnsIpAddresses =
          (_json['targetDnsIpAddresses'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('targetDomainName')) {
      targetDomainName = _json['targetDomainName'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (targetDnsIpAddresses != null) {
      _json['targetDnsIpAddresses'] = targetDnsIpAddresses;
    }
    if (targetDomainName != null) {
      _json['targetDomainName'] = targetDomainName;
    }
    return _json;
  }
}

/// Request message for ResetAdminPassword
class ResetAdminPasswordRequest {
  ResetAdminPasswordRequest();

  ResetAdminPasswordRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Response message for ResetAdminPassword
class ResetAdminPasswordResponse {
  /// A random password. See admin for more information.
  core.String password;

  ResetAdminPasswordResponse();

  ResetAdminPasswordResponse.fromJson(core.Map _json) {
    if (_json.containsKey('password')) {
      password = _json['password'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (password != null) {
      _json['password'] = password;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a valid
  /// policy but certain Cloud Platform services (such as Projects) might reject
  /// them.
  Policy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(_json['policy']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'];
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see [IAM
  /// Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Represents a relationship between two domains. This allows a controller in
/// one domain to authenticate a user in another domain.
class Trust {
  /// Output only. The time the instance was created.
  core.String createTime;

  /// Output only. The last heartbeat time when the trust was known to be
  /// connected.
  core.String lastTrustHeartbeatTime;

  /// Optional. The trust authentication type, which decides whether the trusted
  /// side has forest/domain wide access or selective access to an approved set
  /// of resources.
  core.bool selectiveAuthentication;

  /// Output only. The current state of the trust.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "CREATING" : The domain trust is being created.
  /// - "UPDATING" : The domain trust is being updated.
  /// - "DELETING" : The domain trust is being deleted.
  /// - "CONNECTED" : The domain trust is connected.
  /// - "DISCONNECTED" : The domain trust is disconnected.
  core.String state;

  /// Output only. Additional information about the current state of the trust,
  /// if available.
  core.String stateDescription;

  /// Required. The target DNS server IP addresses which can resolve the remote
  /// domain involved in the trust.
  core.List<core.String> targetDnsIpAddresses;

  /// Required. The fully qualified target domain name which will be in trust
  /// with the current domain.
  core.String targetDomainName;

  /// Required. The trust direction, which decides if the current domain is
  /// trusted, trusting, or both.
  /// Possible string values are:
  /// - "TRUST_DIRECTION_UNSPECIFIED" : Not set.
  /// - "INBOUND" : The inbound direction represents the trusting side.
  /// - "OUTBOUND" : The outboud direction represents the trusted side.
  /// - "BIDIRECTIONAL" : The bidirectional direction represents the trusted /
  /// trusting side.
  core.String trustDirection;

  /// Required. The trust secret used for the handshake with the target domain.
  /// This will not be stored.
  core.String trustHandshakeSecret;

  /// Required. The type of trust represented by the trust resource.
  /// Possible string values are:
  /// - "TRUST_TYPE_UNSPECIFIED" : Not set.
  /// - "FOREST" : The forest trust.
  /// - "EXTERNAL" : The external domain trust.
  core.String trustType;

  /// Output only. The last update time.
  core.String updateTime;

  Trust();

  Trust.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('lastTrustHeartbeatTime')) {
      lastTrustHeartbeatTime = _json['lastTrustHeartbeatTime'];
    }
    if (_json.containsKey('selectiveAuthentication')) {
      selectiveAuthentication = _json['selectiveAuthentication'];
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('stateDescription')) {
      stateDescription = _json['stateDescription'];
    }
    if (_json.containsKey('targetDnsIpAddresses')) {
      targetDnsIpAddresses =
          (_json['targetDnsIpAddresses'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('targetDomainName')) {
      targetDomainName = _json['targetDomainName'];
    }
    if (_json.containsKey('trustDirection')) {
      trustDirection = _json['trustDirection'];
    }
    if (_json.containsKey('trustHandshakeSecret')) {
      trustHandshakeSecret = _json['trustHandshakeSecret'];
    }
    if (_json.containsKey('trustType')) {
      trustType = _json['trustType'];
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (lastTrustHeartbeatTime != null) {
      _json['lastTrustHeartbeatTime'] = lastTrustHeartbeatTime;
    }
    if (selectiveAuthentication != null) {
      _json['selectiveAuthentication'] = selectiveAuthentication;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateDescription != null) {
      _json['stateDescription'] = stateDescription;
    }
    if (targetDnsIpAddresses != null) {
      _json['targetDnsIpAddresses'] = targetDnsIpAddresses;
    }
    if (targetDomainName != null) {
      _json['targetDomainName'] = targetDomainName;
    }
    if (trustDirection != null) {
      _json['trustDirection'] = trustDirection;
    }
    if (trustHandshakeSecret != null) {
      _json['trustHandshakeSecret'] = trustHandshakeSecret;
    }
    if (trustType != null) {
      _json['trustType'] = trustType;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Request message for ValidateTrust
class ValidateTrustRequest {
  /// Required. The domain trust to validate trust state for.
  Trust trust;

  ValidateTrustRequest();

  ValidateTrustRequest.fromJson(core.Map _json) {
    if (_json.containsKey('trust')) {
      trust = Trust.fromJson(_json['trust']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (trust != null) {
      _json['trust'] = trust.toJson();
    }
    return _json;
  }
}
