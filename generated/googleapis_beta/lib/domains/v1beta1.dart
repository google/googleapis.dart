// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Domains API - v1beta1
///
/// Enables management and configuration of domain names.
///
/// For more information, see <https://cloud.google.com/domains/>
///
/// Create an instance of [CloudDomainsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRegistrationsResource]
library domains.v1beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Enables management and configuration of domain names.
class CloudDomainsApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudDomainsApi(http.Client client,
      {core.String rootUrl = 'https://domains.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRegistrationsResource get registrations =>
      ProjectsLocationsRegistrationsResource(_requester);

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
    core.String $fields,
  }) async {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
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
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

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
  async.Future<Operation> get(
    core.String name, {
    core.String $fields,
  }) async {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRegistrationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRegistrationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Updates a `Registration`'s contact settings.
  ///
  /// Some changes require confirmation by the domain's registrant contact .
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [registration] - Required. The name of the `Registration` whose contact
  /// settings are being updated, in the format `projects / * /locations / *
  /// /registrations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
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
  async.Future<Operation> configureContactSettings(
    ConfigureContactSettingsRequest request,
    core.String registration, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (registration == null) {
      throw core.ArgumentError('Parameter registration is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$registration') +
        ':configureContactSettings';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a `Registration`'s DNS settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [registration] - Required. The name of the `Registration` whose DNS
  /// settings are being updated, in the format `projects / * /locations / *
  /// /registrations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
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
  async.Future<Operation> configureDnsSettings(
    ConfigureDnsSettingsRequest request,
    core.String registration, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (registration == null) {
      throw core.ArgumentError('Parameter registration is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$registration') +
        ':configureDnsSettings';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a `Registration`'s management settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [registration] - Required. The name of the `Registration` whose management
  /// settings are being updated, in the format `projects / * /locations / *
  /// /registrations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
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
  async.Future<Operation> configureManagementSettings(
    ConfigureManagementSettingsRequest request,
    core.String registration, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (registration == null) {
      throw core.ArgumentError('Parameter registration is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$registration') +
        ':configureManagementSettings';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `Registration` resource.
  ///
  /// This method only works on resources in one of the following states: *
  /// `state` is `EXPORTED` with `expire_time` in the past * `state` is
  /// `REGISTRATION_FAILED`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `Registration` to delete, in the format
  /// `projects / * /locations / * /registrations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
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
  }) async {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Exports a `Registration` that you no longer want to use with Cloud
  /// Domains.
  ///
  /// You can continue to use the domain in
  /// [Google Domains](https://domains.google/) until it expires. If the export
  /// is successful: * The resource's `state` becomes `EXPORTED`, meaning that
  /// it is no longer managed by Cloud Domains * Because individual users can
  /// own domains in Google Domains, the calling user becomes the domain's sole
  /// owner. Permissions for the domain are subsequently managed in Google
  /// Domains. * Without further action, the domain does not renew
  /// automatically. The new owner can set up billing in Google Domains to renew
  /// the domain if needed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `Registration` to export, in the format
  /// `projects / * /locations / * /registrations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
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
  async.Future<Operation> export(
    ExportRegistrationRequest request,
    core.String name, {
    core.String $fields,
  }) async {
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
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':export';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a `Registration` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `Registration` to get, in the format
  /// `projects / * /locations / * /registrations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Registration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Registration> get(
    core.String name, {
    core.String $fields,
  }) async {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Registration.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
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
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the `Registration` resources in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which to list
  /// `Registration`s, specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter expression to restrict the `Registration`s returned. The
  /// expression must specify the field name, a comparison operator, and the
  /// value that you want to use for filtering. The value must be a string, a
  /// number, a boolean, or an enum value. The comparison operator should be one
  /// of =, !=, >, <, >=, <=, or : for prefix or wildcard matches. For example,
  /// to filter to a specific domain name, use an expression like
  /// `domainName="example.com"`. You can also check for the existence of a
  /// field; for example, to find domains using custom DNS settings, use an
  /// expression like `dnsSettings.customDns:*`. You can also create compound
  /// filters by combining expressions with the `AND` and `OR` operators. For
  /// example, to find domains that are suspended or have specific issues
  /// flagged, use an expression like `(state=SUSPENDED) OR (issue:*)`.
  ///
  /// [pageSize] - Maximum number of results to return.
  ///
  /// [pageToken] - When set to the `next_page_token` from a prior response,
  /// provides the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRegistrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRegistrationsResponse> list(
    core.String parent, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/registrations';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return ListRegistrationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates select fields of a `Registration` resource, notably `labels`.
  ///
  /// To update other fields, use the appropriate custom update method: * To
  /// update management settings, see `ConfigureManagementSettings` * To update
  /// DNS configuration, see `ConfigureDnsSettings` * To update contact
  /// information, see `ConfigureContactSettings`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of the `Registration` resource, in the format
  /// `projects / * /locations / * /registrations/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The field mask describing which fields to update
  /// as a comma-separated list. For example, if only the labels are being
  /// updated, the `update_mask` would be `"labels"`.
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
    Registration request,
    core.String name, {
    core.String updateMask,
    core.String $fields,
  }) async {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Registers a new domain name and creates a corresponding `Registration`
  /// resource.
  ///
  /// Call `RetrieveRegisterParameters` first to check availability of the
  /// domain name and determine parameters like price that are needed to build a
  /// call to this method. A successful call creates a `Registration` resource
  /// in state `REGISTRATION_PENDING`, which resolves to `ACTIVE` within 1-2
  /// minutes, indicating that the domain was successfully registered. If the
  /// resource ends up in state `REGISTRATION_FAILED`, it indicates that the
  /// domain was not registered successfully, and you can safely delete the
  /// resource and retry registration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the `Registration`. Must be in
  /// the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> register(
    RegisterDomainRequest request,
    core.String parent, {
    core.String $fields,
  }) async {
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
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/registrations:register';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Resets the authorization code of the `Registration` to a new random
  /// string.
  ///
  /// You can call this method only after 60 days have elapsed since the initial
  /// domain registration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [registration] - Required. The name of the `Registration` whose
  /// authorization code is being reset, in the format `projects / * /locations
  /// / * /registrations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizationCode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizationCode> resetAuthorizationCode(
    ResetAuthorizationCodeRequest request,
    core.String registration, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (registration == null) {
      throw core.ArgumentError('Parameter registration is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$registration') +
        ':resetAuthorizationCode';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return AuthorizationCode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the authorization code of the `Registration` for the purpose of
  /// transferring the domain to another registrar.
  ///
  /// You can call this method only after 60 days have elapsed since the initial
  /// domain registration.
  ///
  /// Request parameters:
  ///
  /// [registration] - Required. The name of the `Registration` whose
  /// authorization code is being retrieved, in the format `projects / *
  /// /locations / * /registrations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizationCode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizationCode> retrieveAuthorizationCode(
    core.String registration, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (registration == null) {
      throw core.ArgumentError('Parameter registration is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$registration') +
        ':retrieveAuthorizationCode';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return AuthorizationCode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets parameters needed to register a new domain name, including price and
  /// up-to-date availability.
  ///
  /// Use the returned values to call `RegisterDomain`.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location. Must be in the format `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [domainName] - Required. The domain name. Unicode domain names must be
  /// expressed in Punycode format.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetrieveRegisterParametersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetrieveRegisterParametersResponse> retrieveRegisterParameters(
    core.String location, {
    core.String domainName,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (location == null) {
      throw core.ArgumentError('Parameter location is required.');
    }
    if (domainName != null) {
      _queryParams['domainName'] = [domainName];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$location') +
        '/registrations:retrieveRegisterParameters';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return RetrieveRegisterParametersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Searches for available domain names similar to the provided query.
  ///
  /// Availability results from this method are approximate; call
  /// `RetrieveRegisterParameters` on a domain before registering to confirm
  /// availability.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location. Must be in the format `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [query] - Required. String used to search for available domain names.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchDomainsResponse> searchDomains(
    core.String location, {
    core.String query,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (location == null) {
      throw core.ArgumentError('Parameter location is required.');
    }
    if (query != null) {
      _queryParams['query'] = [query];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$location') +
        '/registrations:searchDomains';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return SearchDomainsResponse.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
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
  }) async {
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
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
  }) async {
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

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
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey('auditLogConfigs')) {
      auditLogConfigs = (_json['auditLogConfigs'] as core.List)
          .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditLogConfigs != null) {
      _json['auditLogConfigs'] =
          auditLogConfigs.map((value) => value.toJson()).toList();
    }
    if (service != null) {
      _json['service'] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  ///
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey('exemptedMembers')) {
      exemptedMembers = (_json['exemptedMembers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exemptedMembers != null) {
      _json['exemptedMembers'] = exemptedMembers;
    }
    if (logType != null) {
      _json['logType'] = logType;
    }
    return _json;
  }
}

/// Defines an authorization code.
class AuthorizationCode {
  /// The Authorization Code in ASCII.
  ///
  /// It can be used to transfer the domain to or from another registrar.
  core.String code;

  AuthorizationCode();

  AuthorizationCode.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    return _json;
  }
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
  Expr condition;

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
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
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

/// Request for the `ConfigureContactSettings` method.
class ConfigureContactSettingsRequest {
  /// The list of contact notices that the caller acknowledges.
  ///
  /// The notices required here depend on the values specified in
  /// `contact_settings`.
  core.List<core.String> contactNotices;

  /// Fields of the `ContactSettings` to update.
  ContactSettings contactSettings;

  /// The field mask describing which fields to update as a comma-separated
  /// list.
  ///
  /// For example, if only the registrant contact is being updated, the
  /// `update_mask` would be `"registrant_contact"`.
  ///
  /// Required.
  core.String updateMask;

  /// Validate the request without actually updating the contact settings.
  core.bool validateOnly;

  ConfigureContactSettingsRequest();

  ConfigureContactSettingsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('contactNotices')) {
      contactNotices = (_json['contactNotices'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('contactSettings')) {
      contactSettings = ContactSettings.fromJson(
          _json['contactSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
    if (_json.containsKey('validateOnly')) {
      validateOnly = _json['validateOnly'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contactNotices != null) {
      _json['contactNotices'] = contactNotices;
    }
    if (contactSettings != null) {
      _json['contactSettings'] = contactSettings.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    if (validateOnly != null) {
      _json['validateOnly'] = validateOnly;
    }
    return _json;
  }
}

/// Request for the `ConfigureDnsSettings` method.
class ConfigureDnsSettingsRequest {
  /// Fields of the `DnsSettings` to update.
  DnsSettings dnsSettings;

  /// The field mask describing which fields to update as a comma-separated
  /// list.
  ///
  /// For example, if only the name servers are being updated for an existing
  /// Custom DNS configuration, the `update_mask` would be
  /// `"custom_dns.name_servers"`. When changing the DNS provider from one type
  /// to another, pass the new provider's field name as part of the field mask.
  /// For example, when changing from a Google Domains DNS configuration to a
  /// Custom DNS configuration, the `update_mask` would be `"custom_dns"`. //
  ///
  /// Required.
  core.String updateMask;

  /// Validate the request without actually updating the DNS settings.
  core.bool validateOnly;

  ConfigureDnsSettingsRequest();

  ConfigureDnsSettingsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('dnsSettings')) {
      dnsSettings = DnsSettings.fromJson(
          _json['dnsSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
    if (_json.containsKey('validateOnly')) {
      validateOnly = _json['validateOnly'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dnsSettings != null) {
      _json['dnsSettings'] = dnsSettings.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    if (validateOnly != null) {
      _json['validateOnly'] = validateOnly;
    }
    return _json;
  }
}

/// Request for the `ConfigureManagementSettings` method.
class ConfigureManagementSettingsRequest {
  /// Fields of the `ManagementSettings` to update.
  ManagementSettings managementSettings;

  /// The field mask describing which fields to update as a comma-separated
  /// list.
  ///
  /// For example, if only the transfer lock is being updated, the `update_mask`
  /// would be `"transfer_lock_state"`.
  ///
  /// Required.
  core.String updateMask;

  ConfigureManagementSettingsRequest();

  ConfigureManagementSettingsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('managementSettings')) {
      managementSettings = ManagementSettings.fromJson(
          _json['managementSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (managementSettings != null) {
      _json['managementSettings'] = managementSettings.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

/// Details required for a contact associated with a `Registration`.
class Contact {
  /// Email address of the contact.
  ///
  /// Required.
  core.String email;

  /// Fax number of the contact in international format.
  ///
  /// For example, `"+1-800-555-0123"`.
  core.String faxNumber;

  /// Phone number of the contact in international format.
  ///
  /// For example, `"+1-800-555-0123"`.
  ///
  /// Required.
  core.String phoneNumber;

  /// Postal address of the contact.
  ///
  /// Required.
  PostalAddress postalAddress;

  Contact();

  Contact.fromJson(core.Map _json) {
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('faxNumber')) {
      faxNumber = _json['faxNumber'] as core.String;
    }
    if (_json.containsKey('phoneNumber')) {
      phoneNumber = _json['phoneNumber'] as core.String;
    }
    if (_json.containsKey('postalAddress')) {
      postalAddress = PostalAddress.fromJson(
          _json['postalAddress'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (email != null) {
      _json['email'] = email;
    }
    if (faxNumber != null) {
      _json['faxNumber'] = faxNumber;
    }
    if (phoneNumber != null) {
      _json['phoneNumber'] = phoneNumber;
    }
    if (postalAddress != null) {
      _json['postalAddress'] = postalAddress.toJson();
    }
    return _json;
  }
}

/// Defines the contact information associated with a `Registration`.
///
/// [ICANN](https://icann.org/) requires all domain names to have associated
/// contact information. The `registrant_contact` is considered the domain's
/// legal owner, and often the other contacts are identical.
class ContactSettings {
  /// The administrative contact for the `Registration`.
  ///
  /// Required.
  Contact adminContact;

  /// Privacy setting for the contacts associated with the `Registration`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CONTACT_PRIVACY_UNSPECIFIED" : The contact privacy settings are
  /// undefined.
  /// - "PUBLIC_CONTACT_DATA" : All the data from `ContactSettings` is publicly
  /// available. When setting this option, you must also provide a
  /// `PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT` in the `contact_notices` field of
  /// the request.
  /// - "PRIVATE_CONTACT_DATA" : None of the data from `ContactSettings` is
  /// publicly available. Instead, proxy contact data is published for your
  /// domain. Email sent to the proxy email address is forwarded to the
  /// registrant's email address. Cloud Domains provides this privacy proxy
  /// service at no additional cost.
  /// - "REDACTED_CONTACT_DATA" : Some data from `ContactSettings` is publicly
  /// available. The actual information redacted depends on the domain. For
  /// details, see
  /// [the registration privacy article](https://support.google.com/domains/answer/3251242).
  core.String privacy;

  /// The registrant contact for the `Registration`.
  ///
  /// *Caution: Anyone with access to this email address, phone number, and/or
  /// postal address can take control of the domain.* *Warning: For new
  /// `Registration`s, the registrant will receive an email confirmation that
  /// they must complete within 15 days to avoid domain suspension.*
  ///
  /// Required.
  Contact registrantContact;

  /// The technical contact for the `Registration`.
  ///
  /// Required.
  Contact technicalContact;

  ContactSettings();

  ContactSettings.fromJson(core.Map _json) {
    if (_json.containsKey('adminContact')) {
      adminContact = Contact.fromJson(
          _json['adminContact'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('privacy')) {
      privacy = _json['privacy'] as core.String;
    }
    if (_json.containsKey('registrantContact')) {
      registrantContact = Contact.fromJson(
          _json['registrantContact'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('technicalContact')) {
      technicalContact = Contact.fromJson(
          _json['technicalContact'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (adminContact != null) {
      _json['adminContact'] = adminContact.toJson();
    }
    if (privacy != null) {
      _json['privacy'] = privacy;
    }
    if (registrantContact != null) {
      _json['registrantContact'] = registrantContact.toJson();
    }
    if (technicalContact != null) {
      _json['technicalContact'] = technicalContact.toJson();
    }
    return _json;
  }
}

/// Configuration for an arbitrary DNS provider.
class CustomDns {
  /// The list of DS records for this domain, which are used to enable DNSSEC.
  ///
  /// The domain's DNS provider can provide the values to set here. If this
  /// field is empty, DNSSEC is disabled.
  core.List<DsRecord> dsRecords;

  /// A list of name servers that store the DNS zone for this domain.
  ///
  /// Each name server is a domain name, with Unicode domain names expressed in
  /// Punycode format.
  ///
  /// Required.
  core.List<core.String> nameServers;

  CustomDns();

  CustomDns.fromJson(core.Map _json) {
    if (_json.containsKey('dsRecords')) {
      dsRecords = (_json['dsRecords'] as core.List)
          .map<DsRecord>((value) =>
              DsRecord.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nameServers')) {
      nameServers = (_json['nameServers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dsRecords != null) {
      _json['dsRecords'] = dsRecords.map((value) => value.toJson()).toList();
    }
    if (nameServers != null) {
      _json['nameServers'] = nameServers;
    }
    return _json;
  }
}

/// Defines the DNS configuration of a `Registration`, including name servers,
/// DNSSEC, and glue records.
class DnsSettings {
  /// An arbitrary DNS provider identified by its name servers.
  CustomDns customDns;

  /// The list of glue records for this `Registration`.
  ///
  /// Commonly empty.
  core.List<GlueRecord> glueRecords;

  /// The free DNS zone provided by [Google Domains](https://domains.google/).
  GoogleDomainsDns googleDomainsDns;

  DnsSettings();

  DnsSettings.fromJson(core.Map _json) {
    if (_json.containsKey('customDns')) {
      customDns = CustomDns.fromJson(
          _json['customDns'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('glueRecords')) {
      glueRecords = (_json['glueRecords'] as core.List)
          .map<GlueRecord>((value) =>
              GlueRecord.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('googleDomainsDns')) {
      googleDomainsDns = GoogleDomainsDns.fromJson(
          _json['googleDomainsDns'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (customDns != null) {
      _json['customDns'] = customDns.toJson();
    }
    if (glueRecords != null) {
      _json['glueRecords'] =
          glueRecords.map((value) => value.toJson()).toList();
    }
    if (googleDomainsDns != null) {
      _json['googleDomainsDns'] = googleDomainsDns.toJson();
    }
    return _json;
  }
}

/// Defines a Delegation Signer (DS) record, which is needed to enable DNSSEC
/// for a domain.
///
/// It contains a digest (hash) of a DNSKEY record that must be present in the
/// domain's DNS zone.
class DsRecord {
  /// The algorithm used to generate the referenced DNSKEY.
  /// Possible string values are:
  /// - "ALGORITHM_UNSPECIFIED" : The algorithm is unspecified.
  /// - "DSA" : DSA/SHA1. Not recommended for new deployments.
  /// - "ECC" : ECC. Not recommended for new deployments.
  /// - "RSASHA1" : RSA/SHA-1. Not recommended for new deployments.
  /// - "DSANSEC3SHA1" : DSA-NSEC3-SHA1. Not recommended for new deployments.
  /// - "RSASHA1NSEC3SHA1" : RSA/SHA1-NSEC3-SHA1. Not recommended for new
  /// deployments.
  /// - "RSASHA256" : RSA/SHA-256.
  /// - "RSASHA512" : RSA/SHA-512.
  /// - "ECCGOST" : GOST R 34.10-2001.
  /// - "ECDSAP256SHA256" : ECDSA Curve P-256 with SHA-256.
  /// - "ECDSAP384SHA384" : ECDSA Curve P-384 with SHA-384.
  /// - "ED25519" : Ed25519.
  /// - "ED448" : Ed448.
  core.String algorithm;

  /// The digest generated from the referenced DNSKEY.
  core.String digest;

  /// The hash function used to generate the digest of the referenced DNSKEY.
  /// Possible string values are:
  /// - "DIGEST_TYPE_UNSPECIFIED" : The DigestType is unspecified.
  /// - "SHA1" : SHA-1. Not recommended for new deployments.
  /// - "SHA256" : SHA-256.
  /// - "GOST3411" : GOST R 34.11-94.
  /// - "SHA384" : SHA-384.
  core.String digestType;

  /// The key tag of the record.
  ///
  /// Must be set in range 0 -- 65535.
  core.int keyTag;

  DsRecord();

  DsRecord.fromJson(core.Map _json) {
    if (_json.containsKey('algorithm')) {
      algorithm = _json['algorithm'] as core.String;
    }
    if (_json.containsKey('digest')) {
      digest = _json['digest'] as core.String;
    }
    if (_json.containsKey('digestType')) {
      digestType = _json['digestType'] as core.String;
    }
    if (_json.containsKey('keyTag')) {
      keyTag = _json['keyTag'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (algorithm != null) {
      _json['algorithm'] = algorithm;
    }
    if (digest != null) {
      _json['digest'] = digest;
    }
    if (digestType != null) {
      _json['digestType'] = digestType;
    }
    if (keyTag != null) {
      _json['keyTag'] = keyTag;
    }
    return _json;
  }
}

/// Request for the `ExportRegistration` method.
class ExportRegistrationRequest {
  ExportRegistrationRequest();

  ExportRegistrationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
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
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
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

/// Defines a host on your domain that is a DNS name server for your domain
/// and/or other domains.
///
/// Glue records are a way of making the IP address of a name server known, even
/// when it serves DNS queries for its parent domain. For example, when
/// `ns.example.com` is a name server for `example.com`, the host
/// `ns.example.com` must have a glue record to break the circular DNS
/// reference.
class GlueRecord {
  /// Domain name of the host in Punycode format.
  ///
  /// Required.
  core.String hostName;

  /// List of IPv4 addresses corresponding to this host in the standard decimal
  /// format (e.g. `198.51.100.1`).
  ///
  /// At least one of `ipv4_address` and `ipv6_address` must be set.
  core.List<core.String> ipv4Addresses;

  /// List of IPv6 addresses corresponding to this host in the standard
  /// hexadecimal format (e.g. `2001:db8::`).
  ///
  /// At least one of `ipv4_address` and `ipv6_address` must be set.
  core.List<core.String> ipv6Addresses;

  GlueRecord();

  GlueRecord.fromJson(core.Map _json) {
    if (_json.containsKey('hostName')) {
      hostName = _json['hostName'] as core.String;
    }
    if (_json.containsKey('ipv4Addresses')) {
      ipv4Addresses = (_json['ipv4Addresses'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('ipv6Addresses')) {
      ipv6Addresses = (_json['ipv6Addresses'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (hostName != null) {
      _json['hostName'] = hostName;
    }
    if (ipv4Addresses != null) {
      _json['ipv4Addresses'] = ipv4Addresses;
    }
    if (ipv6Addresses != null) {
      _json['ipv6Addresses'] = ipv6Addresses;
    }
    return _json;
  }
}

/// Configuration for using the free DNS zone provided by Google Domains as a
/// `Registration`'s `dns_provider`.
///
/// You cannot configure the DNS zone itself using the API. To configure the DNS
/// zone, go to [Google Domains](https://domains.google/).
class GoogleDomainsDns {
  /// The list of DS records published for this domain.
  ///
  /// The list is automatically populated when `ds_state` is
  /// `DS_RECORDS_PUBLISHED`, otherwise it remains empty.
  ///
  /// Output only.
  core.List<DsRecord> dsRecords;

  /// The state of DS records for this domain.
  ///
  /// Used to enable or disable automatic DNSSEC.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DS_STATE_UNSPECIFIED" : DS state is unspecified.
  /// - "DS_RECORDS_UNPUBLISHED" : DNSSEC is disabled for this domain. No DS
  /// records for this domain are published in the parent DNS zone.
  /// - "DS_RECORDS_PUBLISHED" : DNSSEC is enabled for this domain. Appropriate
  /// DS records for this domain are published in the parent DNS zone. This
  /// option is valid only if the DNS zone referenced in the `Registration`'s
  /// `dns_provider` field is already DNSSEC-signed.
  core.String dsState;

  /// A list of name servers that store the DNS zone for this domain.
  ///
  /// Each name server is a domain name, with Unicode domain names expressed in
  /// Punycode format. This field is automatically populated with the name
  /// servers assigned to the Google Domains DNS zone.
  ///
  /// Output only.
  core.List<core.String> nameServers;

  GoogleDomainsDns();

  GoogleDomainsDns.fromJson(core.Map _json) {
    if (_json.containsKey('dsRecords')) {
      dsRecords = (_json['dsRecords'] as core.List)
          .map<DsRecord>((value) =>
              DsRecord.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dsState')) {
      dsState = _json['dsState'] as core.String;
    }
    if (_json.containsKey('nameServers')) {
      nameServers = (_json['nameServers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dsRecords != null) {
      _json['dsRecords'] = dsRecords.map((value) => value.toJson()).toList();
    }
    if (dsState != null) {
      _json['dsState'] = dsState;
    }
    if (nameServers != null) {
      _json['nameServers'] = nameServers;
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
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
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
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for the `ListRegistrations` method.
class ListRegistrationsResponse {
  /// When present, there are more results to retrieve.
  ///
  /// Set `page_token` to this value on a subsequent call to get the next page
  /// of results.
  core.String nextPageToken;

  /// A list of `Registration`s.
  core.List<Registration> registrations;

  ListRegistrationsResponse();

  ListRegistrationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('registrations')) {
      registrations = (_json['registrations'] as core.List)
          .map<Registration>((value) => Registration.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (registrations != null) {
      _json['registrations'] =
          registrations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
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

/// Defines renewal, billing, and transfer settings for a `Registration`.
class ManagementSettings {
  /// The renewal method for this `Registration`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RENEWAL_METHOD_UNSPECIFIED" : The renewal method is undefined.
  /// - "AUTOMATIC_RENEWAL" : The domain is automatically renewed each year . To
  /// disable automatic renewals, export the domain by calling
  /// `ExportRegistration` .
  /// - "MANUAL_RENEWAL" : The domain must be explicitly renewed each year
  /// before its `expire_time`. This option is only available when the
  /// `Registration` is in state `EXPORTED`. To manage the domain's current
  /// billing and renewal settings, go to
  /// [Google Domains](https://domains.google/).
  core.String renewalMethod;

  /// Controls whether the domain can be transferred to another registrar.
  /// Possible string values are:
  /// - "TRANSFER_LOCK_STATE_UNSPECIFIED" : The state is unspecified.
  /// - "UNLOCKED" : The domain is unlocked and can be transferred to another
  /// registrar.
  /// - "LOCKED" : The domain is locked and cannot be transferred to another
  /// registrar.
  core.String transferLockState;

  ManagementSettings();

  ManagementSettings.fromJson(core.Map _json) {
    if (_json.containsKey('renewalMethod')) {
      renewalMethod = _json['renewalMethod'] as core.String;
    }
    if (_json.containsKey('transferLockState')) {
      transferLockState = _json['transferLockState'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (renewalMethod != null) {
      _json['renewalMethod'] = renewalMethod;
    }
    if (transferLockState != null) {
      _json['transferLockState'] = transferLockState;
    }
    return _json;
  }
}

/// Represents an amount of money with its currency type.
class Money {
  /// The three-letter currency code defined in ISO 4217.
  core.String currencyCode;

  /// Number of nano (10^-9) units of the amount.
  ///
  /// The value must be between -999,999,999 and +999,999,999 inclusive. If
  /// `units` is positive, `nanos` must be positive or zero. If `units` is zero,
  /// `nanos` can be positive, zero, or negative. If `units` is negative,
  /// `nanos` must be negative or zero. For example $-1.75 is represented as
  /// `units`=-1 and `nanos`=-750,000,000.
  core.int nanos;

  /// The whole units of the amount.
  ///
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  core.String units;

  Money();

  Money.fromJson(core.Map _json) {
    if (_json.containsKey('currencyCode')) {
      currencyCode = _json['currencyCode'] as core.String;
    }
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'] as core.int;
    }
    if (_json.containsKey('units')) {
      units = _json['units'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (currencyCode != null) {
      _json['currencyCode'] = currencyCode;
    }
    if (nanos != null) {
      _json['nanos'] = nanos;
    }
    if (units != null) {
      _json['units'] = units;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String name;

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
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
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
///
/// Output only.
class OperationMetadata {
  /// API version used to start the operation.
  core.String apiVersion;

  /// The time the operation was created.
  core.String createTime;

  /// The time the operation finished running.
  core.String endTime;

  /// Human-readable status of the operation, if any.
  core.String statusDetail;

  /// Server-defined resource path for the target of the operation.
  core.String target;

  /// Name of the verb executed by the operation.
  core.String verb;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('statusDetail')) {
      statusDetail = _json['statusDetail'] as core.String;
    }
    if (_json.containsKey('target')) {
      target = _json['target'] as core.String;
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiVersion != null) {
      _json['apiVersion'] = apiVersion;
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
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<Binding> bindings;

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
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

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
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('auditConfigs')) {
      auditConfigs = (_json['auditConfigs'] as core.List)
          .map<AuditConfig>((value) => AuditConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) =>
              Binding.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditConfigs != null) {
      _json['auditConfigs'] =
          auditConfigs.map((value) => value.toJson()).toList();
    }
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

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an i18n-ready address
/// widget such as https://github.com/google/libaddressinput) - Users should not
/// be presented with UI elements for input or editing of fields outside
/// countries where that field is used. For more guidance on how to use this
/// schema, please see: https://support.google.com/business/answer/6397478
class PostalAddress {
  /// Unstructured address lines describing the lower levels of an address.
  ///
  /// Because values in address_lines do not have type information and may
  /// sometimes contain multiple values in a single field (e.g. "Austin, TX"),
  /// it is important that the line order is clear. The order of address lines
  /// should be "envelope order" for the country/region of the address. In
  /// places where this can vary (e.g. Japan), address_language is used to make
  /// it explicit (e.g. "ja" for large-to-small ordering and "ja-Latn" or "en"
  /// for small-to-large). This way, the most specific line of an address can be
  /// selected based on the language. The minimum permitted structural
  /// representation of an address consists of a region_code with all remaining
  /// information placed in the address_lines. It would be possible to format
  /// such an address very approximately without geocoding, but no semantic
  /// reasoning could be made about any of the address components until it was
  /// at least partially resolved. Creating an address only containing a
  /// region_code and address_lines, and then geocoding is the recommended way
  /// to handle completely unstructured addresses (as opposed to guessing which
  /// parts of the address should be localities or administrative areas).
  core.List<core.String> addressLines;

  /// Highest administrative subdivision which is used for postal addresses of a
  /// country or region.
  ///
  /// For example, this can be a state, a province, an oblast, or a prefecture.
  /// Specifically, for Spain this is the province and not the autonomous
  /// community (e.g. "Barcelona" and not "Catalonia"). Many countries don't use
  /// an administrative area in postal addresses. E.g. in Switzerland this
  /// should be left unpopulated.
  ///
  /// Optional.
  core.String administrativeArea;

  /// BCP-47 language code of the contents of this address (if known).
  ///
  /// This is often the UI language of the input form or is expected to match
  /// one of the languages used in the address' country/region, or their
  /// transliterated equivalents. This can affect formatting in certain
  /// countries, but is not critical to the correctness of the data and will
  /// never affect any validation or other non-formatting related operations. If
  /// this value is not known, it should be omitted (rather than specifying a
  /// possibly incorrect default). Examples: "zh-Hant", "ja", "ja-Latn", "en".
  ///
  /// Optional.
  core.String languageCode;

  /// Generally refers to the city/town portion of the address.
  ///
  /// Examples: US city, IT comune, UK post town. In regions of the world where
  /// localities are not well defined or do not fit into this structure well,
  /// leave locality empty and use address_lines.
  ///
  /// Optional.
  core.String locality;

  /// The name of the organization at the address.
  ///
  /// Optional.
  core.String organization;

  /// Postal code of the address.
  ///
  /// Not all countries use or require postal codes to be present, but where
  /// they are used, they may trigger additional validation with other parts of
  /// the address (e.g. state/zip validation in the U.S.A.).
  ///
  /// Optional.
  core.String postalCode;

  /// The recipient at the address.
  ///
  /// This field may, under certain circumstances, contain multiline
  /// information. For example, it might contain "care of" information.
  ///
  /// Optional.
  core.List<core.String> recipients;

  /// CLDR region code of the country/region of the address.
  ///
  /// This is never inferred and it is up to the user to ensure the value is
  /// correct. See http://cldr.unicode.org/ and
  /// http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
  /// for details. Example: "CH" for Switzerland.
  ///
  /// Required.
  core.String regionCode;

  /// The schema revision of the `PostalAddress`.
  ///
  /// This must be set to 0, which is the latest revision. All new revisions
  /// **must** be backward compatible with old revisions.
  core.int revision;

  /// Additional, country-specific, sorting code.
  ///
  /// This is not used in most regions. Where it is used, the value is either a
  /// string like "CEDEX", optionally followed by a number (e.g. "CEDEX 7"), or
  /// just a number alone, representing the "sector code" (Jamaica), "delivery
  /// area indicator" (Malawi) or "post office indicator" (e.g. Côte d'Ivoire).
  ///
  /// Optional.
  core.String sortingCode;

  /// Sublocality of the address.
  ///
  /// For example, this can be neighborhoods, boroughs, districts.
  ///
  /// Optional.
  core.String sublocality;

  PostalAddress();

  PostalAddress.fromJson(core.Map _json) {
    if (_json.containsKey('addressLines')) {
      addressLines = (_json['addressLines'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('administrativeArea')) {
      administrativeArea = _json['administrativeArea'] as core.String;
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'] as core.String;
    }
    if (_json.containsKey('locality')) {
      locality = _json['locality'] as core.String;
    }
    if (_json.containsKey('organization')) {
      organization = _json['organization'] as core.String;
    }
    if (_json.containsKey('postalCode')) {
      postalCode = _json['postalCode'] as core.String;
    }
    if (_json.containsKey('recipients')) {
      recipients = (_json['recipients'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('regionCode')) {
      regionCode = _json['regionCode'] as core.String;
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.int;
    }
    if (_json.containsKey('sortingCode')) {
      sortingCode = _json['sortingCode'] as core.String;
    }
    if (_json.containsKey('sublocality')) {
      sublocality = _json['sublocality'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (addressLines != null) {
      _json['addressLines'] = addressLines;
    }
    if (administrativeArea != null) {
      _json['administrativeArea'] = administrativeArea;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (locality != null) {
      _json['locality'] = locality;
    }
    if (organization != null) {
      _json['organization'] = organization;
    }
    if (postalCode != null) {
      _json['postalCode'] = postalCode;
    }
    if (recipients != null) {
      _json['recipients'] = recipients;
    }
    if (regionCode != null) {
      _json['regionCode'] = regionCode;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    if (sortingCode != null) {
      _json['sortingCode'] = sortingCode;
    }
    if (sublocality != null) {
      _json['sublocality'] = sublocality;
    }
    return _json;
  }
}

/// Request for the `RegisterDomain` method.
class RegisterDomainRequest {
  /// The list of contact notices that the caller acknowledges.
  ///
  /// The notices required here depend on the values specified in
  /// `registration.contact_settings`.
  core.List<core.String> contactNotices;

  /// The list of domain notices that you acknowledge.
  ///
  /// Call `RetrieveRegisterParameters` to see the notices that need
  /// acknowledgement.
  core.List<core.String> domainNotices;

  /// The complete `Registration` resource to be created.
  ///
  /// Required.
  Registration registration;

  /// When true, only validation will be performed, without actually registering
  /// the domain.
  ///
  /// Follows:
  /// https://cloud.google.com/apis/design/design_patterns#request_validation
  core.bool validateOnly;

  /// Yearly price to register or renew the domain.
  ///
  /// The value that should be put here can be obtained from
  /// RetrieveRegisterParameters or SearchDomains calls.
  ///
  /// Required.
  Money yearlyPrice;

  RegisterDomainRequest();

  RegisterDomainRequest.fromJson(core.Map _json) {
    if (_json.containsKey('contactNotices')) {
      contactNotices = (_json['contactNotices'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('domainNotices')) {
      domainNotices = (_json['domainNotices'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('registration')) {
      registration = Registration.fromJson(
          _json['registration'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('validateOnly')) {
      validateOnly = _json['validateOnly'] as core.bool;
    }
    if (_json.containsKey('yearlyPrice')) {
      yearlyPrice = Money.fromJson(
          _json['yearlyPrice'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contactNotices != null) {
      _json['contactNotices'] = contactNotices;
    }
    if (domainNotices != null) {
      _json['domainNotices'] = domainNotices;
    }
    if (registration != null) {
      _json['registration'] = registration.toJson();
    }
    if (validateOnly != null) {
      _json['validateOnly'] = validateOnly;
    }
    if (yearlyPrice != null) {
      _json['yearlyPrice'] = yearlyPrice.toJson();
    }
    return _json;
  }
}

/// Parameters required to register a new domain.
class RegisterParameters {
  /// Indicates whether the domain is available for registration.
  ///
  /// This value is accurate when obtained by calling
  /// `RetrieveRegisterParameters`, but is approximate when obtained by calling
  /// `SearchDomains`.
  /// Possible string values are:
  /// - "AVAILABILITY_UNSPECIFIED" : The availability is unspecified.
  /// - "AVAILABLE" : The domain is available for registration.
  /// - "UNAVAILABLE" : The domain is not available for registration. Generally
  /// this means it is already registered to another party.
  /// - "UNSUPPORTED" : The domain is not currently supported by Cloud Domains,
  /// but may be available elsewhere.
  /// - "UNKNOWN" : Cloud Domains is unable to determine domain availability,
  /// generally due to system maintenance at the domain name registry.
  core.String availability;

  /// The domain name.
  ///
  /// Unicode domain names are expressed in Punycode format.
  core.String domainName;

  /// Notices about special properties of the domain.
  core.List<core.String> domainNotices;

  /// Contact privacy options that the domain supports.
  core.List<core.String> supportedPrivacy;

  /// Price to register or renew the domain for one year.
  Money yearlyPrice;

  RegisterParameters();

  RegisterParameters.fromJson(core.Map _json) {
    if (_json.containsKey('availability')) {
      availability = _json['availability'] as core.String;
    }
    if (_json.containsKey('domainName')) {
      domainName = _json['domainName'] as core.String;
    }
    if (_json.containsKey('domainNotices')) {
      domainNotices = (_json['domainNotices'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('supportedPrivacy')) {
      supportedPrivacy = (_json['supportedPrivacy'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('yearlyPrice')) {
      yearlyPrice = Money.fromJson(
          _json['yearlyPrice'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (availability != null) {
      _json['availability'] = availability;
    }
    if (domainName != null) {
      _json['domainName'] = domainName;
    }
    if (domainNotices != null) {
      _json['domainNotices'] = domainNotices;
    }
    if (supportedPrivacy != null) {
      _json['supportedPrivacy'] = supportedPrivacy;
    }
    if (yearlyPrice != null) {
      _json['yearlyPrice'] = yearlyPrice.toJson();
    }
    return _json;
  }
}

/// The `Registration` resource facilitates managing and configuring domain name
/// registrations.
///
/// To create a new `Registration` resource, find a suitable domain name by
/// calling the `SearchDomains` method with a query to see available domain name
/// options. After choosing a name, call `RetrieveRegisterParameters` to ensure
/// availability and obtain information like pricing, which is needed to build a
/// call to `RegisterDomain`.
class Registration {
  /// Settings for contact information linked to the `Registration`.
  ///
  /// You cannot update these with the `UpdateRegistration` method. To update
  /// these settings, use the `ConfigureContactSettings` method.
  ///
  /// Required.
  ContactSettings contactSettings;

  /// The creation timestamp of the `Registration` resource.
  ///
  /// Output only.
  core.String createTime;

  /// Settings controlling the DNS configuration of the `Registration`.
  ///
  /// You cannot update these with the `UpdateRegistration` method. To update
  /// these settings, use the `ConfigureDnsSettings` method.
  DnsSettings dnsSettings;

  /// The domain name.
  ///
  /// Unicode domain names must be expressed in Punycode format.
  ///
  /// Required. Immutable.
  core.String domainName;

  /// The expiration timestamp of the `Registration`.
  ///
  /// Output only.
  core.String expireTime;

  /// The set of issues with the `Registration` that require attention.
  ///
  /// Output only.
  core.List<core.String> issues;

  /// Set of labels associated with the `Registration`.
  core.Map<core.String, core.String> labels;

  /// Settings for management of the `Registration`, including renewal, billing,
  /// and transfer.
  ///
  /// You cannot update these with the `UpdateRegistration` method. To update
  /// these settings, use the `ConfigureManagementSettings` method.
  ManagementSettings managementSettings;

  /// Name of the `Registration` resource, in the format `projects / *
  /// /locations / * /registrations/`.
  ///
  /// Output only.
  core.String name;

  /// Pending contact settings for the `Registration`.
  ///
  /// Updates to the `contact_settings` field that change its
  /// `registrant_contact` or `privacy` fields require email confirmation by the
  /// `registrant_contact` before taking effect. This field is set only if there
  /// are pending updates to the `contact_settings` that have not yet been
  /// confirmed. To confirm the changes, the `registrant_contact` must follow
  /// the instructions in the email they receive.
  ///
  /// Output only.
  ContactSettings pendingContactSettings;

  /// The state of the `Registration`
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is undefined.
  /// - "REGISTRATION_PENDING" : The domain is being registered.
  /// - "REGISTRATION_FAILED" : The domain registration failed. You can delete
  /// resources in this state to allow registration to be retried.
  /// - "ACTIVE" : The domain is registered and operational. The domain renews
  /// automatically as long as it remains in this state.
  /// - "SUSPENDED" : The domain is suspended and inoperative. For more details,
  /// see the `issues` field.
  /// - "EXPORTED" : The domain has been exported from Cloud Domains to
  /// [Google Domains](https://domains.google/). You can no longer update it
  /// with this API, and information shown about it may be stale. Without
  /// further action, domains in this state expire at their `expire_time`. You
  /// can delete the resource after the `expire_time` has passed.
  core.String state;

  /// Set of options for the `contact_settings.privacy` field that this
  /// `Registration` supports.
  ///
  /// Output only.
  core.List<core.String> supportedPrivacy;

  Registration();

  Registration.fromJson(core.Map _json) {
    if (_json.containsKey('contactSettings')) {
      contactSettings = ContactSettings.fromJson(
          _json['contactSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('dnsSettings')) {
      dnsSettings = DnsSettings.fromJson(
          _json['dnsSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('domainName')) {
      domainName = _json['domainName'] as core.String;
    }
    if (_json.containsKey('expireTime')) {
      expireTime = _json['expireTime'] as core.String;
    }
    if (_json.containsKey('issues')) {
      issues = (_json['issues'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('managementSettings')) {
      managementSettings = ManagementSettings.fromJson(
          _json['managementSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('pendingContactSettings')) {
      pendingContactSettings = ContactSettings.fromJson(
          _json['pendingContactSettings']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('supportedPrivacy')) {
      supportedPrivacy = (_json['supportedPrivacy'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contactSettings != null) {
      _json['contactSettings'] = contactSettings.toJson();
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (dnsSettings != null) {
      _json['dnsSettings'] = dnsSettings.toJson();
    }
    if (domainName != null) {
      _json['domainName'] = domainName;
    }
    if (expireTime != null) {
      _json['expireTime'] = expireTime;
    }
    if (issues != null) {
      _json['issues'] = issues;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (managementSettings != null) {
      _json['managementSettings'] = managementSettings.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (pendingContactSettings != null) {
      _json['pendingContactSettings'] = pendingContactSettings.toJson();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (supportedPrivacy != null) {
      _json['supportedPrivacy'] = supportedPrivacy;
    }
    return _json;
  }
}

/// Request for the `ResetAuthorizationCode` method.
class ResetAuthorizationCodeRequest {
  ResetAuthorizationCodeRequest();

  ResetAuthorizationCodeRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Response for the `RetrieveRegisterParameters` method.
class RetrieveRegisterParametersResponse {
  /// Parameters to use when calling the `RegisterDomain` method.
  RegisterParameters registerParameters;

  RetrieveRegisterParametersResponse();

  RetrieveRegisterParametersResponse.fromJson(core.Map _json) {
    if (_json.containsKey('registerParameters')) {
      registerParameters = RegisterParameters.fromJson(
          _json['registerParameters'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (registerParameters != null) {
      _json['registerParameters'] = registerParameters.toJson();
    }
    return _json;
  }
}

/// Response for the `SearchDomains` method.
class SearchDomainsResponse {
  /// Results of the domain name search.
  core.List<RegisterParameters> registerParameters;

  SearchDomainsResponse();

  SearchDomainsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('registerParameters')) {
      registerParameters = (_json['registerParameters'] as core.List)
          .map<RegisterParameters>((value) => RegisterParameters.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (registerParameters != null) {
      _json['registerParameters'] =
          registerParameters.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
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
  core.int code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
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
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
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
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}
