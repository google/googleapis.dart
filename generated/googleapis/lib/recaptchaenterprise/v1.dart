// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// reCAPTCHA Enterprise API - v1
///
/// Help protect your website from fraudulent activity, spam, and abuse without
/// creating friction.
///
/// For more information, see <https://cloud.google.com/recaptcha-enterprise/>
///
/// Create an instance of [RecaptchaEnterpriseApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsAssessmentsResource]
///   - [ProjectsFirewallpoliciesResource]
///   - [ProjectsKeysResource]
///   - [ProjectsRelatedaccountgroupmembershipsResource]
///   - [ProjectsRelatedaccountgroupsResource]
///     - [ProjectsRelatedaccountgroupsMembershipsResource]
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

/// Help protect your website from fraudulent activity, spam, and abuse without
/// creating friction.
class RecaptchaEnterpriseApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  RecaptchaEnterpriseApi(http.Client client,
      {core.String rootUrl = 'https://recaptchaenterprise.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAssessmentsResource get assessments =>
      ProjectsAssessmentsResource(_requester);
  ProjectsFirewallpoliciesResource get firewallpolicies =>
      ProjectsFirewallpoliciesResource(_requester);
  ProjectsKeysResource get keys => ProjectsKeysResource(_requester);
  ProjectsRelatedaccountgroupmembershipsResource
      get relatedaccountgroupmemberships =>
          ProjectsRelatedaccountgroupmembershipsResource(_requester);
  ProjectsRelatedaccountgroupsResource get relatedaccountgroups =>
      ProjectsRelatedaccountgroupsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAssessmentsResource {
  final commons.ApiRequester _requester;

  ProjectsAssessmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Annotates a previously created Assessment to provide additional
  /// information on whether the event turned out to be authentic or fraudulent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Assessment, in the format
  /// `projects/{project}/assessments/{assessment}`.
  /// Value must have pattern `^projects/\[^/\]+/assessments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse>
      annotate(
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an Assessment of the likelihood an event is legitimate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in which the assessment will
  /// be created, in the format `projects/{project}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecaptchaenterpriseV1Assessment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1Assessment> create(
    GoogleCloudRecaptchaenterpriseV1Assessment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assessments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1Assessment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsFirewallpoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsFirewallpoliciesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new FirewallPolicy, specifying conditions at which reCAPTCHA
  /// Enterprise actions can be executed.
  ///
  /// A project may have a maximum of 1000 policies.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project this policy will apply to, in
  /// the format `projects/{project}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecaptchaenterpriseV1FirewallPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1FirewallPolicy> create(
    GoogleCloudRecaptchaenterpriseV1FirewallPolicy request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/firewallpolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1FirewallPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified firewall policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the policy to be deleted, in the format
  /// `projects/{project}/firewallpolicies/{firewallpolicy}`.
  /// Value must have pattern `^projects/\[^/\]+/firewallpolicies/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> delete(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the specified firewall policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested policy, in the format
  /// `projects/{project}/firewallpolicies/{firewallpolicy}`.
  /// Value must have pattern `^projects/\[^/\]+/firewallpolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecaptchaenterpriseV1FirewallPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1FirewallPolicy> get(
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
    return GoogleCloudRecaptchaenterpriseV1FirewallPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all firewall policies that belong to a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to list the policies for, in
  /// the format `projects/{project}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of policies to return. Default
  /// is 10. Max limit is 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a
  /// previous. ListFirewallPoliciesRequest, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse>
      list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/firewallpolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified firewall policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name for the FirewallPolicy in the
  /// format `projects/{project}/firewallpolicies/{firewallpolicy}`.
  /// Value must have pattern `^projects/\[^/\]+/firewallpolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields of the policy
  /// get updated. If the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecaptchaenterpriseV1FirewallPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1FirewallPolicy> patch(
    GoogleCloudRecaptchaenterpriseV1FirewallPolicy request,
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
    return GoogleCloudRecaptchaenterpriseV1FirewallPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reorders all firewall policies.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to list the policies for, in
  /// the format `projects/{project}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse>
      reorder(
    GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/firewallpolicies:reorder';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsKeysResource {
  final commons.ApiRequester _requester;

  ProjectsKeysResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new reCAPTCHA Enterprise key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in which the key will be
  /// created, in the format `projects/{project}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecaptchaenterpriseV1Key].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1Key> create(
    GoogleCloudRecaptchaenterpriseV1Key request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/keys';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1Key.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified key.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key to be deleted, in the format
  /// `projects/{project}/keys/{key}`.
  /// Value must have pattern `^projects/\[^/\]+/keys/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> delete(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the specified key.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested key, in the format
  /// `projects/{project}/keys/{key}`.
  /// Value must have pattern `^projects/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecaptchaenterpriseV1Key].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1Key> get(
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
    return GoogleCloudRecaptchaenterpriseV1Key.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get some aggregated metrics for a Key.
  ///
  /// This data can be used to build dashboards.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested metrics, in the format
  /// `projects/{project}/keys/{key}/metrics`.
  /// Value must have pattern `^projects/\[^/\]+/keys/\[^/\]+/metrics$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecaptchaenterpriseV1Metrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1Metrics> getMetrics(
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
    return GoogleCloudRecaptchaenterpriseV1Metrics.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all keys that belong to a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project that contains the keys that
  /// will be listed, in the format `projects/{project}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of keys to return. Default is
  /// 10. Max limit is 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a
  /// previous. ListKeysRequest, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecaptchaenterpriseV1ListKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1ListKeysResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/keys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1ListKeysResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Migrates an existing key from reCAPTCHA to reCAPTCHA Enterprise.
  ///
  /// Once a key is migrated, it can be used from either product. SiteVerify
  /// requests are billed as CreateAssessment calls. You must be authenticated
  /// as one of the current owners of the reCAPTCHA Key, and your user must have
  /// the reCAPTCHA Enterprise Admin IAM role in the destination project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key to be migrated, in the format
  /// `projects/{project}/keys/{key}`.
  /// Value must have pattern `^projects/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecaptchaenterpriseV1Key].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1Key> migrate(
    GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':migrate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1Key.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name for the Key in the format
  /// `projects/{project}/keys/{key}`.
  /// Value must have pattern `^projects/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The mask to control which fields of the key get
  /// updated. If the mask is not present, all fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecaptchaenterpriseV1Key].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1Key> patch(
    GoogleCloudRecaptchaenterpriseV1Key request,
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
    return GoogleCloudRecaptchaenterpriseV1Key.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the secret key related to the specified public key.
  ///
  /// You must use the legacy secret key only in a 3rd party integration with
  /// legacy reCAPTCHA.
  ///
  /// Request parameters:
  ///
  /// [key] - Required. The public key name linked to the requested secret key
  /// in the format `projects/{project}/keys/{key}`.
  /// Value must have pattern `^projects/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse>
      retrieveLegacySecretKey(
    core.String key, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$key') + ':retrieveLegacySecretKey';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsRelatedaccountgroupmembershipsResource {
  final commons.ApiRequester _requester;

  ProjectsRelatedaccountgroupmembershipsResource(commons.ApiRequester client)
      : _requester = client;

  /// Search group memberships related to a given account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The name of the project to search related account
  /// group memberships from. Specify the project name in the following format:
  /// `projects/{project}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse>
      search(
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
        request,
    core.String project, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$project') +
        '/relatedaccountgroupmemberships:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsRelatedaccountgroupsResource {
  final commons.ApiRequester _requester;

  ProjectsRelatedaccountgroupsMembershipsResource get memberships =>
      ProjectsRelatedaccountgroupsMembershipsResource(_requester);

  ProjectsRelatedaccountgroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// List groups of related accounts.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to list related account
  /// groups from, in the format `projects/{project}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of groups to return. The service
  /// might return fewer than this value. If unspecified, at most 50 groups are
  /// returned. The maximum value is 1000; values above 1000 are coerced to
  /// 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListRelatedAccountGroups` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListRelatedAccountGroups` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse>
      list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/relatedaccountgroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsRelatedaccountgroupsMembershipsResource {
  final commons.ApiRequester _requester;

  ProjectsRelatedaccountgroupsMembershipsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get memberships in a group of related accounts.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name for the related account group in
  /// the format
  /// `projects/{project}/relatedaccountgroups/{relatedaccountgroup}`.
  /// Value must have pattern `^projects/\[^/\]+/relatedaccountgroups/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of accounts to return. The
  /// service might return fewer than this value. If unspecified, at most 50
  /// accounts are returned. The maximum value is 1000; values above 1000 are
  /// coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListRelatedAccountGroupMemberships` call. When paginating, all other
  /// parameters provided to `ListRelatedAccountGroupMemberships` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse>
      list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Account defender risk assessment.
class GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment {
  /// Labels for this request.
  ///
  /// Output only.
  core.List<core.String>? labels;

  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment({
    this.labels,
  });

  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment.fromJson(
      core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
      };
}

/// Information about account verification, used for identity verification.
class GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo {
  /// Endpoints that can be used for identity verification.
  ///
  /// Optional.
  core.List<GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo>?
      endpoints;

  /// Language code preference for the verification message, set as a IETF BCP
  /// 47 language code.
  ///
  /// Optional.
  core.String? languageCode;

  /// Result of the latest account verification challenge.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RESULT_UNSPECIFIED" : No information about the latest account
  /// verification.
  /// - "SUCCESS_USER_VERIFIED" : The user was successfully verified. This means
  /// the account verification challenge was successfully completed.
  /// - "ERROR_USER_NOT_VERIFIED" : The user failed the verification challenge.
  /// - "ERROR_SITE_ONBOARDING_INCOMPLETE" : The site is not properly onboarded
  /// to use the account verification feature.
  /// - "ERROR_RECIPIENT_NOT_ALLOWED" : The recipient is not allowed for account
  /// verification. This can occur during integration but should not occur in
  /// production.
  /// - "ERROR_RECIPIENT_ABUSE_LIMIT_EXHAUSTED" : The recipient has already been
  /// sent too many verification codes in a short amount of time.
  /// - "ERROR_CRITICAL_INTERNAL" : The verification flow could not be completed
  /// due to a critical internal error.
  /// - "ERROR_CUSTOMER_QUOTA_EXHAUSTED" : The client has exceeded their two
  /// factor request quota for this period of time.
  /// - "ERROR_VERIFICATION_BYPASSED" : The request cannot be processed at the
  /// time because of an incident. This bypass can be restricted to a
  /// problematic destination email domain, a customer, or could affect the
  /// entire service.
  /// - "ERROR_VERDICT_MISMATCH" : The request parameters do not match with the
  /// token provided and cannot be processed.
  core.String? latestVerificationResult;

  /// Username of the account that is being verified.
  ///
  /// Deprecated. Customers should now provide the `account_id` field in
  /// `event.user_info`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? username;

  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo({
    this.endpoints,
    this.languageCode,
    this.latestVerificationResult,
    this.username,
  });

  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo.fromJson(
      core.Map json_)
      : this(
          endpoints: json_.containsKey('endpoints')
              ? (json_['endpoints'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          latestVerificationResult:
              json_.containsKey('latestVerificationResult')
                  ? json_['latestVerificationResult'] as core.String
                  : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpoints != null) 'endpoints': endpoints!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (latestVerificationResult != null)
          'latestVerificationResult': latestVerificationResult!,
        if (username != null) 'username': username!,
      };
}

/// Settings specific to keys that can be used by Android apps.
class GoogleCloudRecaptchaenterpriseV1AndroidKeySettings {
  /// If set to true, allowed_package_names are not enforced.
  ///
  /// Optional.
  core.bool? allowAllPackageNames;

  /// Android package names of apps allowed to use the key.
  ///
  /// Example: 'com.companyname.appname'
  ///
  /// Optional.
  core.List<core.String>? allowedPackageNames;

  /// Set to true for keys that are used in an Android application that is
  /// available for download in app stores in addition to the Google Play Store.
  ///
  /// Optional.
  core.bool? supportNonGoogleAppStoreDistribution;

  GoogleCloudRecaptchaenterpriseV1AndroidKeySettings({
    this.allowAllPackageNames,
    this.allowedPackageNames,
    this.supportNonGoogleAppStoreDistribution,
  });

  GoogleCloudRecaptchaenterpriseV1AndroidKeySettings.fromJson(core.Map json_)
      : this(
          allowAllPackageNames: json_.containsKey('allowAllPackageNames')
              ? json_['allowAllPackageNames'] as core.bool
              : null,
          allowedPackageNames: json_.containsKey('allowedPackageNames')
              ? (json_['allowedPackageNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          supportNonGoogleAppStoreDistribution:
              json_.containsKey('supportNonGoogleAppStoreDistribution')
                  ? json_['supportNonGoogleAppStoreDistribution'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowAllPackageNames != null)
          'allowAllPackageNames': allowAllPackageNames!,
        if (allowedPackageNames != null)
          'allowedPackageNames': allowedPackageNames!,
        if (supportNonGoogleAppStoreDistribution != null)
          'supportNonGoogleAppStoreDistribution':
              supportNonGoogleAppStoreDistribution!,
      };
}

/// The request message to annotate an Assessment.
class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest {
  /// A stable account identifier to apply to the assessment.
  ///
  /// This is an alternative to setting `account_id` in `CreateAssessment`, for
  /// example when a stable account identifier is not yet known in the initial
  /// request.
  ///
  /// Optional.
  core.String? accountId;

  /// The annotation that will be assigned to the Event.
  ///
  /// This field can be left empty to provide reasons that apply to an event
  /// without concluding whether the event is legitimate or fraudulent.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ANNOTATION_UNSPECIFIED" : Default unspecified type.
  /// - "LEGITIMATE" : Provides information that the event turned out to be
  /// legitimate.
  /// - "FRAUDULENT" : Provides information that the event turned out to be
  /// fraudulent.
  /// - "PASSWORD_CORRECT" : Provides information that the event was related to
  /// a login event in which the user typed the correct password. Deprecated,
  /// prefer indicating CORRECT_PASSWORD through the reasons field instead.
  /// - "PASSWORD_INCORRECT" : Provides information that the event was related
  /// to a login event in which the user typed the incorrect password.
  /// Deprecated, prefer indicating INCORRECT_PASSWORD through the reasons field
  /// instead.
  core.String? annotation;

  /// A stable hashed account identifier to apply to the assessment.
  ///
  /// This is an alternative to setting `hashed_account_id` in
  /// `CreateAssessment`, for example when a stable account identifier is not
  /// yet known in the initial request.
  ///
  /// Optional.
  core.String? hashedAccountId;
  core.List<core.int> get hashedAccountIdAsBytes =>
      convert.base64.decode(hashedAccountId!);

  set hashedAccountIdAsBytes(core.List<core.int> bytes_) {
    hashedAccountId =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Reasons for the annotation that are assigned to the event.
  ///
  /// Optional.
  core.List<core.String>? reasons;

  /// If the assessment is part of a payment transaction, provide details on
  /// payment lifecycle events that occur in the transaction.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1TransactionEvent? transactionEvent;

  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest({
    this.accountId,
    this.annotation,
    this.hashedAccountId,
    this.reasons,
    this.transactionEvent,
  });

  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest.fromJson(
      core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          annotation: json_.containsKey('annotation')
              ? json_['annotation'] as core.String
              : null,
          hashedAccountId: json_.containsKey('hashedAccountId')
              ? json_['hashedAccountId'] as core.String
              : null,
          reasons: json_.containsKey('reasons')
              ? (json_['reasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          transactionEvent: json_.containsKey('transactionEvent')
              ? GoogleCloudRecaptchaenterpriseV1TransactionEvent.fromJson(
                  json_['transactionEvent']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (annotation != null) 'annotation': annotation!,
        if (hashedAccountId != null) 'hashedAccountId': hashedAccountId!,
        if (reasons != null) 'reasons': reasons!,
        if (transactionEvent != null) 'transactionEvent': transactionEvent!,
      };
}

/// Empty response for AnnotateAssessment.
typedef GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse = $Empty;

/// Contains fields that are required to perform Apple-specific integrity
/// checks.
class GoogleCloudRecaptchaenterpriseV1AppleDeveloperId {
  /// The Apple developer key ID (10-character string).
  ///
  /// Required.
  core.String? keyId;

  /// Input only.
  ///
  /// A private key (downloaded as a text file with a .p8 file extension)
  /// generated for your Apple Developer account. Ensure that Apple DeviceCheck
  /// is enabled for the private key.
  ///
  /// Required.
  core.String? privateKey;

  /// The Apple team ID (10-character string) owning the provisioning profile
  /// used to build your application.
  ///
  /// Required.
  core.String? teamId;

  GoogleCloudRecaptchaenterpriseV1AppleDeveloperId({
    this.keyId,
    this.privateKey,
    this.teamId,
  });

  GoogleCloudRecaptchaenterpriseV1AppleDeveloperId.fromJson(core.Map json_)
      : this(
          keyId:
              json_.containsKey('keyId') ? json_['keyId'] as core.String : null,
          privateKey: json_.containsKey('privateKey')
              ? json_['privateKey'] as core.String
              : null,
          teamId: json_.containsKey('teamId')
              ? json_['teamId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (privateKey != null) 'privateKey': privateKey!,
        if (teamId != null) 'teamId': teamId!,
      };
}

/// A reCAPTCHA Enterprise assessment resource.
class GoogleCloudRecaptchaenterpriseV1Assessment {
  /// Assessment returned by account defender when an account identifier is
  /// provided.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment?
      accountDefenderAssessment;

  /// Account verification information for identity verification.
  ///
  /// The assessment event must include a token and site key to use this
  /// feature.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo? accountVerification;

  /// The event being assessed.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1Event? event;

  /// Assessment returned when firewall policies belonging to the project are
  /// evaluated using the field firewall_policy_evaluation.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment?
      firewallPolicyAssessment;

  /// Assessment returned by Fraud Prevention when TransactionData is provided.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment?
      fraudPreventionAssessment;

  /// Fraud Signals specific to the users involved in a payment transaction.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1FraudSignals? fraudSignals;

  /// Identifier.
  ///
  /// The resource name for the Assessment in the format
  /// `projects/{project}/assessments/{assessment}`.
  ///
  /// Output only.
  core.String? name;

  /// The private password leak verification field contains the parameters that
  /// are used to to check for leaks privately without sharing user credentials.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification?
      privatePasswordLeakVerification;

  /// The risk analysis result for the event being assessed.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1RiskAnalysis? riskAnalysis;

  /// Properties of the provided event token.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1TokenProperties? tokenProperties;

  GoogleCloudRecaptchaenterpriseV1Assessment({
    this.accountDefenderAssessment,
    this.accountVerification,
    this.event,
    this.firewallPolicyAssessment,
    this.fraudPreventionAssessment,
    this.fraudSignals,
    this.name,
    this.privatePasswordLeakVerification,
    this.riskAnalysis,
    this.tokenProperties,
  });

  GoogleCloudRecaptchaenterpriseV1Assessment.fromJson(core.Map json_)
      : this(
          accountDefenderAssessment:
              json_.containsKey('accountDefenderAssessment')
                  ? GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
                      .fromJson(json_['accountDefenderAssessment']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          accountVerification: json_.containsKey('accountVerification')
              ? GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
                  .fromJson(json_['accountVerification']
                      as core.Map<core.String, core.dynamic>)
              : null,
          event: json_.containsKey('event')
              ? GoogleCloudRecaptchaenterpriseV1Event.fromJson(
                  json_['event'] as core.Map<core.String, core.dynamic>)
              : null,
          firewallPolicyAssessment:
              json_.containsKey('firewallPolicyAssessment')
                  ? GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
                      .fromJson(json_['firewallPolicyAssessment']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          fraudPreventionAssessment:
              json_.containsKey('fraudPreventionAssessment')
                  ? GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
                      .fromJson(json_['fraudPreventionAssessment']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          fraudSignals: json_.containsKey('fraudSignals')
              ? GoogleCloudRecaptchaenterpriseV1FraudSignals.fromJson(
                  json_['fraudSignals'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          privatePasswordLeakVerification: json_
                  .containsKey('privatePasswordLeakVerification')
              ? GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
                  .fromJson(json_['privatePasswordLeakVerification']
                      as core.Map<core.String, core.dynamic>)
              : null,
          riskAnalysis: json_.containsKey('riskAnalysis')
              ? GoogleCloudRecaptchaenterpriseV1RiskAnalysis.fromJson(
                  json_['riskAnalysis'] as core.Map<core.String, core.dynamic>)
              : null,
          tokenProperties: json_.containsKey('tokenProperties')
              ? GoogleCloudRecaptchaenterpriseV1TokenProperties.fromJson(
                  json_['tokenProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountDefenderAssessment != null)
          'accountDefenderAssessment': accountDefenderAssessment!,
        if (accountVerification != null)
          'accountVerification': accountVerification!,
        if (event != null) 'event': event!,
        if (firewallPolicyAssessment != null)
          'firewallPolicyAssessment': firewallPolicyAssessment!,
        if (fraudPreventionAssessment != null)
          'fraudPreventionAssessment': fraudPreventionAssessment!,
        if (fraudSignals != null) 'fraudSignals': fraudSignals!,
        if (name != null) 'name': name!,
        if (privatePasswordLeakVerification != null)
          'privatePasswordLeakVerification': privatePasswordLeakVerification!,
        if (riskAnalysis != null) 'riskAnalysis': riskAnalysis!,
        if (tokenProperties != null) 'tokenProperties': tokenProperties!,
      };
}

/// Metrics related to challenges.
class GoogleCloudRecaptchaenterpriseV1ChallengeMetrics {
  /// Count of submitted challenge solutions that were incorrect or otherwise
  /// deemed suspicious such that a subsequent challenge was triggered.
  core.String? failedCount;

  /// Count of nocaptchas (successful verification without a challenge) issued.
  core.String? nocaptchaCount;

  /// Count of reCAPTCHA checkboxes or badges rendered.
  ///
  /// This is mostly equivalent to a count of pageloads for pages that include
  /// reCAPTCHA.
  core.String? pageloadCount;

  /// Count of nocaptchas (successful verification without a challenge) plus
  /// submitted challenge solutions that were correct and resulted in
  /// verification.
  core.String? passedCount;

  GoogleCloudRecaptchaenterpriseV1ChallengeMetrics({
    this.failedCount,
    this.nocaptchaCount,
    this.pageloadCount,
    this.passedCount,
  });

  GoogleCloudRecaptchaenterpriseV1ChallengeMetrics.fromJson(core.Map json_)
      : this(
          failedCount: json_.containsKey('failedCount')
              ? json_['failedCount'] as core.String
              : null,
          nocaptchaCount: json_.containsKey('nocaptchaCount')
              ? json_['nocaptchaCount'] as core.String
              : null,
          pageloadCount: json_.containsKey('pageloadCount')
              ? json_['pageloadCount'] as core.String
              : null,
          passedCount: json_.containsKey('passedCount')
              ? json_['passedCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failedCount != null) 'failedCount': failedCount!,
        if (nocaptchaCount != null) 'nocaptchaCount': nocaptchaCount!,
        if (pageloadCount != null) 'pageloadCount': pageloadCount!,
        if (passedCount != null) 'passedCount': passedCount!,
      };
}

/// Information about a verification endpoint that can be used for 2FA.
class GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo {
  /// Email address for which to trigger a verification request.
  core.String? emailAddress;

  /// Timestamp of the last successful verification for the endpoint, if any.
  ///
  /// Output only.
  core.String? lastVerificationTime;

  /// Phone number for which to trigger a verification request.
  ///
  /// Should be given in E.164 format.
  core.String? phoneNumber;

  /// Token to provide to the client to trigger endpoint verification.
  ///
  /// It must be used within 15 minutes.
  ///
  /// Output only.
  core.String? requestToken;

  GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo({
    this.emailAddress,
    this.lastVerificationTime,
    this.phoneNumber,
    this.requestToken,
  });

  GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo.fromJson(
      core.Map json_)
      : this(
          emailAddress: json_.containsKey('emailAddress')
              ? json_['emailAddress'] as core.String
              : null,
          lastVerificationTime: json_.containsKey('lastVerificationTime')
              ? json_['lastVerificationTime'] as core.String
              : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
          requestToken: json_.containsKey('requestToken')
              ? json_['requestToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (lastVerificationTime != null)
          'lastVerificationTime': lastVerificationTime!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (requestToken != null) 'requestToken': requestToken!,
      };
}

/// The event being assessed.
class GoogleCloudRecaptchaenterpriseV1Event {
  /// The expected action for this type of event.
  ///
  /// This should be the same action provided at token generation time on
  /// client-side platforms already integrated with recaptcha enterprise.
  ///
  /// Optional.
  core.String? expectedAction;

  /// Flag for a reCAPTCHA express request for an assessment without a token.
  ///
  /// If enabled, `site_key` must reference a SCORE key with WAF feature set to
  /// EXPRESS.
  ///
  /// Optional.
  core.bool? express;

  /// Flag for enabling firewall policy config assessment.
  ///
  /// If this flag is enabled, the firewall policy will be evaluated and a
  /// suggested firewall action will be returned in the response.
  ///
  /// Optional.
  core.bool? firewallPolicyEvaluation;

  /// The Fraud Prevention setting for this assessment.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FRAUD_PREVENTION_UNSPECIFIED" : Default, unspecified setting. If opted
  /// in for automatic detection, `fraud_prevention_assessment` is returned
  /// based on the request. Otherwise, `fraud_prevention_assessment` is returned
  /// if `transaction_data` is present in the `Event` and Fraud Prevention is
  /// enabled in the Google Cloud console.
  /// - "ENABLED" : Enable Fraud Prevention for this assessment, if Fraud
  /// Prevention is enabled in the Google Cloud console.
  /// - "DISABLED" : Disable Fraud Prevention for this assessment, regardless of
  /// opt-in status or Google Cloud console settings.
  core.String? fraudPrevention;

  /// Deprecated: use `user_info.account_id` instead.
  ///
  /// Unique stable hashed user identifier for the request. The identifier must
  /// be hashed using hmac-sha256 with stable secret.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? hashedAccountId;
  core.List<core.int> get hashedAccountIdAsBytes =>
      convert.base64.decode(hashedAccountId!);

  set hashedAccountIdAsBytes(core.List<core.int> bytes_) {
    hashedAccountId =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// HTTP header information about the request.
  ///
  /// Optional.
  core.List<core.String>? headers;

  /// JA3 fingerprint for SSL clients.
  ///
  /// Optional.
  core.String? ja3;

  /// The URI resource the user requested that triggered an assessment.
  ///
  /// Optional.
  core.String? requestedUri;

  /// The site key that was used to invoke reCAPTCHA Enterprise on your site and
  /// generate the token.
  ///
  /// Optional.
  core.String? siteKey;

  /// The user response token provided by the reCAPTCHA Enterprise client-side
  /// integration on your site.
  ///
  /// Optional.
  core.String? token;

  /// Data describing a payment transaction to be assessed.
  ///
  /// Sending this data enables reCAPTCHA Enterprise Fraud Prevention and the
  /// FraudPreventionAssessment component in the response.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1TransactionData? transactionData;

  /// The user agent present in the request from the user's device related to
  /// this event.
  ///
  /// Optional.
  core.String? userAgent;

  /// Information about the user that generates this event, when they can be
  /// identified.
  ///
  /// They are often identified through the use of an account for logged-in
  /// requests or login/registration requests, or by providing user identifiers
  /// for guest actions like checkout.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1UserInfo? userInfo;

  /// The IP address in the request from the user's device related to this
  /// event.
  ///
  /// Optional.
  core.String? userIpAddress;

  /// Flag for running WAF token assessment.
  ///
  /// If enabled, the token must be specified, and have been created by a
  /// WAF-enabled key.
  ///
  /// Optional.
  core.bool? wafTokenAssessment;

  GoogleCloudRecaptchaenterpriseV1Event({
    this.expectedAction,
    this.express,
    this.firewallPolicyEvaluation,
    this.fraudPrevention,
    this.hashedAccountId,
    this.headers,
    this.ja3,
    this.requestedUri,
    this.siteKey,
    this.token,
    this.transactionData,
    this.userAgent,
    this.userInfo,
    this.userIpAddress,
    this.wafTokenAssessment,
  });

  GoogleCloudRecaptchaenterpriseV1Event.fromJson(core.Map json_)
      : this(
          expectedAction: json_.containsKey('expectedAction')
              ? json_['expectedAction'] as core.String
              : null,
          express: json_.containsKey('express')
              ? json_['express'] as core.bool
              : null,
          firewallPolicyEvaluation:
              json_.containsKey('firewallPolicyEvaluation')
                  ? json_['firewallPolicyEvaluation'] as core.bool
                  : null,
          fraudPrevention: json_.containsKey('fraudPrevention')
              ? json_['fraudPrevention'] as core.String
              : null,
          hashedAccountId: json_.containsKey('hashedAccountId')
              ? json_['hashedAccountId'] as core.String
              : null,
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ja3: json_.containsKey('ja3') ? json_['ja3'] as core.String : null,
          requestedUri: json_.containsKey('requestedUri')
              ? json_['requestedUri'] as core.String
              : null,
          siteKey: json_.containsKey('siteKey')
              ? json_['siteKey'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
          transactionData: json_.containsKey('transactionData')
              ? GoogleCloudRecaptchaenterpriseV1TransactionData.fromJson(
                  json_['transactionData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          userAgent: json_.containsKey('userAgent')
              ? json_['userAgent'] as core.String
              : null,
          userInfo: json_.containsKey('userInfo')
              ? GoogleCloudRecaptchaenterpriseV1UserInfo.fromJson(
                  json_['userInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          userIpAddress: json_.containsKey('userIpAddress')
              ? json_['userIpAddress'] as core.String
              : null,
          wafTokenAssessment: json_.containsKey('wafTokenAssessment')
              ? json_['wafTokenAssessment'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expectedAction != null) 'expectedAction': expectedAction!,
        if (express != null) 'express': express!,
        if (firewallPolicyEvaluation != null)
          'firewallPolicyEvaluation': firewallPolicyEvaluation!,
        if (fraudPrevention != null) 'fraudPrevention': fraudPrevention!,
        if (hashedAccountId != null) 'hashedAccountId': hashedAccountId!,
        if (headers != null) 'headers': headers!,
        if (ja3 != null) 'ja3': ja3!,
        if (requestedUri != null) 'requestedUri': requestedUri!,
        if (siteKey != null) 'siteKey': siteKey!,
        if (token != null) 'token': token!,
        if (transactionData != null) 'transactionData': transactionData!,
        if (userAgent != null) 'userAgent': userAgent!,
        if (userInfo != null) 'userInfo': userInfo!,
        if (userIpAddress != null) 'userIpAddress': userIpAddress!,
        if (wafTokenAssessment != null)
          'wafTokenAssessment': wafTokenAssessment!,
      };
}

/// An individual action.
///
/// Each action represents what to do if a policy matches.
class GoogleCloudRecaptchaenterpriseV1FirewallAction {
  /// The user request did not match any policy and should be allowed access to
  /// the requested resource.
  GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction? allow;

  /// This action will deny access to a given page.
  ///
  /// The user will get an HTTP error code.
  GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction? block;

  /// This action will inject reCAPTCHA JavaScript code into the HTML page
  /// returned by the site backend.
  GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction?
      includeRecaptchaScript;

  /// This action will redirect the request to a ReCaptcha interstitial to
  /// attach a token.
  GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction? redirect;

  /// This action will set a custom header but allow the request to continue to
  /// the customer backend.
  GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction? setHeader;

  /// This action will transparently serve a different page to an offending
  /// user.
  GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction? substitute;

  GoogleCloudRecaptchaenterpriseV1FirewallAction({
    this.allow,
    this.block,
    this.includeRecaptchaScript,
    this.redirect,
    this.setHeader,
    this.substitute,
  });

  GoogleCloudRecaptchaenterpriseV1FirewallAction.fromJson(core.Map json_)
      : this(
          allow: json_.containsKey('allow')
              ? GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
                  .fromJson(
                      json_['allow'] as core.Map<core.String, core.dynamic>)
              : null,
          block: json_.containsKey('block')
              ? GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
                  .fromJson(
                      json_['block'] as core.Map<core.String, core.dynamic>)
              : null,
          includeRecaptchaScript: json_.containsKey('includeRecaptchaScript')
              ? GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
                  .fromJson(json_['includeRecaptchaScript']
                      as core.Map<core.String, core.dynamic>)
              : null,
          redirect: json_.containsKey('redirect')
              ? GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
                  .fromJson(
                      json_['redirect'] as core.Map<core.String, core.dynamic>)
              : null,
          setHeader: json_.containsKey('setHeader')
              ? GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
                  .fromJson(
                      json_['setHeader'] as core.Map<core.String, core.dynamic>)
              : null,
          substitute: json_.containsKey('substitute')
              ? GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
                  .fromJson(json_['substitute']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allow != null) 'allow': allow!,
        if (block != null) 'block': block!,
        if (includeRecaptchaScript != null)
          'includeRecaptchaScript': includeRecaptchaScript!,
        if (redirect != null) 'redirect': redirect!,
        if (setHeader != null) 'setHeader': setHeader!,
        if (substitute != null) 'substitute': substitute!,
      };
}

/// An allow action continues processing a request unimpeded.
typedef GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction = $Empty;

/// A block action serves an HTTP error code a prevents the request from hitting
/// the backend.
typedef GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction = $Empty;

/// An include reCAPTCHA script action involves injecting reCAPTCHA JavaScript
/// code into the HTML returned by the site backend.
///
/// This reCAPTCHA script is tasked with collecting user signals on the
/// requested web page, issuing tokens as a cookie within the site domain, and
/// enabling their utilization in subsequent page requests.
typedef GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
    = $Empty;

/// A redirect action returns a 307 (temporary redirect) response, pointing the
/// user to a ReCaptcha interstitial page to attach a token.
typedef GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction = $Empty;

/// A set header action sets a header and forwards the request to the backend.
///
/// This can be used to trigger custom protection implemented on the backend.
class GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction {
  /// The header key to set in the request to the backend server.
  ///
  /// Optional.
  core.String? key;

  /// The header value to set in the request to the backend server.
  ///
  /// Optional.
  core.String? value;

  GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction({
    this.key,
    this.value,
  });

  GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction.fromJson(
      core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// A substitute action transparently serves a different page than the one
/// requested.
class GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction {
  /// The address to redirect to.
  ///
  /// The target is a relative path in the current host. Example:
  /// "/blog/404.html".
  ///
  /// Optional.
  core.String? path;

  GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction({
    this.path,
  });

  GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction.fromJson(
      core.Map json_)
      : this(
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
      };
}

/// A FirewallPolicy represents a single matching pattern and resulting actions
/// to take.
class GoogleCloudRecaptchaenterpriseV1FirewallPolicy {
  /// The actions that the caller should take regarding user access.
  ///
  /// There should be at most one terminal action. A terminal action is any
  /// action that forces a response, such as `AllowAction`, `BlockAction` or
  /// `SubstituteAction`. Zero or more non-terminal actions such as `SetHeader`
  /// might be specified. A single policy can contain up to 16 actions.
  ///
  /// Optional.
  core.List<GoogleCloudRecaptchaenterpriseV1FirewallAction>? actions;

  /// A CEL (Common Expression Language) conditional expression that specifies
  /// if this policy applies to an incoming user request.
  ///
  /// If this condition evaluates to true and the requested path matched the
  /// path pattern, the associated actions should be executed by the caller. The
  /// condition string is checked for CEL syntax correctness on creation. For
  /// more information, see the [CEL spec](https://github.com/google/cel-spec)
  /// and its
  /// [language definition](https://github.com/google/cel-spec/blob/master/doc/langdef.md).
  /// A condition has a max length of 500 characters.
  ///
  /// Optional.
  core.String? condition;

  /// A description of what this policy aims to achieve, for convenience
  /// purposes.
  ///
  /// The description can at most include 256 UTF-8 characters.
  ///
  /// Optional.
  core.String? description;

  /// Identifier.
  ///
  /// The resource name for the FirewallPolicy in the format
  /// `projects/{project}/firewallpolicies/{firewallpolicy}`.
  core.String? name;

  /// The path for which this policy applies, specified as a glob pattern.
  ///
  /// For more information on glob, see the
  /// [manual page](https://man7.org/linux/man-pages/man7/glob.7.html). A path
  /// has a max length of 200 characters.
  ///
  /// Optional.
  core.String? path;

  GoogleCloudRecaptchaenterpriseV1FirewallPolicy({
    this.actions,
    this.condition,
    this.description,
    this.name,
    this.path,
  });

  GoogleCloudRecaptchaenterpriseV1FirewallPolicy.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1FirewallAction.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          condition: json_.containsKey('condition')
              ? json_['condition'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
        if (condition != null) 'condition': condition!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (path != null) 'path': path!,
      };
}

/// Policy config assessment.
class GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment {
  /// If the processing of a policy config fails, an error will be populated and
  /// the firewall_policy will be left empty.
  ///
  /// Output only.
  GoogleRpcStatus? error;

  /// The policy that matched the request.
  ///
  /// If more than one policy may match, this is the first match. If no policy
  /// matches the incoming request, the policy field will be left empty.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1FirewallPolicy? firewallPolicy;

  GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment({
    this.error,
    this.firewallPolicy,
  });

  GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment.fromJson(
      core.Map json_)
      : this(
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          firewallPolicy: json_.containsKey('firewallPolicy')
              ? GoogleCloudRecaptchaenterpriseV1FirewallPolicy.fromJson(
                  json_['firewallPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (firewallPolicy != null) 'firewallPolicy': firewallPolicy!,
      };
}

/// Assessment for Fraud Prevention.
class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment {
  /// Assessment of this transaction for behavioral trust.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict?
      behavioralTrustVerdict;

  /// Assessment of this transaction for risk of being part of a card testing
  /// attack.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict?
      cardTestingVerdict;

  /// Assessment of this transaction for risk of a stolen instrument.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict?
      stolenInstrumentVerdict;

  /// Probability of this transaction being fraudulent.
  ///
  /// Summarizes the combined risk of attack vectors below. Values are from 0.0
  /// (lowest) to 1.0 (highest).
  ///
  /// Output only.
  core.double? transactionRisk;

  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment({
    this.behavioralTrustVerdict,
    this.cardTestingVerdict,
    this.stolenInstrumentVerdict,
    this.transactionRisk,
  });

  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment.fromJson(
      core.Map json_)
      : this(
          behavioralTrustVerdict: json_.containsKey('behavioralTrustVerdict')
              ? GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
                  .fromJson(json_['behavioralTrustVerdict']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cardTestingVerdict: json_.containsKey('cardTestingVerdict')
              ? GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
                  .fromJson(json_['cardTestingVerdict']
                      as core.Map<core.String, core.dynamic>)
              : null,
          stolenInstrumentVerdict: json_.containsKey('stolenInstrumentVerdict')
              ? GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
                  .fromJson(json_['stolenInstrumentVerdict']
                      as core.Map<core.String, core.dynamic>)
              : null,
          transactionRisk: json_.containsKey('transactionRisk')
              ? (json_['transactionRisk'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (behavioralTrustVerdict != null)
          'behavioralTrustVerdict': behavioralTrustVerdict!,
        if (cardTestingVerdict != null)
          'cardTestingVerdict': cardTestingVerdict!,
        if (stolenInstrumentVerdict != null)
          'stolenInstrumentVerdict': stolenInstrumentVerdict!,
        if (transactionRisk != null) 'transactionRisk': transactionRisk!,
      };
}

/// Information about behavioral trust of the transaction.
class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict {
  /// Probability of this transaction attempt being executed in a behaviorally
  /// trustworthy way.
  ///
  /// Values are from 0.0 (lowest) to 1.0 (highest).
  ///
  /// Output only.
  core.double? trust;

  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict({
    this.trust,
  });

  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict.fromJson(
      core.Map json_)
      : this(
          trust: json_.containsKey('trust')
              ? (json_['trust'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trust != null) 'trust': trust!,
      };
}

/// Information about card testing fraud, where an adversary is testing
/// fraudulently obtained cards or brute forcing their details.
class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict {
  /// Probability of this transaction attempt being part of a card testing
  /// attack.
  ///
  /// Values are from 0.0 (lowest) to 1.0 (highest).
  ///
  /// Output only.
  core.double? risk;

  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict({
    this.risk,
  });

  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict.fromJson(
      core.Map json_)
      : this(
          risk: json_.containsKey('risk')
              ? (json_['risk'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (risk != null) 'risk': risk!,
      };
}

/// Information about stolen instrument fraud, where the user is not the
/// legitimate owner of the instrument being used for the purchase.
class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict {
  /// Probability of this transaction being executed with a stolen instrument.
  ///
  /// Values are from 0.0 (lowest) to 1.0 (highest).
  ///
  /// Output only.
  core.double? risk;

  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict({
    this.risk,
  });

  GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict.fromJson(
      core.Map json_)
      : this(
          risk: json_.containsKey('risk')
              ? (json_['risk'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (risk != null) 'risk': risk!,
      };
}

/// Fraud signals describing users and cards involved in the transaction.
class GoogleCloudRecaptchaenterpriseV1FraudSignals {
  /// Signals describing the payment card or cards used in this transaction.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals? cardSignals;

  /// Signals describing the end user in this transaction.
  ///
  /// Output only.
  GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals? userSignals;

  GoogleCloudRecaptchaenterpriseV1FraudSignals({
    this.cardSignals,
    this.userSignals,
  });

  GoogleCloudRecaptchaenterpriseV1FraudSignals.fromJson(core.Map json_)
      : this(
          cardSignals: json_.containsKey('cardSignals')
              ? GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
                  .fromJson(json_['cardSignals']
                      as core.Map<core.String, core.dynamic>)
              : null,
          userSignals: json_.containsKey('userSignals')
              ? GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
                  .fromJson(json_['userSignals']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cardSignals != null) 'cardSignals': cardSignals!,
        if (userSignals != null) 'userSignals': userSignals!,
      };
}

/// Signals describing the payment card used in this transaction.
class GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals {
  /// The labels for the payment card in this transaction.
  ///
  /// Output only.
  core.List<core.String>? cardLabels;

  GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals({
    this.cardLabels,
  });

  GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals.fromJson(
      core.Map json_)
      : this(
          cardLabels: json_.containsKey('cardLabels')
              ? (json_['cardLabels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cardLabels != null) 'cardLabels': cardLabels!,
      };
}

/// Signals describing the user involved in this transaction.
class GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals {
  /// This user (based on email, phone, and other identifiers) has been seen on
  /// the internet for at least this number of days.
  ///
  /// Output only.
  core.int? activeDaysLowerBound;

  /// Likelihood (from 0.0 to 1.0) this user includes synthetic components in
  /// their identity, such as a randomly generated email address, temporary
  /// phone number, or fake shipping address.
  ///
  /// Output only.
  core.double? syntheticRisk;

  GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals({
    this.activeDaysLowerBound,
    this.syntheticRisk,
  });

  GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals.fromJson(
      core.Map json_)
      : this(
          activeDaysLowerBound: json_.containsKey('activeDaysLowerBound')
              ? json_['activeDaysLowerBound'] as core.int
              : null,
          syntheticRisk: json_.containsKey('syntheticRisk')
              ? (json_['syntheticRisk'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeDaysLowerBound != null)
          'activeDaysLowerBound': activeDaysLowerBound!,
        if (syntheticRisk != null) 'syntheticRisk': syntheticRisk!,
      };
}

/// Settings specific to keys that can be used by iOS apps.
class GoogleCloudRecaptchaenterpriseV1IOSKeySettings {
  /// If set to true, allowed_bundle_ids are not enforced.
  ///
  /// Optional.
  core.bool? allowAllBundleIds;

  /// iOS bundle ids of apps allowed to use the key.
  ///
  /// Example: 'com.companyname.productname.appname'
  ///
  /// Optional.
  core.List<core.String>? allowedBundleIds;

  /// Apple Developer account details for the app that is protected by the
  /// reCAPTCHA Key.
  ///
  /// reCAPTCHA Enterprise leverages platform-specific checks like Apple App
  /// Attest and Apple DeviceCheck to protect your app from abuse. Providing
  /// these fields allows reCAPTCHA Enterprise to get a better assessment of the
  /// integrity of your app.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1AppleDeveloperId? appleDeveloperId;

  GoogleCloudRecaptchaenterpriseV1IOSKeySettings({
    this.allowAllBundleIds,
    this.allowedBundleIds,
    this.appleDeveloperId,
  });

  GoogleCloudRecaptchaenterpriseV1IOSKeySettings.fromJson(core.Map json_)
      : this(
          allowAllBundleIds: json_.containsKey('allowAllBundleIds')
              ? json_['allowAllBundleIds'] as core.bool
              : null,
          allowedBundleIds: json_.containsKey('allowedBundleIds')
              ? (json_['allowedBundleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          appleDeveloperId: json_.containsKey('appleDeveloperId')
              ? GoogleCloudRecaptchaenterpriseV1AppleDeveloperId.fromJson(
                  json_['appleDeveloperId']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowAllBundleIds != null) 'allowAllBundleIds': allowAllBundleIds!,
        if (allowedBundleIds != null) 'allowedBundleIds': allowedBundleIds!,
        if (appleDeveloperId != null) 'appleDeveloperId': appleDeveloperId!,
      };
}

/// A key used to identify and configure applications (web and/or mobile) that
/// use reCAPTCHA Enterprise.
class GoogleCloudRecaptchaenterpriseV1Key {
  /// Settings for keys that can be used by Android apps.
  GoogleCloudRecaptchaenterpriseV1AndroidKeySettings? androidSettings;

  /// The timestamp corresponding to the creation of this key.
  ///
  /// Output only.
  core.String? createTime;

  /// Human-readable display name of this key.
  ///
  /// Modifiable by user.
  ///
  /// Required.
  core.String? displayName;

  /// Settings for keys that can be used by iOS apps.
  GoogleCloudRecaptchaenterpriseV1IOSKeySettings? iosSettings;

  /// See
  /// [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name for the Key in the format
  /// `projects/{project}/keys/{key}`.
  core.String? name;

  /// Options for user acceptance testing.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1TestingOptions? testingOptions;

  /// Settings for WAF
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1WafSettings? wafSettings;

  /// Settings for keys that can be used by websites.
  GoogleCloudRecaptchaenterpriseV1WebKeySettings? webSettings;

  GoogleCloudRecaptchaenterpriseV1Key({
    this.androidSettings,
    this.createTime,
    this.displayName,
    this.iosSettings,
    this.labels,
    this.name,
    this.testingOptions,
    this.wafSettings,
    this.webSettings,
  });

  GoogleCloudRecaptchaenterpriseV1Key.fromJson(core.Map json_)
      : this(
          androidSettings: json_.containsKey('androidSettings')
              ? GoogleCloudRecaptchaenterpriseV1AndroidKeySettings.fromJson(
                  json_['androidSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          iosSettings: json_.containsKey('iosSettings')
              ? GoogleCloudRecaptchaenterpriseV1IOSKeySettings.fromJson(
                  json_['iosSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          testingOptions: json_.containsKey('testingOptions')
              ? GoogleCloudRecaptchaenterpriseV1TestingOptions.fromJson(
                  json_['testingOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          wafSettings: json_.containsKey('wafSettings')
              ? GoogleCloudRecaptchaenterpriseV1WafSettings.fromJson(
                  json_['wafSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          webSettings: json_.containsKey('webSettings')
              ? GoogleCloudRecaptchaenterpriseV1WebKeySettings.fromJson(
                  json_['webSettings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidSettings != null) 'androidSettings': androidSettings!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (iosSettings != null) 'iosSettings': iosSettings!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (testingOptions != null) 'testingOptions': testingOptions!,
        if (wafSettings != null) 'wafSettings': wafSettings!,
        if (webSettings != null) 'webSettings': webSettings!,
      };
}

/// Response to request to list firewall policies belonging to a project.
class GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse {
  /// Policy details.
  core.List<GoogleCloudRecaptchaenterpriseV1FirewallPolicy>? firewallPolicies;

  /// Token to retrieve the next page of results.
  ///
  /// It is set to empty if no policies remain in results.
  core.String? nextPageToken;

  GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse({
    this.firewallPolicies,
    this.nextPageToken,
  });

  GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse.fromJson(
      core.Map json_)
      : this(
          firewallPolicies: json_.containsKey('firewallPolicies')
              ? (json_['firewallPolicies'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1FirewallPolicy.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firewallPolicies != null) 'firewallPolicies': firewallPolicies!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response to request to list keys in a project.
class GoogleCloudRecaptchaenterpriseV1ListKeysResponse {
  /// Key details.
  core.List<GoogleCloudRecaptchaenterpriseV1Key>? keys;

  /// Token to retrieve the next page of results.
  ///
  /// It is set to empty if no keys remain in results.
  core.String? nextPageToken;

  GoogleCloudRecaptchaenterpriseV1ListKeysResponse({
    this.keys,
    this.nextPageToken,
  });

  GoogleCloudRecaptchaenterpriseV1ListKeysResponse.fromJson(core.Map json_)
      : this(
          keys: json_.containsKey('keys')
              ? (json_['keys'] as core.List)
                  .map((value) => GoogleCloudRecaptchaenterpriseV1Key.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keys != null) 'keys': keys!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response to a `ListRelatedAccountGroupMemberships` call.
class GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The memberships listed by the query.
  core.List<GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership>?
      relatedAccountGroupMemberships;

  GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse({
    this.nextPageToken,
    this.relatedAccountGroupMemberships,
  });

  GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          relatedAccountGroupMemberships: json_
                  .containsKey('relatedAccountGroupMemberships')
              ? (json_['relatedAccountGroupMemberships'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (relatedAccountGroupMemberships != null)
          'relatedAccountGroupMemberships': relatedAccountGroupMemberships!,
      };
}

/// The response to a `ListRelatedAccountGroups` call.
class GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The groups of related accounts listed by the query.
  core.List<GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup>?
      relatedAccountGroups;

  GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse({
    this.nextPageToken,
    this.relatedAccountGroups,
  });

  GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          relatedAccountGroups: json_.containsKey('relatedAccountGroups')
              ? (json_['relatedAccountGroups'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (relatedAccountGroups != null)
          'relatedAccountGroups': relatedAccountGroups!,
      };
}

/// Metrics for a single Key.
class GoogleCloudRecaptchaenterpriseV1Metrics {
  /// Metrics will be continuous and in order by dates, and in the granularity
  /// of day.
  ///
  /// Only challenge-based keys (CHECKBOX, INVISIBLE), will have challenge-based
  /// data.
  core.List<GoogleCloudRecaptchaenterpriseV1ChallengeMetrics>? challengeMetrics;

  /// Identifier.
  ///
  /// The name of the metrics, in the format
  /// `projects/{project}/keys/{key}/metrics`.
  ///
  /// Output only.
  core.String? name;

  /// Metrics will be continuous and in order by dates, and in the granularity
  /// of day.
  ///
  /// All Key types should have score-based data.
  core.List<GoogleCloudRecaptchaenterpriseV1ScoreMetrics>? scoreMetrics;

  /// Inclusive start time aligned to a day (UTC).
  core.String? startTime;

  GoogleCloudRecaptchaenterpriseV1Metrics({
    this.challengeMetrics,
    this.name,
    this.scoreMetrics,
    this.startTime,
  });

  GoogleCloudRecaptchaenterpriseV1Metrics.fromJson(core.Map json_)
      : this(
          challengeMetrics: json_.containsKey('challengeMetrics')
              ? (json_['challengeMetrics'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1ChallengeMetrics.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          scoreMetrics: json_.containsKey('scoreMetrics')
              ? (json_['scoreMetrics'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1ScoreMetrics.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (challengeMetrics != null) 'challengeMetrics': challengeMetrics!,
        if (name != null) 'name': name!,
        if (scoreMetrics != null) 'scoreMetrics': scoreMetrics!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// The migrate key request message.
class GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest {
  /// If true, skips the billing check.
  ///
  /// A reCAPTCHA Enterprise key or migrated key behaves differently than a
  /// reCAPTCHA (non-Enterprise version) key when you reach a quota limit (see
  /// https://cloud.google.com/recaptcha-enterprise/quotas#quota_limit). To
  /// avoid any disruption of your usage, we check that a billing account is
  /// present. If your usage of reCAPTCHA is under the free quota, you can
  /// safely skip the billing check and proceed with the migration. See
  /// https://cloud.google.com/recaptcha-enterprise/docs/billing-information.
  ///
  /// Optional.
  core.bool? skipBillingCheck;

  GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest({
    this.skipBillingCheck,
  });

  GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest.fromJson(core.Map json_)
      : this(
          skipBillingCheck: json_.containsKey('skipBillingCheck')
              ? json_['skipBillingCheck'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (skipBillingCheck != null) 'skipBillingCheck': skipBillingCheck!,
      };
}

/// Private password leak verification info.
class GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification {
  /// List of prefixes of the encrypted potential password leaks that matched
  /// the given parameters.
  ///
  /// They must be compared with the client-side decryption prefix of
  /// `reencrypted_user_credentials_hash`
  ///
  /// Output only.
  core.List<core.String>? encryptedLeakMatchPrefixes;

  /// Encrypted Scrypt hash of the canonicalized username+password.
  ///
  /// It is re-encrypted by the server and returned through
  /// `reencrypted_user_credentials_hash`.
  ///
  /// Optional.
  core.String? encryptedUserCredentialsHash;
  core.List<core.int> get encryptedUserCredentialsHashAsBytes =>
      convert.base64.decode(encryptedUserCredentialsHash!);

  set encryptedUserCredentialsHashAsBytes(core.List<core.int> bytes_) {
    encryptedUserCredentialsHash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Exactly 26-bit prefix of the SHA-256 hash of the canonicalized username.
  ///
  /// It is used to look up password leaks associated with that hash prefix.
  ///
  /// Required.
  core.String? lookupHashPrefix;
  core.List<core.int> get lookupHashPrefixAsBytes =>
      convert.base64.decode(lookupHashPrefix!);

  set lookupHashPrefixAsBytes(core.List<core.int> bytes_) {
    lookupHashPrefix =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Corresponds to the re-encryption of the `encrypted_user_credentials_hash`
  /// field.
  ///
  /// It is used to match potential password leaks within
  /// `encrypted_leak_match_prefixes`.
  ///
  /// Output only.
  core.String? reencryptedUserCredentialsHash;
  core.List<core.int> get reencryptedUserCredentialsHashAsBytes =>
      convert.base64.decode(reencryptedUserCredentialsHash!);

  set reencryptedUserCredentialsHashAsBytes(core.List<core.int> bytes_) {
    reencryptedUserCredentialsHash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification({
    this.encryptedLeakMatchPrefixes,
    this.encryptedUserCredentialsHash,
    this.lookupHashPrefix,
    this.reencryptedUserCredentialsHash,
  });

  GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification.fromJson(
      core.Map json_)
      : this(
          encryptedLeakMatchPrefixes:
              json_.containsKey('encryptedLeakMatchPrefixes')
                  ? (json_['encryptedLeakMatchPrefixes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          encryptedUserCredentialsHash:
              json_.containsKey('encryptedUserCredentialsHash')
                  ? json_['encryptedUserCredentialsHash'] as core.String
                  : null,
          lookupHashPrefix: json_.containsKey('lookupHashPrefix')
              ? json_['lookupHashPrefix'] as core.String
              : null,
          reencryptedUserCredentialsHash:
              json_.containsKey('reencryptedUserCredentialsHash')
                  ? json_['reencryptedUserCredentialsHash'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptedLeakMatchPrefixes != null)
          'encryptedLeakMatchPrefixes': encryptedLeakMatchPrefixes!,
        if (encryptedUserCredentialsHash != null)
          'encryptedUserCredentialsHash': encryptedUserCredentialsHash!,
        if (lookupHashPrefix != null) 'lookupHashPrefix': lookupHashPrefix!,
        if (reencryptedUserCredentialsHash != null)
          'reencryptedUserCredentialsHash': reencryptedUserCredentialsHash!,
      };
}

/// A group of related accounts.
class GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup {
  /// Identifier.
  ///
  /// The resource name for the related account group in the format
  /// `projects/{project}/relatedaccountgroups/{related_account_group}`.
  ///
  /// Required.
  core.String? name;

  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup({
    this.name,
  });

  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A membership in a group of related accounts.
class GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership {
  /// The unique stable account identifier of the member.
  ///
  /// The identifier corresponds to an `account_id` provided in a previous
  /// `CreateAssessment` or `AnnotateAssessment` call.
  core.String? accountId;

  /// Deprecated: use `account_id` instead.
  ///
  /// The unique stable hashed account identifier of the member. The identifier
  /// corresponds to a `hashed_account_id` provided in a previous
  /// `CreateAssessment` or `AnnotateAssessment` call.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? hashedAccountId;
  core.List<core.int> get hashedAccountIdAsBytes =>
      convert.base64.decode(hashedAccountId!);

  set hashedAccountIdAsBytes(core.List<core.int> bytes_) {
    hashedAccountId =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Identifier.
  ///
  /// The resource name for this membership in the format
  /// `projects/{project}/relatedaccountgroups/{relatedaccountgroup}/memberships/{membership}`.
  ///
  /// Required.
  core.String? name;

  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership({
    this.accountId,
    this.hashedAccountId,
    this.name,
  });

  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership.fromJson(
      core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          hashedAccountId: json_.containsKey('hashedAccountId')
              ? json_['hashedAccountId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (hashedAccountId != null) 'hashedAccountId': hashedAccountId!,
        if (name != null) 'name': name!,
      };
}

/// The reorder firewall policies request message.
class GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest {
  /// A list containing all policy names, in the new order.
  ///
  /// Each name is in the format
  /// `projects/{project}/firewallpolicies/{firewallpolicy}`.
  ///
  /// Required.
  core.List<core.String>? names;

  GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest({
    this.names,
  });

  GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest.fromJson(
      core.Map json_)
      : this(
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// The reorder firewall policies response message.
typedef GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
    = $Empty;

/// Secret key is used only in legacy reCAPTCHA.
///
/// It must be used in a 3rd party integration with legacy reCAPTCHA.
class GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse {
  /// The secret key (also known as shared secret) authorizes communication
  /// between your application backend and the reCAPTCHA Enterprise server to
  /// create an assessment.
  ///
  /// The secret key needs to be kept safe for security purposes.
  core.String? legacySecretKey;

  GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse({
    this.legacySecretKey,
  });

  GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse.fromJson(
      core.Map json_)
      : this(
          legacySecretKey: json_.containsKey('legacySecretKey')
              ? json_['legacySecretKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (legacySecretKey != null) 'legacySecretKey': legacySecretKey!,
      };
}

/// Risk analysis result for an event.
class GoogleCloudRecaptchaenterpriseV1RiskAnalysis {
  /// Extended verdict reasons to be used for experimentation only.
  ///
  /// The set of possible reasons is subject to change.
  ///
  /// Output only.
  core.List<core.String>? extendedVerdictReasons;

  /// Reasons contributing to the risk analysis verdict.
  ///
  /// Output only.
  core.List<core.String>? reasons;

  /// Legitimate event score from 0.0 to 1.0.
  ///
  /// (1.0 means very likely legitimate traffic while 0.0 means very likely
  /// non-legitimate traffic).
  ///
  /// Output only.
  core.double? score;

  GoogleCloudRecaptchaenterpriseV1RiskAnalysis({
    this.extendedVerdictReasons,
    this.reasons,
    this.score,
  });

  GoogleCloudRecaptchaenterpriseV1RiskAnalysis.fromJson(core.Map json_)
      : this(
          extendedVerdictReasons: json_.containsKey('extendedVerdictReasons')
              ? (json_['extendedVerdictReasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          reasons: json_.containsKey('reasons')
              ? (json_['reasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extendedVerdictReasons != null)
          'extendedVerdictReasons': extendedVerdictReasons!,
        if (reasons != null) 'reasons': reasons!,
        if (score != null) 'score': score!,
      };
}

/// Score distribution.
class GoogleCloudRecaptchaenterpriseV1ScoreDistribution {
  /// Map key is score value multiplied by 100.
  ///
  /// The scores are discrete values between \[0, 1\]. The maximum number of
  /// buckets is on order of a few dozen, but typically much lower (ie. 10).
  core.Map<core.String, core.String>? scoreBuckets;

  GoogleCloudRecaptchaenterpriseV1ScoreDistribution({
    this.scoreBuckets,
  });

  GoogleCloudRecaptchaenterpriseV1ScoreDistribution.fromJson(core.Map json_)
      : this(
          scoreBuckets: json_.containsKey('scoreBuckets')
              ? (json_['scoreBuckets'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scoreBuckets != null) 'scoreBuckets': scoreBuckets!,
      };
}

/// Metrics related to scoring.
class GoogleCloudRecaptchaenterpriseV1ScoreMetrics {
  /// Action-based metrics.
  ///
  /// The map key is the action name which specified by the site owners at time
  /// of the "execute" client-side call.
  core.Map<core.String, GoogleCloudRecaptchaenterpriseV1ScoreDistribution>?
      actionMetrics;

  /// Aggregated score metrics for all traffic.
  GoogleCloudRecaptchaenterpriseV1ScoreDistribution? overallMetrics;

  GoogleCloudRecaptchaenterpriseV1ScoreMetrics({
    this.actionMetrics,
    this.overallMetrics,
  });

  GoogleCloudRecaptchaenterpriseV1ScoreMetrics.fromJson(core.Map json_)
      : this(
          actionMetrics: json_.containsKey('actionMetrics')
              ? (json_['actionMetrics'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudRecaptchaenterpriseV1ScoreDistribution.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          overallMetrics: json_.containsKey('overallMetrics')
              ? GoogleCloudRecaptchaenterpriseV1ScoreDistribution.fromJson(
                  json_['overallMetrics']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionMetrics != null) 'actionMetrics': actionMetrics!,
        if (overallMetrics != null) 'overallMetrics': overallMetrics!,
      };
}

/// The request message to search related account group memberships.
class GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest {
  /// The unique stable account identifier used to search connections.
  ///
  /// The identifier should correspond to an `account_id` provided in a previous
  /// `CreateAssessment` or `AnnotateAssessment` call. Either hashed_account_id
  /// or account_id must be set, but not both.
  ///
  /// Optional.
  core.String? accountId;

  /// Deprecated: use `account_id` instead.
  ///
  /// The unique stable hashed account identifier used to search connections.
  /// The identifier should correspond to a `hashed_account_id` provided in a
  /// previous `CreateAssessment` or `AnnotateAssessment` call. Either
  /// hashed_account_id or account_id must be set, but not both.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? hashedAccountId;
  core.List<core.int> get hashedAccountIdAsBytes =>
      convert.base64.decode(hashedAccountId!);

  set hashedAccountIdAsBytes(core.List<core.int> bytes_) {
    hashedAccountId =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The maximum number of groups to return.
  ///
  /// The service might return fewer than this value. If unspecified, at most 50
  /// groups are returned. The maximum value is 1000; values above 1000 are
  /// coerced to 1000.
  ///
  /// Optional.
  core.int? pageSize;

  /// A page token, received from a previous
  /// `SearchRelatedAccountGroupMemberships` call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `SearchRelatedAccountGroupMemberships` must match
  /// the call that provided the page token.
  ///
  /// Optional.
  core.String? pageToken;

  GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest({
    this.accountId,
    this.hashedAccountId,
    this.pageSize,
    this.pageToken,
  });

  GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest.fromJson(
      core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          hashedAccountId: json_.containsKey('hashedAccountId')
              ? json_['hashedAccountId'] as core.String
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (hashedAccountId != null) 'hashedAccountId': hashedAccountId!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// The response to a `SearchRelatedAccountGroupMemberships` call.
class GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The queried memberships.
  core.List<GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership>?
      relatedAccountGroupMemberships;

  GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse({
    this.nextPageToken,
    this.relatedAccountGroupMemberships,
  });

  GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          relatedAccountGroupMemberships: json_
                  .containsKey('relatedAccountGroupMemberships')
              ? (json_['relatedAccountGroupMemberships'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (relatedAccountGroupMemberships != null)
          'relatedAccountGroupMemberships': relatedAccountGroupMemberships!,
      };
}

/// Options for user acceptance testing.
class GoogleCloudRecaptchaenterpriseV1TestingOptions {
  /// For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge
  /// requests for this site will return nocaptcha if NOCAPTCHA, or an
  /// unsolvable challenge if CHALLENGE.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TESTING_CHALLENGE_UNSPECIFIED" : Perform the normal risk analysis and
  /// return either nocaptcha or a challenge depending on risk and trust
  /// factors.
  /// - "NOCAPTCHA" : Challenge requests for this key always return a nocaptcha,
  /// which does not require a solution.
  /// - "UNSOLVABLE_CHALLENGE" : Challenge requests for this key always return
  /// an unsolvable challenge.
  core.String? testingChallenge;

  /// All assessments for this Key will return this score.
  ///
  /// Must be between 0 (likely not legitimate) and 1 (likely legitimate)
  /// inclusive.
  ///
  /// Optional.
  core.double? testingScore;

  GoogleCloudRecaptchaenterpriseV1TestingOptions({
    this.testingChallenge,
    this.testingScore,
  });

  GoogleCloudRecaptchaenterpriseV1TestingOptions.fromJson(core.Map json_)
      : this(
          testingChallenge: json_.containsKey('testingChallenge')
              ? json_['testingChallenge'] as core.String
              : null,
          testingScore: json_.containsKey('testingScore')
              ? (json_['testingScore'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testingChallenge != null) 'testingChallenge': testingChallenge!,
        if (testingScore != null) 'testingScore': testingScore!,
      };
}

/// Properties of the provided event token.
class GoogleCloudRecaptchaenterpriseV1TokenProperties {
  /// Action name provided at token generation.
  ///
  /// Output only.
  core.String? action;

  /// The name of the Android package with which the token was generated
  /// (Android keys only).
  ///
  /// Output only.
  core.String? androidPackageName;

  /// The timestamp corresponding to the generation of the token.
  ///
  /// Output only.
  core.String? createTime;

  /// The hostname of the page on which the token was generated (Web keys only).
  ///
  /// Output only.
  core.String? hostname;

  /// Reason associated with the response when valid = false.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INVALID_REASON_UNSPECIFIED" : Default unspecified type.
  /// - "UNKNOWN_INVALID_REASON" : If the failure reason was not accounted for.
  /// - "MALFORMED" : The provided user verification token was malformed.
  /// - "EXPIRED" : The user verification token had expired.
  /// - "DUPE" : The user verification had already been seen.
  /// - "MISSING" : The user verification token was not present.
  /// - "BROWSER_ERROR" : A retriable error (such as network failure) occurred
  /// on the browser. Could easily be simulated by an attacker.
  core.String? invalidReason;

  /// The ID of the iOS bundle with which the token was generated (iOS keys
  /// only).
  ///
  /// Output only.
  core.String? iosBundleId;

  /// Whether the provided user response token is valid.
  ///
  /// When valid = false, the reason could be specified in invalid_reason or it
  /// could also be due to a user failing to solve a challenge or a sitekey
  /// mismatch (i.e the sitekey used to generate the token was different than
  /// the one specified in the assessment).
  ///
  /// Output only.
  core.bool? valid;

  GoogleCloudRecaptchaenterpriseV1TokenProperties({
    this.action,
    this.androidPackageName,
    this.createTime,
    this.hostname,
    this.invalidReason,
    this.iosBundleId,
    this.valid,
  });

  GoogleCloudRecaptchaenterpriseV1TokenProperties.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          androidPackageName: json_.containsKey('androidPackageName')
              ? json_['androidPackageName'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          hostname: json_.containsKey('hostname')
              ? json_['hostname'] as core.String
              : null,
          invalidReason: json_.containsKey('invalidReason')
              ? json_['invalidReason'] as core.String
              : null,
          iosBundleId: json_.containsKey('iosBundleId')
              ? json_['iosBundleId'] as core.String
              : null,
          valid:
              json_.containsKey('valid') ? json_['valid'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (androidPackageName != null)
          'androidPackageName': androidPackageName!,
        if (createTime != null) 'createTime': createTime!,
        if (hostname != null) 'hostname': hostname!,
        if (invalidReason != null) 'invalidReason': invalidReason!,
        if (iosBundleId != null) 'iosBundleId': iosBundleId!,
        if (valid != null) 'valid': valid!,
      };
}

/// Transaction data associated with a payment protected by reCAPTCHA
/// Enterprise.
class GoogleCloudRecaptchaenterpriseV1TransactionData {
  /// Address associated with the payment method when applicable.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1TransactionDataAddress? billingAddress;

  /// The Bank Identification Number - generally the first 6 or 8 digits of the
  /// card.
  ///
  /// Optional.
  core.String? cardBin;

  /// The last four digits of the card.
  ///
  /// Optional.
  core.String? cardLastFour;

  /// The currency code in ISO-4217 format.
  ///
  /// Optional.
  core.String? currencyCode;

  /// Information about the payment gateway's response to the transaction.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo? gatewayInfo;

  /// Items purchased in this transaction.
  ///
  /// Optional.
  core.List<GoogleCloudRecaptchaenterpriseV1TransactionDataItem>? items;

  /// Information about the user or users fulfilling the transaction.
  ///
  /// Optional.
  core.List<GoogleCloudRecaptchaenterpriseV1TransactionDataUser>? merchants;

  /// The payment method for the transaction.
  ///
  /// The allowed values are: * credit-card * debit-card * gift-card *
  /// processor-{name} (If a third-party is used, for example, processor-paypal)
  /// * custom-{name} (If an alternative method is used, for example,
  /// custom-crypto)
  ///
  /// Optional.
  core.String? paymentMethod;

  /// Destination address if this transaction involves shipping a physical item.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1TransactionDataAddress? shippingAddress;

  /// The value of shipping in the specified currency.
  ///
  /// 0 for free or no shipping.
  ///
  /// Optional.
  core.double? shippingValue;

  /// Unique identifier for the transaction.
  ///
  /// This custom identifier can be used to reference this transaction in the
  /// future, for example, labeling a refund or chargeback event. Two attempts
  /// at the same transaction should use the same transaction id.
  core.String? transactionId;

  /// Information about the user paying/initiating the transaction.
  ///
  /// Optional.
  GoogleCloudRecaptchaenterpriseV1TransactionDataUser? user;

  /// The decimal value of the transaction in the specified currency.
  ///
  /// Optional.
  core.double? value;

  GoogleCloudRecaptchaenterpriseV1TransactionData({
    this.billingAddress,
    this.cardBin,
    this.cardLastFour,
    this.currencyCode,
    this.gatewayInfo,
    this.items,
    this.merchants,
    this.paymentMethod,
    this.shippingAddress,
    this.shippingValue,
    this.transactionId,
    this.user,
    this.value,
  });

  GoogleCloudRecaptchaenterpriseV1TransactionData.fromJson(core.Map json_)
      : this(
          billingAddress: json_.containsKey('billingAddress')
              ? GoogleCloudRecaptchaenterpriseV1TransactionDataAddress.fromJson(
                  json_['billingAddress']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cardBin: json_.containsKey('cardBin')
              ? json_['cardBin'] as core.String
              : null,
          cardLastFour: json_.containsKey('cardLastFour')
              ? json_['cardLastFour'] as core.String
              : null,
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          gatewayInfo: json_.containsKey('gatewayInfo')
              ? GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
                  .fromJson(json_['gatewayInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1TransactionDataItem
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          merchants: json_.containsKey('merchants')
              ? (json_['merchants'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1TransactionDataUser
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          paymentMethod: json_.containsKey('paymentMethod')
              ? json_['paymentMethod'] as core.String
              : null,
          shippingAddress: json_.containsKey('shippingAddress')
              ? GoogleCloudRecaptchaenterpriseV1TransactionDataAddress.fromJson(
                  json_['shippingAddress']
                      as core.Map<core.String, core.dynamic>)
              : null,
          shippingValue: json_.containsKey('shippingValue')
              ? (json_['shippingValue'] as core.num).toDouble()
              : null,
          transactionId: json_.containsKey('transactionId')
              ? json_['transactionId'] as core.String
              : null,
          user: json_.containsKey('user')
              ? GoogleCloudRecaptchaenterpriseV1TransactionDataUser.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>)
              : null,
          value: json_.containsKey('value')
              ? (json_['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billingAddress != null) 'billingAddress': billingAddress!,
        if (cardBin != null) 'cardBin': cardBin!,
        if (cardLastFour != null) 'cardLastFour': cardLastFour!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (gatewayInfo != null) 'gatewayInfo': gatewayInfo!,
        if (items != null) 'items': items!,
        if (merchants != null) 'merchants': merchants!,
        if (paymentMethod != null) 'paymentMethod': paymentMethod!,
        if (shippingAddress != null) 'shippingAddress': shippingAddress!,
        if (shippingValue != null) 'shippingValue': shippingValue!,
        if (transactionId != null) 'transactionId': transactionId!,
        if (user != null) 'user': user!,
        if (value != null) 'value': value!,
      };
}

/// Structured address format for billing and shipping addresses.
class GoogleCloudRecaptchaenterpriseV1TransactionDataAddress {
  /// The first lines of the address.
  ///
  /// The first line generally contains the street name and number, and further
  /// lines may include information such as an apartment number.
  ///
  /// Optional.
  core.List<core.String>? address;

  /// The state, province, or otherwise administrative area of the address.
  ///
  /// Optional.
  core.String? administrativeArea;

  /// The town/city of the address.
  ///
  /// Optional.
  core.String? locality;

  /// The postal or ZIP code of the address.
  ///
  /// Optional.
  core.String? postalCode;

  /// The recipient name, potentially including information such as "care of".
  ///
  /// Optional.
  core.String? recipient;

  /// The CLDR country/region of the address.
  ///
  /// Optional.
  core.String? regionCode;

  GoogleCloudRecaptchaenterpriseV1TransactionDataAddress({
    this.address,
    this.administrativeArea,
    this.locality,
    this.postalCode,
    this.recipient,
    this.regionCode,
  });

  GoogleCloudRecaptchaenterpriseV1TransactionDataAddress.fromJson(
      core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? (json_['address'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          administrativeArea: json_.containsKey('administrativeArea')
              ? json_['administrativeArea'] as core.String
              : null,
          locality: json_.containsKey('locality')
              ? json_['locality'] as core.String
              : null,
          postalCode: json_.containsKey('postalCode')
              ? json_['postalCode'] as core.String
              : null,
          recipient: json_.containsKey('recipient')
              ? json_['recipient'] as core.String
              : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (administrativeArea != null)
          'administrativeArea': administrativeArea!,
        if (locality != null) 'locality': locality!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (recipient != null) 'recipient': recipient!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// Details about the transaction from the gateway.
class GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo {
  /// AVS response code from the gateway (available only when reCAPTCHA
  /// Enterprise is called after authorization).
  ///
  /// Optional.
  core.String? avsResponseCode;

  /// CVV response code from the gateway (available only when reCAPTCHA
  /// Enterprise is called after authorization).
  ///
  /// Optional.
  core.String? cvvResponseCode;

  /// Gateway response code describing the state of the transaction.
  ///
  /// Optional.
  core.String? gatewayResponseCode;

  /// Name of the gateway service (for example, stripe, square, paypal).
  ///
  /// Optional.
  core.String? name;

  GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo({
    this.avsResponseCode,
    this.cvvResponseCode,
    this.gatewayResponseCode,
    this.name,
  });

  GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo.fromJson(
      core.Map json_)
      : this(
          avsResponseCode: json_.containsKey('avsResponseCode')
              ? json_['avsResponseCode'] as core.String
              : null,
          cvvResponseCode: json_.containsKey('cvvResponseCode')
              ? json_['cvvResponseCode'] as core.String
              : null,
          gatewayResponseCode: json_.containsKey('gatewayResponseCode')
              ? json_['gatewayResponseCode'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (avsResponseCode != null) 'avsResponseCode': avsResponseCode!,
        if (cvvResponseCode != null) 'cvvResponseCode': cvvResponseCode!,
        if (gatewayResponseCode != null)
          'gatewayResponseCode': gatewayResponseCode!,
        if (name != null) 'name': name!,
      };
}

/// Line items being purchased in this transaction.
class GoogleCloudRecaptchaenterpriseV1TransactionDataItem {
  /// When a merchant is specified, its corresponding account_id.
  ///
  /// Necessary to populate marketplace-style transactions.
  ///
  /// Optional.
  core.String? merchantAccountId;

  /// The full name of the item.
  ///
  /// Optional.
  core.String? name;

  /// The quantity of this item that is being purchased.
  ///
  /// Optional.
  core.String? quantity;

  /// The value per item that the user is paying, in the transaction currency,
  /// after discounts.
  ///
  /// Optional.
  core.double? value;

  GoogleCloudRecaptchaenterpriseV1TransactionDataItem({
    this.merchantAccountId,
    this.name,
    this.quantity,
    this.value,
  });

  GoogleCloudRecaptchaenterpriseV1TransactionDataItem.fromJson(core.Map json_)
      : this(
          merchantAccountId: json_.containsKey('merchantAccountId')
              ? json_['merchantAccountId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          quantity: json_.containsKey('quantity')
              ? json_['quantity'] as core.String
              : null,
          value: json_.containsKey('value')
              ? (json_['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (merchantAccountId != null) 'merchantAccountId': merchantAccountId!,
        if (name != null) 'name': name!,
        if (quantity != null) 'quantity': quantity!,
        if (value != null) 'value': value!,
      };
}

/// Details about a user's account involved in the transaction.
class GoogleCloudRecaptchaenterpriseV1TransactionDataUser {
  /// Unique account identifier for this user.
  ///
  /// If using account defender, this should match the hashed_account_id field.
  /// Otherwise, a unique and persistent identifier for this account.
  ///
  /// Optional.
  core.String? accountId;

  /// The epoch milliseconds of the user's account creation.
  ///
  /// Optional.
  core.String? creationMs;

  /// The email address of the user.
  ///
  /// Optional.
  core.String? email;

  /// Whether the email has been verified to be accessible by the user (OTP or
  /// similar).
  ///
  /// Optional.
  core.bool? emailVerified;

  /// The phone number of the user, with country code.
  ///
  /// Optional.
  core.String? phoneNumber;

  /// Whether the phone number has been verified to be accessible by the user
  /// (OTP or similar).
  ///
  /// Optional.
  core.bool? phoneVerified;

  GoogleCloudRecaptchaenterpriseV1TransactionDataUser({
    this.accountId,
    this.creationMs,
    this.email,
    this.emailVerified,
    this.phoneNumber,
    this.phoneVerified,
  });

  GoogleCloudRecaptchaenterpriseV1TransactionDataUser.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          creationMs: json_.containsKey('creationMs')
              ? json_['creationMs'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          emailVerified: json_.containsKey('emailVerified')
              ? json_['emailVerified'] as core.bool
              : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
          phoneVerified: json_.containsKey('phoneVerified')
              ? json_['phoneVerified'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (creationMs != null) 'creationMs': creationMs!,
        if (email != null) 'email': email!,
        if (emailVerified != null) 'emailVerified': emailVerified!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (phoneVerified != null) 'phoneVerified': phoneVerified!,
      };
}

/// Describes an event in the lifecycle of a payment transaction.
class GoogleCloudRecaptchaenterpriseV1TransactionEvent {
  /// Timestamp when this transaction event occurred; otherwise assumed to be
  /// the time of the API call.
  ///
  /// Optional.
  core.String? eventTime;

  /// The type of this transaction event.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TRANSACTION_EVENT_TYPE_UNSPECIFIED" : Default, unspecified event type.
  /// - "MERCHANT_APPROVE" : Indicates that the transaction is approved by the
  /// merchant. The accompanying reasons can include terms such as 'INHOUSE',
  /// 'ACCERTIFY', 'CYBERSOURCE', or 'MANUAL_REVIEW'.
  /// - "MERCHANT_DENY" : Indicates that the transaction is denied and concluded
  /// due to risks detected by the merchant. The accompanying reasons can
  /// include terms such as 'INHOUSE', 'ACCERTIFY', 'CYBERSOURCE', or
  /// 'MANUAL_REVIEW'.
  /// - "MANUAL_REVIEW" : Indicates that the transaction is being evaluated by a
  /// human, due to suspicion or risk.
  /// - "AUTHORIZATION" : Indicates that the authorization attempt with the card
  /// issuer succeeded.
  /// - "AUTHORIZATION_DECLINE" : Indicates that the authorization attempt with
  /// the card issuer failed. The accompanying reasons can include Visa's '54'
  /// indicating that the card is expired, or '82' indicating that the CVV is
  /// incorrect.
  /// - "PAYMENT_CAPTURE" : Indicates that the transaction is completed because
  /// the funds were settled.
  /// - "PAYMENT_CAPTURE_DECLINE" : Indicates that the transaction could not be
  /// completed because the funds were not settled.
  /// - "CANCEL" : Indicates that the transaction has been canceled. Specify the
  /// reason for the cancellation. For example, 'INSUFFICIENT_INVENTORY'.
  /// - "CHARGEBACK_INQUIRY" : Indicates that the merchant has received a
  /// chargeback inquiry due to fraud for the transaction, requesting additional
  /// information before a fraud chargeback is officially issued and a formal
  /// chargeback notification is sent.
  /// - "CHARGEBACK_ALERT" : Indicates that the merchant has received a
  /// chargeback alert due to fraud for the transaction. The process of
  /// resolving the dispute without involving the payment network is started.
  /// - "FRAUD_NOTIFICATION" : Indicates that a fraud notification is issued for
  /// the transaction, sent by the payment instrument's issuing bank because the
  /// transaction appears to be fraudulent. We recommend including TC40 or SAFE
  /// data in the `reason` field for this event type. For partial chargebacks,
  /// we recommend that you include an amount in the `value` field.
  /// - "CHARGEBACK" : Indicates that the merchant is informed by the payment
  /// network that the transaction has entered the chargeback process due to
  /// fraud. Reason code examples include Discover's '6005' and '6041'. For
  /// partial chargebacks, we recommend that you include an amount in the
  /// `value` field.
  /// - "CHARGEBACK_REPRESENTMENT" : Indicates that the transaction has entered
  /// the chargeback process due to fraud, and that the merchant has chosen to
  /// enter representment. Reason examples include Discover's '6005' and '6041'.
  /// For partial chargebacks, we recommend that you include an amount in the
  /// `value` field.
  /// - "CHARGEBACK_REVERSE" : Indicates that the transaction has had a fraud
  /// chargeback which was illegitimate and was reversed as a result. For
  /// partial chargebacks, we recommend that you include an amount in the
  /// `value` field.
  /// - "REFUND_REQUEST" : Indicates that the merchant has received a refund for
  /// a completed transaction. For partial refunds, we recommend that you
  /// include an amount in the `value` field. Reason example: 'TAX_EXEMPT'
  /// (partial refund of exempt tax)
  /// - "REFUND_DECLINE" : Indicates that the merchant has received a refund
  /// request for this transaction, but that they have declined it. For partial
  /// refunds, we recommend that you include an amount in the `value` field.
  /// Reason example: 'TAX_EXEMPT' (partial refund of exempt tax)
  /// - "REFUND" : Indicates that the completed transaction was refunded by the
  /// merchant. For partial refunds, we recommend that you include an amount in
  /// the `value` field. Reason example: 'TAX_EXEMPT' (partial refund of exempt
  /// tax)
  /// - "REFUND_REVERSE" : Indicates that the completed transaction was refunded
  /// by the merchant, and that this refund was reversed. For partial refunds,
  /// we recommend that you include an amount in the `value` field.
  core.String? eventType;

  /// The reason or standardized code that corresponds with this transaction
  /// event, if one exists.
  ///
  /// For example, a CHARGEBACK event with code 6005.
  ///
  /// Optional.
  core.String? reason;

  /// The value that corresponds with this transaction event, if one exists.
  ///
  /// For example, a refund event where $5.00 was refunded. Currency is obtained
  /// from the original transaction data.
  ///
  /// Optional.
  core.double? value;

  GoogleCloudRecaptchaenterpriseV1TransactionEvent({
    this.eventTime,
    this.eventType,
    this.reason,
    this.value,
  });

  GoogleCloudRecaptchaenterpriseV1TransactionEvent.fromJson(core.Map json_)
      : this(
          eventTime: json_.containsKey('eventTime')
              ? json_['eventTime'] as core.String
              : null,
          eventType: json_.containsKey('eventType')
              ? json_['eventType'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          value: json_.containsKey('value')
              ? (json_['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventTime != null) 'eventTime': eventTime!,
        if (eventType != null) 'eventType': eventType!,
        if (reason != null) 'reason': reason!,
        if (value != null) 'value': value!,
      };
}

/// An identifier associated with a user.
class GoogleCloudRecaptchaenterpriseV1UserId {
  /// An email address.
  ///
  /// Optional.
  core.String? email;

  /// A phone number.
  ///
  /// Should use the E.164 format.
  ///
  /// Optional.
  core.String? phoneNumber;

  /// A unique username, if different from all the other identifiers and
  /// `account_id` that are provided.
  ///
  /// Can be a unique login handle or display name for a user.
  ///
  /// Optional.
  core.String? username;

  GoogleCloudRecaptchaenterpriseV1UserId({
    this.email,
    this.phoneNumber,
    this.username,
  });

  GoogleCloudRecaptchaenterpriseV1UserId.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (username != null) 'username': username!,
      };
}

/// User information associated with a request protected by reCAPTCHA
/// Enterprise.
class GoogleCloudRecaptchaenterpriseV1UserInfo {
  /// For logged-in requests or login/registration requests, the unique account
  /// identifier associated with this user.
  ///
  /// You can use the username if it is stable (meaning it is the same for every
  /// request associated with the same user), or any stable user ID of your
  /// choice. Leave blank for non logged-in actions or guest checkout.
  ///
  /// Optional.
  core.String? accountId;

  /// Creation time for this account associated with this user.
  ///
  /// Leave blank for non logged-in actions, guest checkout, or when there is no
  /// account associated with the current user.
  ///
  /// Optional.
  core.String? createAccountTime;

  /// Identifiers associated with this user or request.
  ///
  /// Optional.
  core.List<GoogleCloudRecaptchaenterpriseV1UserId>? userIds;

  GoogleCloudRecaptchaenterpriseV1UserInfo({
    this.accountId,
    this.createAccountTime,
    this.userIds,
  });

  GoogleCloudRecaptchaenterpriseV1UserInfo.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          createAccountTime: json_.containsKey('createAccountTime')
              ? json_['createAccountTime'] as core.String
              : null,
          userIds: json_.containsKey('userIds')
              ? (json_['userIds'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1UserId.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (createAccountTime != null) 'createAccountTime': createAccountTime!,
        if (userIds != null) 'userIds': userIds!,
      };
}

/// Settings specific to keys that can be used for WAF (Web Application
/// Firewall).
class GoogleCloudRecaptchaenterpriseV1WafSettings {
  /// The WAF feature for which this key is enabled.
  ///
  /// Required.
  /// Possible string values are:
  /// - "WAF_FEATURE_UNSPECIFIED" : Undefined feature.
  /// - "CHALLENGE_PAGE" : Redirects suspicious traffic to reCAPTCHA.
  /// - "SESSION_TOKEN" : Use reCAPTCHA session-tokens to protect the whole user
  /// session on the site's domain.
  /// - "ACTION_TOKEN" : Use reCAPTCHA action-tokens to protect user actions.
  /// - "EXPRESS" : Use reCAPTCHA WAF express protection to protect any content
  /// other than web pages, like APIs and IoT devices.
  core.String? wafFeature;

  /// The WAF service that uses this key.
  ///
  /// Required.
  /// Possible string values are:
  /// - "WAF_SERVICE_UNSPECIFIED" : Undefined WAF
  /// - "CA" : Cloud Armor
  /// - "FASTLY" : Fastly
  /// - "CLOUDFLARE" : Cloudflare
  core.String? wafService;

  GoogleCloudRecaptchaenterpriseV1WafSettings({
    this.wafFeature,
    this.wafService,
  });

  GoogleCloudRecaptchaenterpriseV1WafSettings.fromJson(core.Map json_)
      : this(
          wafFeature: json_.containsKey('wafFeature')
              ? json_['wafFeature'] as core.String
              : null,
          wafService: json_.containsKey('wafService')
              ? json_['wafService'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (wafFeature != null) 'wafFeature': wafFeature!,
        if (wafService != null) 'wafService': wafService!,
      };
}

/// Settings specific to keys that can be used by websites.
class GoogleCloudRecaptchaenterpriseV1WebKeySettings {
  /// If set to true, it means allowed_domains will not be enforced.
  ///
  /// Optional.
  core.bool? allowAllDomains;

  /// If set to true, the key can be used on AMP (Accelerated Mobile Pages)
  /// websites.
  ///
  /// This is supported only for the SCORE integration type.
  ///
  /// Optional.
  core.bool? allowAmpTraffic;

  /// Domains or subdomains of websites allowed to use the key.
  ///
  /// All subdomains of an allowed domain are automatically allowed. A valid
  /// domain requires a host and must not include any path, port, query or
  /// fragment. Examples: 'example.com' or 'subdomain.example.com'
  ///
  /// Optional.
  core.List<core.String>? allowedDomains;

  /// Settings for the frequency and difficulty at which this key triggers
  /// captcha challenges.
  ///
  /// This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED" : Default type that
  /// indicates this enum hasn't been specified.
  /// - "USABILITY" : Key tends to show fewer and easier challenges.
  /// - "BALANCE" : Key tends to show balanced (in amount and difficulty)
  /// challenges.
  /// - "SECURITY" : Key tends to show more and harder challenges.
  core.String? challengeSecurityPreference;

  /// Describes how this key is integrated with the website.
  ///
  /// Required.
  /// Possible string values are:
  /// - "INTEGRATION_TYPE_UNSPECIFIED" : Default type that indicates this enum
  /// hasn't been specified. This is not a valid IntegrationType, one of the
  /// other types must be specified instead.
  /// - "SCORE" : Only used to produce scores. It doesn't display the "I'm not a
  /// robot" checkbox and never shows captcha challenges.
  /// - "CHECKBOX" : Displays the "I'm not a robot" checkbox and may show
  /// captcha challenges after it is checked.
  /// - "INVISIBLE" : Doesn't display the "I'm not a robot" checkbox, but may
  /// show captcha challenges after risk analysis.
  core.String? integrationType;

  GoogleCloudRecaptchaenterpriseV1WebKeySettings({
    this.allowAllDomains,
    this.allowAmpTraffic,
    this.allowedDomains,
    this.challengeSecurityPreference,
    this.integrationType,
  });

  GoogleCloudRecaptchaenterpriseV1WebKeySettings.fromJson(core.Map json_)
      : this(
          allowAllDomains: json_.containsKey('allowAllDomains')
              ? json_['allowAllDomains'] as core.bool
              : null,
          allowAmpTraffic: json_.containsKey('allowAmpTraffic')
              ? json_['allowAmpTraffic'] as core.bool
              : null,
          allowedDomains: json_.containsKey('allowedDomains')
              ? (json_['allowedDomains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          challengeSecurityPreference:
              json_.containsKey('challengeSecurityPreference')
                  ? json_['challengeSecurityPreference'] as core.String
                  : null,
          integrationType: json_.containsKey('integrationType')
              ? json_['integrationType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowAllDomains != null) 'allowAllDomains': allowAllDomains!,
        if (allowAmpTraffic != null) 'allowAmpTraffic': allowAmpTraffic!,
        if (allowedDomains != null) 'allowedDomains': allowedDomains!,
        if (challengeSecurityPreference != null)
          'challengeSecurityPreference': challengeSecurityPreference!,
        if (integrationType != null) 'integrationType': integrationType!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;
