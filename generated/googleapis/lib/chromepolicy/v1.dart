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

/// Chrome Policy API - v1
///
/// The Chrome Policy API is a suite of services that allows Chrome
/// administrators to control the policies applied to their managed Chrome OS
/// devices and Chrome browsers.
///
/// For more information, see <https://developers.google.com/chrome/policy>
///
/// Create an instance of [ChromePolicyApi] to access these resources:
///
/// - [CustomersResource]
///   - [CustomersPoliciesResource]
///     - [CustomersPoliciesGroupsResource]
///     - [CustomersPoliciesNetworksResource]
///     - [CustomersPoliciesOrgunitsResource]
///   - [CustomersPolicySchemasResource]
/// - [MediaResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// The Chrome Policy API is a suite of services that allows Chrome
/// administrators to control the policies applied to their managed Chrome OS
/// devices and Chrome browsers.
class ChromePolicyApi {
  /// See, edit, create or delete policies applied to ChromeOS and Chrome
  /// Browsers managed within your organization
  static const chromeManagementPolicyScope =
      'https://www.googleapis.com/auth/chrome.management.policy';

  /// See policies applied to ChromeOS and Chrome Browsers managed within your
  /// organization
  static const chromeManagementPolicyReadonlyScope =
      'https://www.googleapis.com/auth/chrome.management.policy.readonly';

  final commons.ApiRequester _requester;

  CustomersResource get customers => CustomersResource(_requester);
  MediaResource get media => MediaResource(_requester);

