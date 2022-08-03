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

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Enables management and configuration of domain names.
class CloudDomainsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudDomainsApi(http.Client client,
      {core.String rootUrl = 'https://domains.googleapis.com/',
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' +
        core.Uri.encodeFull('$registration') +
        ':configureContactSettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' +
        core.Uri.encodeFull('$registration') +
        ':configureDnsSettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' +
        core.Uri.encodeFull('$registration') +
        ':configureManagementSettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `Registration` resource.
  ///
  /// This method works on any `Registration` resource using \[Subscription or
  /// Commitment billing\](/domains/pricing#billing-models), provided that the
  /// resource was created at least 1 day in the past. For `Registration`
  /// resources using \[Monthly billing\](/domains/pricing#billing-models), this
  /// method works if: * `state` is `EXPORTED` with `expire_time` in the past *
  /// `state` is `REGISTRATION_FAILED` * `state` is `TRANSFER_FAILED` When an
  /// active registration is successfully deleted, you can continue to use the
  /// domain in [Google Domains](https://domains.google/) until it expires. The
  /// calling user becomes the domain's sole owner in Google Domains, and
  /// permissions for the domain are subsequently managed there. The domain does
  /// not renew automatically unless the new owner sets up billing in Google
  /// Domains.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports a `Registration` resource, such that it is no longer managed by
  /// Cloud Domains.
  ///
  /// When an active domain is successfully exported, you can continue to use
  /// the domain in [Google Domains](https://domains.google/) until it expires.
  /// The calling user becomes the domain's sole owner in Google Domains, and
  /// permissions for the domain are subsequently managed there. The domain does
  /// not renew automatically unless the new owner sets up billing in Google
  /// Domains.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Registration.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/registrations/\[^/\]+$`.
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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports a domain name from [Google Domains](https://domains.google/) for
  /// use in Cloud Domains.
  ///
  /// To transfer a domain from another registrar, use the `TransferDomain`
  /// method instead. Since individual users can own domains in Google Domains,
  /// the calling user must have ownership permission on the domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the Registration. Must be in
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
  async.Future<Operation> import(
    ImportDomainRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/registrations:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// of =, !=, \>, \<, \>=, \<=, or : for prefix or wildcard matches. For
  /// example, to filter to a specific domain name, use an expression like
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/registrations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRegistrationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// updated, the `update_mask` is `"labels"`.
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
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/registrations:register';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' +
        core.Uri.encodeFull('$registration') +
        ':resetAuthorizationCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuthorizationCode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' +
        core.Uri.encodeFull('$registration') +
        ':retrieveAuthorizationCode';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AuthorizationCode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists domain names from [Google Domains](https://domains.google/) that can
  /// be imported to Cloud Domains using the `ImportDomain` method.
  ///
  /// Since individual users can own domains in Google Domains, the list of
  /// domains returned depends on the individual user making the call. Domains
  /// supported by Google Domains, but not supported by Cloud Domains, are not
  /// returned.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location. Must be in the format `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of results to return.
  ///
  /// [pageToken] - When set to the `next_page_token` from a prior response,
  /// provides the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetrieveImportableDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetrieveImportableDomainsResponse> retrieveImportableDomains(
    core.String location, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' +
        core.Uri.encodeFull('$location') +
        '/registrations:retrieveImportableDomains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RetrieveImportableDomainsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? domainName,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (domainName != null) 'domainName': [domainName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' +
        core.Uri.encodeFull('$location') +
        '/registrations:retrieveRegisterParameters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RetrieveRegisterParametersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets parameters needed to transfer a domain name from another registrar to
  /// Cloud Domains.
  ///
  /// For domains already managed by [Google Domains](https://domains.google/),
  /// use `ImportDomain` instead. Use the returned values to call
  /// `TransferDomain`.
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
  /// Completes with a [RetrieveTransferParametersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetrieveTransferParametersResponse> retrieveTransferParameters(
    core.String location, {
    core.String? domainName,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (domainName != null) 'domainName': [domainName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' +
        core.Uri.encodeFull('$location') +
        '/registrations:retrieveTransferParameters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RetrieveTransferParametersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' +
        core.Uri.encodeFull('$location') +
        '/registrations:searchDomains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchDomainsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Transfers a domain name from another registrar to Cloud Domains.
  ///
  /// For domains already managed by [Google Domains](https://domains.google/),
  /// use `ImportDomain` instead. Before calling this method, go to the domain's
  /// current registrar to unlock the domain for transfer and retrieve the
  /// domain's transfer authorization code. Then call
  /// `RetrieveTransferParameters` to confirm that the domain is unlocked and to
  /// get values needed to build a call to this method. A successful call
  /// creates a `Registration` resource in state `TRANSFER_PENDING`. It can take
  /// several days to complete the transfer process. The registrant can often
  /// speed up this process by approving the transfer through the current
  /// registrar, either by clicking a link in an email from the registrar or by
  /// visiting the registrar's website. A few minutes after transfer approval,
  /// the resource transitions to state `ACTIVE`, indicating that the transfer
  /// was successful. If the transfer is rejected or the request expires without
  /// being approved, the resource can end up in state `TRANSFER_FAILED`. If
  /// transfer fails, you can safely delete the resource and retry the transfer.
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
  async.Future<Operation> transfer(
    TransferDomainRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/registrations:transfer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
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
typedef AuditLogConfig = $AuditLogConfig;

/// Defines an authorization code.
class AuthorizationCode {
  /// The Authorization Code in ASCII.
  ///
  /// It can be used to transfer the domain to or from another registrar.
  core.String? code;

  AuthorizationCode({
    this.code,
  });

  AuthorizationCode.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
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

/// Request for the `ConfigureContactSettings` method.
class ConfigureContactSettingsRequest {
  /// The list of contact notices that the caller acknowledges.
  ///
  /// The notices needed here depend on the values specified in
  /// `contact_settings`.
  core.List<core.String>? contactNotices;

  /// Fields of the `ContactSettings` to update.
  ContactSettings? contactSettings;

  /// The field mask describing which fields to update as a comma-separated
  /// list.
  ///
  /// For example, if only the registrant contact is being updated, the
  /// `update_mask` is `"registrant_contact"`.
  ///
  /// Required.
  core.String? updateMask;

  /// Validate the request without actually updating the contact settings.
  core.bool? validateOnly;

  ConfigureContactSettingsRequest({
    this.contactNotices,
    this.contactSettings,
    this.updateMask,
    this.validateOnly,
  });

  ConfigureContactSettingsRequest.fromJson(core.Map json_)
      : this(
          contactNotices: json_.containsKey('contactNotices')
              ? (json_['contactNotices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          contactSettings: json_.containsKey('contactSettings')
              ? ContactSettings.fromJson(json_['contactSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactNotices != null) 'contactNotices': contactNotices!,
        if (contactSettings != null) 'contactSettings': contactSettings!,
        if (updateMask != null) 'updateMask': updateMask!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Request for the `ConfigureDnsSettings` method.
class ConfigureDnsSettingsRequest {
  /// Fields of the `DnsSettings` to update.
  DnsSettings? dnsSettings;

  /// The field mask describing which fields to update as a comma-separated
  /// list.
  ///
  /// For example, if only the name servers are being updated for an existing
  /// Custom DNS configuration, the `update_mask` is
  /// `"custom_dns.name_servers"`. When changing the DNS provider from one type
  /// to another, pass the new provider's field name as part of the field mask.
  /// For example, when changing from a Google Domains DNS configuration to a
  /// Custom DNS configuration, the `update_mask` is `"custom_dns"`. //
  ///
  /// Required.
  core.String? updateMask;

  /// Validate the request without actually updating the DNS settings.
  core.bool? validateOnly;

  ConfigureDnsSettingsRequest({
    this.dnsSettings,
    this.updateMask,
    this.validateOnly,
  });

  ConfigureDnsSettingsRequest.fromJson(core.Map json_)
      : this(
          dnsSettings: json_.containsKey('dnsSettings')
              ? DnsSettings.fromJson(
                  json_['dnsSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dnsSettings != null) 'dnsSettings': dnsSettings!,
        if (updateMask != null) 'updateMask': updateMask!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Request for the `ConfigureManagementSettings` method.
class ConfigureManagementSettingsRequest {
  /// Fields of the `ManagementSettings` to update.
  ManagementSettings? managementSettings;

  /// The field mask describing which fields to update as a comma-separated
  /// list.
  ///
  /// For example, if only the transfer lock is being updated, the `update_mask`
  /// is `"transfer_lock_state"`.
  ///
  /// Required.
  core.String? updateMask;

  ConfigureManagementSettingsRequest({
    this.managementSettings,
    this.updateMask,
  });

  ConfigureManagementSettingsRequest.fromJson(core.Map json_)
      : this(
          managementSettings: json_.containsKey('managementSettings')
              ? ManagementSettings.fromJson(json_['managementSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (managementSettings != null)
          'managementSettings': managementSettings!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Details required for a contact associated with a `Registration`.
class Contact {
  /// Email address of the contact.
  ///
  /// Required.
  core.String? email;

  /// Fax number of the contact in international format.
  ///
  /// For example, `"+1-800-555-0123"`.
  core.String? faxNumber;

  /// Phone number of the contact in international format.
  ///
  /// For example, `"+1-800-555-0123"`.
  ///
  /// Required.
  core.String? phoneNumber;

  /// Postal address of the contact.
  ///
  /// Required.
  PostalAddress? postalAddress;

  Contact({
    this.email,
    this.faxNumber,
    this.phoneNumber,
    this.postalAddress,
  });

  Contact.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          faxNumber: json_.containsKey('faxNumber')
              ? json_['faxNumber'] as core.String
              : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
          postalAddress: json_.containsKey('postalAddress')
              ? PostalAddress.fromJson(
                  json_['postalAddress'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (faxNumber != null) 'faxNumber': faxNumber!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (postalAddress != null) 'postalAddress': postalAddress!,
      };
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
  Contact? adminContact;

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
  core.String? privacy;

  /// The registrant contact for the `Registration`.
  ///
  /// *Caution: Anyone with access to this email address, phone number, and/or
  /// postal address can take control of the domain.* *Warning: For new
  /// `Registration`s, the registrant receives an email confirmation that they
  /// must complete within 15 days to avoid domain suspension.*
  ///
  /// Required.
  Contact? registrantContact;

  /// The technical contact for the `Registration`.
  ///
  /// Required.
  Contact? technicalContact;

  ContactSettings({
    this.adminContact,
    this.privacy,
    this.registrantContact,
    this.technicalContact,
  });

  ContactSettings.fromJson(core.Map json_)
      : this(
          adminContact: json_.containsKey('adminContact')
              ? Contact.fromJson(
                  json_['adminContact'] as core.Map<core.String, core.dynamic>)
              : null,
          privacy: json_.containsKey('privacy')
              ? json_['privacy'] as core.String
              : null,
          registrantContact: json_.containsKey('registrantContact')
              ? Contact.fromJson(json_['registrantContact']
                  as core.Map<core.String, core.dynamic>)
              : null,
          technicalContact: json_.containsKey('technicalContact')
              ? Contact.fromJson(json_['technicalContact']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminContact != null) 'adminContact': adminContact!,
        if (privacy != null) 'privacy': privacy!,
        if (registrantContact != null) 'registrantContact': registrantContact!,
        if (technicalContact != null) 'technicalContact': technicalContact!,
      };
}

/// Configuration for an arbitrary DNS provider.
class CustomDns {
  /// The list of DS records for this domain, which are used to enable DNSSEC.
  ///
  /// The domain's DNS provider can provide the values to set here. If this
  /// field is empty, DNSSEC is disabled.
  core.List<DsRecord>? dsRecords;

  /// A list of name servers that store the DNS zone for this domain.
  ///
  /// Each name server is a domain name, with Unicode domain names expressed in
  /// Punycode format.
  ///
  /// Required.
  core.List<core.String>? nameServers;

  CustomDns({
    this.dsRecords,
    this.nameServers,
  });

  CustomDns.fromJson(core.Map json_)
      : this(
          dsRecords: json_.containsKey('dsRecords')
              ? (json_['dsRecords'] as core.List)
                  .map((value) => DsRecord.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nameServers: json_.containsKey('nameServers')
              ? (json_['nameServers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dsRecords != null) 'dsRecords': dsRecords!,
        if (nameServers != null) 'nameServers': nameServers!,
      };
}

/// Defines the DNS configuration of a `Registration`, including name servers,
/// DNSSEC, and glue records.
class DnsSettings {
  /// An arbitrary DNS provider identified by its name servers.
  CustomDns? customDns;

  /// The list of glue records for this `Registration`.
  ///
  /// Commonly empty.
  core.List<GlueRecord>? glueRecords;

  /// The free DNS zone provided by [Google Domains](https://domains.google/).
  GoogleDomainsDns? googleDomainsDns;

  DnsSettings({
    this.customDns,
    this.glueRecords,
    this.googleDomainsDns,
  });

  DnsSettings.fromJson(core.Map json_)
      : this(
          customDns: json_.containsKey('customDns')
              ? CustomDns.fromJson(
                  json_['customDns'] as core.Map<core.String, core.dynamic>)
              : null,
          glueRecords: json_.containsKey('glueRecords')
              ? (json_['glueRecords'] as core.List)
                  .map((value) => GlueRecord.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          googleDomainsDns: json_.containsKey('googleDomainsDns')
              ? GoogleDomainsDns.fromJson(json_['googleDomainsDns']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customDns != null) 'customDns': customDns!,
        if (glueRecords != null) 'glueRecords': glueRecords!,
        if (googleDomainsDns != null) 'googleDomainsDns': googleDomainsDns!,
      };
}

/// A domain that the calling user manages in Google Domains.
class Domain {
  /// The domain name.
  ///
  /// Unicode domain names are expressed in Punycode format.
  core.String? domainName;

  /// The state of this domain as a `Registration` resource.
  /// Possible string values are:
  /// - "RESOURCE_STATE_UNSPECIFIED" : The assessment is undefined.
  /// - "IMPORTABLE" : A `Registration` resource can be created for this domain
  /// by calling `ImportDomain`.
  /// - "UNSUPPORTED" : A `Registration` resource cannot be created for this
  /// domain because it is not supported by Cloud Domains; for example, the
  /// top-level domain is not supported or the registry charges non-standard
  /// pricing for yearly renewals.
  /// - "SUSPENDED" : A `Registration` resource cannot be created for this
  /// domain because it is suspended and needs to be resolved with Google
  /// Domains.
  /// - "EXPIRED" : A `Registration` resource cannot be created for this domain
  /// because it is expired and needs to be renewed with Google Domains.
  /// - "DELETED" : A `Registration` resource cannot be created for this domain
  /// because it is deleted, but can be restored with Google Domains.
  core.String? resourceState;

  /// Price to renew the domain for one year.
  ///
  /// Only set when `resource_state` is `IMPORTABLE`.
  Money? yearlyPrice;

  Domain({
    this.domainName,
    this.resourceState,
    this.yearlyPrice,
  });

  Domain.fromJson(core.Map json_)
      : this(
          domainName: json_.containsKey('domainName')
              ? json_['domainName'] as core.String
              : null,
          resourceState: json_.containsKey('resourceState')
              ? json_['resourceState'] as core.String
              : null,
          yearlyPrice: json_.containsKey('yearlyPrice')
              ? Money.fromJson(
                  json_['yearlyPrice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainName != null) 'domainName': domainName!,
        if (resourceState != null) 'resourceState': resourceState!,
        if (yearlyPrice != null) 'yearlyPrice': yearlyPrice!,
      };
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
  /// - "RSAMD5" : RSA/MD5. Cannot be used for new deployments.
  /// - "DH" : Diffie-Hellman. Cannot be used for new deployments.
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
  /// - "INDIRECT" : Reserved for Indirect Keys. Cannot be used for new
  /// deployments.
  /// - "PRIVATEDNS" : Private algorithm. Cannot be used for new deployments.
  /// - "PRIVATEOID" : Private algorithm OID. Cannot be used for new
  /// deployments.
  core.String? algorithm;

  /// The digest generated from the referenced DNSKEY.
  core.String? digest;

  /// The hash function used to generate the digest of the referenced DNSKEY.
  /// Possible string values are:
  /// - "DIGEST_TYPE_UNSPECIFIED" : The DigestType is unspecified.
  /// - "SHA1" : SHA-1. Not recommended for new deployments.
  /// - "SHA256" : SHA-256.
  /// - "GOST3411" : GOST R 34.11-94.
  /// - "SHA384" : SHA-384.
  core.String? digestType;

  /// The key tag of the record.
  ///
  /// Must be set in range 0 -- 65535.
  core.int? keyTag;

  DsRecord({
    this.algorithm,
    this.digest,
    this.digestType,
    this.keyTag,
  });

  DsRecord.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          digest: json_.containsKey('digest')
              ? json_['digest'] as core.String
              : null,
          digestType: json_.containsKey('digestType')
              ? json_['digestType'] as core.String
              : null,
          keyTag:
              json_.containsKey('keyTag') ? json_['keyTag'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (digest != null) 'digest': digest!,
        if (digestType != null) 'digestType': digestType!,
        if (keyTag != null) 'keyTag': keyTag!,
      };
}

/// Request for the `ExportRegistration` method.
typedef ExportRegistrationRequest = $Empty;

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
  core.String? hostName;

  /// List of IPv4 addresses corresponding to this host in the standard decimal
  /// format (e.g. `198.51.100.1`).
  ///
  /// At least one of `ipv4_address` and `ipv6_address` must be set.
  core.List<core.String>? ipv4Addresses;

  /// List of IPv6 addresses corresponding to this host in the standard
  /// hexadecimal format (e.g. `2001:db8::`).
  ///
  /// At least one of `ipv4_address` and `ipv6_address` must be set.
  core.List<core.String>? ipv6Addresses;

  GlueRecord({
    this.hostName,
    this.ipv4Addresses,
    this.ipv6Addresses,
  });

  GlueRecord.fromJson(core.Map json_)
      : this(
          hostName: json_.containsKey('hostName')
              ? json_['hostName'] as core.String
              : null,
          ipv4Addresses: json_.containsKey('ipv4Addresses')
              ? (json_['ipv4Addresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ipv6Addresses: json_.containsKey('ipv6Addresses')
              ? (json_['ipv6Addresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostName != null) 'hostName': hostName!,
        if (ipv4Addresses != null) 'ipv4Addresses': ipv4Addresses!,
        if (ipv6Addresses != null) 'ipv6Addresses': ipv6Addresses!,
      };
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
  core.List<DsRecord>? dsRecords;

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
  core.String? dsState;

  /// A list of name servers that store the DNS zone for this domain.
  ///
  /// Each name server is a domain name, with Unicode domain names expressed in
  /// Punycode format. This field is automatically populated with the name
  /// servers assigned to the Google Domains DNS zone.
  ///
  /// Output only.
  core.List<core.String>? nameServers;

  GoogleDomainsDns({
    this.dsRecords,
    this.dsState,
    this.nameServers,
  });

  GoogleDomainsDns.fromJson(core.Map json_)
      : this(
          dsRecords: json_.containsKey('dsRecords')
              ? (json_['dsRecords'] as core.List)
                  .map((value) => DsRecord.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dsState: json_.containsKey('dsState')
              ? json_['dsState'] as core.String
              : null,
          nameServers: json_.containsKey('nameServers')
              ? (json_['nameServers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dsRecords != null) 'dsRecords': dsRecords!,
        if (dsState != null) 'dsState': dsState!,
        if (nameServers != null) 'nameServers': nameServers!,
      };
}

/// Request for the `ImportDomain` method.
class ImportDomainRequest {
  /// The domain name.
  ///
  /// Unicode domain names must be expressed in Punycode format.
  ///
  /// Required.
  core.String? domainName;

  /// Set of labels associated with the `Registration`.
  core.Map<core.String, core.String>? labels;

  ImportDomainRequest({
    this.domainName,
    this.labels,
  });

  ImportDomainRequest.fromJson(core.Map json_)
      : this(
          domainName: json_.containsKey('domainName')
              ? json_['domainName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainName != null) 'domainName': domainName!,
        if (labels != null) 'labels': labels!,
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

/// Response for the `ListRegistrations` method.
class ListRegistrationsResponse {
  /// When present, there are more results to retrieve.
  ///
  /// Set `page_token` to this value on a subsequent call to get the next page
  /// of results.
  core.String? nextPageToken;

  /// A list of `Registration`s.
  core.List<Registration>? registrations;

  ListRegistrationsResponse({
    this.nextPageToken,
    this.registrations,
  });

  ListRegistrationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          registrations: json_.containsKey('registrations')
              ? (json_['registrations'] as core.List)
                  .map((value) => Registration.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (registrations != null) 'registrations': registrations!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location;

/// Defines renewal, billing, and transfer settings for a `Registration`.
class ManagementSettings {
  /// The renewal method for this `Registration`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RENEWAL_METHOD_UNSPECIFIED" : The renewal method is undefined.
  /// - "AUTOMATIC_RENEWAL" : The domain is automatically renewed each year . To
  /// disable automatic renewals, delete the resource by calling
  /// `DeleteRegistration` or export it by calling `ExportRegistration`.
  /// - "MANUAL_RENEWAL" : The domain must be explicitly renewed each year
  /// before its `expire_time`. This option is only available when the
  /// `Registration` is in state `EXPORTED`. To manage the domain's current
  /// billing and renewal settings, go to
  /// [Google Domains](https://domains.google/).
  core.String? renewalMethod;

  /// Controls whether the domain can be transferred to another registrar.
  /// Possible string values are:
  /// - "TRANSFER_LOCK_STATE_UNSPECIFIED" : The state is unspecified.
  /// - "UNLOCKED" : The domain is unlocked and can be transferred to another
  /// registrar.
  /// - "LOCKED" : The domain is locked and cannot be transferred to another
  /// registrar.
  core.String? transferLockState;

  ManagementSettings({
    this.renewalMethod,
    this.transferLockState,
  });

  ManagementSettings.fromJson(core.Map json_)
      : this(
          renewalMethod: json_.containsKey('renewalMethod')
              ? json_['renewalMethod'] as core.String
              : null,
          transferLockState: json_.containsKey('transferLockState')
              ? json_['transferLockState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (renewalMethod != null) 'renewalMethod': renewalMethod!,
        if (transferLockState != null) 'transferLockState': transferLockState!,
      };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

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
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

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
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an
/// internationalization-ready address widget such as
/// https://github.com/google/libaddressinput) - Users should not be presented
/// with UI elements for input or editing of fields outside countries where that
/// field is used. For more guidance on how to use this schema, please see:
/// https://support.google.com/business/answer/6397478
typedef PostalAddress = $PostalAddress;

/// Request for the `RegisterDomain` method.
class RegisterDomainRequest {
  /// The list of contact notices that the caller acknowledges.
  ///
  /// The notices needed here depend on the values specified in
  /// `registration.contact_settings`.
  core.List<core.String>? contactNotices;

  /// The list of domain notices that you acknowledge.
  ///
  /// Call `RetrieveRegisterParameters` to see the notices that need
  /// acknowledgement.
  core.List<core.String>? domainNotices;

  /// The complete `Registration` resource to be created.
  ///
  /// Required.
  Registration? registration;

  /// When true, only validation is performed, without actually registering the
  /// domain.
  ///
  /// Follows:
  /// https://cloud.google.com/apis/design/design_patterns#request_validation
  core.bool? validateOnly;

  /// Yearly price to register or renew the domain.
  ///
  /// The value that should be put here can be obtained from
  /// RetrieveRegisterParameters or SearchDomains calls.
  ///
  /// Required.
  Money? yearlyPrice;

  RegisterDomainRequest({
    this.contactNotices,
    this.domainNotices,
    this.registration,
    this.validateOnly,
    this.yearlyPrice,
  });

  RegisterDomainRequest.fromJson(core.Map json_)
      : this(
          contactNotices: json_.containsKey('contactNotices')
              ? (json_['contactNotices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          domainNotices: json_.containsKey('domainNotices')
              ? (json_['domainNotices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          registration: json_.containsKey('registration')
              ? Registration.fromJson(
                  json_['registration'] as core.Map<core.String, core.dynamic>)
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
          yearlyPrice: json_.containsKey('yearlyPrice')
              ? Money.fromJson(
                  json_['yearlyPrice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactNotices != null) 'contactNotices': contactNotices!,
        if (domainNotices != null) 'domainNotices': domainNotices!,
        if (registration != null) 'registration': registration!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
        if (yearlyPrice != null) 'yearlyPrice': yearlyPrice!,
      };
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
  core.String? availability;

  /// The domain name.
  ///
  /// Unicode domain names are expressed in Punycode format.
  core.String? domainName;

  /// Notices about special properties of the domain.
  core.List<core.String>? domainNotices;

  /// Contact privacy options that the domain supports.
  core.List<core.String>? supportedPrivacy;

  /// Price to register or renew the domain for one year.
  Money? yearlyPrice;

  RegisterParameters({
    this.availability,
    this.domainName,
    this.domainNotices,
    this.supportedPrivacy,
    this.yearlyPrice,
  });

  RegisterParameters.fromJson(core.Map json_)
      : this(
          availability: json_.containsKey('availability')
              ? json_['availability'] as core.String
              : null,
          domainName: json_.containsKey('domainName')
              ? json_['domainName'] as core.String
              : null,
          domainNotices: json_.containsKey('domainNotices')
              ? (json_['domainNotices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          supportedPrivacy: json_.containsKey('supportedPrivacy')
              ? (json_['supportedPrivacy'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          yearlyPrice: json_.containsKey('yearlyPrice')
              ? Money.fromJson(
                  json_['yearlyPrice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availability != null) 'availability': availability!,
        if (domainName != null) 'domainName': domainName!,
        if (domainNotices != null) 'domainNotices': domainNotices!,
        if (supportedPrivacy != null) 'supportedPrivacy': supportedPrivacy!,
        if (yearlyPrice != null) 'yearlyPrice': yearlyPrice!,
      };
}

/// The `Registration` resource facilitates managing and configuring domain name
/// registrations.
///
/// There are several ways to create a new `Registration` resource: To create a
/// new `Registration` resource, find a suitable domain name by calling the
/// `SearchDomains` method with a query to see available domain name options.
/// After choosing a name, call `RetrieveRegisterParameters` to ensure
/// availability and obtain information like pricing, which is needed to build a
/// call to `RegisterDomain`. Another way to create a new `Registration` is to
/// transfer an existing domain from another registrar. First, go to the current
/// registrar to unlock the domain for transfer and retrieve the domain's
/// transfer authorization code. Then call `RetrieveTransferParameters` to
/// confirm that the domain is unlocked and to get values needed to build a call
/// to `TransferDomain`. Finally, you can create a new `Registration` by
/// importing an existing domain managed with
/// [Google Domains](https://domains.google/). First, call
/// `RetrieveImportableDomains` to list domains to which the calling user has
/// sufficient access. Then call `ImportDomain` on any domain names you want to
/// use with Cloud Domains.
class Registration {
  /// Settings for contact information linked to the `Registration`.
  ///
  /// You cannot update these with the `UpdateRegistration` method. To update
  /// these settings, use the `ConfigureContactSettings` method.
  ///
  /// Required.
  ContactSettings? contactSettings;

  /// The creation timestamp of the `Registration` resource.
  ///
  /// Output only.
  core.String? createTime;

  /// Settings controlling the DNS configuration of the `Registration`.
  ///
  /// You cannot update these with the `UpdateRegistration` method. To update
  /// these settings, use the `ConfigureDnsSettings` method.
  DnsSettings? dnsSettings;

  /// The domain name.
  ///
  /// Unicode domain names must be expressed in Punycode format.
  ///
  /// Required. Immutable.
  core.String? domainName;

  /// The expiration timestamp of the `Registration`.
  ///
  /// Output only.
  core.String? expireTime;

  /// The set of issues with the `Registration` that require attention.
  ///
  /// Output only.
  core.List<core.String>? issues;

  /// Set of labels associated with the `Registration`.
  core.Map<core.String, core.String>? labels;

  /// Settings for management of the `Registration`, including renewal, billing,
  /// and transfer.
  ///
  /// You cannot update these with the `UpdateRegistration` method. To update
  /// these settings, use the `ConfigureManagementSettings` method.
  ManagementSettings? managementSettings;

  /// Name of the `Registration` resource, in the format `projects / *
  /// /locations / * /registrations/`.
  ///
  /// Output only.
  core.String? name;

  /// Pending contact settings for the `Registration`.
  ///
  /// Updates to the `contact_settings` field that change its
  /// `registrant_contact` or `privacy` fields require email confirmation by the
  /// `registrant_contact` before taking effect. This field is set only if there
  /// are pending updates to the `contact_settings` that have not been
  /// confirmed. To confirm the changes, the `registrant_contact` must follow
  /// the instructions in the email they receive.
  ///
  /// Output only.
  ContactSettings? pendingContactSettings;

  /// The reason the domain registration failed.
  ///
  /// Only set for domains in REGISTRATION_FAILED state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REGISTER_FAILURE_REASON_UNSPECIFIED" : Register failure unspecified.
  /// - "REGISTER_FAILURE_REASON_UNKNOWN" : Registration failed for an unknown
  /// reason.
  /// - "DOMAIN_NOT_AVAILABLE" : The domain is not available for registration.
  /// - "INVALID_CONTACTS" : The provided contact information was rejected.
  core.String? registerFailureReason;

  /// The state of the `Registration`
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is undefined.
  /// - "REGISTRATION_PENDING" : The domain is being registered.
  /// - "REGISTRATION_FAILED" : The domain registration failed. You can delete
  /// resources in this state to allow registration to be retried.
  /// - "TRANSFER_PENDING" : The domain is being transferred from another
  /// registrar to Cloud Domains.
  /// - "TRANSFER_FAILED" : The attempt to transfer the domain from another
  /// registrar to Cloud Domains failed. You can delete resources in this state
  /// and retry the transfer.
  /// - "IMPORT_PENDING" : The domain is being imported from Google Domains to
  /// Cloud Domains.
  /// - "ACTIVE" : The domain is registered and operational. The domain renews
  /// automatically as long as it remains in this state.
  /// - "SUSPENDED" : The domain is suspended and inoperative. For more details,
  /// see the `issues` field.
  /// - "EXPORTED" : The domain is no longer managed with Cloud Domains. It may
  /// have been transferred to another registrar or exported for management in
  /// [Google Domains](https://domains.google/). You can no longer update it
  /// with this API, and information shown about it may be stale. Domains in
  /// this state are not automatically renewed by Cloud Domains.
  core.String? state;

  /// Set of options for the `contact_settings.privacy` field that this
  /// `Registration` supports.
  ///
  /// Output only.
  core.List<core.String>? supportedPrivacy;

  /// The reason the domain transfer failed.
  ///
  /// Only set for domains in TRANSFER_FAILED state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TRANSFER_FAILURE_REASON_UNSPECIFIED" : Transfer failure unspecified.
  /// - "TRANSFER_FAILURE_REASON_UNKNOWN" : Transfer failed for an unknown
  /// reason.
  /// - "EMAIL_CONFIRMATION_FAILURE" : An email confirmation sent to the user
  /// was rejected or expired.
  /// - "DOMAIN_NOT_REGISTERED" : The domain is available for registration.
  /// - "DOMAIN_HAS_TRANSFER_LOCK" : The domain has a transfer lock with its
  /// current registrar which must be removed prior to transfer.
  /// - "INVALID_AUTHORIZATION_CODE" : The authorization code entered is not
  /// valid.
  /// - "TRANSFER_CANCELLED" : The transfer was cancelled by the domain owner,
  /// current registrar, or TLD registry.
  /// - "TRANSFER_REJECTED" : The transfer was rejected by the current
  /// registrar. Contact the current registrar for more information.
  /// - "INVALID_REGISTRANT_EMAIL_ADDRESS" : The registrant email address cannot
  /// be parsed from the domain's current public contact data.
  /// - "DOMAIN_NOT_ELIGIBLE_FOR_TRANSFER" : The domain is not eligible for
  /// transfer due requirements imposed by the current registrar or TLD
  /// registry.
  /// - "TRANSFER_ALREADY_PENDING" : Another transfer is already pending for
  /// this domain. The existing transfer attempt must expire or be cancelled in
  /// order to proceed.
  core.String? transferFailureReason;

  Registration({
    this.contactSettings,
    this.createTime,
    this.dnsSettings,
    this.domainName,
    this.expireTime,
    this.issues,
    this.labels,
    this.managementSettings,
    this.name,
    this.pendingContactSettings,
    this.registerFailureReason,
    this.state,
    this.supportedPrivacy,
    this.transferFailureReason,
  });

  Registration.fromJson(core.Map json_)
      : this(
          contactSettings: json_.containsKey('contactSettings')
              ? ContactSettings.fromJson(json_['contactSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dnsSettings: json_.containsKey('dnsSettings')
              ? DnsSettings.fromJson(
                  json_['dnsSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          domainName: json_.containsKey('domainName')
              ? json_['domainName'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          issues: json_.containsKey('issues')
              ? (json_['issues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          managementSettings: json_.containsKey('managementSettings')
              ? ManagementSettings.fromJson(json_['managementSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pendingContactSettings: json_.containsKey('pendingContactSettings')
              ? ContactSettings.fromJson(json_['pendingContactSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          registerFailureReason: json_.containsKey('registerFailureReason')
              ? json_['registerFailureReason'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          supportedPrivacy: json_.containsKey('supportedPrivacy')
              ? (json_['supportedPrivacy'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          transferFailureReason: json_.containsKey('transferFailureReason')
              ? json_['transferFailureReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactSettings != null) 'contactSettings': contactSettings!,
        if (createTime != null) 'createTime': createTime!,
        if (dnsSettings != null) 'dnsSettings': dnsSettings!,
        if (domainName != null) 'domainName': domainName!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (issues != null) 'issues': issues!,
        if (labels != null) 'labels': labels!,
        if (managementSettings != null)
          'managementSettings': managementSettings!,
        if (name != null) 'name': name!,
        if (pendingContactSettings != null)
          'pendingContactSettings': pendingContactSettings!,
        if (registerFailureReason != null)
          'registerFailureReason': registerFailureReason!,
        if (state != null) 'state': state!,
        if (supportedPrivacy != null) 'supportedPrivacy': supportedPrivacy!,
        if (transferFailureReason != null)
          'transferFailureReason': transferFailureReason!,
      };
}

/// Request for the `ResetAuthorizationCode` method.
typedef ResetAuthorizationCodeRequest = $Empty;

/// Response for the `RetrieveImportableDomains` method.
class RetrieveImportableDomainsResponse {
  /// A list of domains that the calling user manages in Google Domains.
  core.List<Domain>? domains;

  /// When present, there are more results to retrieve.
  ///
  /// Set `page_token` to this value on a subsequent call to get the next page
  /// of results.
  core.String? nextPageToken;

  RetrieveImportableDomainsResponse({
    this.domains,
    this.nextPageToken,
  });

  RetrieveImportableDomainsResponse.fromJson(core.Map json_)
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
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domains != null) 'domains': domains!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for the `RetrieveRegisterParameters` method.
class RetrieveRegisterParametersResponse {
  /// Parameters to use when calling the `RegisterDomain` method.
  RegisterParameters? registerParameters;

  RetrieveRegisterParametersResponse({
    this.registerParameters,
  });

  RetrieveRegisterParametersResponse.fromJson(core.Map json_)
      : this(
          registerParameters: json_.containsKey('registerParameters')
              ? RegisterParameters.fromJson(json_['registerParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (registerParameters != null)
          'registerParameters': registerParameters!,
      };
}

/// Response for the `RetrieveTransferParameters` method.
class RetrieveTransferParametersResponse {
  /// Parameters to use when calling the `TransferDomain` method.
  TransferParameters? transferParameters;

  RetrieveTransferParametersResponse({
    this.transferParameters,
  });

  RetrieveTransferParametersResponse.fromJson(core.Map json_)
      : this(
          transferParameters: json_.containsKey('transferParameters')
              ? TransferParameters.fromJson(json_['transferParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transferParameters != null)
          'transferParameters': transferParameters!,
      };
}

/// Response for the `SearchDomains` method.
class SearchDomainsResponse {
  /// Results of the domain name search.
  core.List<RegisterParameters>? registerParameters;

  SearchDomainsResponse({
    this.registerParameters,
  });

  SearchDomainsResponse.fromJson(core.Map json_)
      : this(
          registerParameters: json_.containsKey('registerParameters')
              ? (json_['registerParameters'] as core.List)
                  .map((value) => RegisterParameters.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (registerParameters != null)
          'registerParameters': registerParameters!,
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

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $TestIamPermissionsResponse;

/// Request for the `TransferDomain` method.
class TransferDomainRequest {
  /// The domain's transfer authorization code.
  ///
  /// You can obtain this from the domain's current registrar.
  AuthorizationCode? authorizationCode;

  /// The list of contact notices that you acknowledge.
  ///
  /// The notices needed here depend on the values specified in
  /// `registration.contact_settings`.
  core.List<core.String>? contactNotices;

  /// The complete `Registration` resource to be created.
  ///
  /// You can leave `registration.dns_settings` unset to import the domain's
  /// current DNS configuration from its current registrar. Use this option only
  /// if you are sure that the domain's current DNS service does not cease upon
  /// transfer, as is often the case for DNS services provided for free by the
  /// registrar.
  ///
  /// Required.
  Registration? registration;

  /// Validate the request without actually transferring the domain.
  core.bool? validateOnly;

  /// Acknowledgement of the price to transfer or renew the domain for one year.
  ///
  /// Call `RetrieveTransferParameters` to obtain the price, which you must
  /// acknowledge.
  ///
  /// Required.
  Money? yearlyPrice;

  TransferDomainRequest({
    this.authorizationCode,
    this.contactNotices,
    this.registration,
    this.validateOnly,
    this.yearlyPrice,
  });

  TransferDomainRequest.fromJson(core.Map json_)
      : this(
          authorizationCode: json_.containsKey('authorizationCode')
              ? AuthorizationCode.fromJson(json_['authorizationCode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          contactNotices: json_.containsKey('contactNotices')
              ? (json_['contactNotices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          registration: json_.containsKey('registration')
              ? Registration.fromJson(
                  json_['registration'] as core.Map<core.String, core.dynamic>)
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
          yearlyPrice: json_.containsKey('yearlyPrice')
              ? Money.fromJson(
                  json_['yearlyPrice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizationCode != null) 'authorizationCode': authorizationCode!,
        if (contactNotices != null) 'contactNotices': contactNotices!,
        if (registration != null) 'registration': registration!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
        if (yearlyPrice != null) 'yearlyPrice': yearlyPrice!,
      };
}

/// Parameters required to transfer a domain from another registrar.
class TransferParameters {
  /// The registrar that currently manages the domain.
  core.String? currentRegistrar;

  /// The URL of registrar that currently manages the domain.
  core.String? currentRegistrarUri;

  /// The domain name.
  ///
  /// Unicode domain names are expressed in Punycode format.
  core.String? domainName;

  /// The name servers that currently store the configuration of the domain.
  core.List<core.String>? nameServers;

  /// Contact privacy options that the domain supports.
  core.List<core.String>? supportedPrivacy;

  /// Indicates whether the domain is protected by a transfer lock.
  ///
  /// For a transfer to succeed, this must show `UNLOCKED`. To unlock a domain,
  /// go to its current registrar.
  /// Possible string values are:
  /// - "TRANSFER_LOCK_STATE_UNSPECIFIED" : The state is unspecified.
  /// - "UNLOCKED" : The domain is unlocked and can be transferred to another
  /// registrar.
  /// - "LOCKED" : The domain is locked and cannot be transferred to another
  /// registrar.
  core.String? transferLockState;

  /// Price to transfer or renew the domain for one year.
  Money? yearlyPrice;

  TransferParameters({
    this.currentRegistrar,
    this.currentRegistrarUri,
    this.domainName,
    this.nameServers,
    this.supportedPrivacy,
    this.transferLockState,
    this.yearlyPrice,
  });

  TransferParameters.fromJson(core.Map json_)
      : this(
          currentRegistrar: json_.containsKey('currentRegistrar')
              ? json_['currentRegistrar'] as core.String
              : null,
          currentRegistrarUri: json_.containsKey('currentRegistrarUri')
              ? json_['currentRegistrarUri'] as core.String
              : null,
          domainName: json_.containsKey('domainName')
              ? json_['domainName'] as core.String
              : null,
          nameServers: json_.containsKey('nameServers')
              ? (json_['nameServers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          supportedPrivacy: json_.containsKey('supportedPrivacy')
              ? (json_['supportedPrivacy'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          transferLockState: json_.containsKey('transferLockState')
              ? json_['transferLockState'] as core.String
              : null,
          yearlyPrice: json_.containsKey('yearlyPrice')
              ? Money.fromJson(
                  json_['yearlyPrice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentRegistrar != null) 'currentRegistrar': currentRegistrar!,
        if (currentRegistrarUri != null)
          'currentRegistrarUri': currentRegistrarUri!,
        if (domainName != null) 'domainName': domainName!,
        if (nameServers != null) 'nameServers': nameServers!,
        if (supportedPrivacy != null) 'supportedPrivacy': supportedPrivacy!,
        if (transferLockState != null) 'transferLockState': transferLockState!,
        if (yearlyPrice != null) 'yearlyPrice': yearlyPrice!,
      };
}
