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

/// reCAPTCHA Enterprise API - v1
///
/// For more information, see <https://cloud.google.com/recaptcha-enterprise/>
///
/// Create an instance of [RecaptchaEnterpriseApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsAssessmentsResource]
///   - [ProjectsKeysResource]
///   - [ProjectsRelatedaccountgroupmembershipsResource]
///   - [ProjectsRelatedaccountgroupsResource]
///     - [ProjectsRelatedaccountgroupsMembershipsResource]
library recaptchaenterprise.v1;

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
  /// "projects/{project}/assessments/{assessment}".
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':annotate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an Assessment of the likelihood an event is legitimate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in which the assessment will
  /// be created, in the format "projects/{project}".
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/assessments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecaptchaenterpriseV1Assessment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// created, in the format "projects/{project}".
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/keys';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecaptchaenterpriseV1Key.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified key.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key to be deleted, in the format
  /// "projects/{project}/keys/{key}".
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the specified key.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested key, in the format
  /// "projects/{project}/keys/{key}".
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRecaptchaenterpriseV1Key.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get some aggregated metrics for a Key.
  ///
  /// This data can be used to build dashboards.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested metrics, in the format
  /// "projects/{project}/keys/{key}/metrics".
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRecaptchaenterpriseV1Metrics.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of all keys that belong to a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project that contains the keys that
  /// will be listed, in the format "projects/{project}".
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/keys';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRecaptchaenterpriseV1ListKeysResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Migrates an existing key from reCAPTCHA to reCAPTCHA Enterprise.
  ///
  /// Once a key is migrated, it can be used from either product. SiteVerify
  /// requests are billed as CreateAssessment calls. You must be authenticated
  /// as one of the current owners of the reCAPTCHA Site Key, and your user must
  /// have the reCAPTCHA Enterprise Admin IAM role in the destination project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key to be migrated, in the format
  /// "projects/{project}/keys/{key}".
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':migrate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecaptchaenterpriseV1Key.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name for the Key in the format
  /// "projects/{project}/keys/{key}".
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
    final _body = convert.json.encode(request);
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
    return GoogleCloudRecaptchaenterpriseV1Key.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// group memberships from, in the format "projects/{project}".
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$project') +
        '/relatedaccountgroupmemberships:search';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// groups from, in the format "projects/{project}".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of groups to return. The service
  /// may return fewer than this value. If unspecified, at most 50 groups will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/relatedaccountgroups';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsRelatedaccountgroupsMembershipsResource {
  final commons.ApiRequester _requester;

  ProjectsRelatedaccountgroupsMembershipsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the memberships in a group of related accounts.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name for the related account group in
  /// the format
  /// `projects/{project}/relatedaccountgroups/{relatedaccountgroup}`.
  /// Value must have pattern `^projects/\[^/\]+/relatedaccountgroups/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of accounts to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// accounts will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Account Defender risk assessment.
class GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment {
  /// Labels for this request.
  core.List<core.String>? labels;

  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment({
    this.labels,
  });

  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment.fromJson(
      core.Map _json)
      : this(
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
      };
}

/// Settings specific to keys that can be used by Android apps.
class GoogleCloudRecaptchaenterpriseV1AndroidKeySettings {
  /// If set to true, allowed_package_names are not enforced.
  core.bool? allowAllPackageNames;

  /// Android package names of apps allowed to use the key.
  ///
  /// Example: 'com.companyname.appname'
  core.List<core.String>? allowedPackageNames;

  GoogleCloudRecaptchaenterpriseV1AndroidKeySettings({
    this.allowAllPackageNames,
    this.allowedPackageNames,
  });