  ChromePolicyApi(http.Client client,
      {core.String rootUrl = 'https://chromepolicy.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class CustomersResource {
  final commons.ApiRequester _requester;

  CustomersPoliciesResource get policies =>
      CustomersPoliciesResource(_requester);
  CustomersPolicySchemasResource get policySchemas =>
      CustomersPolicySchemasResource(_requester);

  CustomersResource(commons.ApiRequester client) : _requester = client;
}

class CustomersPoliciesResource {
  final commons.ApiRequester _requester;

  CustomersPoliciesGroupsResource get groups =>
      CustomersPoliciesGroupsResource(_requester);
  CustomersPoliciesNetworksResource get networks =>
      CustomersPoliciesNetworksResource(_requester);
  CustomersPoliciesOrgunitsResource get orgunits =>
      CustomersPoliciesOrgunitsResource(_requester);

  CustomersPoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the resolved policy values for a list of policies that match a search
  /// query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - ID of the G Suite account or literal "my_customer" for the
  /// customer associated to the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromePolicyVersionsV1ResolveResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyVersionsV1ResolveResponse> resolve(
    GoogleChromePolicyVersionsV1ResolveRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$customer') + '/policies:resolve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromePolicyVersionsV1ResolveResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomersPoliciesGroupsResource {
  final commons.ApiRequester _requester;

  CustomersPoliciesGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete multiple policy values that are applied to a specific group.
  ///
  /// All targets must have the same target format. That is to say that they
  /// must point to the same target resource and must have the same keys
  /// specified in `additionalTargetKeyNames`, though the values for those keys
  /// may be different. On failure the request will return the error details as
  /// part of the google.rpc.Status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - ID of the Google Workspace account or literal "my_customer"
  /// for the customer associated to the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> batchDelete(
    GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/groups:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modify multiple policy values that are applied to a specific group.
  ///
  /// All targets must have the same target format. That is to say that they
  /// must point to the same target resource and must have the same keys
  /// specified in `additionalTargetKeyNames`, though the values for those keys
  /// may be different. On failure the request will return the error details as
  /// part of the google.rpc.Status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - ID of the Google Workspace account or literal "my_customer"
  /// for the customer associated to the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> batchModify(
    GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/groups:batchModify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a group priority ordering for an app.
  ///
  /// The target app must be supplied in `additionalTargetKeyNames` in the
  /// PolicyTargetKey. On failure the request will return the error details as
  /// part of the google.rpc.Status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. ID of the Google Workspace account or literal
  /// "my_customer" for the customer associated to the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse>
      listGroupPriorityOrdering(
    GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/groups:listGroupPriorityOrdering';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a group priority ordering for an app.
  ///
  /// The target app must be supplied in `additionalTargetKeyNames` in the
  /// PolicyTargetKey. On failure the request will return the error details as
  /// part of the google.rpc.Status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. ID of the Google Workspace account or literal
  /// "my_customer" for the customer associated to the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> updateGroupPriorityOrdering(
    GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/groups:updateGroupPriorityOrdering';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomersPoliciesNetworksResource {
  final commons.ApiRequester _requester;

  CustomersPoliciesNetworksResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a certificate at a specified OU for a customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer for which the certificate will apply.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromePolicyVersionsV1DefineCertificateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyVersionsV1DefineCertificateResponse>
      defineCertificate(
    GoogleChromePolicyVersionsV1DefineCertificateRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/networks:defineCertificate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromePolicyVersionsV1DefineCertificateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Define a new network.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer who will own this new network.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromePolicyVersionsV1DefineNetworkResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyVersionsV1DefineNetworkResponse> defineNetwork(
    GoogleChromePolicyVersionsV1DefineNetworkRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/networks:defineNetwork';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromePolicyVersionsV1DefineNetworkResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Remove an existing certificate by guid.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer whose certificate will be removed.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromePolicyVersionsV1RemoveCertificateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyVersionsV1RemoveCertificateResponse>
      removeCertificate(
    GoogleChromePolicyVersionsV1RemoveCertificateRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/networks:removeCertificate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromePolicyVersionsV1RemoveCertificateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Remove an existing network by guid.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer whose network will be removed.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromePolicyVersionsV1RemoveNetworkResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyVersionsV1RemoveNetworkResponse> removeNetwork(
    GoogleChromePolicyVersionsV1RemoveNetworkRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/networks:removeNetwork';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleChromePolicyVersionsV1RemoveNetworkResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomersPoliciesOrgunitsResource {
  final commons.ApiRequester _requester;

  CustomersPoliciesOrgunitsResource(commons.ApiRequester client)
      : _requester = client;

  /// Modify multiple policy values that are applied to a specific org unit so
  /// that they now inherit the value from a parent (if applicable).
  ///
  /// All targets must have the same target format. That is to say that they
  /// must point to the same target resource and must have the same keys
  /// specified in `additionalTargetKeyNames`, though the values for those keys
  /// may be different. On failure the request will return the error details as
  /// part of the google.rpc.Status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - ID of the G Suite account or literal "my_customer" for the
  /// customer associated to the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> batchInherit(
    GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/orgunits:batchInherit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modify multiple policy values that are applied to a specific org unit.
  ///
  /// All targets must have the same target format. That is to say that they
  /// must point to the same target resource and must have the same keys
  /// specified in `additionalTargetKeyNames`, though the values for those keys
  /// may be different. On failure the request will return the error details as
  /// part of the google.rpc.Status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - ID of the G Suite account or literal "my_customer" for the
  /// customer associated to the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> batchModify(
    GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/orgunits:batchModify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomersPolicySchemasResource {
  final commons.ApiRequester _requester;

  CustomersPolicySchemasResource(commons.ApiRequester client)
      : _requester = client;

  /// Get a specific policy schema for a customer by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The policy schema resource name to query.
  /// Value must have pattern `^customers/\[^/\]+/policySchemas/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromePolicyVersionsV1PolicySchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyVersionsV1PolicySchema> get(
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
    return GoogleChromePolicyVersionsV1PolicySchema.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a list of policy schemas that match a specified filter value for a
  /// given customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The customer for which the listing request will
  /// apply.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - The schema filter used to find a particular schema based on
  /// fields like its resource name, description and `additionalTargetKeyNames`.
  ///
  /// [pageSize] - The maximum number of policy schemas to return, defaults to
  /// 100 and has a maximum of 1000.
  ///
  /// [pageToken] - The page token used to retrieve a specific page of the
  /// listing request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromePolicyVersionsV1ListPolicySchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyVersionsV1ListPolicySchemasResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/policySchemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleChromePolicyVersionsV1ListPolicySchemasResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Creates an enterprise file from the content provided by user.
  ///
  /// Returns a public download url for end user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer for which the file upload will apply.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [GoogleChromePolicyVersionsV1UploadPolicyFileResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyVersionsV1UploadPolicyFileResponse> upload(
    GoogleChromePolicyVersionsV1UploadPolicyFileRequest request,
    core.String customer, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'v1/' +
          core.Uri.encodeFull('$customer') +
          '/policies/files:uploadPolicyFile';
    } else {
      url_ = '/upload/v1/' +
          core.Uri.encodeFull('$customer') +
          '/policies/files:uploadPolicyFile';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return GoogleChromePolicyVersionsV1UploadPolicyFileResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Additional key names that will be used to identify the target of the policy
/// value.
class GoogleChromePolicyVersionsV1AdditionalTargetKeyName {
  /// Key name.
  core.String? key;

  /// Key description.
  core.String? keyDescription;

  GoogleChromePolicyVersionsV1AdditionalTargetKeyName({
    this.key,
    this.keyDescription,
  });

  GoogleChromePolicyVersionsV1AdditionalTargetKeyName.fromJson(core.Map json_)
      : this(
          key: json_['key'] as core.String?,
          keyDescription: json_['keyDescription'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (keyDescription != null) 'keyDescription': keyDescription!,
      };
}

/// Request message for specifying that multiple policy values will be deleted.
class GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest {
  /// List of policies that will be deleted as defined by the `requests`.
  ///
  /// All requests in the list must follow these restrictions: 1. All schemas in
  /// the list must have the same root namespace. 2. All
  /// `policyTargetKey.targetResource` values must point to a group resource. 3.
  /// All `policyTargetKey` values must have the same `app_id` key name in the
  /// `additionalTargetKeys`. 4. No two modification requests can reference the
  /// same `policySchema` + ` policyTargetKey` pair.
  core.List<GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest>? requests;

  GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest({
    this.requests,
  });

  GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest.fromJson(
      core.Map json_)
      : this(
          requests: (json_['requests'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Request message for specifying that multiple policy values inherit their
/// value from their parents.
class GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest {
  /// List of policies that have to inherit their values as defined by the
  /// `requests`.
  ///
  /// All requests in the list must follow these restrictions: 1. All schemas in
  /// the list must have the same root namespace. 2. All
  /// `policyTargetKey.targetResource` values must point to an org unit
  /// resource. 3. All `policyTargetKey` values must have the same key names in
  /// the ` additionalTargetKeys`. This also means if one of the targets has an
  /// empty `additionalTargetKeys` map, all of the targets must have an empty
  /// `additionalTargetKeys` map. 4. No two modification requests can reference
  /// the same `policySchema` + ` policyTargetKey` pair.
  core.List<GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest>? requests;

  GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest({
    this.requests,
  });

  GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest.fromJson(
      core.Map json_)
      : this(
          requests: (json_['requests'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Request message for modifying multiple policy values for a specific
/// group-based target.
class GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest {
  /// List of policies to modify as defined by the `requests`.
  ///
  /// All requests in the list must follow these restrictions: 1. All schemas in
  /// the list must have the same root namespace. 2. All
  /// `policyTargetKey.targetResource` values must point to a group resource. 3.
  /// All `policyTargetKey` values must have the same `app_id` key name in the
  /// `additionalTargetKeys`. 4. No two modification requests can reference the
  /// same `policySchema` + ` policyTargetKey` pair.
  core.List<GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest>? requests;

  GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest({
    this.requests,
  });

  GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest.fromJson(
      core.Map json_)
      : this(
          requests: (json_['requests'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Request message for modifying multiple policy values for a specific target.
class GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest {
  /// List of policies to modify as defined by the `requests`.
  ///
  /// All requests in the list must follow these restrictions: 1. All schemas in
  /// the list must have the same root namespace. 2. All
  /// `policyTargetKey.targetResource` values must point to an org unit
  /// resource. 3. All `policyTargetKey` values must have the same key names in
  /// the ` additionalTargetKeys`. This also means if one of the targets has an
  /// empty `additionalTargetKeys` map, all of the targets must have an empty
  /// `additionalTargetKeys` map. 4. No two modification requests can reference
  /// the same `policySchema` + ` policyTargetKey` pair.
  core.List<GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest>? requests;

  GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest({
    this.requests,
  });

  GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest.fromJson(
      core.Map json_)
      : this(
          requests: (json_['requests'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Request object for creating a certificate.
class GoogleChromePolicyVersionsV1DefineCertificateRequest {
  /// The optional name of the certificate.
  ///
  /// If not specified, the certificate issuer will be used as the name.
  ///
  /// Optional.
  core.String? ceritificateName;

  /// The raw contents of the .PEM, .CRT, or .CER file.
  ///
  /// Required.
  core.String? certificate;

  /// Certificate settings within the chrome.networks.certificates namespace.
  ///
  /// Optional.
  core.List<GoogleChromePolicyVersionsV1NetworkSetting>? settings;

  /// The target resource on which this certificate is applied.
  ///
  /// The following resources are supported: * Organizational Unit
  /// ("orgunits/{orgunit_id}")
  ///
  /// Required.
  core.String? targetResource;

  GoogleChromePolicyVersionsV1DefineCertificateRequest({
    this.ceritificateName,
    this.certificate,
    this.settings,
    this.targetResource,
  });

  GoogleChromePolicyVersionsV1DefineCertificateRequest.fromJson(core.Map json_)
      : this(
          ceritificateName: json_['ceritificateName'] as core.String?,
          certificate: json_['certificate'] as core.String?,
          settings: (json_['settings'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1NetworkSetting.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          targetResource: json_['targetResource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ceritificateName != null) 'ceritificateName': ceritificateName!,
        if (certificate != null) 'certificate': certificate!,
        if (settings != null) 'settings': settings!,
        if (targetResource != null) 'targetResource': targetResource!,
      };
}

/// Response object for creating a certificate.
class GoogleChromePolicyVersionsV1DefineCertificateResponse {
  /// The guid of the certificate created by the action.
  core.String? networkId;

  /// the affiliated settings of the certificate (NOT IMPLEMENTED)
  core.List<GoogleChromePolicyVersionsV1NetworkSetting>? settings;

  /// the resource at which the certificate is defined.
  core.String? targetResource;

  GoogleChromePolicyVersionsV1DefineCertificateResponse({
    this.networkId,
    this.settings,
    this.targetResource,
  });

  GoogleChromePolicyVersionsV1DefineCertificateResponse.fromJson(core.Map json_)
      : this(
          networkId: json_['networkId'] as core.String?,
          settings: (json_['settings'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1NetworkSetting.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          targetResource: json_['targetResource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkId != null) 'networkId': networkId!,
        if (settings != null) 'settings': settings!,
        if (targetResource != null) 'targetResource': targetResource!,
      };
}

/// Request object for creating a new network.
class GoogleChromePolicyVersionsV1DefineNetworkRequest {
  /// Name of the new created network.
  ///
  /// Required.
  core.String? name;

  /// Detailed network settings.
  ///
  /// Required.
  core.List<GoogleChromePolicyVersionsV1NetworkSetting>? settings;

  /// The target resource on which this new network will be defined.
  ///
  /// The following resources are supported: * Organizational Unit
  /// ("orgunits/{orgunit_id}")
  ///
  /// Required.
  core.String? targetResource;

  GoogleChromePolicyVersionsV1DefineNetworkRequest({
    this.name,
    this.settings,
    this.targetResource,
  });

  GoogleChromePolicyVersionsV1DefineNetworkRequest.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          settings: (json_['settings'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1NetworkSetting.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          targetResource: json_['targetResource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (settings != null) 'settings': settings!,
        if (targetResource != null) 'targetResource': targetResource!,
      };
}

/// Response object for creating a network.
class GoogleChromePolicyVersionsV1DefineNetworkResponse {
  /// Network ID of the new created network.
  core.String? networkId;

  /// Detailed network settings of the new created network
  core.List<GoogleChromePolicyVersionsV1NetworkSetting>? settings;

  /// The target resource on which this new network will be defined.
  ///
  /// The following resources are supported: * Organizational Unit
  /// ("orgunits/{orgunit_id}")
  core.String? targetResource;

  GoogleChromePolicyVersionsV1DefineNetworkResponse({
    this.networkId,
    this.settings,
    this.targetResource,
  });

  GoogleChromePolicyVersionsV1DefineNetworkResponse.fromJson(core.Map json_)
      : this(
          networkId: json_['networkId'] as core.String?,
          settings: (json_['settings'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1NetworkSetting.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          targetResource: json_['targetResource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkId != null) 'networkId': networkId!,
        if (settings != null) 'settings': settings!,
        if (targetResource != null) 'targetResource': targetResource!,
      };
}

/// Request parameters for deleting the policy value of a specific group target.
class GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest {
  /// The fully qualified name of the policy schema that is being inherited.
  core.String? policySchema;

  /// The key of the target for which we want to modify a policy.
  ///
  /// The target resource must point to a Group.
  ///
  /// Required.
  GoogleChromePolicyVersionsV1PolicyTargetKey? policyTargetKey;

  GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest({
    this.policySchema,
    this.policyTargetKey,
  });

  GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest.fromJson(core.Map json_)
      : this(
          policySchema: json_['policySchema'] as core.String?,
          policyTargetKey: json_.containsKey('policyTargetKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policySchema != null) 'policySchema': policySchema!,
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
      };
}

/// Information about any range constraints.
class GoogleChromePolicyVersionsV1FieldConstraints {
  /// The allowed range for numeric fields.
  GoogleChromePolicyVersionsV1NumericRangeConstraint? numericRangeConstraint;

  /// Constraints on the uploaded file of a file policy.
  ///
  /// If present, this policy requires a URL that can be fetched by uploading a
  /// file with the constraints specified in this proto.
  GoogleChromePolicyVersionsV1UploadedFileConstraints? uploadedFileConstraints;

  GoogleChromePolicyVersionsV1FieldConstraints({
    this.numericRangeConstraint,
    this.uploadedFileConstraints,
  });

  GoogleChromePolicyVersionsV1FieldConstraints.fromJson(core.Map json_)
      : this(
          numericRangeConstraint: json_.containsKey('numericRangeConstraint')
              ? GoogleChromePolicyVersionsV1NumericRangeConstraint.fromJson(
                  json_['numericRangeConstraint']
                      as core.Map<core.String, core.dynamic>)
              : null,
          uploadedFileConstraints: json_.containsKey('uploadedFileConstraints')
              ? GoogleChromePolicyVersionsV1UploadedFileConstraints.fromJson(
                  json_['uploadedFileConstraints']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numericRangeConstraint != null)
          'numericRangeConstraint': numericRangeConstraint!,
        if (uploadedFileConstraints != null)
          'uploadedFileConstraints': uploadedFileConstraints!,
      };
}

/// Request parameters for inheriting policy value of a specific org unit target
/// from the policy value of its parent org unit.
class GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest {
  /// The fully qualified name of the policy schema that is being inherited.
  core.String? policySchema;

  /// The key of the target for which we want to modify a policy.
  ///
  /// The target resource must point to an Org Unit.
  ///
  /// Required.
  GoogleChromePolicyVersionsV1PolicyTargetKey? policyTargetKey;

  GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest({
    this.policySchema,
    this.policyTargetKey,
  });

  GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest.fromJson(
      core.Map json_)
      : this(
          policySchema: json_['policySchema'] as core.String?,
          policyTargetKey: json_.containsKey('policyTargetKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policySchema != null) 'policySchema': policySchema!,
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
      };
}

/// Request message for listing the group priority ordering of an app.
class GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest {
  /// The namespace of the policy type for the request.
  core.String? policyNamespace;

  /// The schema name of the policy for the request.
  core.String? policySchema;

  /// The key of the target for which we want to retrieve the group priority
  /// ordering.
  ///
  /// The target resource must point to an app.
  ///
  /// Required.
  GoogleChromePolicyVersionsV1PolicyTargetKey? policyTargetKey;

  GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest({
    this.policyNamespace,
    this.policySchema,
    this.policyTargetKey,
  });

  GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest.fromJson(
      core.Map json_)
      : this(
          policyNamespace: json_['policyNamespace'] as core.String?,
          policySchema: json_['policySchema'] as core.String?,
          policyTargetKey: json_.containsKey('policyTargetKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyNamespace != null) 'policyNamespace': policyNamespace!,
        if (policySchema != null) 'policySchema': policySchema!,
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
      };
}

/// Response message for listing the group priority ordering of an app.
class GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse {
  /// The group IDs, in priority ordering.
  ///
  /// Output only.
  core.List<core.String>? groupIds;

  /// The namespace of the policy type of the group IDs.
  ///
  /// Output only.
  core.String? policyNamespace;

  /// The schema name of the policy for the group IDs.
  ///
  /// Output only.
  core.String? policySchema;

  /// The target resource for which the group priority ordering has been
  /// retrieved.
  ///
  /// Output only.
  GoogleChromePolicyVersionsV1PolicyTargetKey? policyTargetKey;

  GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse({
    this.groupIds,
    this.policyNamespace,
    this.policySchema,
    this.policyTargetKey,
  });

  GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse.fromJson(
      core.Map json_)
      : this(
          groupIds: (json_['groupIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          policyNamespace: json_['policyNamespace'] as core.String?,
          policySchema: json_['policySchema'] as core.String?,
          policyTargetKey: json_.containsKey('policyTargetKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupIds != null) 'groupIds': groupIds!,
        if (policyNamespace != null) 'policyNamespace': policyNamespace!,
        if (policySchema != null) 'policySchema': policySchema!,
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
      };
}

/// Response message for listing policy schemas that match a filter.
class GoogleChromePolicyVersionsV1ListPolicySchemasResponse {
  /// The page token used to get the next page of policy schemas.
  core.String? nextPageToken;

  /// The list of policy schemas that match the query.
  core.List<GoogleChromePolicyVersionsV1PolicySchema>? policySchemas;

  GoogleChromePolicyVersionsV1ListPolicySchemasResponse({
    this.nextPageToken,
    this.policySchemas,
  });

  GoogleChromePolicyVersionsV1ListPolicySchemasResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          policySchemas: (json_['policySchemas'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1PolicySchema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (policySchemas != null) 'policySchemas': policySchemas!,
      };
}

/// Request parameters for modifying a policy value for a specific group target.
class GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest {
  /// The key of the target for which we want to modify a policy.
  ///
  /// The target resource must point to a Group.
  ///
  /// Required.
  GoogleChromePolicyVersionsV1PolicyTargetKey? policyTargetKey;

  /// The new value for the policy.
  GoogleChromePolicyVersionsV1PolicyValue? policyValue;

  /// Policy fields to update.
  ///
  /// Only fields in this mask will be updated; other fields in `policy_value`
  /// will be ignored (even if they have values). If a field is in this list it
  /// must have a value in 'policy_value'.
  ///
  /// Required.
  core.String? updateMask;

  GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest({
    this.policyTargetKey,
    this.policyValue,
    this.updateMask,
  });

  GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest.fromJson(core.Map json_)
      : this(
          policyTargetKey: json_.containsKey('policyTargetKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
          policyValue: json_.containsKey('policyValue')
              ? GoogleChromePolicyVersionsV1PolicyValue.fromJson(
                  json_['policyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_['updateMask'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
        if (policyValue != null) 'policyValue': policyValue!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request parameters for modifying a policy value for a specific org unit
/// target.
class GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest {
  /// The key of the target for which we want to modify a policy.
  ///
  /// The target resource must point to an Org Unit.
  ///
  /// Required.
  GoogleChromePolicyVersionsV1PolicyTargetKey? policyTargetKey;

  /// The new value for the policy.
  GoogleChromePolicyVersionsV1PolicyValue? policyValue;

  /// Policy fields to update.
  ///
  /// Only fields in this mask will be updated; other fields in `policy_value`
  /// will be ignored (even if they have values). If a field is in this list it
  /// must have a value in 'policy_value'.
  ///
  /// Required.
  core.String? updateMask;

  GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest({
    this.policyTargetKey,
    this.policyValue,
    this.updateMask,
  });

  GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest.fromJson(
      core.Map json_)
      : this(
          policyTargetKey: json_.containsKey('policyTargetKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
          policyValue: json_.containsKey('policyValue')
              ? GoogleChromePolicyVersionsV1PolicyValue.fromJson(
                  json_['policyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_['updateMask'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
        if (policyValue != null) 'policyValue': policyValue!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// A network setting contains network configurations.
class GoogleChromePolicyVersionsV1NetworkSetting {
  /// The fully qualified name of the network setting.
  core.String? policySchema;

  /// The value of the network setting.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? value;

  GoogleChromePolicyVersionsV1NetworkSetting({
    this.policySchema,
    this.value,
  });

  GoogleChromePolicyVersionsV1NetworkSetting.fromJson(core.Map json_)
      : this(
          policySchema: json_['policySchema'] as core.String?,
          value: json_.containsKey('value')
              ? json_['value'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policySchema != null) 'policySchema': policySchema!,
        if (value != null) 'value': value!,
      };
}

/// A constraint on upper and/or lower bounds, with at least one being set.
class GoogleChromePolicyVersionsV1NumericRangeConstraint {
  /// Maximum value.
  core.String? maximum;

  /// Minimum value.
  core.String? minimum;

  GoogleChromePolicyVersionsV1NumericRangeConstraint({
    this.maximum,
    this.minimum,
  });

  GoogleChromePolicyVersionsV1NumericRangeConstraint.fromJson(core.Map json_)
      : this(
          maximum: json_['maximum'] as core.String?,
          minimum: json_['minimum'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maximum != null) 'maximum': maximum!,
        if (minimum != null) 'minimum': minimum!,
      };
}

/// Lifecycle information.
class GoogleChromePolicyVersionsV1PolicyApiLifecycle {
  /// In the event that this policy was deprecated in favor of another policy,
  /// the fully qualified namespace(s) of the new policies as they will show in
  /// PolicyAPI.
  ///
  /// Could only be set if policy_api_lifecycle_stage is API_DEPRECATED.
  core.List<core.String>? deprecatedInFavorOf;

  /// Description about current life cycle.
  core.String? description;

  /// End supporting date for current policy.
  ///
  /// Attempting to modify a policy after its end support date will result in a
  /// Bad Request (400 error). Could only be set if policy_api_lifecycle_stage
  /// is API_DEPRECATED.
  GoogleTypeDate? endSupport;

  /// Indicates current life cycle stage of the policy API.
  /// Possible string values are:
  /// - "API_UNSPECIFIED" : Policy Api Lifecycle is Unspecified.
  /// - "API_PREVIEW" : Policy is not working yet, but giving developers heads
  /// up on format. This stage can transfer to API_DEVELOPEMNT or API_CURRENT.
  /// - "API_DEVELOPMENT" : Policy can change format in backward incompatible
  /// way (breaking change). This stage can transfer to API_CURRENT or
  /// API_DEPRECATED. This could be used for policies launched only to TTs or
  /// launched to selected customers for emergency usage.
  /// - "API_CURRENT" : Policy in official format. Policy can change format in
  /// backward compatible way (non-breaking change). Example: this policy can
  /// introduce a new field, which is considered non-breaking change, when field
  /// masks are properly utilized. This stage can transfer to API_DEPRECATED.
  /// - "API_DEPRECATED" : Please stop using this policy. This policy is
  /// deprecated and may/will be removed in the future. Most likely a new policy
  /// was introduced to replace this one.
  core.String? policyApiLifecycleStage;

  /// Corresponding to deprecated_in_favor_of, the fully qualified namespace(s)
  /// of the old policies that will be deprecated because of introduction of
  /// this policy.
  core.List<core.String>? scheduledToDeprecatePolicies;

  GoogleChromePolicyVersionsV1PolicyApiLifecycle({
    this.deprecatedInFavorOf,
    this.description,
    this.endSupport,
    this.policyApiLifecycleStage,
    this.scheduledToDeprecatePolicies,
  });

  GoogleChromePolicyVersionsV1PolicyApiLifecycle.fromJson(core.Map json_)
      : this(
          deprecatedInFavorOf: (json_['deprecatedInFavorOf'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          description: json_['description'] as core.String?,
          endSupport: json_.containsKey('endSupport')
              ? GoogleTypeDate.fromJson(
                  json_['endSupport'] as core.Map<core.String, core.dynamic>)
              : null,
          policyApiLifecycleStage:
              json_['policyApiLifecycleStage'] as core.String?,
          scheduledToDeprecatePolicies:
              (json_['scheduledToDeprecatePolicies'] as core.List?)
                  ?.map((value) => value as core.String)
                  .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deprecatedInFavorOf != null)
          'deprecatedInFavorOf': deprecatedInFavorOf!,
        if (description != null) 'description': description!,
        if (endSupport != null) 'endSupport': endSupport!,
        if (policyApiLifecycleStage != null)
          'policyApiLifecycleStage': policyApiLifecycleStage!,
        if (scheduledToDeprecatePolicies != null)
          'scheduledToDeprecatePolicies': scheduledToDeprecatePolicies!,
      };
}

/// Resource representing a policy schema.
class GoogleChromePolicyVersionsV1PolicySchema {
  /// Specific access restrictions related to this policy.
  ///
  /// Output only.
  core.List<core.String>? accessRestrictions;

  /// Additional key names that will be used to identify the target of the
  /// policy value.
  ///
  /// When specifying a `policyTargetKey`, each of the additional keys specified
  /// here will have to be included in the `additionalTargetKeys` map.
  ///
  /// Output only.
  core.List<GoogleChromePolicyVersionsV1AdditionalTargetKeyName>?
      additionalTargetKeyNames;

  /// Title of the category in which a setting belongs.
  core.String? categoryTitle;

  /// Schema definition using proto descriptor.
  Proto2FileDescriptorProto? definition;

  /// Detailed description of each field that is part of the schema.
  ///
  /// Fields are suggested to be displayed by the ordering in this list, not by
  /// field number.
  ///
  /// Output only.
  core.List<GoogleChromePolicyVersionsV1PolicySchemaFieldDescription>?
      fieldDescriptions;

  /// Format: name=customers/{customer}/policySchemas/{schema_namespace}
  core.String? name;

  /// Special notice messages related to setting certain values in certain
  /// fields in the schema.
  ///
  /// Output only.
  core.List<GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription>? notices;

  /// Current lifecycle information.
  ///
  /// Output only.
  GoogleChromePolicyVersionsV1PolicyApiLifecycle? policyApiLifecycle;

  /// Description about the policy schema for user consumption.
  ///
  /// Output only.
  core.String? policyDescription;

  /// The fully qualified name of the policy schema.
  ///
  /// This value is used to fill the field `policy_schema` in PolicyValue when
  /// calling BatchInheritOrgUnitPolicies BatchModifyOrgUnitPolicies
  /// BatchModifyGroupPolicies or BatchDeleteGroupPolicies.
  ///
  /// Output only.
  core.String? schemaName;

  /// URI to related support article for this schema.
  ///
  /// Output only.
  core.String? supportUri;

  /// List indicates that the policy will only apply to devices/users on these
  /// platforms.
  ///
  /// Output only.
  core.List<core.String>? supportedPlatforms;

  /// Information about applicable target resources for the policy.
  ///
  /// Output only.
  core.List<core.String>? validTargetResources;

  GoogleChromePolicyVersionsV1PolicySchema({
    this.accessRestrictions,
    this.additionalTargetKeyNames,
    this.categoryTitle,
    this.definition,
    this.fieldDescriptions,
    this.name,
    this.notices,
    this.policyApiLifecycle,
    this.policyDescription,
    this.schemaName,
    this.supportUri,
    this.supportedPlatforms,
    this.validTargetResources,
  });

  GoogleChromePolicyVersionsV1PolicySchema.fromJson(core.Map json_)
      : this(
          accessRestrictions: (json_['accessRestrictions'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          additionalTargetKeyNames: (json_['additionalTargetKeyNames']
                  as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1AdditionalTargetKeyName.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          categoryTitle: json_['categoryTitle'] as core.String?,
          definition: json_.containsKey('definition')
              ? Proto2FileDescriptorProto.fromJson(
                  json_['definition'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldDescriptions: (json_['fieldDescriptions'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1PolicySchemaFieldDescription
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          notices: (json_['notices'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          policyApiLifecycle: json_.containsKey('policyApiLifecycle')
              ? GoogleChromePolicyVersionsV1PolicyApiLifecycle.fromJson(
                  json_['policyApiLifecycle']
                      as core.Map<core.String, core.dynamic>)
              : null,
          policyDescription: json_['policyDescription'] as core.String?,
          schemaName: json_['schemaName'] as core.String?,
          supportUri: json_['supportUri'] as core.String?,
          supportedPlatforms: (json_['supportedPlatforms'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          validTargetResources: (json_['validTargetResources'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessRestrictions != null)
          'accessRestrictions': accessRestrictions!,
        if (additionalTargetKeyNames != null)
          'additionalTargetKeyNames': additionalTargetKeyNames!,
        if (categoryTitle != null) 'categoryTitle': categoryTitle!,
        if (definition != null) 'definition': definition!,
        if (fieldDescriptions != null) 'fieldDescriptions': fieldDescriptions!,
        if (name != null) 'name': name!,
        if (notices != null) 'notices': notices!,
        if (policyApiLifecycle != null)
          'policyApiLifecycle': policyApiLifecycle!,
        if (policyDescription != null) 'policyDescription': policyDescription!,
        if (schemaName != null) 'schemaName': schemaName!,
        if (supportUri != null) 'supportUri': supportUri!,
        if (supportedPlatforms != null)
          'supportedPlatforms': supportedPlatforms!,
        if (validTargetResources != null)
          'validTargetResources': validTargetResources!,
      };
}

/// The field and the value it must have for another field to be allowed to be
/// set.
class GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies {
  /// The source field which this field depends on.
  core.String? sourceField;

  /// The value which the source field must have for this field to be allowed to
  /// be set.
  core.String? sourceFieldValue;

  GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies({
    this.sourceField,
    this.sourceFieldValue,
  });

  GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies.fromJson(
      core.Map json_)
      : this(
          sourceField: json_['sourceField'] as core.String?,
          sourceFieldValue: json_['sourceFieldValue'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceField != null) 'sourceField': sourceField!,
        if (sourceFieldValue != null) 'sourceFieldValue': sourceFieldValue!,
      };
}

/// Provides detailed information for a particular field that is part of a
/// PolicySchema.
class GoogleChromePolicyVersionsV1PolicySchemaFieldDescription {
  /// Client default if the policy is unset.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? defaultValue;

  /// Use name and field_description instead.
  ///
  /// The description for the field.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? description;

  /// The name of the field for associated with this description.
  ///
  /// Output only.
  core.String? field;

  /// Information on any input constraints associated on the values for the
  /// field.
  ///
  /// Output only.
  GoogleChromePolicyVersionsV1FieldConstraints? fieldConstraints;

  /// Provides a list of fields and values.
  ///
  /// At least one of the fields must have the corresponding value in order for
  /// this field to be allowed to be set.
  ///
  /// Output only.
  core.List<GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies>?
      fieldDependencies;

  /// The description of the field.
  ///
  /// Output only.
  core.String? fieldDescription;

  /// Any input constraints associated on the values for the field.
  ///
  /// Output only.
  core.String? inputConstraint;

  /// If the field has a set of known values, this field will provide a
  /// description for these values.
  ///
  /// Output only.
  core.List<GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription>?
      knownValueDescriptions;

  /// The name of the field.
  ///
  /// Output only.
  core.String? name;

  /// Provides the description of the fields nested in this field, if the field
  /// is a message type that defines multiple fields.
  ///
  /// Fields are suggested to be displayed by the ordering in this list, not by
  /// field number.
  ///
  /// Output only.
  core.List<GoogleChromePolicyVersionsV1PolicySchemaFieldDescription>?
      nestedFieldDescriptions;

  /// Provides a list of fields that are required to be set if this field has a
  /// certain value.
  ///
  /// Output only.
  core.List<GoogleChromePolicyVersionsV1PolicySchemaRequiredItems>?
      requiredItems;

  GoogleChromePolicyVersionsV1PolicySchemaFieldDescription({
    this.defaultValue,
    this.description,
    this.field,
    this.fieldConstraints,
    this.fieldDependencies,
    this.fieldDescription,
    this.inputConstraint,
    this.knownValueDescriptions,
    this.name,
    this.nestedFieldDescriptions,
    this.requiredItems,
  });

  GoogleChromePolicyVersionsV1PolicySchemaFieldDescription.fromJson(
      core.Map json_)
      : this(
          defaultValue: json_['defaultValue'],
          description: json_['description'] as core.String?,
          field: json_['field'] as core.String?,
          fieldConstraints: json_.containsKey('fieldConstraints')
              ? GoogleChromePolicyVersionsV1FieldConstraints.fromJson(
                  json_['fieldConstraints']
                      as core.Map<core.String, core.dynamic>)
              : null,
          fieldDependencies: (json_['fieldDependencies'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          fieldDescription: json_['fieldDescription'] as core.String?,
          inputConstraint: json_['inputConstraint'] as core.String?,
          knownValueDescriptions: (json_['knownValueDescriptions']
                  as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          nestedFieldDescriptions: (json_['nestedFieldDescriptions']
                  as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1PolicySchemaFieldDescription
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          requiredItems: (json_['requiredItems'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1PolicySchemaRequiredItems
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (description != null) 'description': description!,
        if (field != null) 'field': field!,
        if (fieldConstraints != null) 'fieldConstraints': fieldConstraints!,
        if (fieldDependencies != null) 'fieldDependencies': fieldDependencies!,
        if (fieldDescription != null) 'fieldDescription': fieldDescription!,
        if (inputConstraint != null) 'inputConstraint': inputConstraint!,
        if (knownValueDescriptions != null)
          'knownValueDescriptions': knownValueDescriptions!,
        if (name != null) 'name': name!,
        if (nestedFieldDescriptions != null)
          'nestedFieldDescriptions': nestedFieldDescriptions!,
        if (requiredItems != null) 'requiredItems': requiredItems!,
      };
}

/// Provides detailed information about a known value that is allowed for a
/// particular field in a PolicySchema.
class GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription {
  /// Additional description for this value.
  ///
  /// Output only.
  core.String? description;

  /// Field conditions required for this value to be valid.
  ///
  /// Output only.
  core.List<GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies>?
      fieldDependencies;

  /// The string represenstation of the value that can be set for the field.
  ///
  /// Output only.
  core.String? value;

  GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription({
    this.description,
    this.fieldDependencies,
    this.value,
  });

  GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription.fromJson(
      core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          fieldDependencies: (json_['fieldDependencies'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (fieldDependencies != null) 'fieldDependencies': fieldDependencies!,
        if (value != null) 'value': value!,
      };
}

/// Provides special notice messages related to a particular value in a field
/// that is part of a PolicySchema.
class GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription {
  /// Whether the user needs to acknowledge the notice message before the value
  /// can be set.
  ///
  /// Output only.
  core.bool? acknowledgementRequired;

  /// The field name associated with the notice.
  ///
  /// Output only.
  core.String? field;

  /// The notice message associate with the value of the field.
  ///
  /// Output only.
  core.String? noticeMessage;

  /// The value of the field that has a notice.
  ///
  /// When setting the field to this value, the user may be required to
  /// acknowledge the notice message in order for the value to be set.
  ///
  /// Output only.
  core.String? noticeValue;

  GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription({
    this.acknowledgementRequired,
    this.field,
    this.noticeMessage,
    this.noticeValue,
  });

  GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription.fromJson(
      core.Map json_)
      : this(
          acknowledgementRequired:
              json_['acknowledgementRequired'] as core.bool?,
          field: json_['field'] as core.String?,
          noticeMessage: json_['noticeMessage'] as core.String?,
          noticeValue: json_['noticeValue'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledgementRequired != null)
          'acknowledgementRequired': acknowledgementRequired!,
        if (field != null) 'field': field!,
        if (noticeMessage != null) 'noticeMessage': noticeMessage!,
        if (noticeValue != null) 'noticeValue': noticeValue!,
      };
}

/// The fields that will become required based on the value of this field.
class GoogleChromePolicyVersionsV1PolicySchemaRequiredItems {
  /// The value(s) of the field that provoke required field enforcement.
  ///
  /// An empty field_conditions implies that any value assigned to this field
  /// will provoke required field enforcement.
  core.List<core.String>? fieldConditions;

  /// The fields that are required as a consequence of the field conditions.
  core.List<core.String>? requiredFields;

  GoogleChromePolicyVersionsV1PolicySchemaRequiredItems({
    this.fieldConditions,
    this.requiredFields,
  });

  GoogleChromePolicyVersionsV1PolicySchemaRequiredItems.fromJson(core.Map json_)
      : this(
          fieldConditions: (json_['fieldConditions'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          requiredFields: (json_['requiredFields'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldConditions != null) 'fieldConditions': fieldConditions!,
        if (requiredFields != null) 'requiredFields': requiredFields!,
      };
}

/// The key used to identify the target on which the policy will be applied.
class GoogleChromePolicyVersionsV1PolicyTargetKey {
  /// Map containing the additional target key name and value pairs used to
  /// further identify the target of the policy.
  core.Map<core.String, core.String>? additionalTargetKeys;

  /// The target resource on which this policy is applied.
  ///
  /// The following resources are supported: * Organizational Unit
  /// ("orgunits/{orgunit_id}") * Group ("groups/{group_id}")
  core.String? targetResource;

  GoogleChromePolicyVersionsV1PolicyTargetKey({
    this.additionalTargetKeys,
    this.targetResource,
  });

  GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(core.Map json_)
      : this(
          additionalTargetKeys: (json_['additionalTargetKeys']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          targetResource: json_['targetResource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalTargetKeys != null)
          'additionalTargetKeys': additionalTargetKeys!,
        if (targetResource != null) 'targetResource': targetResource!,
      };
}

/// A particular value for a policy managed by the service.
class GoogleChromePolicyVersionsV1PolicyValue {
  /// The fully qualified name of the policy schema associated with this policy.
  core.String? policySchema;

  /// The value of the policy that is compatible with the schema that it is
  /// associated with.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? value;

  GoogleChromePolicyVersionsV1PolicyValue({
    this.policySchema,
    this.value,
  });

  GoogleChromePolicyVersionsV1PolicyValue.fromJson(core.Map json_)
      : this(
          policySchema: json_['policySchema'] as core.String?,
          value: json_.containsKey('value')
              ? json_['value'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policySchema != null) 'policySchema': policySchema!,
        if (value != null) 'value': value!,
      };
}

/// Request object for removing a certificate.
class GoogleChromePolicyVersionsV1RemoveCertificateRequest {
  /// The GUID of the certificate to remove.
  ///
  /// Required.
  core.String? networkId;

  /// The target resource on which this certificate will be removed.
  ///
  /// The following resources are supported: * Organizational Unit
  /// ("orgunits/{orgunit_id}")
  ///
  /// Required.
  core.String? targetResource;

  GoogleChromePolicyVersionsV1RemoveCertificateRequest({
    this.networkId,
    this.targetResource,
  });

  GoogleChromePolicyVersionsV1RemoveCertificateRequest.fromJson(core.Map json_)
      : this(
          networkId: json_['networkId'] as core.String?,
          targetResource: json_['targetResource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkId != null) 'networkId': networkId!,
        if (targetResource != null) 'targetResource': targetResource!,
      };
}

/// Response object for removing a certificate.
typedef GoogleChromePolicyVersionsV1RemoveCertificateResponse = $Empty;

/// Request object for removing a network
class GoogleChromePolicyVersionsV1RemoveNetworkRequest {
  /// The GUID of the network to remove.
  ///
  /// Required.
  core.String? networkId;

  /// The target resource on which this network will be removed.
  ///
  /// The following resources are supported: * Organizational Unit
  /// ("orgunits/{orgunit_id}")
  ///
  /// Required.
  core.String? targetResource;

  GoogleChromePolicyVersionsV1RemoveNetworkRequest({
    this.networkId,
    this.targetResource,
  });

  GoogleChromePolicyVersionsV1RemoveNetworkRequest.fromJson(core.Map json_)
      : this(
          networkId: json_['networkId'] as core.String?,
          targetResource: json_['targetResource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkId != null) 'networkId': networkId!,
        if (targetResource != null) 'targetResource': targetResource!,
      };
}

/// Response object for removing a network.
typedef GoogleChromePolicyVersionsV1RemoveNetworkResponse = $Empty;

/// Request message for getting the resolved policy value for a specific target.
class GoogleChromePolicyVersionsV1ResolveRequest {
  /// The maximum number of policies to return, defaults to 100 and has a
  /// maximum of 1000.
  core.int? pageSize;

  /// The page token used to retrieve a specific page of the request.
  core.String? pageToken;

  /// The schema filter to apply to the resolve request.
  ///
  /// Specify a schema name to view a particular schema, for example:
  /// chrome.users.ShowLogoutButton Wildcards are supported, but only in the
  /// leaf portion of the schema name. Wildcards cannot be used in namespace
  /// directly. Please read
  /// https://developers.google.com/chrome/policy/guides/policy-schemas for
  /// details on schema namespaces. For example: Valid: "chrome.users.*",
  /// "chrome.users.apps.*", "chrome.printers.*" Invalid: "*", "*.users",
  /// "chrome.*", "chrome.*.apps.*"
  ///
  /// Required.
  core.String? policySchemaFilter;

  /// The key of the target resource on which the policies should be resolved.
  ///
  /// Required.
  GoogleChromePolicyVersionsV1PolicyTargetKey? policyTargetKey;

  GoogleChromePolicyVersionsV1ResolveRequest({
    this.pageSize,
    this.pageToken,
    this.policySchemaFilter,
    this.policyTargetKey,
  });

  GoogleChromePolicyVersionsV1ResolveRequest.fromJson(core.Map json_)
      : this(
          pageSize: json_['pageSize'] as core.int?,
          pageToken: json_['pageToken'] as core.String?,
          policySchemaFilter: json_['policySchemaFilter'] as core.String?,
          policyTargetKey: json_.containsKey('policyTargetKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (policySchemaFilter != null)
          'policySchemaFilter': policySchemaFilter!,
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
      };
}

/// Response message for getting the resolved policy value for a specific
/// target.
class GoogleChromePolicyVersionsV1ResolveResponse {
  /// The page token used to get the next set of resolved policies found by the
  /// request.
  core.String? nextPageToken;

  /// The list of resolved policies found by the resolve request.
  core.List<GoogleChromePolicyVersionsV1ResolvedPolicy>? resolvedPolicies;

  GoogleChromePolicyVersionsV1ResolveResponse({
    this.nextPageToken,
    this.resolvedPolicies,
  });

  GoogleChromePolicyVersionsV1ResolveResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          resolvedPolicies: (json_['resolvedPolicies'] as core.List?)
              ?.map((value) =>
                  GoogleChromePolicyVersionsV1ResolvedPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resolvedPolicies != null) 'resolvedPolicies': resolvedPolicies!,
      };
}

/// The resolved value of a policy for a given target.
class GoogleChromePolicyVersionsV1ResolvedPolicy {
  /// The added source key establishes at which level an entity was explicitly
  /// added for management.
  ///
  /// This is useful for certain type of policies that are only applied if they
  /// are explicitly added for management. For example: apps and networks. An
  /// entity can only be deleted from management in an Organizational Unit that
  /// it was explicitly added to. If this is not present it means that the
  /// policy is managed without the need to explicitly add an entity, for
  /// example: standard user or device policies.
  ///
  /// Output only.
  GoogleChromePolicyVersionsV1PolicyTargetKey? addedSourceKey;

  /// The source resource from which this policy value is obtained.
  ///
  /// May be the same as `targetKey` if the policy is directly modified on the
  /// target, otherwise it would be another resource from which the policy gets
  /// its value (if applicable). If not present, the source is the default value
  /// for the customer.
  ///
  /// Output only.
  GoogleChromePolicyVersionsV1PolicyTargetKey? sourceKey;

  /// The target resource for which the resolved policy value applies.
  ///
  /// Output only.
  GoogleChromePolicyVersionsV1PolicyTargetKey? targetKey;

  /// The resolved value of the policy.
  ///
  /// Output only.
  GoogleChromePolicyVersionsV1PolicyValue? value;

  GoogleChromePolicyVersionsV1ResolvedPolicy({
    this.addedSourceKey,
    this.sourceKey,
    this.targetKey,
    this.value,
  });

  GoogleChromePolicyVersionsV1ResolvedPolicy.fromJson(core.Map json_)
      : this(
          addedSourceKey: json_.containsKey('addedSourceKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['addedSourceKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
          sourceKey: json_.containsKey('sourceKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['sourceKey'] as core.Map<core.String, core.dynamic>)
              : null,
          targetKey: json_.containsKey('targetKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['targetKey'] as core.Map<core.String, core.dynamic>)
              : null,
          value: json_.containsKey('value')
              ? GoogleChromePolicyVersionsV1PolicyValue.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addedSourceKey != null) 'addedSourceKey': addedSourceKey!,
        if (sourceKey != null) 'sourceKey': sourceKey!,
        if (targetKey != null) 'targetKey': targetKey!,
        if (value != null) 'value': value!,
      };
}

/// Request message for updating the group priority ordering of an app.
class GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest {
  /// The group IDs, in desired priority ordering.
  ///
  /// Required.
  core.List<core.String>? groupIds;

  /// The namespace of the policy type for the request.
  core.String? policyNamespace;

  /// The schema name of the policy for the request.
  core.String? policySchema;

  /// The key of the target for which we want to update the group priority
  /// ordering.
  ///
  /// The target resource must point to an app.
  ///
  /// Required.
  GoogleChromePolicyVersionsV1PolicyTargetKey? policyTargetKey;

  GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest({
    this.groupIds,
    this.policyNamespace,
    this.policySchema,
    this.policyTargetKey,
  });

  GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest.fromJson(
      core.Map json_)
      : this(
          groupIds: (json_['groupIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          policyNamespace: json_['policyNamespace'] as core.String?,
          policySchema: json_['policySchema'] as core.String?,
          policyTargetKey: json_.containsKey('policyTargetKey')
              ? GoogleChromePolicyVersionsV1PolicyTargetKey.fromJson(
                  json_['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupIds != null) 'groupIds': groupIds!,
        if (policyNamespace != null) 'policyNamespace': policyNamespace!,
        if (policySchema != null) 'policySchema': policySchema!,
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
      };
}

/// Request message for uploading a file for a policy.
class GoogleChromePolicyVersionsV1UploadPolicyFileRequest {
  /// The fully qualified policy schema and field name this file is uploaded
  /// for.
  ///
  /// This information will be used to validate the content type of the file.
  ///
  /// Required.
  core.String? policyField;

  GoogleChromePolicyVersionsV1UploadPolicyFileRequest({
    this.policyField,
  });

  GoogleChromePolicyVersionsV1UploadPolicyFileRequest.fromJson(core.Map json_)
      : this(
          policyField: json_['policyField'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyField != null) 'policyField': policyField!,
      };
}

/// Response message for downloading an uploaded file.
class GoogleChromePolicyVersionsV1UploadPolicyFileResponse {
  /// The uri for end user to download the file.
  core.String? downloadUri;

  GoogleChromePolicyVersionsV1UploadPolicyFileResponse({
    this.downloadUri,
  });

  GoogleChromePolicyVersionsV1UploadPolicyFileResponse.fromJson(core.Map json_)
      : this(
          downloadUri: json_['downloadUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (downloadUri != null) 'downloadUri': downloadUri!,
      };
}

/// Constraints on the uploaded file of a file policy.
class GoogleChromePolicyVersionsV1UploadedFileConstraints {
  /// The size limit of uploaded files for a setting, in bytes.
  core.String? sizeLimitBytes;

  /// File types that can be uploaded for a setting.
  core.List<core.String>? supportedContentTypes;

  GoogleChromePolicyVersionsV1UploadedFileConstraints({
    this.sizeLimitBytes,
    this.supportedContentTypes,
  });

  GoogleChromePolicyVersionsV1UploadedFileConstraints.fromJson(core.Map json_)
      : this(
          sizeLimitBytes: json_['sizeLimitBytes'] as core.String?,
          supportedContentTypes: (json_['supportedContentTypes'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sizeLimitBytes != null) 'sizeLimitBytes': sizeLimitBytes!,
        if (supportedContentTypes != null)
          'supportedContentTypes': supportedContentTypes!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

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

/// Describes a message type.
class Proto2DescriptorProto {
  core.List<Proto2EnumDescriptorProto>? enumType;
  core.List<Proto2FieldDescriptorProto>? field;
  core.String? name;
  core.List<Proto2DescriptorProto>? nestedType;
  core.List<Proto2OneofDescriptorProto>? oneofDecl;

  Proto2DescriptorProto({
    this.enumType,
    this.field,
    this.name,
    this.nestedType,
    this.oneofDecl,
  });

  Proto2DescriptorProto.fromJson(core.Map json_)
      : this(
          enumType: (json_['enumType'] as core.List?)
              ?.map((value) => Proto2EnumDescriptorProto.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          field: (json_['field'] as core.List?)
              ?.map((value) => Proto2FieldDescriptorProto.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          nestedType: (json_['nestedType'] as core.List?)
              ?.map((value) => Proto2DescriptorProto.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          oneofDecl: (json_['oneofDecl'] as core.List?)
              ?.map((value) => Proto2OneofDescriptorProto.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enumType != null) 'enumType': enumType!,
        if (field != null) 'field': field!,
        if (name != null) 'name': name!,
        if (nestedType != null) 'nestedType': nestedType!,
        if (oneofDecl != null) 'oneofDecl': oneofDecl!,
      };
}

/// Describes an enum type.
class Proto2EnumDescriptorProto {
  core.String? name;
  core.List<Proto2EnumValueDescriptorProto>? value;

  Proto2EnumDescriptorProto({
    this.name,
    this.value,
  });

  Proto2EnumDescriptorProto.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          value: (json_['value'] as core.List?)
              ?.map((value) => Proto2EnumValueDescriptorProto.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Describes a value within an enum.
class Proto2EnumValueDescriptorProto {
  core.String? name;
  core.int? number;

  Proto2EnumValueDescriptorProto({
    this.name,
    this.number,
  });

  Proto2EnumValueDescriptorProto.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          number: json_['number'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (number != null) 'number': number!,
      };
}

/// Describes a field within a message.
class Proto2FieldDescriptorProto {
  /// For numeric types, contains the original text representation of the value.
  ///
  /// For booleans, "true" or "false". For strings, contains the default text
  /// contents (not escaped in any way). For bytes, contains the C escaped
  /// value. All bytes \>= 128 are escaped.
  core.String? defaultValue;

  /// JSON name of this field.
  ///
  /// The value is set by protocol compiler. If the user has set a "json_name"
  /// option on this field, that option's value will be used. Otherwise, it's
  /// deduced from the field's name by converting it to camelCase.
  core.String? jsonName;

  ///
  /// Possible string values are:
  /// - "LABEL_OPTIONAL" : 0 is reserved for errors
  /// - "LABEL_REPEATED"
  /// - "LABEL_REQUIRED" : The required label is only allowed in proto2. In
  /// proto3 and Editions it's explicitly prohibited. In Editions, the
  /// `field_presence` feature can be used to get this behavior.
  core.String? label;
  core.String? name;
  core.int? number;

  /// If set, gives the index of a oneof in the containing type's oneof_decl
  /// list.
  ///
  /// This field is a member of that oneof.
  core.int? oneofIndex;

  /// If true, this is a proto3 "optional".
  ///
  /// When a proto3 field is optional, it tracks presence regardless of field
  /// type. When proto3_optional is true, this field must belong to a oneof to
  /// signal to old proto3 clients that presence is tracked for this field. This
  /// oneof is known as a "synthetic" oneof, and this field must be its sole
  /// member (each proto3 optional field gets its own synthetic oneof).
  /// Synthetic oneofs exist in the descriptor only, and do not generate any
  /// API. Synthetic oneofs must be ordered after all "real" oneofs. For message
  /// fields, proto3_optional doesn't create any semantic change, since
  /// non-repeated message fields always track presence. However it still
  /// indicates the semantic detail of whether the user wrote "optional" or not.
  /// This can be useful for round-tripping the .proto file. For consistency we
  /// give message fields a synthetic oneof also, even though it is not required
  /// to track presence. This is especially important because the parser can't
  /// tell if a field is a message or an enum, so it must always create a
  /// synthetic oneof. Proto2 optional fields do not set this flag, because they
  /// already indicate optional with `LABEL_OPTIONAL`.
  core.bool? proto3Optional;

  /// If type_name is set, this need not be set.
  ///
  /// If both this and type_name are set, this must be one of TYPE_ENUM,
  /// TYPE_MESSAGE or TYPE_GROUP.
  /// Possible string values are:
  /// - "TYPE_DOUBLE" : 0 is reserved for errors. Order is weird for historical
  /// reasons.
  /// - "TYPE_FLOAT"
  /// - "TYPE_INT64" : Not ZigZag encoded. Negative numbers take 10 bytes. Use
  /// TYPE_SINT64 if negative values are likely.
  /// - "TYPE_UINT64"
  /// - "TYPE_INT32" : Not ZigZag encoded. Negative numbers take 10 bytes. Use
  /// TYPE_SINT32 if negative values are likely.
  /// - "TYPE_FIXED64"
  /// - "TYPE_FIXED32"
  /// - "TYPE_BOOL"
  /// - "TYPE_STRING"
  /// - "TYPE_GROUP" : Tag-delimited aggregate. Group type is deprecated and not
  /// supported after proto2. However, Proto3 implementations should still be
  /// able to parse the group wire format and treat group fields as unknown
  /// fields. In Editions, the group wire format can be enabled via the
  /// `message_encoding` feature.
  /// - "TYPE_MESSAGE" : Length-delimited aggregate.
  /// - "TYPE_BYTES" : New in version 2.
  /// - "TYPE_UINT32"
  /// - "TYPE_ENUM"
  /// - "TYPE_SFIXED32"
  /// - "TYPE_SFIXED64"
  /// - "TYPE_SINT32" : Uses ZigZag encoding.
  /// - "TYPE_SINT64" : Uses ZigZag encoding.
  core.String? type;

  /// For message and enum types, this is the name of the type.
  ///
  /// If the name starts with a '.', it is fully-qualified. Otherwise, C++-like
  /// scoping rules are used to find the type (i.e. first the nested types
  /// within this message are searched, then within the parent, on up to the
  /// root namespace).
  core.String? typeName;

  Proto2FieldDescriptorProto({
    this.defaultValue,
    this.jsonName,
    this.label,
    this.name,
    this.number,
    this.oneofIndex,
    this.proto3Optional,
    this.type,
    this.typeName,
  });

  Proto2FieldDescriptorProto.fromJson(core.Map json_)
      : this(
          defaultValue: json_['defaultValue'] as core.String?,
          jsonName: json_['jsonName'] as core.String?,
          label: json_['label'] as core.String?,
          name: json_['name'] as core.String?,
          number: json_['number'] as core.int?,
          oneofIndex: json_['oneofIndex'] as core.int?,
          proto3Optional: json_['proto3Optional'] as core.bool?,
          type: json_['type'] as core.String?,
          typeName: json_['typeName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (jsonName != null) 'jsonName': jsonName!,
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (number != null) 'number': number!,
        if (oneofIndex != null) 'oneofIndex': oneofIndex!,
        if (proto3Optional != null) 'proto3Optional': proto3Optional!,
        if (type != null) 'type': type!,
        if (typeName != null) 'typeName': typeName!,
      };
}

/// Describes a complete .proto file.
class Proto2FileDescriptorProto {
  /// BEGIN GOOGLE-INTERNAL TODO(b/297898292) Deprecate and remove this field in
  /// favor of enums.
  ///
  /// END GOOGLE-INTERNAL
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? editionDeprecated;
  core.List<Proto2EnumDescriptorProto>? enumType;

  /// All top-level definitions in this file.
  core.List<Proto2DescriptorProto>? messageType;

  /// file name, relative to root of source tree
  core.String? name;

  /// e.g. "foo", "foo.bar", etc.
  core.String? package;

  /// The syntax of the proto file.
  ///
  /// The supported values are "proto2", "proto3", and "editions". If `edition`
  /// is present, this value must be "editions". WARNING: This field should only
  /// be used by protobuf plugins or special cases like the proto compiler.
  /// Other uses are discouraged and developers should rely on the protoreflect
  /// APIs for their client language.
  core.String? syntax;

  Proto2FileDescriptorProto({
    this.editionDeprecated,
    this.enumType,
    this.messageType,
    this.name,
    this.package,
    this.syntax,
  });

  Proto2FileDescriptorProto.fromJson(core.Map json_)
      : this(
          editionDeprecated: json_['editionDeprecated'] as core.String?,
          enumType: (json_['enumType'] as core.List?)
              ?.map((value) => Proto2EnumDescriptorProto.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messageType: (json_['messageType'] as core.List?)
              ?.map((value) => Proto2DescriptorProto.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          package: json_['package'] as core.String?,
          syntax: json_['syntax'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (editionDeprecated != null) 'editionDeprecated': editionDeprecated!,
        if (enumType != null) 'enumType': enumType!,
        if (messageType != null) 'messageType': messageType!,
        if (name != null) 'name': name!,
        if (package != null) 'package': package!,
        if (syntax != null) 'syntax': syntax!,
      };
}

/// Describes a oneof.
class Proto2OneofDescriptorProto {
  core.String? name;

  Proto2OneofDescriptorProto({
    this.name,
  });

  Proto2OneofDescriptorProto.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}