  GoogleCloudRecaptchaenterpriseV1AndroidKeySettings.fromJson(core.Map _json)
      : this(
          allowAllPackageNames: _json.containsKey('allowAllPackageNames')
              ? _json['allowAllPackageNames'] as core.bool
              : null,
          allowedPackageNames: _json.containsKey('allowedPackageNames')
              ? (_json['allowedPackageNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowAllPackageNames != null)
          'allowAllPackageNames': allowAllPackageNames!,
        if (allowedPackageNames != null)
          'allowedPackageNames': allowedPackageNames!,
      };
}

/// The request message to annotate an Assessment.
class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest {
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

  /// Optional unique stable hashed user identifier to apply to the assessment.
  ///
  /// This is an alternative to setting the hashed_account_id in
  /// CreateAssessment, for example when the account identifier is not yet known
  /// in the initial request. It is recommended that the identifier is hashed
  /// using hmac-sha256 with stable secret.
  ///
  /// Optional.
  core.String? hashedAccountId;
  core.List<core.int> get hashedAccountIdAsBytes =>
      convert.base64.decode(hashedAccountId!);

  set hashedAccountIdAsBytes(core.List<core.int> _bytes) {
    hashedAccountId =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Optional reasons for the annotation that will be assigned to the Event.
  ///
  /// Optional.
  core.List<core.String>? reasons;

  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest({
    this.annotation,
    this.hashedAccountId,
    this.reasons,
  });

  GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest.fromJson(
      core.Map _json)
      : this(
          annotation: _json.containsKey('annotation')
              ? _json['annotation'] as core.String
              : null,
          hashedAccountId: _json.containsKey('hashedAccountId')
              ? _json['hashedAccountId'] as core.String
              : null,
          reasons: _json.containsKey('reasons')
              ? (_json['reasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotation != null) 'annotation': annotation!,
        if (hashedAccountId != null) 'hashedAccountId': hashedAccountId!,
        if (reasons != null) 'reasons': reasons!,
      };
}

/// Empty response for AnnotateAssessment.
typedef GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse = $Empty;

/// A recaptcha assessment resource.
class GoogleCloudRecaptchaenterpriseV1Assessment {
  /// Assessment returned by Account Defender when a hashed_account_id is
  /// provided.
  GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment?
      accountDefenderAssessment;

  /// The event being assessed.
  GoogleCloudRecaptchaenterpriseV1Event? event;

  /// The resource name for the Assessment in the format
  /// "projects/{project}/assessments/{assessment}".
  ///
  /// Output only.
  core.String? name;

  /// The private password leak verification field contains the parameters used
  /// to check for leaks privately without sharing user credentials.
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
    this.event,
    this.name,
    this.privatePasswordLeakVerification,
    this.riskAnalysis,
    this.tokenProperties,
  });

  GoogleCloudRecaptchaenterpriseV1Assessment.fromJson(core.Map _json)
      : this(
          accountDefenderAssessment:
              _json.containsKey('accountDefenderAssessment')
                  ? GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
                      .fromJson(_json['accountDefenderAssessment']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          event: _json.containsKey('event')
              ? GoogleCloudRecaptchaenterpriseV1Event.fromJson(
                  _json['event'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          privatePasswordLeakVerification: _json
                  .containsKey('privatePasswordLeakVerification')
              ? GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
                  .fromJson(_json['privatePasswordLeakVerification']
                      as core.Map<core.String, core.dynamic>)
              : null,
          riskAnalysis: _json.containsKey('riskAnalysis')
              ? GoogleCloudRecaptchaenterpriseV1RiskAnalysis.fromJson(
                  _json['riskAnalysis'] as core.Map<core.String, core.dynamic>)
              : null,
          tokenProperties: _json.containsKey('tokenProperties')
              ? GoogleCloudRecaptchaenterpriseV1TokenProperties.fromJson(
                  _json['tokenProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountDefenderAssessment != null)
          'accountDefenderAssessment': accountDefenderAssessment!,
        if (event != null) 'event': event!,
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

  GoogleCloudRecaptchaenterpriseV1ChallengeMetrics.fromJson(core.Map _json)
      : this(
          failedCount: _json.containsKey('failedCount')
              ? _json['failedCount'] as core.String
              : null,
          nocaptchaCount: _json.containsKey('nocaptchaCount')
              ? _json['nocaptchaCount'] as core.String
              : null,
          pageloadCount: _json.containsKey('pageloadCount')
              ? _json['pageloadCount'] as core.String
              : null,
          passedCount: _json.containsKey('passedCount')
              ? _json['passedCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failedCount != null) 'failedCount': failedCount!,
        if (nocaptchaCount != null) 'nocaptchaCount': nocaptchaCount!,
        if (pageloadCount != null) 'pageloadCount': pageloadCount!,
        if (passedCount != null) 'passedCount': passedCount!,
      };
}

class GoogleCloudRecaptchaenterpriseV1Event {
  /// The expected action for this type of event.
  ///
  /// This should be the same action provided at token generation time on
  /// client-side platforms already integrated with recaptcha enterprise.
  ///
  /// Optional.
  core.String? expectedAction;

  /// Optional unique stable hashed user identifier for the request.
  ///
  /// The identifier should ideally be hashed using sha256 with stable secret.
  ///
  /// Optional.
  core.String? hashedAccountId;
  core.List<core.int> get hashedAccountIdAsBytes =>
      convert.base64.decode(hashedAccountId!);

  set hashedAccountIdAsBytes(core.List<core.int> _bytes) {
    hashedAccountId =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The site key that was used to invoke reCAPTCHA on your site and generate
  /// the token.
  ///
  /// Optional.
  core.String? siteKey;

  /// The user response token provided by the reCAPTCHA client-side integration
  /// on your site.
  ///
  /// Optional.
  core.String? token;

  /// The user agent present in the request from the user's device related to
  /// this event.
  ///
  /// Optional.
  core.String? userAgent;

  /// The IP address in the request from the user's device related to this
  /// event.
  ///
  /// Optional.
  core.String? userIpAddress;

  GoogleCloudRecaptchaenterpriseV1Event({
    this.expectedAction,
    this.hashedAccountId,
    this.siteKey,
    this.token,
    this.userAgent,
    this.userIpAddress,
  });

  GoogleCloudRecaptchaenterpriseV1Event.fromJson(core.Map _json)
      : this(
          expectedAction: _json.containsKey('expectedAction')
              ? _json['expectedAction'] as core.String
              : null,
          hashedAccountId: _json.containsKey('hashedAccountId')
              ? _json['hashedAccountId'] as core.String
              : null,
          siteKey: _json.containsKey('siteKey')
              ? _json['siteKey'] as core.String
              : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
          userAgent: _json.containsKey('userAgent')
              ? _json['userAgent'] as core.String
              : null,
          userIpAddress: _json.containsKey('userIpAddress')
              ? _json['userIpAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expectedAction != null) 'expectedAction': expectedAction!,
        if (hashedAccountId != null) 'hashedAccountId': hashedAccountId!,
        if (siteKey != null) 'siteKey': siteKey!,
        if (token != null) 'token': token!,
        if (userAgent != null) 'userAgent': userAgent!,
        if (userIpAddress != null) 'userIpAddress': userIpAddress!,
      };
}

/// Settings specific to keys that can be used by iOS apps.
class GoogleCloudRecaptchaenterpriseV1IOSKeySettings {
  /// If set to true, allowed_bundle_ids are not enforced.
  core.bool? allowAllBundleIds;

  /// iOS bundle ids of apps allowed to use the key.
  ///
  /// Example: 'com.companyname.productname.appname'
  core.List<core.String>? allowedBundleIds;

  GoogleCloudRecaptchaenterpriseV1IOSKeySettings({
    this.allowAllBundleIds,
    this.allowedBundleIds,
  });

  GoogleCloudRecaptchaenterpriseV1IOSKeySettings.fromJson(core.Map _json)
      : this(
          allowAllBundleIds: _json.containsKey('allowAllBundleIds')
              ? _json['allowAllBundleIds'] as core.bool
              : null,
          allowedBundleIds: _json.containsKey('allowedBundleIds')
              ? (_json['allowedBundleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowAllBundleIds != null) 'allowAllBundleIds': allowAllBundleIds!,
        if (allowedBundleIds != null) 'allowedBundleIds': allowedBundleIds!,
      };
}

/// A key used to identify and configure applications (web and/or mobile) that
/// use reCAPTCHA Enterprise.
class GoogleCloudRecaptchaenterpriseV1Key {
  /// Settings for keys that can be used by Android apps.
  GoogleCloudRecaptchaenterpriseV1AndroidKeySettings? androidSettings;

  /// The timestamp corresponding to the creation of this Key.
  core.String? createTime;

  /// Human-readable display name of this key.
  ///
  /// Modifiable by user.
  core.String? displayName;

  /// Settings for keys that can be used by iOS apps.
  GoogleCloudRecaptchaenterpriseV1IOSKeySettings? iosSettings;

  /// See Creating and managing labels.
  core.Map<core.String, core.String>? labels;

  /// The resource name for the Key in the format
  /// "projects/{project}/keys/{key}".
  core.String? name;

  /// Options for user acceptance testing.
  GoogleCloudRecaptchaenterpriseV1TestingOptions? testingOptions;

  /// Settings for WAF
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

  GoogleCloudRecaptchaenterpriseV1Key.fromJson(core.Map _json)
      : this(
          androidSettings: _json.containsKey('androidSettings')
              ? GoogleCloudRecaptchaenterpriseV1AndroidKeySettings.fromJson(
                  _json['androidSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          iosSettings: _json.containsKey('iosSettings')
              ? GoogleCloudRecaptchaenterpriseV1IOSKeySettings.fromJson(
                  _json['iosSettings'] as core.Map<core.String, core.dynamic>)
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
          testingOptions: _json.containsKey('testingOptions')
              ? GoogleCloudRecaptchaenterpriseV1TestingOptions.fromJson(
                  _json['testingOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          wafSettings: _json.containsKey('wafSettings')
              ? GoogleCloudRecaptchaenterpriseV1WafSettings.fromJson(
                  _json['wafSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          webSettings: _json.containsKey('webSettings')
              ? GoogleCloudRecaptchaenterpriseV1WebKeySettings.fromJson(
                  _json['webSettings'] as core.Map<core.String, core.dynamic>)
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

  GoogleCloudRecaptchaenterpriseV1ListKeysResponse.fromJson(core.Map _json)
      : this(
          keys: _json.containsKey('keys')
              ? (_json['keys'] as core.List)
                  .map((value) => GoogleCloudRecaptchaenterpriseV1Key.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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
      core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          relatedAccountGroupMemberships: _json
                  .containsKey('relatedAccountGroupMemberships')
              ? (_json['relatedAccountGroupMemberships'] as core.List)
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
      core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          relatedAccountGroups: _json.containsKey('relatedAccountGroups')
              ? (_json['relatedAccountGroups'] as core.List)
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

  /// The name of the metrics, in the format
  /// "projects/{project}/keys/{key}/metrics".
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

  GoogleCloudRecaptchaenterpriseV1Metrics.fromJson(core.Map _json)
      : this(
          challengeMetrics: _json.containsKey('challengeMetrics')
              ? (_json['challengeMetrics'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1ChallengeMetrics.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          scoreMetrics: _json.containsKey('scoreMetrics')
              ? (_json['scoreMetrics'] as core.List)
                  .map((value) =>
                      GoogleCloudRecaptchaenterpriseV1ScoreMetrics.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
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
typedef GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest = $Empty;

/// Private password leak verification info.
class GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification {
  /// List of prefixes of the encrypted potential password leaks that matched
  /// the given parameters.
  ///
  /// They should be compared with the client-side decryption prefix of
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

  set encryptedUserCredentialsHashAsBytes(core.List<core.int> _bytes) {
    encryptedUserCredentialsHash =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Exactly 26-bit prefix of the SHA-256 hash of the canonicalized username.
  ///
  /// It is used to look up password leaks associated with that hash prefix.
  ///
  /// Optional.
  core.String? lookupHashPrefix;
  core.List<core.int> get lookupHashPrefixAsBytes =>
      convert.base64.decode(lookupHashPrefix!);

  set lookupHashPrefixAsBytes(core.List<core.int> _bytes) {
    lookupHashPrefix =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Corresponds to the re-encryption of the `encrypted_user_credentials_hash`
  /// field.
  ///
  /// Used to match potential password leaks within
  /// `encrypted_leak_match_prefixes`.
  ///
  /// Output only.
  core.String? reencryptedUserCredentialsHash;
  core.List<core.int> get reencryptedUserCredentialsHashAsBytes =>
      convert.base64.decode(reencryptedUserCredentialsHash!);

  set reencryptedUserCredentialsHashAsBytes(core.List<core.int> _bytes) {
    reencryptedUserCredentialsHash =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification({
    this.encryptedLeakMatchPrefixes,
    this.encryptedUserCredentialsHash,
    this.lookupHashPrefix,
    this.reencryptedUserCredentialsHash,
  });

  GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification.fromJson(
      core.Map _json)
      : this(
          encryptedLeakMatchPrefixes:
              _json.containsKey('encryptedLeakMatchPrefixes')
                  ? (_json['encryptedLeakMatchPrefixes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          encryptedUserCredentialsHash:
              _json.containsKey('encryptedUserCredentialsHash')
                  ? _json['encryptedUserCredentialsHash'] as core.String
                  : null,
          lookupHashPrefix: _json.containsKey('lookupHashPrefix')
              ? _json['lookupHashPrefix'] as core.String
              : null,
          reencryptedUserCredentialsHash:
              _json.containsKey('reencryptedUserCredentialsHash')
                  ? _json['reencryptedUserCredentialsHash'] as core.String
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
  /// The resource name for the related account group in the format
  /// `projects/{project}/relatedaccountgroups/{related_account_group}`.
  ///
  /// Required.
  core.String? name;

  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup({
    this.name,
  });

  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A membership in a group of related accounts.
class GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership {
  /// The unique stable hashed user identifier of the member.
  ///
  /// The identifier corresponds to a `hashed_account_id` provided in a previous
  /// CreateAssessment or AnnotateAssessment call.
  core.String? hashedAccountId;
  core.List<core.int> get hashedAccountIdAsBytes =>
      convert.base64.decode(hashedAccountId!);

  set hashedAccountIdAsBytes(core.List<core.int> _bytes) {
    hashedAccountId =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The resource name for this membership in the format
  /// `projects/{project}/relatedaccountgroups/{relatedaccountgroup}/memberships/{membership}`.
  ///
  /// Required.
  core.String? name;

  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership({
    this.hashedAccountId,
    this.name,
  });

  GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership.fromJson(
      core.Map _json)
      : this(
          hashedAccountId: _json.containsKey('hashedAccountId')
              ? _json['hashedAccountId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hashedAccountId != null) 'hashedAccountId': hashedAccountId!,
        if (name != null) 'name': name!,
      };
}

/// Risk analysis result for an event.
class GoogleCloudRecaptchaenterpriseV1RiskAnalysis {
  /// Reasons contributing to the risk analysis verdict.
  core.List<core.String>? reasons;

  /// Legitimate event score from 0.0 to 1.0.
  ///
  /// (1.0 means very likely legitimate traffic while 0.0 means very likely
  /// non-legitimate traffic).
  core.double? score;

  GoogleCloudRecaptchaenterpriseV1RiskAnalysis({
    this.reasons,
    this.score,
  });

  GoogleCloudRecaptchaenterpriseV1RiskAnalysis.fromJson(core.Map _json)
      : this(
          reasons: _json.containsKey('reasons')
              ? (_json['reasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          score: _json.containsKey('score')
              ? (_json['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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

  GoogleCloudRecaptchaenterpriseV1ScoreDistribution.fromJson(core.Map _json)
      : this(
          scoreBuckets: _json.containsKey('scoreBuckets')
              ? (_json['scoreBuckets'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
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
  /// of the "execute" client-side call. Populated only for SCORE keys.
  core.Map<core.String, GoogleCloudRecaptchaenterpriseV1ScoreDistribution>?
      actionMetrics;

  /// Aggregated score metrics for all traffic.
  GoogleCloudRecaptchaenterpriseV1ScoreDistribution? overallMetrics;

  GoogleCloudRecaptchaenterpriseV1ScoreMetrics({
    this.actionMetrics,
    this.overallMetrics,
  });

  GoogleCloudRecaptchaenterpriseV1ScoreMetrics.fromJson(core.Map _json)
      : this(
          actionMetrics: _json.containsKey('actionMetrics')
              ? (_json['actionMetrics'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudRecaptchaenterpriseV1ScoreDistribution.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          overallMetrics: _json.containsKey('overallMetrics')
              ? GoogleCloudRecaptchaenterpriseV1ScoreDistribution.fromJson(
                  _json['overallMetrics']
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
  /// The unique stable hashed user identifier we should search connections to.
  ///
  /// The identifier should correspond to a `hashed_account_id` provided in a
  /// previous CreateAssessment or AnnotateAssessment call.
  ///
  /// Optional.
  core.String? hashedAccountId;
  core.List<core.int> get hashedAccountIdAsBytes =>
      convert.base64.decode(hashedAccountId!);

  set hashedAccountIdAsBytes(core.List<core.int> _bytes) {
    hashedAccountId =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The maximum number of groups to return.
  ///
  /// The service may return fewer than this value. If unspecified, at most 50
  /// groups will be returned. The maximum value is 1000; values above 1000 will
  /// be coerced to 1000.
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
    this.hashedAccountId,
    this.pageSize,
    this.pageToken,
  });

  GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest.fromJson(
      core.Map _json)
      : this(
          hashedAccountId: _json.containsKey('hashedAccountId')
              ? _json['hashedAccountId'] as core.String
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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
      core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          relatedAccountGroupMemberships: _json
                  .containsKey('relatedAccountGroupMemberships')
              ? (_json['relatedAccountGroupMemberships'] as core.List)
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
  core.double? testingScore;

  GoogleCloudRecaptchaenterpriseV1TestingOptions({
    this.testingChallenge,
    this.testingScore,
  });

  GoogleCloudRecaptchaenterpriseV1TestingOptions.fromJson(core.Map _json)
      : this(
          testingChallenge: _json.containsKey('testingChallenge')
              ? _json['testingChallenge'] as core.String
              : null,
          testingScore: _json.containsKey('testingScore')
              ? (_json['testingScore'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testingChallenge != null) 'testingChallenge': testingChallenge!,
        if (testingScore != null) 'testingScore': testingScore!,
      };
}

class GoogleCloudRecaptchaenterpriseV1TokenProperties {
  /// Action name provided at token generation.
  core.String? action;

  /// The timestamp corresponding to the generation of the token.
  core.String? createTime;

  /// The hostname of the page on which the token was generated.
  core.String? hostname;

  /// Reason associated with the response when valid = false.
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

  /// Whether the provided user response token is valid.
  ///
  /// When valid = false, the reason could be specified in invalid_reason or it
  /// could also be due to a user failing to solve a challenge or a sitekey
  /// mismatch (i.e the sitekey used to generate the token was different than
  /// the one specified in the assessment).
  core.bool? valid;

  GoogleCloudRecaptchaenterpriseV1TokenProperties({
    this.action,
    this.createTime,
    this.hostname,
    this.invalidReason,
    this.valid,
  });

  GoogleCloudRecaptchaenterpriseV1TokenProperties.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          hostname: _json.containsKey('hostname')
              ? _json['hostname'] as core.String
              : null,
          invalidReason: _json.containsKey('invalidReason')
              ? _json['invalidReason'] as core.String
              : null,
          valid:
              _json.containsKey('valid') ? _json['valid'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (createTime != null) 'createTime': createTime!,
        if (hostname != null) 'hostname': hostname!,
        if (invalidReason != null) 'invalidReason': invalidReason!,
        if (valid != null) 'valid': valid!,
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
  core.String? wafFeature;

  /// The WAF service that uses this key.
  ///
  /// Required.
  /// Possible string values are:
  /// - "WAF_SERVICE_UNSPECIFIED" : Undefined WAF
  /// - "CA" : Cloud Armor
  core.String? wafService;

  GoogleCloudRecaptchaenterpriseV1WafSettings({
    this.wafFeature,
    this.wafService,
  });

  GoogleCloudRecaptchaenterpriseV1WafSettings.fromJson(core.Map _json)
      : this(
          wafFeature: _json.containsKey('wafFeature')
              ? _json['wafFeature'] as core.String
              : null,
          wafService: _json.containsKey('wafService')
              ? _json['wafService'] as core.String
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
  core.bool? allowAllDomains;

  /// If set to true, the key can be used on AMP (Accelerated Mobile Pages)
  /// websites.
  ///
  /// This is supported only for the SCORE integration type.
  core.bool? allowAmpTraffic;

  /// Domains or subdomains of websites allowed to use the key.
  ///
  /// All subdomains of an allowed domain are automatically allowed. A valid
  /// domain requires a host and must not include any path, port, query or
  /// fragment. Examples: 'example.com' or 'subdomain.example.com'
  core.List<core.String>? allowedDomains;

  /// Settings for the frequency and difficulty at which this key triggers
  /// captcha challenges.
  ///
  /// This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE.
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

  GoogleCloudRecaptchaenterpriseV1WebKeySettings.fromJson(core.Map _json)
      : this(
          allowAllDomains: _json.containsKey('allowAllDomains')
              ? _json['allowAllDomains'] as core.bool
              : null,
          allowAmpTraffic: _json.containsKey('allowAmpTraffic')
              ? _json['allowAmpTraffic'] as core.bool
              : null,
          allowedDomains: _json.containsKey('allowedDomains')
              ? (_json['allowedDomains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          challengeSecurityPreference:
              _json.containsKey('challengeSecurityPreference')
                  ? _json['challengeSecurityPreference'] as core.String
                  : null,
          integrationType: _json.containsKey('integrationType')
              ? _json['integrationType'] as core.String
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
